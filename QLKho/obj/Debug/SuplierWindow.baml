   M S B A M L   `   `   `  ����@  <QLKho, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:QLKhoQLKho  5   	   ?$clr-namespace:QLKho.UserControlQLKhoQLKho.UserControlQLKho  5   
       QLKho.SuplierWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   %localclr-namespace:QLKho     5   	   3uc$clr-namespace:QLKho.UserControlQLKho     5   
   c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5	   	   V RMaterialDesignThemes.Wpf, Version=2.4.1.1101, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5
   	   -   5          �Name$  window��5   	      MaterialDesignBody#���   5   	   $��Regular"�5   
   $��13(�5   
   &   System.Windows.Media.TextOptions   TextFormattingMode$ Ideal=�5   
      TextRenderingMode$
 Auto=�5   
     MaterialDesignPaper#���  5   
     MaterialDesignFont#���  5   
     	SuplierVM � DataContext# [ 5   	    � WindowStyle$
 None=�5   	    � 
ResizeMode$ NoResize=�5   	    � WindowStartupLocation$ CenterScreen=�5   	    � Title$ Nhà cung cấp��5   	   $	��450��6   $	��800��6+   .��5      �  � RowDefinitions 5   
   �� 5      $
��auto �6   6,   �� 5      6   .+�5   
   � $��0��6   .+�5      )   #QLKho.UserControlQLKho.ControlBarUC  
	 � Tag	 6   �� *Title+
 �� ElementName$
 window��6J   5      � 5    
   $��1��6    5!      �� 5"      $
��auto �6    60   �� 5#      $
��auto �6    60   �� 5$      6"   .+�5'      #  MaterialDesignThemes.Wpf.Card  $��0��6"   $��5q�6/   .��5(      � .+�5)      �� $��5 5 15 5q�6`   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Tên nhà cung cấp��6r    % !MaterialDesignFloatingHintTextBox#��[ 6�   ��6   �� *DisplayName+ �� UpdateSourceTrigger$ PropertyChanged=�6�   �� 5*      $��5 5 15 5q�6\   $ Địa chỉ��6n   #��[ 6�   ��6   �� *	Address+$ PropertyChanged=�6�   �� 5+      $��5 5 15 5q�6Z   $ Điện thoại��6l   #��[ 6�   ��6   �� *Phone+$ PropertyChanged=�6�   �� 5,      $��5 5 15 5q�6Z   $ Email��6l   #��[ 6�   ��6   �� *Email+$ PropertyChanged=�6�   �� 5-      $��5 5 15 5q�6]   $ Thông tin thêm��6o   #��[ 6�   ��6   �� *
MoreInfo+$ PropertyChanged=�6�   (  "System.Windows.Controls.DatePicker  5.      $	��100��6l   $ Ngày kí kết��6x    ( $MaterialDesignFloatingHintDatePicker#��[ 5/   !   $��5 5 15 5q�6_      SelectedDate 5.   !   �� *ContractDate+$ PropertyChanged=�5/   _   50      52        54      $��1��6"   $��5q�60   .��55      � $��5q�6   .+�56      ��  # MaterialDesignRaisedLightButton#��[ 6   $	��100��6V    � ToolTip$4 .Resource name: MaterialDesignRaisedLightButton��57      $��5q�6V   $��Thêm��59      ��58      �� *
AddCommand+5:      �� 5;      #��[ 6   $	��100��6V   $4 .Resource name: MaterialDesignRaisedLightButton��5<      $��5q�6V   $��Sửa��5>      ��5=      �� *EditCommand+5?      �� 5@      #��[ 6   $	��100��6V   $4 .Resource name: MaterialDesignRaisedLightButton��5A      $��5q�6V   $
��Xóa��5C      ��5B      �� *DeleteCommand+5D      5F      5G        5I      $��2��6"   $��Stretch=�6/   $��5q�6L   .��5J      �� $
��Auto=�6   .��5K      �� ��6   �� *List+ �� SelectedItem 6<   �� *SelectedItem+ �� Mode$ OneWayToSource=� �� View 5L      �� 5M      .P�5N   "   �� $��ID��61    �� DisplayMemberBinding 6=   �� *Id+6c   �� 5O   "   $��Tên nhà cung cấp��61    6K   �� *DisplayName+6z   �� 5P   "   $��Địa chỉ��61    6B   �� *	Address+6m   �� 5Q   "   $��Điện thoại��61    6E   �� *Phone+6n   �� 5R   "   $��Email��61    6@   �� *Email+6i   �� 5S   "   $��Thông tin thêm��61    6I   �� *
MoreInfo+6u   �� 5T   "   $��Ngày kí hợp đồng��61    6K   �� *ContractDate+6{   5U      5W      5X      5Y      5[      5\      5]      