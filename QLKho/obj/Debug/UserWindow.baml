   M S B A M L   `   `   `  ����@  <QLKho, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:QLKhoQLKho  5   	   ?$clr-namespace:QLKho.UserControlQLKhoQLKho.UserControlQLKho  5   
       QLKho.UserWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   %localclr-namespace:QLKho     5   	   3uc$clr-namespace:QLKho.UserControlQLKho     5   
   c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5	   	   V RMaterialDesignThemes.Wpf, Version=2.4.1.1101, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5
   	   -   5          �Name$  window��5   	      MaterialDesignBody#���   5   	   $��Regular"�5   
   $��13(�5   
   &   System.Windows.Media.TextOptions   TextFormattingMode$ Ideal=�5   
      TextRenderingMode$
 Auto=�5   
     MaterialDesignPaper#���  5   
     MaterialDesignFont#���  5   
    
 MainVM � DataContext# [ 5   	    � WindowStyle$
 None=�5   	    � 
ResizeMode$ NoResize=�5   	    � WindowStartupLocation$ CenterScreen=�5   	    � Title$ Người dùng��5   	   $	��600��6   $	��800��6)   .��5      �  � RowDefinitions 5   
   �� 5      $
��auto �6   6,   �� 5      6   .+�5   
   � $��0��6   .+�5      )   #QLKho.UserControlQLKho.ControlBarUC  
	 � Tag	 6   �� *Title+
 �� ElementName$
 window��6J   5      � 5    
   $��1��6    5!      �� 5"      $
��auto �6    60   �� 5#      $
��auto �6    60   �� 5$      6"   .+�5'      #  MaterialDesignThemes.Wpf.Card  $��0��6"   $��5q�6/   .��5(      � .+�5)      �� $��5 5 15 5q�6]   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Tên đăng nhập��6o    % !MaterialDesignFloatingHintTextBox#��[ 6�   ��6   �� *
UserName+ �� UpdateSourceTrigger$ PropertyChanged=�6�   �� 5*      $ Chức vụ��6�    �� 
IsEditable .  & "MaterialDesignFloatingHintComboBox#��[ 5+      $��5 5 15 5q�5,      ��5*      �� *Role+ �� SelectedItem 6<   �� *SelectedRole+ �� Mode$ TwoWay=�$ PropertyChanged=�5,   3   �� 5-      $��5 5 15 5q�6`   $ Tên hiển thị��6r   #��[ 6�   ��6   �� *DisplayName+$ PropertyChanged=�6�   �� 5.      $��5 5 15 5q�6\   $ Địa chỉ��6n   #��[ 6�   ��6   �� *	Address+$ PropertyChanged=�6�   �� 5/      $��5 5 15 5q�6Z   $ Điện thoại��6l   #��[ 6�   ��6   �� *Phone+$ PropertyChanged=�6�   �� 50      $��5 5 15 5q�6Z   $ Email��6l   #��[ 6�   ��6   �� *Email+$ PropertyChanged=�6�   51      53        55      $��1��6"   $��5q�60   .��56      � $��5q�6   .+�57      ��  # MaterialDesignRaisedLightButton#��[ 6   $	��100��6V    � ToolTip$4 .Resource name: MaterialDesignRaisedLightButton��58      $��5q�6V   $��Thêm��5:      ��59      �� *
AddCommand+5;      �� 5<      #��[ 6   $	��100��6V   $4 .Resource name: MaterialDesignRaisedLightButton��5=      $��5q�6V   $��Sửa��5?      ��5>      �� *EditCommand+5@      �� 5A      #��[ 6   $	��100��6V   $4 .Resource name: MaterialDesignRaisedLightButton��5B      $��5q�6V   $
��Xóa��5D      ��5C      �� *DeleteCommand+5E      �� 5G      #��[ 6   $	��100��6V   $4 .Resource name: MaterialDesignRaisedLightButton��5H      $��5q�6V   $��Đổi mật khẩu��5J      ��5I      �� *DeleteCommand+5K      5M      5N        5P      $��2��6"   $��Stretch=�6/   $��5q�6L   .��5Q      �� $
��Auto=�6   .��5R      �� ��6   �� *List+ 6<   �� *SelectedItem+$ OneWayToSource=� �� View 5S      �� 5T      .P�5U   "   �� $��ID��61    �� DisplayMemberBinding 6=   �� *ID+6c   �� 5V   "   $��Tên đăng nhập��61    6H   �� *DisplayName+6w   �� 5W   "   $��Chức vụ��61    6B   �� *Email+6k   �� 5X   "   $��Tên hiển thị��61    6G   �� *Email+6p   �� 5Y   "   $��Địa chỉ��61    6B   �� *	Address+6m   �� 5Z   "   $��Điện thoại��61    6E   �� *Phone+6n   �� 5[   "   $��Email��61    6@   �� *Email+6i   5\      5^      5_      5`      5b      5c      5d      