   M S B A M L   `   `   `  ����@  <QLKho, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null?$clr-namespace:QLKho.UserControlQLKhoQLKho.UserControlQLKho  5   	   clr-namespace:QLKhoQLKho  5   	       QLKho.LoginWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   3uc$clr-namespace:QLKho.UserControlQLKho     5   	   %localclr-namespace:QLKho     5   	   V RMaterialDesignThemes.Wpf, Version=2.4.1.1101, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5
   	   c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5   	   -   5          �Name$  loginWindow��5   	      MaterialDesignBody#���   5   	   $��Regular"�5   
   $��13(�5   
   &   System.Windows.Media.TextOptions   TextFormattingMode$ Ideal=�5   
      TextRenderingMode$
 Auto=�5   
     MaterialDesignPaper#���  5   
     MaterialDesignFont#���  5   
     LoginVM � DataContext# [ 5   	    � 
ResizeMode$ NoResize=�5   	    � WindowStyle$
 None=�5   	    � WindowStartupLocation$ CenterScreen=�5   	    � Title$ Đăng nhập��5   	   $	��450��6   $	��800��6(   .��5      � .+�5   
   �  � RowDefinitions 5      �� 5      $
��auto �6    60   �� 5      6"   .+�5      � $��0��6   .+�5       )   #QLKho.UserControlQLKho.ControlBarUC  
	 � Tag	 6"   �� *Title+
 �� ElementName$
 loginWindow��6S   5!      � 5"      $��1��6   .+�5#   
   #  MaterialDesignThemes.Wpf.Card  $	��400��6   $	��300��5$      $��Center=�5%      $��Center=�5&      .��5'      �  � 	Resources 5)       �� 
TargetType �� Property �� Value��%c   '�       �� 5*      " �6   .�5+      ��  � ��$ 
20 15 15 0q�64   5,      5-      5.       5/      �� 50      6&   �� 51      6&   �� 52      6&   .+�54      � $��0��6   .+�55      �� )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Tên đăng nhập��6    % !MaterialDesignFloatingHintTextBox#��[ 57      ��56      �� *
UserName+57      58      � 59      $��1��6   .+�5:      G� -   5         G�Name$ FloatingPasswordBox��5:   +   $ Mật khẩu��5;   +    ) %MaterialDesignFloatingHintPasswordBox#��[ 5<   +   .  (System.Windows.Interactivity.Interaction   Triggers 5=   "   /  )System.Windows.Interactivity.EventTrigger  5>   &      	EventName$ PasswordChanged��65   .  (System.Windows.Interactivity.TriggerBase   Actions. 5?   *   6  0System.Windows.Interactivity.InvokeCommandAction     Command 6@   �� *PasswordChangedCommand+   CommandParameter 5@   @   �� $
 FloatingPasswordBox��5A   '   5D      5E      � 5F      $��2��6    � ColumnDefinitions 5G      �� 5H      6-   �� 5I      6-   .+�5L      �� $��0��6   $��50��6-    " MaterialDesignRaisedDarkButton#��[ 5M      $	��110��5N       �� 	IsDefault .  � ToolTip$8 2Resource name: MaterialDesignRaisedLightDarkButton��5P      $��Đăng nhập��5S      ��5Q      �� *LoginCommand+��5R      �� $
 loginWindow��5U      �� 5V      $��1��6   $��50��6-   #��[ 5W      $	��110��5X      $8 2Resource name: MaterialDesignRaisedLightDarkButton��5[      $��Thoát��5\      ��5Y      �� *ExitCommand+��5Z      �� $
 loginWindow��5^      5_      5`      5a      5b      5c      5d      5e      