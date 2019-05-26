using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace AddressBook
{
    /// <summary>
    /// Logika interakcji dla klasy MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        public struct Contact
        {
            public int ID { get; set; }
            public string Name { get; set; }
            public int Age { get; set; }
        }

        MySqlConnection connection;
        string myconnection;

        private void BConnect_Click(object sender, RoutedEventArgs e)
        {
            if (bConnect.Content.ToString() != "Disconnect")
            {
                myconnection = "SERVER=" + tbServer.Text + ";" +
                    "DATABASE=" + tbDatabase.Text + ";" +
                    "UID=" + tbUid.Text + ";" +
                    "PASSWORD=" + tbPassword.Text + ";" +
                    "SslMode=none" + ";";
                connection = new MySqlConnection(myconnection);

                try
                {
                    connection.Open();
                    bConnect.Content = "Disconnect";
                    lConnection.Content = "Connected";
                    bGetdata.IsEnabled = true;
                }
                catch (MySql.Data.MySqlClient.MySqlException ex)
                {
                    MessageBox.Show(ex.ToString(), "MySQL Connection Error",
                        MessageBoxButton.OK, MessageBoxImage.Information);
                }
            }
            else
            {
                bConnect.Content = "Connect";
                lConnection.Content = "No connection";
                bGetdata.IsEnabled = false;
                connection.Close();
            }
        }

        private void BGetdata_Click(object sender, RoutedEventArgs e)
        {
            MySqlCommand command = new MySqlCommand("SELECT * FROM `snail-address-book`", connection);
            try
            {
                connection.Close();
            }
            catch { }
            dgDisplay.Items.Clear();
            myconnection = "SERVER=" + tbServer.Text + ";" +
                     "DATABASE=" + tbDatabase.Text + ";" +
                     "UID=" + tbUid.Text + ";" +
                     "PASSWORD=" + tbPassword.Text + ";" +
                     "SslMode=none" + ";";
            connection.Open();

            using (var record = command.ExecuteReader())
            {
                while (record.Read())
                {
                    Contact contact = new Contact();
                    contact.ID = int.Parse(record["ID"].ToString());
                    contact.Name = record["Name"].ToString();
                    contact.Age = int.Parse(record["Age"].ToString());
                    dgDisplay.Items.Add(contact);
                }
            }

            bEdit.IsEnabled = true;
        }

        private void TbEditID_TextChanged(object sender, TextChangedEventArgs e)
        {
            

            if (tbEditID.Text.ToString() != "")
            {
                bEdit.Content = "Edit";
            }
            else
            {
                bEdit.Content = "Add";
            }
        }

        private void BEdit_Click(object sender, RoutedEventArgs e)
        {
            MySqlCommand command;
            if (bEdit.Content.ToString() == "Add")
            {
                command = new MySqlCommand("INSERT INTO `snail-address-book` (`name`, `age`) VALUES ('" + tbEditName.Text + "', " + tbEditAge.Text + ")", connection);
            }
            else
            {
                command = new MySqlCommand("UPDATE `snail-address-book` SET `name` = '" + tbEditName.Text + "', `age` = " + tbEditAge.Text + " WHERE `snail-address-book`.`id` = " + tbEditID.Text, connection);
            }

            try
            {
                connection.Close();
            }
            catch { }
            dgDisplay.Items.Clear();
            myconnection = "SERVER=" + tbServer.Text + ";" +
                     "DATABASE=" + tbDatabase.Text + ";" +
                     "UID=" + tbUid.Text + ";" +
                     "PASSWORD=" + tbPassword.Text + ";" +
                     "SslMode=none" + ";";
            connection.Open();

            try
            {
                command.ExecuteNonQuery();
            }
            catch
            {
                MessageBox.Show("Incorrect input", "UPDATE Error",
                        MessageBoxButton.OK, MessageBoxImage.Information);
            }

            command = new MySqlCommand("SELECT * FROM `snail-address-book`", connection);
            // Read stuff
            using (var record = command.ExecuteReader())
            {
                while (record.Read())
                {
                    Contact contact = new Contact();
                    contact.ID = int.Parse(record["ID"].ToString());
                    contact.Name = record["Name"].ToString();
                    contact.Age = int.Parse(record["Age"].ToString());
                    dgDisplay.Items.Add(contact);
                }
            }
        }
    }
}
