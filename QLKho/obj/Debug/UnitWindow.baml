   M S B A M L   `   `   `  ����@  <QLKho, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:QLKhoQLKho  5   	   ?$clr-namespace:QLKho.UserControlQLKhoQLKho.UserControlQLKho  5   
       QLKho.UnitWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   %localclr-namespace:QLKho     5   	   3uc$clr-namespace:QLKho.UserControlQLKho     5   
   c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5	   	   V RMaterialDesignThemes.Wpf, Version=2.4.1.1101, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5
   	   -   5          �Name$  window��5   	      MaterialDesignBody#���   5   	   $��Regular"�5   
   $��13(�5   
   &   System.Windows.Media.TextOptions   TextFormattingMode$ Ideal=�5   
      TextRenderingMode$
 Auto=�5   
     MaterialDesignPaper#���  5   
     MaterialDesignFont#���  5   
    
 UnitVM � DataContext# [ 5   	    � WindowStyle$
 None=�5   	    � 
ResizeMode$ NoResize=�5   	    � WindowStartupLocation$ CenterScreen=�5   	    � Title$ Đơn vị đo��5   	   $	��450��6   $	��800��6(   .��5      �  � RowDefinitions 5   
   �� 5      $
��auto �6   6,   �� 5      6   .+�5   
   � $��0��6   .+�5      )   #QLKho.UserControlQLKho.ControlBarUC  
	 � Tag	 6   �� *Title+
 �� ElementName$
 window��6J   5      � 5    
   $��1��6    5!      �� 5"      $
��auto �6    60   �� 5#      $
��auto �6    60   �� 5$      6"   .+�5'      #  MaterialDesignThemes.Wpf.Card  $��0��6"   $��5q�6/   .��5(      � .+�5)      �� $��5q�6`   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Tên đơn vị đo��6k    % !MaterialDesignFloatingHintTextBox#��[ 6�   ��6   �� *DisplayName+ �� UpdateSourceTrigger$ PropertyChanged=�6�   5*      5,        5.      $��1��6"   $��5q�60   .��5/      � $��5q�6   .+�50      ��  # MaterialDesignRaisedLightButton#��[ 6   $	��100��6V    � ToolTip$4 .Resource name: MaterialDesignRaisedLightButton��51      $��5q�6V   $��Thêm��53      ��52      �� *
AddCommand+54      �� 55      #��[ 6   $	��100��6V   $4 .Resource name: MaterialDesignRaisedLightButton��56      $��5q�6V   $��Sửa��58      ��57      �� *EditCommand+59      �� 5:      #��[ 6   $	��100��6V   $4 .Resource name: MaterialDesignRaisedLightButton��5;      $��5q�6V   $
��Xóa��5=      ��5<      �� *DeleteCommand+5>      5@      5A        5C      $��2��6"   $��Stretch=�6/   $��5q�6L   .��5D      �� $
��Auto=�6   .��5E      �� ��6   �� *List+ �� SelectedItem 6<   �� *SelectedItem+ �� Mode$ TwoWay=� �� View 5F      �� 5G      .P�5H   "   �� $��ID��61    �� DisplayMemberBinding 6=   �� *Id+6c   �� 5I   "   $��Tên đơn vị đo��61    6H   �� *DisplayName+6w   5J      5L      5M      5N      5P      5Q      5R      