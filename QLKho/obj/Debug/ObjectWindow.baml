   M S B A M L   `   `   `  ����@  <QLKho, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:QLKhoQLKho  5   	   ?$clr-namespace:QLKho.UserControlQLKhoQLKho.UserControlQLKho  5   
       QLKho.ObjectWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   %localclr-namespace:QLKho     5   	   3uc$clr-namespace:QLKho.UserControlQLKho     5   
   c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5	   	   V RMaterialDesignThemes.Wpf, Version=2.4.1.1101, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5
   	   -   5          �Name$  window��5   	      MaterialDesignBody#���   5   	   $��Regular"�5   
   $��13(�5   
   &   System.Windows.Media.TextOptions   TextFormattingMode$ Ideal=�5   
      TextRenderingMode$
 Auto=�5   
     MaterialDesignPaper#���  5   
     MaterialDesignFont#���  5   
     ObjectVM � DataContext# [ 5   	    � WindowStyle$
 None=�5   	    � 
ResizeMode$ NoResize=�5   	    � WindowStartupLocation$ CenterScreen=�5   	    � Title$ 	Vật tư��5   	   $	��450��6   $	��800��6%   .��5      �  � RowDefinitions 5   
   �� 5      $
��auto �6   6,   �� 5      6   .+�5   
   � $��0��6   .+�5      )   #QLKho.UserControlQLKho.ControlBarUC  
	 � Tag	 6   �� *Title+
 �� ElementName$
 window��6J   5       � 5!   
   $��1��6    5"      �� 5#      $
��auto �6    60   �� 5$      $
��auto �6    60   �� 5%      6"   .+�5(      #  MaterialDesignThemes.Wpf.Card  $��0��6"   $��5q�6/   .��5)      � .+�5*      �� $��5 5 15 5q�6`   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Tên vật tư��6r    % !MaterialDesignFloatingHintTextBox#��[ 6�   ��6   �� *DisplayName+ �� UpdateSourceTrigger$ PropertyChanged=�6�   �� 5+       �� DisplayMemberPath$ DisplayName��6<   $ Đơn vị đo��6�    �� 
IsEditable .  & "MaterialDesignFloatingHintComboBox#��[ 5,      $��5 5 15 5q�5-      ��5+      �� *Unit+ �� SelectedItem 6\   �� *SelectedUnit+ �� Mode$ TwoWay=�$ PropertyChanged=�5-   3   �� 5.      $ DisplayName��6?   $ Nhà cung cấp��6�    . #��[ 5/      $��5 5 15 5q�50      ��5.      �� *	Suplier+ 6_   �� *SelectedSuplier+$ TwoWay=�$ PropertyChanged=�50   3   �� 51      $��5 5 15 5q�6[   $ QRCode��6m   #��[ 6�   ��6   �� *QRCode+$ PropertyChanged=�6�   �� 52      $��5 5 15 5q�6\   $ BarCode��6n   #��[ 6�   ��6   �� *	BarCode+$ PropertyChanged=�6�   53      55        57      $��1��6"   $��5q�60   .��58      � $��5q�6   .+�59      ��  # MaterialDesignRaisedLightButton#��[ 6   $	��100��6V    � ToolTip$4 .Resource name: MaterialDesignRaisedLightButton��5:      $��5q�6V   $��Thêm��5<      ��5;      �� *
AddCommand+5=      �� 5>      #��[ 6   $	��100��6V   $4 .Resource name: MaterialDesignRaisedLightButton��5?      $��5q�6V   $��Sửa��5A      ��5@      �� *EditCommand+5B      �� 5C      #��[ 6   $	��100��6V   $4 .Resource name: MaterialDesignRaisedLightButton��5D      $��5q�6V   $
��Xóa��5F      ��5E      �� *DeleteCommand+5G      5I      5J        5L      $��2��6"   $��Stretch=�6/   $��5q�6L   .��5M      �� $
��Auto=�6   .��5N      �� ��6   �� *List+ 6<   �� *SelectedItem+$ OneWayToSource=� �� View 5O      �� 5P      .P�5Q   "   �� $��Id��61    �� DisplayMemberBinding 6=   �� *Id+6c   �� 5R   "   $��Tên vật tư��61    6F   �� *DisplayName+6u   �� 5S   "   $��Đơn vị đo��61    6E   �� *Unit.DisplayName+6y   �� 5T   "   $��Nhà cung cấp��61    6I   �� *Suplier.DisplayName+6�   �� 5U   "   $��QRCode��61    6A   �� *QRCode+6k   �� 5V   "   $��BarCode��61    6B   �� *	BarCode+6m   5W      5Y      5Z      5[      5]      5^      5_      