   M S B A M L   `   `   `  ����H  DAddLocalAdmin, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:AddLocalAdminAddLocalAdmin  5   	   C&clr-namespace:AddLocalAdmin.PropertiesAddLocalAdmin.Properties  5   	       AddLocalAdmin.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   -localclr-namespace:AddLocalAdmin     5   	   =
Properties&clr-namespace:AddLocalAdmin.Properties     5   	   -   5          �Name$  MainForm��5   C    � Title$ Add Local Administrator��5   	   $	��459��6)   $��488.603��66   ���	#FFE5E5E5���	#FF717171 � WindowStyle$ ThreeDBorderWindow=�6u   $��1q�6�   .��5      � $��0,0,2,0q�6   .+�5   
   �� -   5         ��Name$ domainNameBox��5      $��25��6)   $��27,26,205,0q�65    �� TextWrapping$
 Wrap=�6J   $	��Top=�6^   $��1��6v    J� RenderTransformOrigin$ 0.5,0.5&�6�   " �� VerticalScrollBarVisibility$
 Auto=�6�    � ToolTip$u oEnter the domain name that the computer and user belong to. 
Do not add any \\ just the name.
Example: MYDOMAIN��5       ^� HasDropShadow . 	 ^� InitialShowDelay$
	 1000��6�   
 ^� ShowDuration$
 10000��5       ^� 	Placement$ Relative=�61    ^� HorizontalOffset$	 235��6U    ^� VerticalOffset$ 0��6{   �� 5   
   -   5        $ computerNameBox��5      $��25��6+   $��27,86,205,0q�67   $
 Wrap=�6L   $	��Top=�6`   $��2��6x   $
 Auto=�6�   $� �Enter the name of the computer.
You can add/remove multiple computers by seperating them with a comma and no spaces.
Example: computer1,computer2,computer3��5       . $
	 1000��6�   $
 10000��5      $ Relative=�61   $	 235��6U   $ 0��6{   �� 5   
   -   5         ��Name$ domainNameLabel��5      $��Domain Name��6)   $
��Left=�6?   $��	27,53,0,0q�6Z   $	��Top=�6m   $	��130��6�    � Cursor$
 None��6�   $��Stretch=�6�   �� 5   
   -   5        $ computerNameLabel��5      $��Computer Name��6+   $
��Left=�6C   $��
27,116,0,0q�6^   $	��Top=�6r   $	��130��6�   $
 None��6�   $��Stretch=�5      �� 5   
   -   5        $ userNameBox��5      $��25��6'   $��27,152,205,0q�63   $
 Wrap=�6I   $	��Top=�6]   $��3��6u   $
 Auto=�6�   $� �Enter the user or group name you want to add/remove as a local admin.
You can only add/remove one user or group at a time. 
Example: myusername��5       . $
	 1000��6�   $
 10000��5      $ Relative=�61   $	 235��6U   $ 0��6{   �� 5   
   -   5        $ userNameLabel��5      $��User or Group Name��6'   $
��Left=�6D   $��
27,182,0,0q�6_   $	��Top=�6s   $	��130��6�   $
 None��6�   $��Stretch=�5       �� 5"   
   -   5         ��Name$ 	addButton��5"      $��Add Local Admin��6$   $��61��6>   $��
0,116,28,0q�6J   $	��Top=�6^   $��4��6�   $��Right=�5#      $	��130��6-   $a [Press this button to start the process of adding the user/group to the specified computers.��5$       . $
	 1000��6�   $
 10000��5%      $ Relative=�65   $ 0��6Y   $	 -25��6}   �� 5'   
   -	   5        $ 
resultsBox��5'      $��27,213,28,39q�6&   $
 Wrap=�6<    �� 
IsReadOnly .  �� IsUndoEnabled .  $
 Auto=�6x   ��.  &   System.Windows.Media.TextOptions   TextFormattingMode$ Display=�5(   $    � UseLayoutRounding .  6M   �� 5*   
   -
   5        $ resultsLabel��5*      $��Results��6&   $��116,0,116,13q�68   $��Bottom=�6N   $
 None��6i   $��Stretch=�6w   $��Center=�6�   �� 5,   
   -   5        $ removeButton��5,      $��Remove Local Admin��6'   $��61��6D   $��	0,26,28,0q�6P   $	��Top=�6c   $��4��6�   $��Right=�5-   
   $	��130��6&   $e _Press this button to start the process of removing the user/group from the specified computers.��5.       . $
	 1000��6�   $
 10000��5/      $ Relative=�65   $ 0��6Y   $	 -25��6}   51      52      