   M S B A M L   `   `   `  ����J  FModiIntegration, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:ModiIntegrationModiIntegration  5   	   !    ModiIntegration.OrderNyfiko   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   /localclr-namespace:ModiIntegration     5   	   U QMaterialDesignThemes.Wpf, Version=3.0.1.920, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	     � Title$  OrderNyfiko��5	   	   $	��600��6   $
��1024��6*    � 
ResizeMode$ NoResize=�67    � WindowStartupLocation$ CenterScreen=�6M    � WindowStyle$
 None=�6r   .��5
      �  � ColumnDefinitions 5   
   �� 5      $
��479* �6   �� 5      $
��545* �6    � RowDefinitions 5   
   �� 5      $��30 �6   �� 5      $��* �6   .+�5   
   � -   5         �Name$ TitleBar��5      $��2��6"   ���	#FF707070.+�5      ��  �� Orientation$ 
Horizontal=�6   $
��Left=�63   $
��10,0q�6d   ��6N   Z� .+�5      �� -   5         ��Name$ 
ButtonBack��5       0  ,MaterialDesignFloatingActionMiniAccentButton#��[  6-   $��25��6s   $��25��6~   
���������6�   Z� ��6�   Z� .��5      '  !MaterialDesignThemes.Wpf.PackIcon  	   Kind$	 	ArrowBack=�6.   5      5      �� 5      $ 
Horizontal=�6   $��Right=�63   $��0,0,10,0q�6e   ��6O   Z� .+�5      �� -   5        #��[  5      $��25��6_   $��25��6j   
���������6v   Z� ��6�   Z� .��5        $	 WindowMinimize=�6.   5      �� 5      -   5        $ 
ButtonExit��5      #��[  6-   $��25��6s   $��25��6~   
���������6�   Z� ��6�   Z� .��5        $	 Close=�6.   5      5       5!      � 5#   
   $��0��6   $��1��6   .+�5$      �� $6��0ΚΩΔΙΚΟΣ ΠΑΡΑΓΓΕΛΙΑΣ ΓΑΜΟΥ��6   $
��Left=�68   $��	67,50,0,0q�6S   $	��Top=�6f   $	��180��6~   $��24��6�   �� 5%      $%��ΗΜΕΡΟΜΗΝΙΑ ΓΑΜΟΥ��6   $
��Left=�6/   $��
113,74,0,0q�6J   $	��Top=�6^   $	��134��6v   $��24��6�   �� 5&      $-��'ΗΜΕΡΟΜΗΝΙΑ ΠΑΡΑΔΟΣΗΣ��6   $
��Left=�63   $��	85,98,0,0q�6N   $	��Top=�6a   $	��162��6y   $��24��6�   �� 5'      $
��Left=�6   $��22��61   $��
253,50,0,0q�6=   
 �� TextWrapping$

 Wrap=�6Q   $�� ��6e   $	��Top=�6m   $	��190��6�   �� 5(      $��ΝΥΦΙΚΟ��6   $
��Left=�6%   $��
49,173,0,0q�6@   $��1��6T   $	��Top=�6a   $��54��6y   $��24��6�   �� 5)      $��ΣΧΕΔΙΑΣΤΗΣ��6   $
��Left=�6)   $��
29,202,0,0q�6D   $��1��6X   $	��Top=�6e   $��79��6}   $��24��6�   �� 5*      $��ΠΕΡΙΓΡΑΦΗ��6   $
��Left=�6(   $��
29,234,0,0q�6C   $��1��6W   $	��Top=�6d   $��74��6|   $��24��6�   �� 5+      $
��Left=�6   $��24��61   $��
253,72,0,0q�6=   $

 Wrap=�6Q   $�� ��6e   $	��Top=�6m   $	��190��6�   �� 5,      $
��Left=�6   $��22��61   $��
253,98,0,0q�6=   $

 Wrap=�6Q   $�� ��6e   $	��Top=�6m   $	��190��6�   �� 5-      $
��Left=�6   $��23��61   $��108,203,0,0q�6=   $��1��6R   $

 Wrap=�6_   $�� ��6s   $	��Top=�6{   $	��230��6�   �� 5.      $
��Left=�6   $��79��61   $��108,234,0,0q�6=   $��1��6R   $

 Wrap=�6_   $�� ��6s   $	��Top=�6{   $	��230��6�   �� 5/      $��ΠΑΡΑΝΥΦΑΚΙΑ��6   $
��Left=�6*   $��
10,318,0,0q�6E   $��1��6Y   $	��Top=�6f   $��93��6~   $��24��6�   �� 50      $
��Left=�6   $��24��61   $��108,318,0,0q�6=   $��1��6R   $

 Wrap=�6_   $�� ��6s   $	��Top=�6{   $	��230��6�   �� 51      $��ΤΙΜΗ��6   $
��Left=�6#   $��390,156,0,0q�6>   $	��Top=�6S   $��48��6k   $��24��6v    J� RenderTransformOrigin$ 
0.562,-1.5&�6�   �� 52      $
��Left=�6   $��24��61   $��343,203,0,0q�6=   $

 Wrap=�6R   $�� ��6f   $	��Top=�6n   $	��126��6�   �� 53      $
��Left=�6   $��24��61   $��343,289,0,0q�6=   $

 Wrap=�6R   $�� ��6f   $	��Top=�6n   $	��126��6�   �� 54      $
��Left=�6   $��24��61   $��343,318,0,0q�6=   $

 Wrap=�6R   $�� ��6f   $	��Top=�6n   $	��126��6�   �� 55      $��ΠΡΟΚΑΤΑΒΟΛΗ��6   $
��Left=�6*   $��
10,396,0,0q�6E   $	��Top=�6Y   $��24��6q   $��98��6}   $
��Bold"�6�   �� 56      $
��Left=�6   $��24��61   $��108,396,0,0q�6=   $��1��6R   $

 Wrap=�6_   $�� ��6s   $	��Top=�6{   $��82��6�   �� 57      $��ΗΜ/ΝΙΑ��6   $
��Left=�6%   $��195,396,0,0q�6@   $��1��6U   $	��Top=�6b   $��24��6z   $��52��6�   �� 58      $
��Left=�6   $��24��61   $��343,174,0,0q�6=   $

 Wrap=�6R   $�� ��6f   $	��Top=�6n   $	��126��6�   (  "System.Windows.Controls.DatePicker  59      $
��Left=�6   $��252,396,0,0q�64   $��1��6I   $	��Top=�6V   $ 
-1.643,0.5&�6n   $��86��6�   $��25��6�   �� 5:      -   5        $ btnAddPaymentInAdvac��5:      $��108,426,141,110q�63   ���	#FF45AA3B$��Calibri)�6c   $
��Auto��6x   ���	#FF45AA3B.��5;      � $	��150��6   .+�5<        $		 Add=�6.   $��Center=�69   �� 5=      $��Center=�6    $��ΠΡΟΚΑΤΑΒΟΛΗ��6=   $��	35,0,10,0q�6P   $	��105��6c   5>      5?      �� 5@      $
��Left=�6   $��23��61   $��108,174,0,0q�6=   $

 Wrap=�6R   $�� ��6f   $	��Top=�6n   $	��230��6�   �� 5A      $��ΓΕΝΙΚΟ ΣΥΝΟΛΟ��6   $
��Left=�6,   $��239,465,0,0q�6G   $	��Top=�6\   $��24��6t   $	��104��6�   $
��Bold"�6�   �� 5B      $
��Left=�6   $��24��61   $��343,465,0,0q�6=   $

 Wrap=�6R   $�� ��6f   $	��Top=�6n   $	��126��6�   �� 5C      $��ΥΠΟΛΟΙΠΟ��6   $
��Left=�6'   $��268,494,0,0q�6B   $	��Top=�6W   $��24��6o   $��75��6{   $
��Bold"�6�   �� 5D      $
��Left=�6   $��24��61   $��343,494,0,0q�6=   $

 Wrap=�6R   $�� ��6f   $	��Top=�6n   $	��126��6�   �� 5E      $-��'ΣΤΟΙΧΕΙΑ ΠΑΡΑΓΓΕΛΙΑΣ��6   $
��Left=�63   $��190,124,0,0q�6N   $	��Top=�6c   $��27��6{   $	��148��6�   $
��Bold"�6�   �� 5F      -   5        $ btnPrev��5F      $��291,10,136,525q�6&   ���	#FF6C1900$��Calibri)�6U   $
��Auto��6j   ���	#FF6C1900.��5G      � $��26��6   .+�5H        $	 ArrowBackCircle=�6.   $��Center=�6E   $ 2.844,0.656&�6`   5I      5J      �� 5K      -   5        $ btnPrev_Copy��5K      $��348,10,79,525q�6+   ���	#FF6C1900$��Calibri)�6Y   $
��Auto��6n   ���	#FF6C1900.��5L      � $��26��6   .+�5M        $	 ArrowRightCircle=�6.   $��Center=�6F   $ 2.844,0.656&�6a   5N      5O      �� 5P      -   5        $ btnPrev_Copy1��5P      $��138,10,190,525q�6,   ���	#FF6C1900$��Calibri)�6[   $
��Auto��6p   ���	#FF6C1900.��5Q      � $	��150��6   .+�5R        $		 Eye=�6.   $��Center=�69   $ 2.844,0.656&�6T   �� 5S      $��Center=�6    $��ΠΡΟΒΟΛΗ��6=   $��	35,0,42,0q�6L   $��73��6_   5T      5U      5V      � 5W   
   $��1��6   $��1��6   $��	0,10,0,-5q�6,   .+�5X      �� $(��"ΟΝΟΜ/ΕΠΩΝΥΜΟ ΝΥΦΗΣ��6   $
��Left=�61   $��	86,17,0,0q�6L   $	��Top=�6_   $	��161��6w   $��24��6�   �� 5Y      $,��&ΟΝΟΜ/ΕΠΩΝΥΜΟ ΓΑΜΠΡΟΥ��6   $
��Left=�63   $��	72,43,0,0q�6N   $	��Top=�6a   $	��175��6y   $��24��6�   �� 5Z      $��ΔΙΕΥΘΥΝΣΗ��6   $
��Left=�6(   $��
165,71,0,0q�6C   $	��Top=�6W   $��77��6o   $��24��6z   �� 5[      $��ΤΗΛΕΦΩΝΟ��6   $
��Left=�6'   $��165,100,0,0q�6B   $	��Top=�6W   $��77��6o   $��24��6z   �� 5\      $��EMAIL��6   $
��Left=�6$   $��197,127,0,0q�6?   $	��Top=�6T   $��45��6l   $��24��6w   �� 5]      $
��Left=�6   $��23��61   $��
247,18,0,0q�6=   $

 Wrap=�6Q   $�� ��6e   $	��Top=�6m   $	��190��6�   �� 5^      $
��Left=�6   $��23��61   $��
247,44,0,0q�6=   $

 Wrap=�6Q   $�� ��6e   $	��Top=�6m   $	��190��6�   �� 5_      $
��Left=�6   $��23��61   $��
247,72,0,0q�6=   $

 Wrap=�6Q   $�� ��6e   $	��Top=�6m   $	��190��6�   �� 5`      $
��Left=�6   $��23��61   $��247,100,0,0q�6=   $

 Wrap=�6R   $�� ��6f   $	��Top=�6n   $	��191��6�   �� 5a      $
��Left=�6   $��23��61   $��247,128,0,0q�6=   $

 Wrap=�6R   $�� ��6f   $	��Top=�6n   $	��191��6�   &   System.Windows.Controls.DataGrid  5b      $
��Left=�6   $	��108��62   $��	0,156,0,0q�6?   $	��Top=�6R   $	��536��6j     5c      $
��Left=�6   $	��115��62   $��	0,269,0,0q�6?   $	��Top=�6R   $	��536��6j   �� 5d      -	   5        $ btnEditWeddingOrder��5d      $��303,400,10,113q�62   ���	#FF6A617A$��Calibri)�6a   $
��Auto��6v   ���	#FF6A617A.��5e      � $	��150��6   .+�5f        $
	 Edit=�6.   $��Center=�6:   �� 5g      $��Center=�6    $��ΕΠΕΞΕΡΓΑΣΙΑ��6=   $��	35,0,10,0q�6P   $	��105��6c   5h      5i      �� 5j      -
   5        $ btnEditWeddingOrder_Copy��5j      $��10,400,303,113q�67   ���	#FF45AA3B$��Calibri)�6f   $
��Auto��6{   ���	#FF45AA3B.��5k      � $	��150��6   .+�5l        $	 	AddCircle=�6.   $��Center=�6?   �� 5m      $��Center=�6    $��ΠΡΟΣΘΗΚΗ��6=   $��45,0,0,0q�6M   $	��105��6_   5n      5o      �� 5p      -   5        $ btnEditWeddingOrder_Copy1��5p      $��10,478,303,35q�68   ���	#FFCD423B$��Calibri)�6f   $
��Auto��6{   ���	#FFCD423B.��5q      � $	��150��6   .+�5r        $	 Cancel=�6.   $��Center=�6<   �� 5s      $��Center=�6    $��ΑΚΥΡΩΣΗ��6=   $��45,0,0,0q�6L   $	��105��6^   5t      5u      �� 5v      -   5        $ btnEditWeddingOrder_Copy2��5v      $��304,478,9,35q�68   ���	#FF6C1900$��Calibri)�6e   $
��Auto��6z   ���	#FF6C1900.��5w      � $	��150��6   .+�5x        $	 Achievement=�6.   $��Center=�6A   �� 5y      $��Center=�6    $��ΠΑΡΑΔΟΘΗΚΕ��6=   $��45,0,0,0q�6O   $	��105��6a   5z      5{      5|      5}      5~      