   M S B A M L   `   `   `  ����F  BAddressBook, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:AddressBookAddressBook  5   	       AddressBook.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   +localclr-namespace:AddressBook     5   	     � Title$  Snail Address Book��5   	   $��332.964��6$   $��421.554��65    � 
ResizeMode$ NoResize=�6E   .��5	      � $��	0,0,2,-21q�6    � RowDefinitions 5
   
   �� 5      .+�5   
   &   System.Windows.Controls.DataGrid  -   5          Name$ 	dgDisplay��5      $
��Left=�6&   $	��170��6A   $��	10,10,0,0q�6N   $	��Top=�6a   $	��200��6y      AutoGenerateColumns .     CanUserReorderColumns .     CanUserResizeColumns .  $   HorizontalScrollBarVisibility$ Disabled=�6�   "   VerticalScrollBarVisibility$ Hidden=�6  ��. |�.  	   
IsReadOnly	 . 
   Columns
 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ ID��6_      Width5  /System.Windows.Controls.DataGridLengthConverter$ 30 6k   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6%   �� *ID+   ClipboardContentBinding 6<   Z� 6k     5      $
 Name��6a   $	 130 6o    6%   �� *Name+ 6>   Z� 6o     5      $	 Age��6`   $ 40 6m    6%   �� *Age+ 6=   Z� 6m   5      �� 5   
   -   5         ��Name$ lServer��5      $��Server��6!   $
��Left=�62   $��
215,10,0,0q�6M   $	��Top=�6a   $��58��6y   $��26��6�   �� 5   
   -   5        $ 	lDatabase��5      $��Database��6#   $
��Left=�66   $��
215,36,0,0q�6Q   $	��Top=�6e   $��26��6}   $��59��6�   �� 5   
   -   5        $
 lUid��5      $	��UID��6   $
��Left=�6,   $��
215,62,0,0q�6G   $	��Top=�6[   $��26��6s   $��30��6   �� 5   
   -   5        $ 	lPassword��5      $��Password��6#   $
��Left=�66   $��
215,88,0,0q�6Q   $	��Top=�6e   $��26��6}   $��60��6�   �� 5   
   -   5         ��Name$ bConnect��5      $��Connect��6#   $
��Left=�65   $��215,119,0,0q�6P   $	��Top=�6e   $��75��6}   $��20��6�   �� 5   
   -   5        $ bGetdata��5      $��Get Data��6#   $
��Left=�66   $��215,160,0,0q�6Q   $	��Top=�6f   $	��184��6~   {�.  $��20��6�   �� 5   
   -   5        $ lConnection��5      $��No Connection��6%   $
��Left=�6=   $��295,116,0,0q�6X   $	��Top=�6m   $��26��6�   $��90��6�   �� 5   
   -	   5         ��Name$ tbServer��5      $
��Left=�6$   $��23��6?   $��
279,14,0,0q�6K    �� TextWrapping$
 Wrap=�6_   $	��Top=�6s   $	��120��6�   $��	127.0.0.1��6�   �� 5   
   -
   5        $ 
tbDatabase��5      $
��Left=�6&   $��23��6A   $��
279,40,0,0q�6M   $
 Wrap=�6a   $	��Top=�6u   $	��120��6�   $	��ask��6�   �� 5   
   -   5        $ tbUid��5      $
��Left=�6!   $��23��6<   $��
279,66,0,0q�6H   $
 Wrap=�6\   $	��Top=�6p   $	��120��6�   $
��root��6�   �� 5   
   -   5        $ 
tbPassword��5      $
��Left=�6&   $��23��6A   $��
279,92,0,0q�6M   $
 Wrap=�6a   $	��Top=�6u   $	��120��6�   �� 5   
   -   5        $ lEditID��5      $��ID��6!   $
��Left=�6.   $��
10,181,0,0q�6I   $	��Top=�6]   $��26��6u   $��22��6�   �� 5    
   -   5        $ 	lEditName��5       $
��Name��6#   $
��Left=�62   $��
10,209,0,0q�6M   $	��Top=�6a   $��26��6y   $��42��6�   �� 5!   
   -   5        $ lEditAge��5!      $	��Age��6"   $
��Left=�60   $��
10,237,0,0q�6K   $	��Top=�6_   $��26��6w   $��31��6�   �� 5"   
   -   5        $ tbEditID��5"      $
��Left=�6$   $��23��6?   $��
74,185,0,0q�6K   $
 Wrap=�6_   $	��Top=�6s   $	��136��6�   6�   �� 5#   
   -   5        $ 
tbEditName��5#      $
��Left=�6&   $��23��6A   $��
74,213,0,0q�6M   $
 Wrap=�6a   $	��Top=�6u   $	��136��6�   �� 5$   
   -   5        $ 	tbEditAge��5$      $
��Left=�6%   $��23��6@   $��
74,241,0,0q�6L   $
 Wrap=�6`   $	��Top=�6t   $	��136��6�   �� 5%   
   -   5        $ bEdit��5%      $	��Add��6    $
��Left=�6.   $��
10,269,0,0q�6I   $	��Top=�6]   $	��200��6u   {�.  $��20��6�   �� 5&   
   2  ,System.Windows.Markup.XmlAttributeProperties  XmlSpace preserve6b  -   5         ��Name$ 	textBlock��5&      $
��Left=�6'   $��215,185,0,0q�6B   $
��Wrap=�6l   $����- Fill the 'ID' field with a valid ID to edit
- Invalid ID will yield no results
- ID and Age must be a number
- No text in the ID field will lead to adding a new record��6�   $	��Top=�6=  $	��104��6U  $	��184��6b  5'      5(      