   M S B A M L   `   `   `  ����G  CKinectPaint, Version=1.0.0.45, Culture=neutral, PublicKeyToken=null[2clr-namespace:Microsoft.Kinect.Samples.KinectPaint$Microsoft.Kinect.Samples.KinectPaint  5   	   5    /Microsoft.Kinect.Samples.KinectPaint.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   Dlocal2clr-namespace:Microsoft.Kinect.Samples.KinectPaint     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   (ignorehttp://www.ignore.com     5   	   -   5          � Title$  Kinect Paint��5	   	    � WindowState$ 	Maximized=�5
   	    � WindowStyle$
 None=�5   	    � Cursor$
 None��5   	      MainBackgroundBrush#��[  5   	    � DataContext 5   	   ��  �� RelativeSource �� *Self+.��5      �  � ColumnDefinitions 5   
   �� 5        ColumnWidth1#��[ 6   �� 5      $��* �6   �� 5        ColumnWidth3#��[ 6    � RowDefinitions 5   
   �� 5      �� 5      $
��Auto �6   .+�5   
   � -   5         �Name$ PART_PaintCanvas��5      $��1��5         MainCanvasStyle#��[ 5"      .+�5$      �� -   5        	 ��Name$	 PART_KinectVideo��5$      �� 5&      -   5        $	 PART_LoadedImageDisplay��5&      $
��None=�5'      $��Center=�5(      $��Center=�5)      $��-34,0,-34,0q�5*      5+      �� 5-   
   -   5        
 ��Name$
 PART_selectionUI��5-      $��10,0,-10,16q�5.      $��2��6*   .+�5/      �� $��Tools��6     
LabelStyle#��[ 50      =   7Microsoft.Kinect.Samples.KinectPaint.KinectPaintListBox  52        BrushItemStyle#��[ 54   '     ToolListBoxStyle#��[ 55   '    �� SelectedItem 52   '   �� *SelectedBrush+ �� Mode$ TwoWay=���53   '   �� *AvailableBrushes+55   '   56      � 58   
   -   5        $ PART_actionUI��59      $��0��58      $��1��59   &   $��10,10,0,-10q�6:   $��2��6O    5:      �� 5;      $
��Auto �6    �� 5<      $��* �6    �� 5=      $
��Auto �6    .+�5@      �   RightButtonPanelStyle#��[ 6   $��	15,30,0,0q�5A      .+�5B      <   6Microsoft.Kinect.Samples.KinectPaint.KinectPaintButton  <   6Microsoft.Kinect.Samples.KinectPaint.KinectPaintButton   Click$ OnQuit��6*   
 � Tag$
 quit��5C   *     KinectButtonStyle#��[ 5D   *   .��5E      �� $0��*/KinectPaint;component/Resources/close.png��6    	 ButtonIconStyle#��[	 5F      $��30��5G      $��30��5H      5I        5K      $ OnCloseTutorial��5M   *    
 TutorialButtonStyle#��[
 5K   *   $��2��5L   *   .��5N      �� $��
Let's draw��6      TutorialButtonTextStyle#��[ 5O       5P      5Q      �� 5S      $��2��6   .+�5T      �� $��File Options��6   #��[ 5U      $
��Left=�5V       �� TextAlignment$
 Left=�5W      � 5Y      #��[ 6   $��	15,0,0,20q�5Z      .+�5[        $ OnSave��6.   $
 save��5\   .   #��[ 5]   .   .��5^      �� $/��)/KinectPaint;component/Resources/save.png��6    #��[	 5_       5`        5b      $ OnLoad��6.   $
 load��5c   .   #��[ 5d   .   .��5e      �� $1��+/KinectPaint;component/Resources/folder.png��6    #��[	 5f       5g        5i      $ OnNew��6.   #��[ 5j   .   $	 new��5k   .   .��5l      �� $.��(/KinectPaint;component/Resources/new.png��6    #��[	 5m       5n      5o      5p      5q        5s   
   -   5          Name$ PART_ColorPickerListBox��5s   #   7   1Microsoft.Kinect.Samples.KinectPaint.KinectCursor   CursorEnter" KinectPaintListBox_CursorEnter5y   #      CursorLeave" KinectPaintListBox_CursorLeave5z   #   $��1��5t   #   $��1��60   
������   ColorListboxStyle#��[ 5x   #   ��5v   #   �� *AvailableColors+ 5w   #   �� *SelectedColor+$ TwoWay=�5z   #   � 5|   
   -   5        $ PART_SaveMessage��5|      $��1��5}      $��Center=�5~      $��Center=�5        SaveMessageGridStyle#��[ 5�       J� Opacity$ 0Q�5�      .+�5�      �� $��2��6    �� Orientation$ 
Horizontal=�5�        MessagePanelStyle#��[ 5�      $
��35,0q�5�      .+�5�      �� $/��)/KinectPaint;component/Resources/save.png��6   $��75��5�      $��75��5�      �� 5�      $ Center=�6   $��successfully saved��5�        SaveMessageTextStyle#��[ 5�      $
��Wrap=�5�      5�      5�      3   -Microsoft.Kinect.Samples.KinectPaint.Tutorial  5�   
   -	   5          Name$ Tutorial��5�      $��3��5�      5�      �� 5�   
   -
   5         ��Name$ PART_PopupDisplay��5�      $��3��5�      $��2��5�        PopupContentControlStyle#��[ 5�      7   1Microsoft.Kinect.Samples.KinectPaint.KinectCursor  5�   
   -   5          Name$ PART_Cursor��5�      $��3��5�      $��2��5�      �� 5�   
   -   5         ��Name$ PART_ErrorText��5�      $!��Failed to start the Kinect!��5�       J� IsHitTestVisible .  $y�	Collapsed=�5�      $��1��5�        KinectErrorTextStyle#��[ 5�      5�      5�      