   M S B A M L   `   `   `  ����@  <QLKho, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:QLKhoQLKho  5   	   ?$clr-namespace:QLKho.UserControlQLKhoQLKho.UserControlQLKho  5   
       QLKho.InputWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   %localclr-namespace:QLKho     5   	   3uc$clr-namespace:QLKho.UserControlQLKho     5   
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
ResizeMode$ NoResize=�5   	    � WindowStartupLocation$ CenterScreen=�5   	    � Title$ 
Nhập kho��5   	   $	��450��6   $	��800��6'   .��5      �  � RowDefinitions 5   
   �� 5      $
��auto �6   6,   �� 5      6   .+�5   
   � $��0��6   .+�5      )   #QLKho.UserControlQLKho.ControlBarUC  
	 � Tag	 6   �� *Title+
 �� ElementName$
 window��6J   5       � 5!   
   $��1��6    5"      �� 5#      $
��auto �6    60   �� 5$      $
��auto �6    60   �� 5%      6"   .+�5(      #  MaterialDesignThemes.Wpf.Card  $��0��6"   $��5q�6/   .��5)      � .+�5*      �� $��5 5 15 5q�6f   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Tên vật tư��6x    % !MaterialDesignFloatingHintTextBox#��[ 6�   ��6   �� *ObjectDisplayName+ �� UpdateSourceTrigger$ PropertyChanged=�6�   (  "System.Windows.Controls.DatePicker  5+      $	��100��6i   $ Ngày nhập��6u    ( $MaterialDesignFloatingHintDatePicker#��[ 5,   !   $��5 5 15 5q�6_      SelectedDate 5+   !   �� *	DateInput+$ PropertyChanged=�5,   _   �� 5-      $��5 5 15 5q�6Z   $ Số lượng��6l   #��[ 6�   ��6   �� *Count+$ PropertyChanged=�6�   �� 5.      $��5 5 15 5q�6_   $ Giá nhập��6q   #��[ 6�   ��6   �� *
InputPrice+$ PropertyChanged=�6�   �� 5/      $��5 5 15 5q�6`   $ Giá xuất��6r   #��[ 6�   ��6   �� *OutputPrice+$ PropertyChanged=�6�   �� 50      $��5 5 15 5q�6[   $ Trạng thái nhập��6m   #��[ 6�   ��6   �� *Status+$ PropertyChanged=�6�   51      53        55      $��1��6"   $��5q�60   .��56      � $��5q�6   .+�57      ��  # MaterialDesignRaisedLightButton#��[ 6   $	��100��6V    � ToolTip$4 .Resource name: MaterialDesignRaisedLightButton��58      $��5q�6V   $��Thêm��5:      ��59      �� *
AddCommand+5;      �� 5<      #��[ 6   $	��100��6V   $4 .Resource name: MaterialDesignRaisedLightButton��5=      $��5q�6V   $��Sửa��5?      ��5>      �� *EditCommand+5@      �� 5A      #��[ 6   $	��100��6V   $4 .Resource name: MaterialDesignRaisedLightButton��5B      $��5q�6V   $
��Xóa��5D      ��5C      �� *DeleteCommand+5E      5G      5H        5J      $��2��6"   $��Stretch=�6/   $��5q�6L   .��5K      �� $
��Auto=�6   .��5L      �� ��6   �� *List+ �� SelectedItem 6<   �� *SelectedItem+ �� Mode$ OneWayToSource=� �� View 5M      �� 5N      .P�5O   "   �� $��	Vật tư��61    �� DisplayMemberBinding 6A   �� *Object.DisplayName+6w   �� 5P   "   $��Ngày nhập��61    6D   �� *Input.InputDate+6w   �� 5Q   "   $��Số lượng��61    6C   �� *Count+6l   �� 5R   "   $��Giá nhập��61    6C   �� *
InputPrice+6q   �� 5S   "   $��Giá xuất��61    6C   �� *OutputPrice+6r   �� 5T   "   $��Trạng thái nhập��61    6J   �� *Status+6t   5U      5W      5X      5Y      5[      5\      5]      