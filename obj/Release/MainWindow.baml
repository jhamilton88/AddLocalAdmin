   M S B A M L   `   `   `  ���� H  DAddLocalAdmin, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:AddLocalAdminAddLocalAdmin  C&clr-namespace:AddLocalAdmin.PropertiesAddLocalAdmin.Properties      AddLocalAdmin.MainWindow   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     -localclr-namespace:AddLocalAdmin     =
Properties&clr-namespace:AddLocalAdmin.Properties     -     �Name$  MainForm�� � Title$ Add Local Administrator��$	��459��$��488.603�����	#FFE5E5E5���	#FF717171 � WindowStyle$ ThreeDBorderWindow=�$��1q�.��� $��0,0,2,0q�.+��� -    ��Name$ domainNameBox��$��25��$��27,26,205,0q� �� TextWrapping$
 Wrap=�$	��Top=�$��1�� J� RenderTransformOrigin$ 0.5,0.5&�" �� VerticalScrollBarVisibility$
 Auto=� � ToolTip$u oEnter the domain name that the computer and user belong to. 
Do not add any \\ just the name.
Example: MYDOMAIN�� ^� HasDropShadow . 	 ^� InitialShowDelay$
	 1000��
 ^� ShowDuration$
 10000�� ^� 	Placement$ Relative=� ^� HorizontalOffset$	 235�� ^� VerticalOffset$ 0���� -   $ computerNameBox��$��25��$��27,86,205,0q�$
 Wrap=�$	��Top=�$��2��$
 Auto=�$� �Enter the name of the computer.
You can add/remove multiple computers by seperating them with a comma and no spaces.
Example: computer1,computer2,computer3�� . $
	 1000��$
 10000��$ Relative=�$	 235��$ 0���� -    ��Name$ domainNameLabel��$��Domain Name��$
��Left=�$��	27,53,0,0q�$	��Top=�$	��130�� � Cursor$
 None��$��Stretch=��� -   $ computerNameLabel��$��Computer Name��$
��Left=�$��
27,116,0,0q�$	��Top=�$	��130��$
 None��$��Stretch=��� -   $ userNameBox��$��25��$��27,152,205,0q�$
 Wrap=�$	��Top=�$��3��$
 Auto=�$� �Enter the user or group name you want to add/remove as a local admin.
You can only add/remove one user or group at a time. 
Example: myusername�� . $
	 1000��$
 10000��$ Relative=�$	 235��$ 0���� -   $ userNameLabel��$��User or Group Name��$
��Left=�$��
27,182,0,0q�$	��Top=�$	��130��$
 None��$��Stretch=��� -    ��Name$ 	addButton��$��Add Local Admin��$��61��$��
0,116,28,0q�$	��Top=�$��4��$��Right=�$	��130��$a [Press this button to start the process of adding the user/group to the specified computers.�� . $
	 1000��$
 10000��$ Relative=�$ 0��$	 -25���� -	   $ 
resultsBox��$��27,213,28,39q�$
 Wrap=� �� 
IsReadOnly .  �� IsUndoEnabled .  $
 Auto=���.  &   System.Windows.Media.TextOptions   TextFormattingMode$ Display=� � UseLayoutRounding .  �� -
   $ resultsLabel��$��Results��$��116,0,116,13q�$��Bottom=�$
 None��$��Stretch=�$��Center=��� -   $ removeButton��$��Remove Local Admin��$��61��$��	0,26,28,0q�$	��Top=�$��4��$��Right=�$	��130��$e _Press this button to start the process of removing the user/group from the specified computers.�� . $
	 1000��$
 10000��$ Relative=�$ 0��$	 -25��