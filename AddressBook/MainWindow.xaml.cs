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
    }
}
