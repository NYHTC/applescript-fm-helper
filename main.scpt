FasdUAS 1.101.10   ��   ��    k             l     ��  ��      main script     � 	 	    m a i n   s c r i p t   
  
 l     ��  ��      Erik Shagdar, NYHTC     �   (   E r i k   S h a g d a r ,   N Y H T C      l     ��������  ��  ��        l     ��  ��    %  Generated: 2016-03-16 11:20:35     �   >   G e n e r a t e d :   2 0 1 6 - 0 3 - 1 6   1 1 : 2 0 : 3 5      l     ��  ��    n h Run 'main_helper.applescript' to after making changes in any .applescript file and after each git pull.     �   �   R u n   ' m a i n _ h e l p e r . a p p l e s c r i p t '   t o   a f t e r   m a k i n g   c h a n g e s   i n   a n y   . a p p l e s c r i p t   f i l e   a n d   a f t e r   e a c h   g i t   p u l l .      l     ��������  ��  ��        j     �� �� 0 
scriptname 
ScriptName  m          � ! !  m a i n . s c p t   " # " l     ��������  ��  ��   #  $ % $ l     ��������  ��  ��   %  & ' & i     ( ) ( I      �������� (0 fmgui_appfrontmost fmGUI_AppFrontMost��  ��   ) k     E * *  + , + l     �� - .��   - D > 1.1 - 2015-04-14 ( eshagdar ): close FMEmpower window if open    . � / / |   1 . 1   -   2 0 1 5 - 0 4 - 1 4   (   e s h a g d a r   ) :   c l o s e   F M E m p o w e r   w i n d o w   i f   o p e n ,  0 1 0 l     ��������  ��  ��   1  2�� 2 O     E 3 4 3 O    D 5 6 5 Z    C 7 8���� 7 >    9 : 9 1    ��
�� 
pisf : m    ��
�� boovtrue 8 k    ? ; ;  < = < r     > ? > m    ��
�� boovtrue ? 1    ��
�� 
pisf =  @ A @ I   �� B��
�� .sysodelanull��� ��� nmbr B m    ���� ��   A  C D C l   ��������  ��  ��   D  E F E l   �� G H��   G ) #close FMEmpower window if it's open    H � I I F c l o s e   F M E m p o w e r   w i n d o w   i f   i t ' s   o p e n F  J�� J Z    ? K L���� K =   ' M N M n    % O P O 1   # %��
�� 
pnam P 4    #�� Q
�� 
cwin Q m   ! "����  N m   % & R R � S S $ 2 e m p o w e r F M   T o o l b o x L k   * ; T T  U V U I  * 5�� W��
�� .prcsclicnull��� ��� uiel W n   * 1 X Y X 4   . 1�� Z
�� 
butT Z m   / 0����  Y 4   * .�� [
�� 
cwin [ m   , -���� ��   V  \�� \ I  6 ;�� ]��
�� .sysodelanull��� ��� nmbr ] m   6 7���� ��  ��  ��  ��  ��  ��  ��   6 4    �� ^
�� 
pcap ^ m     _ _ � ` ` , F i l e M a k e r   P r o   A d v a n c e d 4 m      a a�                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  ��   '  b c b l     ��������  ��  ��   c  d e d i    
 f g f I      �������� 00 fmgui_dataviewer_close fmGUI_DataViewer_Close��  ��   g O     3 h i h O    2 j k j k    1 l l  m n m n    o p o I    �������� (0 fmgui_appfrontmost fmGUI_AppFrontMost��  ��   p  f     n  q�� q Q    1 r s�� r I   (�� t��
�� .prcsclicnull��� ��� uiel t n    $ u v u 4   ! $�� w
�� 
butT w m   " #����  v l   ! x���� x 6   ! y z y 4   �� {
�� 
cwin { m    ����  z =     | } | 1    ��
�� 
pnam } m     ~ ~ �    D a t a   V i e w e r��  ��  ��   s R      ������
�� .ascrerr ****      � ****��  ��  ��  ��   k 4    �� �
�� 
pcap � m     � � � � � , F i l e M a k e r   P r o   A d v a n c e d i m      � ��                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��   e  � � � l     ��������  ��  ��   �  � � � i     � � � I      �������� .0 fmgui_inspector_close fmGUI_Inspector_Close��  ��   � O     r � � � O    q � � � k    p � �  � � � n    � � � I    �������� (0 fmgui_appfrontmost fmGUI_AppFrontMost��  ��   �  f     �  � � � l   �� � ���   � I C try the click twice in case the first only brings window to front.    � � � � �   t r y   t h e   c l i c k   t w i c e   i n   c a s e   t h e   f i r s t   o n l y   b r i n g s   w i n d o w   t o   f r o n t . �  � � � Q    . � ��� � r    % � � � m    ����  � n       � � � 1   " $��
�� 
pidx � l   " ����� � 6   " � � � 4   �� �
�� 
cwin � m    ����  � =   ! � � � 1    ��
�� 
pnam � m      � � � � �  I n s p e c t o r��  ��   � R      ������
�� .ascrerr ****      � ****��  ��  ��   �  � � � Q   / O � ��� � I  2 F�� ���
�� .prcsclicnull��� ��� uiel � n   2 B � � � 4   ? B�� �
�� 
butT � m   @ A����  � l  2 ? ����� � 6  2 ? � � � 4  2 6�� �
�� 
cwin � m   4 5����  � =  7 > � � � 1   8 :��
�� 
pnam � m   ; = � � � � �  I n s p e c t o r��  ��  ��   � R      ������
�� .ascrerr ****      � ****��  ��  ��   �  ��� � Q   P p � ��� � I  S g�� ���
�� .prcsclicnull��� ��� uiel � n   S c � � � 4   ` c�� �
�� 
butT � m   a b����  � l  S ` ����� � 6  S ` � � � 4  S W�� �
�� 
cwin � m   U V����  � =  X _ � � � 1   Y [��
�� 
pnam � m   \ ^ � � � � �  I n s p e c t o r��  ��  ��   � R      ������
�� .ascrerr ****      � ****��  ��  ��  ��   � 4    � �
� 
pcap � m     � � � � � , F i l e M a k e r   P r o   A d v a n c e d � m      � ��                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��   �  � � � l     �~�}�|�~  �}  �|   �  � � � i     � � � I      �{�z�y�{ 00 fmgui_inspector_ensure fmGUI_Inspector_Ensure�z  �y   � k     h � �  � � � l     �x � ��x   �   version 1.1    � � � �    v e r s i o n   1 . 1 �  � � � l     �w�v�u�w  �v  �u   �  � � � Q     f � � � � k    R � �  � � � I    �t�s�r�t 20 fmgui_modeensure_layout fmGUI_ModeEnsure_Layout�s  �r   �  ��q � O   	 R � � � O    Q � � � k    P � �  � � � l   �p�o�n�p  �o  �n   �  � � � n    � � � I    �m�l�k�m (0 fmgui_appfrontmost fmGUI_AppFrontMost�l  �k   �  f     �  � � � l   �j�i�h�j  �i  �h   �  � � � Z    M � ��g�f � H    , � � l   + ��e�d � I   +�c ��b
�c .coredoexnull���     **** � l   ' ��a�` � 6   ' � � � 4   �_ �
�_ 
cwin � m    �^�^  � E    & � � � 1     "�]
�] 
pnam � m   # % � � � � �  I n s p e c t o r�a  �`  �b  �e  �d   � I  / I�\ ��[
�\ .prcsclicnull��� ��� uiel � l  / E ��Z�Y � 6  / E   n   / < 4  9 <�X
�X 
menI m   : ;�W�W  n   / 9 4   6 9�V
�V 
menE m   7 8�U�U  n   / 6	 4   3 6�T

�T 
mbri
 m   4 5 �  V i e w	 4   / 3�S
�S 
mbar m   1 2�R�R  =  = D 1   > @�Q
�Q 
pnam m   A C �  I n s p e c t o r�Z  �Y  �[  �g  �f   � �P L   N P m   N O�O
�O boovtrue�P   � 4    �N
�N 
pcap m     � , F i l e M a k e r   P r o   A d v a n c e d � m   	 
�                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  �q   � R      �M
�M .ascrerr ****      � **** o      �L�L 0 errmsg errMsg �K�J
�K 
errn o      �I�I 0 errnum errNum�J   � R   Z f�H
�H .ascrerr ****      � **** b   ` e m   ` c �   4 C o u l d n ' t   o p e n   I n s p e c t o r   -   o   c d�G�G 0 errmsg errMsg �F!�E
�F 
errn! o   ^ _�D�D 0 errnum errNum�E   � "�C" l  g g�B�A�@�B  �A  �@  �C   � #$# l     �?�>�=�?  �>  �=  $ %&% i    '(' I      �<�;�:�< 20 fmgui_modeensure_browse fmGUI_ModeEnsure_Browse�;  �:  ( k     )) *+* l     �9,-�9  ,   version 1.0   - �..    v e r s i o n   1 . 0+ /0/ l     �8�7�6�8  �7  �6  0 121 Q     3453 k    66 787 I    	�59�4�5 $0 fmgui_modeselect fmGUI_ModeSelect9 :�3: m    ;; �<<  B r o w s e�3  �4  8 =�2= l  
 
�1�0�/�1  �0  �/  �2  4 R      �.>?
�. .ascrerr ****      � ****> o      �-�- 0 errmsg errMsg? �,@�+
�, 
errn@ o      �*�* 0 errnum errNum�+  5 R    �)AB
�) .ascrerr ****      � ****A b    CDC m    EE �FF B C o u l d n ' t   e n s u r e   i n   B r o w s e   M o d e   -  D o    �(�( 0 errmsg errMsgB �'G�&
�' 
errnG o    �%�% 0 errnum errNum�&  2 HIH l   �$�#�"�$  �#  �"  I J�!J l   � ���   �  �  �!  & KLK l     ����  �  �  L MNM i    OPO I      ���� .0 fmgui_modeensure_find fmGUI_ModeEnsure_Find�  �  P k     QQ RSR l     �TU�  T   version 1.0   U �VV    v e r s i o n   1 . 0S WXW l     ����  �  �  X YZY Q     [\][ k    ^^ _`_ I    	�a�� $0 fmgui_modeselect fmGUI_ModeSelecta b�b m    cc �dd  F i n d�  �  ` e�e l  
 
����  �  �  �  \ R      �fg
� .ascrerr ****      � ****f o      �� 0 errmsg errMsgg �
h�	
�
 
errnh o      �� 0 errnum errNum�	  ] R    �ij
� .ascrerr ****      � ****i b    klk m    mm �nn B C o u l d n ' t   e n s u r e   i n   B r o w s e   M o d e   -  l o    �� 0 errmsg errMsgj �o�
� 
errno o    �� 0 errnum errNum�  Z pqp l   ��� �  �  �   q r��r l   ��������  ��  ��  ��  N sts l     ��������  ��  ��  t uvu i    wxw I      �������� 20 fmgui_modeensure_layout fmGUI_ModeEnsure_Layout��  ��  x k     yy z{z l     ��|}��  |   version 1.0   } �~~    v e r s i o n   1 . 0{ � l     ��������  ��  ��  � ��� Q     ���� k    �� ��� I    	������� $0 fmgui_modeselect fmGUI_ModeSelect� ���� m    �� ���  L a y o u t��  ��  � ���� l  
 
��������  ��  ��  ��  � R      ����
�� .ascrerr ****      � ****� o      ���� 0 errmsg errMsg� �����
�� 
errn� o      ���� 0 errnum errNum��  � R    ����
�� .ascrerr ****      � ****� b    ��� m    �� ��� B C o u l d n ' t   e n s u r e   i n   B r o w s e   M o d e   -  � o    ���� 0 errmsg errMsg� �����
�� 
errn� o    ���� 0 errnum errNum��  � ��� l   ��������  ��  ��  � ���� l   ��������  ��  ��  ��  v ��� l     ��������  ��  ��  � ��� i    "��� I      ������� (0 fmgui_window_close fmGUI_Window_Close� ���� o      ����  0 somewindowname someWindowName��  ��  � k     �� ��� l     ������  �   version 1.1	   � ���    v e r s i o n   1 . 1 	� ��� l     ��������  ��  ��  � ��� O     ��� k    �� ��� l   ��������  ��  ��  � ��� I   �����
�� .coreclosnull���    obj � 4    ���
�� 
cwin� o   
 ����  0 somewindowname someWindowName��  � ���� l   ��������  ��  ��  ��  � 5     �����
�� 
capp� m    �� ��� > c o m . f i l e m a k e r . c l i e n t . a d v a n c e d 1 2
�� kfrmID  � ��� l   ��������  ��  ��  � ��� L    �� m    ��
�� boovtrue� ���� l   ��������  ��  ��  ��  � ��� l     ��������  ��  ��  � ��� i   # &��� I      ������� $0 fmgui_modeselect fmGUI_ModeSelect� ���� o      ���� 0 modetoselect modeToSelect��  ��  � k     ��� ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ���� Q     ����� O    r��� O    q��� k    p�� ��� n   ��� I    �������� (0 fmgui_appfrontmost fmGUI_AppFrontMost��  ��  �  f    � ��� n   ��� I    �������� .0 fmgui_inspector_close fmGUI_Inspector_Close��  ��  �  f    � ��� l   ��������  ��  ��  � ��� l   ������  � @ : Need to click in upper-left corner of area before pasting   � ��� t   N e e d   t o   c l i c k   i n   u p p e r - l e f t   c o r n e r   o f   a r e a   b e f o r e   p a s t i n g� ��� r     ��� 4    ���
�� 
cwin� m    ���� � o      ���� 0 
modewindow 
modeWindow� ��� r   ! 0��� 6  ! .��� n   ! %��� 4  " %���
�� 
sgrp� m   # $���� � o   ! "���� 0 
modewindow 
modeWindow� D   & -��� 1   ' )��
�� 
desc� m   * ,�� ��� " M o d e   C o n t e n t   A r e a� o      ���� "0 modecontentarea modeContentArea� ��� r   1 6��� n   1 4��� 1   2 4��
�� 
desc� o   1 2���� "0 modecontentarea modeContentArea� o      ���� *0 modecontentareadesc modeContentAreaDesc� ��� r   7 =� � n   7 ; 4  8 ;��
�� 
cwor m   9 :����  o   7 8���� *0 modecontentareadesc modeContentAreaDesc  o      ���� 0 currentmode currentMode�  l  > >��������  ��  ��    Z   > k	���� >  > A

 o   > ?���� 0 currentmode currentMode o   ? @���� 0 modetoselect modeToSelect	 k   D g  I  D I����
�� .sysodelanull��� ��� nmbr m   D E ?�      ��    r   J O b   J M o   J K���� 0 modetoselect modeToSelect m   K L � 
   M o d e o      ���� 0 menuitemname menuItemName �� I  P g����
�� .prcsclicnull��� ��� uiel l  P c���� n   P c 4   ^ c��
�� 
menI o   a b���� 0 menuitemname menuItemName n   P ^  4   Y ^��!
�� 
menE! m   \ ]��   n   P Y"#" 4   T Y�~$
�~ 
mbri$ m   U X%% �&&  V i e w# 4   P T�}'
�} 
mbar' m   R S�|�| ��  ��  ��  ��  ��  ��   ()( l  l l�{�z�y�{  �z  �y  ) *+* L   l n,, m   l m�x
�x boovtrue+ -�w- l  o o�v�u�t�v  �u  �t  �w  � 4    �s.
�s 
pcap. m   	 
// �00 , F i l e M a k e r   P r o   A d v a n c e d� m    11�                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  � R      �r23
�r .ascrerr ****      � ****2 o      �q�q 0 errmsg errMsg3 �p4�o
�p 
errn4 o      �n�n 0 errnum errNum�o  � R   z ��m56
�m .ascrerr ****      � ****5 b   � �787 b   � �9:9 b   � �;<; m   � �== �>> 2 C o u l d n ' t   s w i t c h   t o   m o d e   '< o   � ��l�l 0 modetoselect modeToSelect: m   � �?? �@@  '   -  8 o   � ��k�k 0 errmsg errMsg6 �jA�i
�j 
errnA o   ~ �h�h 0 errnum errNum�i  ��  � BCB l     �g�f�e�g  �f  �e  C DED i   ' *FGF I      �dH�c�d 0 sort  H I�bI o      �a�a 0 oldlist oldList�b  �c  G k     DJJ KLK l     �`MN�`  M   version 1.0   N �OO    v e r s i o n   1 . 0L PQP r     RSR J     
TT UVU n    WXW 1    �_
�_ 
txdlX 1     �^
�^ 
ascrV Y�]Y I   �\Z�[
�\ .sysontocTEXT       shorZ m    �Z�Z 
�[  �]  S J      [[ \]\ o      �Y�Y 0 od  ] ^�X^ n     _`_ 1    �W
�W 
txdl` 1    �V
�V 
ascr�X  Q aba r    !cdc c    efe o    �U�U 0 oldlist oldListf m    �T
�T 
TEXTd o      �S�S 0 	textblock 	textBlockb ghg r   " /iji I  " -�Rk�Q
�R .sysoexecTEXT���     TEXTk b   " )lml b   " 'non m   " #pp �qq 
 e c h o  o n   # &rsr 1   $ &�P
�P 
strqs o   # $�O�O 0 	textblock 	textBlockm m   ' (tt �uu    |   s o r t�Q  j o      �N�N 0 sortedblock sortedBlockh vwv r   0 5xyx o   0 1�M
�M 
ret y n     z{z 1   2 4�L
�L 
txdl{ 1   1 2�K
�K 
ascrw |}| r   6 ;~~ n   6 9��� 2   7 9�J
�J 
citm� o   6 7�I�I 0 sortedblock sortedBlock o      �H�H 0 
sortedlist 
sortedList} ��� r   < A��� o   < =�G�G 0 od  � n     ��� 1   > @�F
�F 
txdl� 1   = >�E
�E 
ascr� ��� l  B B�D�C�B�D  �C  �B  � ��A� L   B D�� o   B C�@�@ 0 
sortedlist 
sortedList�A  E ��� l     �?�>�=�?  �>  �=  � ��� i   + .��� I      �<��;�< 0 
logconsole 
logConsole� ��� o      �:�: 0 processname processName� ��9� o      �8�8 0 
consolemsg 
consoleMsg�9  �;  � k     H�� ��� l     �7���7  � C = version 2.0 - Daniel A. Shockley, http://www.danshockley.com   � ��� z   v e r s i o n   2 . 0   -   D a n i e l   A .   S h o c k l e y ,   h t t p : / / w w w . d a n s h o c k l e y . c o m� ��� l     �6�5�4�6  �5  �4  � ��� l     �3���3  � P J 2.0 - strip out any NULL characters, since that breaks the shell command.   � ��� �   2 . 0   -   s t r i p   o u t   a n y   N U L L   c h a r a c t e r s ,   s i n c e   t h a t   b r e a k s   t h e   s h e l l   c o m m a n d .� ��� l     �2���2  � c ] 1.9 - REQUIRES coerceToString to enable logging of objects not directly coercible to string.   � ��� �   1 . 9   -   R E Q U I R E S   c o e r c e T o S t r i n g   t o   e n a b l e   l o g g i n g   o f   o b j e c t s   n o t   d i r e c t l y   c o e r c i b l e   t o   s t r i n g .� ��� l     �1���1  � ` Z 1.8 - coerces to string first (since numbers would not directly convert for 'quoted form'   � ��� �   1 . 8   -   c o e r c e s   t o   s t r i n g   f i r s t   ( s i n c e   n u m b e r s   w o u l d   n o t   d i r e c t l y   c o n v e r t   f o r   ' q u o t e d   f o r m '� ��� l     �0���0  � g a 1.7 - now works with Leopard by using the "logger" command instead of just appending to log file   � ��� �   1 . 7   -   n o w   w o r k s   w i t h   L e o p a r d   b y   u s i n g   t h e   " l o g g e r "   c o m m a n d   i n s t e a d   o f   j u s t   a p p e n d i n g   t o   l o g   f i l e� ��� l     �/���/  � } w 1.6 - the 'space' constant instead of literal spaces for readability, removed trailing space from the hostname command   � ��� �   1 . 6   -   t h e   ' s p a c e '   c o n s t a n t   i n s t e a d   o f   l i t e r a l   s p a c e s   f o r   r e a d a b i l i t y ,   r e m o v e d   t r a i l i n g   s p a c e   f r o m   t h e   h o s t n a m e   c o m m a n d� ��� l     �.���.  � - ' 1.5 - uses standard date-stamp format	   � ��� N   1 . 5   -   u s e s   s t a n d a r d   d a t e - s t a m p   f o r m a t 	� ��� l     �-�,�+�-  �,  �+  � ��� r     ��� I     �*��)�*  0 coercetostring coerceToString� ��(� o    �'�' 0 
consolemsg 
consoleMsg�(  �)  � o      �&�& 0 
consolemsg 
consoleMsg� ��� l  	 ���� r   	 ��� I   	 �%��$�% 0 replacesimple replaceSimple� ��#� J   
 �� ��� o   
 �"�" 0 
consolemsg 
consoleMsg� ��� I   �!�� 
�! .sysontocTEXT       shor� m    ��  �   � ��� m    �� ���  �  �#  �$  � o      �� 0 
consolemsg 
consoleMsg� %  ASCII 0 breaks shell scripting   � ��� >   A S C I I   0   b r e a k s   s h e l l   s c r i p t i n g� ��� Z    )����� =   ��� n    ��� 1    �
� 
leng� o    �� 0 
consolemsg 
consoleMsg� m    ��  � k   " %�� ��� l  " "����  � H B we still want this function to log that an empty string was sent:   � ��� �   w e   s t i l l   w a n t   t h i s   f u n c t i o n   t o   l o g   t h a t   a n   e m p t y   s t r i n g   w a s   s e n t :� ��� r   " %��� m   " #�� ���  [ E M P T Y   S T R I N G ]� o      �� 0 
consolemsg 
consoleMsg�  �  �  � ��� r   * =��� b   * ;��� b   * 7��� b   * 5��� b   * 1��� b   * /��� b   * -��� m   * +�� ���  l o g g e r� 1   + ,�
� 
spac� m   - .�� ���  - t� 1   / 0�
� 
spac� n   1 4��� 1   2 4�
� 
strq� o   1 2�� 0 processname processName� 1   5 6�
� 
spac� n   7 :   1   8 :�
� 
strq o   7 8�� 0 
consolemsg 
consoleMsg� o      �� 0 shellcommand shellCommand�  l  > >���
�  �  �
    I  > C�	�
�	 .sysoexecTEXT���     TEXT o   > ?�� 0 shellcommand shellCommand�    L   D F		 o   D E�� 0 shellcommand shellCommand 
�
 l  G G����  �  �  �  �  l     �� ���  �   ��    i   / 2 I      ������ 0 loglevel logLEVEL  o      ���� 	0 level   �� o      ���� 0 somemsg someMsg��  ��   k     4  l     ��������  ��  ��    l     ����   G A Lower number level means more important (scale 1 to 5, for now).    � �   L o w e r   n u m b e r   l e v e l   m e a n s   m o r e   i m p o r t a n t   ( s c a l e   1   t o   5 ,   f o r   n o w ) .  l     �� ��   U O Appends X's to ScriptName - more X's is more important (lower 'level' number).     �!! �   A p p e n d s   X ' s   t o   S c r i p t N a m e   -   m o r e   X ' s   i s   m o r e   i m p o r t a n t   ( l o w e r   ' l e v e l '   n u m b e r ) . "#" l     ��$%��  $ W Q Reason: can search Console Log for ScriptName_XXXXX to get only most important.    % �&& �   R e a s o n :   c a n   s e a r c h   C o n s o l e   L o g   f o r   S c r i p t N a m e _ X X X X X   t o   g e t   o n l y   m o s t   i m p o r t a n t .  # '(' l     ��������  ��  ��  ( )*) r     +,+ m     ���� , o      ���� 0 	maxxcount 	maxXcount* -.- l   ��������  ��  ��  . /0/ r    121 b    343 o    	���� 0 
scriptname 
ScriptName4 m   	 
55 �66  _2 o      ���� 0 logname logName0 787 l   ��������  ��  ��  8 9:9 r    ;<; [    =>= \    ?@? o    ���� 0 	maxxcount 	maxXcount@ o    ���� 	0 level  > m    ���� < o      ���� 0 xcount xCount: ABA l   ��������  ��  ��  B CDC Y    *E��FG��E r     %HIH b     #JKJ o     !���� 0 logname logNameK m   ! "LL �MM  XI o      ���� 0 logname logName�� 0 i  F m    ���� G o    ���� 0 xcount xCount��  D NON l  + +��������  ��  ��  O PQP I   + 2��R���� 0 
logconsole 
logConsoleR STS o   , -���� 0 logname logNameT U��U o   - .���� 0 somemsg someMsg��  ��  Q V��V l  3 3��������  ��  ��  ��   WXW l     ��������  ��  ��  X YZY i   3 6[\[ I      ��]���� 0 logmain logMAIN] ^��^ o      ���� 0 somemsg someMsg��  ��  \ k     	__ `a` l     ��������  ��  ��  a bcb l     ��de��  d 4 . a special log entry for overview of process.	   e �ff \   a   s p e c i a l   l o g   e n t r y   f o r   o v e r v i e w   o f   p r o c e s s . 	c ghg l    ijki I     ��l���� 0 loglevel logLEVELl mnm m    ����  n o��o o    ���� 0 somemsg someMsg��  ��  j    log at highest importance   k �pp 4   l o g   a t   h i g h e s t   i m p o r t a n c eh q��q l   ��������  ��  ��  ��  Z rsr l     ��������  ��  ��  s tut i   7 :vwv I      ��x����  0 coercetostring coerceToStringx y��y o      ����  0 incomingobject incomingObject��  ��  w k    �zz {|{ l     ��}~��  } 4 . version 2.2, Daniel A. Shockley, Erik Shagdar   ~ � \   v e r s i o n   2 . 2 ,   D a n i e l   A .   S h o c k l e y ,   E r i k   S h a g d a r| ��� l     ��������  ��  ��  � ��� l     ������  � , & 2.2 - handle other object references?   � ��� L   2 . 2   -   h a n d l e   o t h e r   o b j e c t   r e f e r e n c e s ?� ��� l     ������  � i c 2.1 - Special handling of XML element references - probably need to handle other object references   � ��� �   2 . 1   -   S p e c i a l   h a n d l i n g   o f   X M L   e l e m e n t   r e f e r e n c e s   -   p r o b a b l y   n e e d   t o   h a n d l e   o t h e r   o b j e c t   r e f e r e n c e s� ��� l     ������  ��� 2.0 - Fixed a horrifying bug that could modify incoming data by reference; re-worked to use getting a definitely non-existent key instead of trying 'as number' since the old method would fail on lists of numbers (or lists of items that could be coerced to number). Sometimes returns an ellipses, but the error occurs randomly ( returns a 'stack overflow' for references, etc. if that we hit the error ).   � ���(   2 . 0   -   F i x e d   a   h o r r i f y i n g   b u g   t h a t   c o u l d   m o d i f y   i n c o m i n g   d a t a   b y   r e f e r e n c e ;   r e - w o r k e d   t o   u s e   g e t t i n g   a   d e f i n i t e l y   n o n - e x i s t e n t   k e y   i n s t e a d   o f   t r y i n g   ' a s   n u m b e r '   s i n c e   t h e   o l d   m e t h o d   w o u l d   f a i l   o n   l i s t s   o f   n u m b e r s   ( o r   l i s t s   o f   i t e m s   t h a t   c o u l d   b e   c o e r c e d   t o   n u m b e r ) .   S o m e t i m e s   r e t u r n s   a n   e l l i p s e s ,   b u t   t h e   e r r o r   o c c u r s   r a n d o m l y   (   r e t u r n s   a   ' s t a c k   o v e r f l o w '   f o r   r e f e r e n c e s ,   e t c .   i f   t h a t   w e   h i t   t h e   e r r o r   ) .� ��� l     ������  � e _ 1.9 - needs special handling for single item lists where that item could be gotten 'as number'   � ��� �   1 . 9   -   n e e d s   s p e c i a l   h a n d l i n g   f o r   s i n g l e   i t e m   l i s t s   w h e r e   t h a t   i t e m   c o u l d   b e   g o t t e n   ' a s   n u m b e r '� ��� l     ������  � J D 1.8 - instead of trying to store the error message use, generate it   � ��� �   1 . 8   -   i n s t e a d   o f   t r y i n g   t o   s t o r e   t h e   e r r o r   m e s s a g e   u s e ,   g e n e r a t e   i t� ��� l     ������  � = 7 1.7 -  added "Can't make " with a curly single-quote.    � ��� n   1 . 7   -     a d d e d   " C a n ' t   m a k e   "   w i t h   a   c u r l y   s i n g l e - q u o t e .  � ��� l     ������  � \ V 1.6 -  can add additional errMsg parts (just add to lists to handle other languages.    � ��� �   1 . 6   -     c a n   a d d   a d d i t i o n a l   e r r M s g   p a r t s   ( j u s t   a d d   t o   l i s t s   t o   h a n d l e   o t h e r   l a n g u a g e s .  � ��� l     ������  � ` Z             Currently handles English in both 10.3 and 10.4 (10.3 uses " into a number."    � ��� �                           C u r r e n t l y   h a n d l e s   E n g l i s h   i n   b o t h   1 0 . 3   a n d   1 0 . 4   ( 1 0 . 3   u s e s   "   i n t o   a   n u m b e r . "  � ��� l     ������  � 8 2             while 10.4 uses " into type number.")   � ��� d                           w h i l e   1 0 . 4   u s e s   "   i n t o   t y p e   n u m b e r . " )� ��� l     ������  �    1.5 -  added Unicode Text   � ��� 4   1 . 5   -     a d d e d   U n i c o d e   T e x t� ��� l     ��������  ��  ��  � ���� Z    ������ =    ��� n     ��� m    ��
�� 
pcls� o     ����  0 incomingobject incomingObject� m    ��
�� 
TEXT� k    �� ��� r    ��� l   ������ c    ��� o    	����  0 incomingobject incomingObject� m   	 
��
�� 
TEXT��  ��  � K      �� �����
�� 
ctxt� o      ����  0 incomingobject incomingObject��  � ���� L    �� o    ����  0 incomingobject incomingObject��  � ��� =   ��� n    ��� m    ��
�� 
pcls� o    ����  0 incomingobject incomingObject� m    ��
�� 
long� ��� k     /�� ��� r     *��� l    #������ c     #��� o     !����  0 incomingobject incomingObject� m   ! "��
�� 
TEXT��  ��  � K      �� �����
�� 
ctxt� o      ����  0 incomingobject incomingObject��  � ���� L   + /�� c   + .��� o   + ,����  0 incomingobject incomingObject� m   , -��
�� 
TEXT��  � ��� =  2 7��� n   2 5��� m   3 5��
�� 
pcls� o   2 3����  0 incomingobject incomingObject� m   5 6��
�� 
doub� ��� k   : I�� ��� r   : D��� l  : =������ c   : =��� o   : ;����  0 incomingobject incomingObject� m   ; <��
�� 
TEXT��  ��  � K      �� ����
�� 
ctxt� o      �~�~  0 incomingobject incomingObject�  � ��}� L   E I�� c   E H��� o   E F�|�|  0 incomingobject incomingObject� m   F G�{
�{ 
TEXT�}  � ��� =  L Q��� n   L O��� m   M O�z
�z 
pcls� o   L M�y�y  0 incomingobject incomingObject� m   O P�x
�x 
utxt� ��w� k   T c�� � � r   T ^ l  T W�v�u c   T W o   T U�t�t  0 incomingobject incomingObject m   U V�s
�s 
TEXT�v  �u   K       �r�q
�r 
ctxt o      �p�p  0 incomingobject incomingObject�q    �o L   _ c		 c   _ b

 o   _ `�n�n  0 incomingobject incomingObject m   ` a�m
�m 
TEXT�o  �w  � k   f�  l  f f�l�l   , & LIST, RECORD, styled text, or unknown    � L   L I S T ,   R E C O R D ,   s t y l e d   t e x t ,   o r   u n k n o w n  Q   f~ k   i �  Q   i � k   l s  r   l q !  m   l m"" �## ` s o m e _ U U I D _ V a l u e _ 5 4 F 8 2 7 C 7 3 7 9 E 4 0 7 3 B 5 A 2 1 6 B B 9 C D E 5 7 5 D! n      $%$ o   n p�k�k j0 3some_uuid_property_54f827c7379e4073b5a216bb9cde575d 3some_UUID_Property_54F827C7379E4073B5A216BB9CDE575D% m   m n&& �''  X X X X ()( l  r r�j�i�h�j  �i  �h  ) *+* l  r r�g,-�g  , V P GENERATE the error message for a known 'object' (here, a string) so we can get    - �.. �   G E N E R A T E   t h e   e r r o r   m e s s a g e   f o r   a   k n o w n   ' o b j e c t '   ( h e r e ,   a   s t r i n g )   s o   w e   c a n   g e t  + /�f/ l  r r�e01�e  0 7 1 the 'lead' and 'trail' part of the error message   1 �22 b   t h e   ' l e a d '   a n d   ' t r a i l '   p a r t   o f   t h e   e r r o r   m e s s a g e�f   R      �d34
�d .ascrerr ****      � ****3 o      �c�c 0 errmsg errMsg4 �b5�a
�b 
errn5 o      �`�` 0 errnum errNum�a   k   { �66 787 r   { �9:9 J   { �;; <=< n  { ~>?> 1   | ~�_
�_ 
txdl? 1   { |�^
�^ 
ascr= @�]@ J   ~ �AA B�\B m   ~ CC �DD  " X X X X "�\  �]  : J      EE FGF o      �[�[ 0 	olddelims 	oldDelimsG H�ZH n     IJI 1   � ��Y
�Y 
txdlJ 1   � ��X
�X 
ascr�Z  8 KLK r   � �MNM n   � �OPO 2  � ��W
�W 
citmP o   � ��V�V 0 errmsg errMsgN J      QQ RSR o      �U�U 0 
errmsglead 
errMsgLeadS T�TT o      �S�S 0 errmsgtrail errMsgTrail�T  L U�RU r   � �VWV o   � ��Q�Q 0 	olddelims 	oldDelimsW n     XYX 1   � ��P
�P 
txdlY 1   � ��O
�O 
ascr�R   Z[Z l  � ��N�M�L�N  �M  �L  [ \]\ l  � ��K^_�K  ^ = 7 now, generate error message for the SPECIFIED object:    _ �`` n   n o w ,   g e n e r a t e   e r r o r   m e s s a g e   f o r   t h e   S P E C I F I E D   o b j e c t :  ] aba r   � �cdc m   � �ee �ff ` s o m e _ U U I D _ V a l u e _ 5 4 F 8 2 7 C 7 3 7 9 E 4 0 7 3 B 5 A 2 1 6 B B 9 C D E 5 7 5 Dd n      ghg o   � ��J�J j0 3some_uuid_property_54f827c7379e4073b5a216bb9cde575d 3some_UUID_Property_54F827C7379E4073B5A216BB9CDE575Dh o   � ��I�I  0 incomingobject incomingObjectb iji l  � ��H�G�F�H  �G  �F  j k�Ek l  � ��D�C�B�D  �C  �B  �E   R      �Al�@
�A .ascrerr ****      � ****l o      �?�? 0 errmsg errMsg�@   Z   �~mn�>om F   � �pqp C   � �rsr o   � ��=�= 0 errmsg errMsgs m   � �tt �uu � S y s t e m   E v e n t s   g o t   a n   e r r o r :   C a n  t   m a k e   s o m e _ U U I D _ P r o p e r t y _ 5 4 F 8 2 7 C 7 3 7 9 E 4 0 7 3 B 5 A 2 1 6 B B 9 C D E 5 7 5 D   o f  q D   � �vwv o   � ��<�< 0 errmsg errMsgw m   � �xx �yy ( i n t o   t y p e   s p e c i f i e r .n k   �zz {|{ r   � �}~} m   � � ��� � S y s t e m   E v e n t s   g o t   a n   e r r o r :   C a n  t   m a k e   s o m e _ U U I D _ P r o p e r t y _ 5 4 F 8 2 7 C 7 3 7 9 E 4 0 7 3 B 5 A 2 1 6 B B 9 C D E 5 7 5 D   o f  ~ o      �;�; 0 
errmsglead 
errMsgLead| ��� r   � ���� m   � ��� ��� *   i n t o   t y p e   s p e c i f i e r .� o      �:�: 0 errmsgtrail errMsgTrail� ��� l  � ��9�8�7�9  �8  �7  � ��� r   � ���� J   � ��� ��� n  � ���� 1   � ��6
�6 
txdl� 1   � ��5
�5 
ascr� ��4� o   � ��3�3 0 
errmsglead 
errMsgLead�4  � J      �� ��� o      �2�2 0 od  � ��1� n     ��� 1   � ��0
�0 
txdl� 1   � ��/
�/ 
ascr�1  � ��� l  � ��.�-�,�.  �-  �,  � ��� r   � ���� n   � ���� 4   � ��+�
�+ 
citm� m   � ��*�* � o   � ��)�) 0 errmsg errMsg� o      �(�( 0 objectstring objectString� ��� r   ���� o   � ��'�' 0 errmsgtrail errMsgTrail� n     ��� 1   �&
�& 
txdl� 1   � �%
�% 
ascr� ��� l �$�#�"�$  �#  �"  � ��� r  
��� n  ��� 4  �!�
�! 
citm� m  � �  � o  �� 0 objectstring objectString� o      �� 0 objectstring objectString� ��� r  ��� o  �� 0 od  � n     ��� 1  �
� 
txdl� 1  �
� 
ascr� ��� l ����  �  �  � ��� l ����  �  �  � ��� l ����  �  �  �  �>  o k  ~�� ��� l ����  �  tell me to log errMsg   � ��� * t e l l   m e   t o   l o g   e r r M s g� ��� r  ��� o  �� 0 errmsg errMsg� o      �� 0 objectstring objectString� ��� l ����  �  �  � ��� Z  G���
�	� E  ��� o  �� 0 objectstring objectString� o  �� 0 
errmsglead 
errMsgLead� k  C�� ��� r  6��� J  %�� ��� n "��� 1   "�
� 
txdl� 1   �
� 
ascr� ��� o  "#�� 0 
errmsglead 
errMsgLead�  � J      �� ��� o      �� 0 od  � ��� n     ��� 1  24� 
�  
txdl� 1  12��
�� 
ascr�  � ��� r  7=��� n  7;��� 4  8;���
�� 
citm� m  9:���� � o  78���� 0 objectstring objectString� o      ���� 0 objectstring objectString� ���� r  >C��� o  >?���� 0 od  � n     ��� 1  @B��
�� 
txdl� 1  ?@��
�� 
ascr��  �
  �	  � ��� l HH��������  ��  ��  � ��� Z  H|������� E  HK��� o  HI���� 0 objectstring objectString� o  IJ���� 0 errmsgtrail errMsgTrail� k  Nx�� ��� r  Ne��� J  NT�� ��� n NQ��� 1  OQ��
�� 
txdl� 1  NO��
�� 
ascr� ���� o  QR���� 0 errmsgtrail errMsgTrail��  � J      �� � � o      ���� 0 od    �� n      1  ac��
�� 
txdl 1  `a��
�� 
ascr��  �  r  fk o  fg���� 0 errmsgtrail errMsgTrail n     	 1  hj��
�� 
txdl	 1  gh��
�� 
ascr 

 r  lr n  lp 4  mp��
�� 
citm m  no����  o  lm���� 0 objectstring objectString o      ���� 0 objectstring objectString �� r  sx o  st���� 0 od   n      1  uw��
�� 
txdl 1  tu��
�� 
ascr��  ��  ��  �  l }}��������  ��  ��   �� l }}����   O Iset {text:objectString} to (objectString as string) -- what does THIS do?    � � s e t   { t e x t : o b j e c t S t r i n g }   t o   ( o b j e c t S t r i n g   a s   s t r i n g )   - -   w h a t   d o e s   T H I S   d o ?��    l ��������  ��  ��   �� L  � o  ����� 0 objectstring objectString��  ��  u  !  l     ��������  ��  ��  ! "#" i   ; >$%$ I      ��&���� 0 gettextbefore getTextBefore& '(' o      ���� 0 
sourcetext 
sourceTEXT( )��) o      ���� 0 stophere stopHere��  ��  % k     Q** +,+ l     ��-.��  - B < version 1.1, Daniel A. Shockley, http://www.danshockley.com   . �// x   v e r s i o n   1 . 1 ,   D a n i e l   A .   S h o c k l e y ,   h t t p : / / w w w . d a n s h o c k l e y . c o m, 010 l     ��23��  2 9 3 gets the text before the first occurrence stopHere   3 �44 f   g e t s   t h e   t e x t   b e f o r e   t h e   f i r s t   o c c u r r e n c e   s t o p H e r e1 5��5 Q     Q6786 k    A99 :;: r    <=< J    	>> ?@? n   ABA 1    ��
�� 
txdlB 1    ��
�� 
ascr@ C��C o    ���� 0 stophere stopHere��  = J      DD EFE o      ���� 0 	olddelims 	oldDelimsF G��G n     HIH 1    ��
�� 
txdlI 1    ��
�� 
ascr��  ; JKJ Z    8LM��NL =   $OPO l   "Q����Q I   "��R��
�� .corecnte****       ****R n    STS 2   ��
�� 
citmT o    ���� 0 
sourcetext 
sourceTEXT��  ��  ��  P m   " #���� M k   ' /UU VWV r   ' ,XYX o   ' (���� 0 	olddelims 	oldDelimsY n     Z[Z 1   ) +��
�� 
txdl[ 1   ( )��
�� 
ascrW \��\ L   - /]] m   - .^^ �__  ��  ��  N r   2 8`a` n   2 6bcb 4   3 6��d
�� 
citmd m   4 5���� c o   2 3���� 0 
sourcetext 
sourceTEXTa l     e����e o      ���� 0 finalresult finalResult��  ��  K fgf r   9 >hih o   9 :���� 0 	olddelims 	oldDelimsi n     jkj 1   ; =��
�� 
txdlk 1   : ;��
�� 
ascrg l��l L   ? Amm o   ? @���� 0 finalresult finalResult��  7 R      ��no
�� .ascrerr ****      � ****n o      ���� 0 errmsg errMsgo ��p��
�� 
errnp o      ���� 0 errnum errNum��  8 k   I Qqq rsr r   I Ntut o   I J���� 0 	olddelims 	oldDelimsu n     vwv 1   K M��
�� 
txdlw 1   J K��
�� 
ascrs x��x l  O Qyz{y L   O Q|| m   O P}} �~~  z 3 - return nothing if the stop text is not found   { � Z   r e t u r n   n o t h i n g   i f   t h e   s t o p   t e x t   i s   n o t   f o u n d��  ��  # ��� l     ��������  ��  ��  � ��� i   ? B��� I      �������  0 gettextbetween getTextBetween� ���� o      ���� 	0 prefs  ��  ��  � k     ��� ��� l     ������  � C = version 1.6, Daniel A. Shockley <http://www.danshockley.com>   � ��� z   v e r s i o n   1 . 6 ,   D a n i e l   A .   S h o c k l e y   < h t t p : / / w w w . d a n s h o c k l e y . c o m >� ��� l     ��������  ��  ��  � ��� l     ������  � [ U gets the text between specified occurrence of beforeText and afterText in sourceText   � ��� �   g e t s   t h e   t e x t   b e t w e e n   s p e c i f i e d   o c c u r r e n c e   o f   b e f o r e T e x t   a n d   a f t e r T e x t   i n   s o u r c e T e x t� ��� l     ������  � * $ the default textItemNum should be 2   � ��� H   t h e   d e f a u l t   t e x t I t e m N u m   s h o u l d   b e   2� ��� l     ��������  ��  ��  � ��� l     ������  � ~ x 1.6 - option to INCLUDE the before and after strings. Default is FALSE. Must use record parameter to use this feature.    � ��� �   1 . 6   -   o p t i o n   t o   I N C L U D E   t h e   b e f o r e   a n d   a f t e r   s t r i n g s .   D e f a u l t   i s   F A L S E .   M u s t   u s e   r e c o r d   p a r a m e t e r   t o   u s e   t h i s   f e a t u r e .  � ��� l     ������  � [ U 1.5 - use 'class of prefs as string' to test, since FileMaker wrecks the term record   � ��� �   1 . 5   -   u s e   ' c l a s s   o f   p r e f s   a s   s t r i n g '   t o   t e s t ,   s i n c e   F i l e M a k e r   w r e c k s   t h e   t e r m   r e c o r d� ��� l     ��������  ��  ��  � ��� l     ������  � B < USAGE1: getTextBetween({sourceTEXT, beforeTEXT, afterTEXT})   � ��� x   U S A G E 1 :   g e t T e x t B e t w e e n ( { s o u r c e T E X T ,   b e f o r e T E X T ,   a f t e r T E X T } )� ��� l     ������  � b \ USAGE2: getTextBetween({sourceText:sourceTEXT, beforeText:beforeTEXT, afterText:afterTEXT})   � ��� �   U S A G E 2 :   g e t T e x t B e t w e e n ( { s o u r c e T e x t : s o u r c e T E X T ,   b e f o r e T e x t : b e f o r e T E X T ,   a f t e r T e x t : a f t e r T E X T } )� ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� r     ��� K     �� ������ 0 textitemnum textItemNum� m    ���� � ������  0 includemarkers includeMarkers� m    �~
�~ boovfals�  � o      �}�} 0 defaultprefs defaultPrefs� ��� l  	 	�|�{�z�|  �{  �z  � ��� Z   	 '���y�x� F   	 ��� l  	 ��w�v� >  	 ��� n   	 ��� m   
 �u
�u 
pcls� o   	 
�t�t 	0 prefs  � m    �s
�s 
list�w  �v  � l   ��r�q� >   ��� c    ��� l   ��p�o� n    ��� m    �n
�n 
pcls� o    �m�m 	0 prefs  �p  �o  � m    �l
�l 
TEXT� m    �� ���  r e c o r d�r  �q  � R    #�k��
�k .ascrerr ****      � ****� m   ! "�� ��� g e t T e x t B e t w e e n   F A I L E D :   p a r a m e t e r   s h o u l d   b e   a   r e c o r d   o r   l i s t .   I f   i t   i s   m u l t i p l e   i t e m s ,   j u s t   m a k e   i t   i n t o   a   l i s t   t o   u p g r a d e   t o   t h i s   h a n d l e r .� �j��i
�j 
errn� m     �h�h �i  �y  �x  � ��� Z   ( `���g�f� =  ( -��� n   ( +��� m   ) +�e
�e 
pcls� o   ( )�d�d 	0 prefs  � m   + ,�c
�c 
list� k   0 \�� ��� Z   0 F���b�a� =  0 7��� l  0 5��`�_� I  0 5�^��]
�^ .corecnte****       ****� o   0 1�\�\ 	0 prefs  �]  �`  �_  � m   5 6�[�[ � r   : B��� n   : >��� 4   ; >�Z�
�Z 
cobj� m   < =�Y�Y � o   : ;�X�X 	0 prefs  � n      ��� o   ? A�W�W 0 textitemnum textItemNum� o   > ?�V�V 0 defaultprefs defaultPrefs�b  �a  � ��U� r   G \��� K   G Z�� �T���T 0 
sourcetext 
sourceTEXT� n   H L��� 4   I L�S�
�S 
cobj� m   J K�R�R � o   H I�Q�Q 	0 prefs  � �P���P 0 
beforetext 
beforeText� n   M Q��� 4   N Q�O�
�O 
cobj� m   O P�N�N � o   M N�M�M 	0 prefs  � �L �K�L 0 	aftertext 	afterText  n   R V 4   S V�J
�J 
cobj m   T U�I�I  o   R S�H�H 	0 prefs  �K  � o      �G�G 	0 prefs  �U  �g  �f  �  l  a f r   a f	
	 b   a d o   a b�F�F 	0 prefs   o   b c�E�E 0 defaultprefs defaultPrefs
 o      �D�D 	0 prefs   , & add on default preferences, if needed    � L   a d d   o n   d e f a u l t   p r e f e r e n c e s ,   i f   n e e d e d  r   g l n   g j o   h j�C�C 0 
sourcetext 
sourceTEXT o   g h�B�B 	0 prefs   o      �A�A 0 
sourcetext 
sourceTEXT  r   m r n   m p o   n p�@�@ 0 
beforetext 
beforeText o   m n�?�? 	0 prefs   o      �>�> 0 
beforetext 
beforeText  r   s x n   s v o   t v�=�= 0 	aftertext 	afterText o   s t�<�< 	0 prefs   o      �;�; 0 	aftertext 	afterText  !  r   y ~"#" n   y |$%$ o   z |�:�: 0 textitemnum textItemNum% o   y z�9�9 	0 prefs  # o      �8�8 0 textitemnum textItemNum! &'& r    �()( n    �*+* o   � ��7�7  0 includemarkers includeMarkers+ o    ��6�6 	0 prefs  ) o      �5�5  0 includemarkers includeMarkers' ,-, l  � ��4�3�2�4  �3  �2  - ./. Q   � �0120 k   � �33 454 r   � �676 J   � �88 9:9 n  � �;<; 1   � ��1
�1 
txdl< 1   � ��0
�0 
ascr: =�/= o   � ��.�. 0 
beforetext 
beforeText�/  7 J      >> ?@? o      �-�- 0 	olddelims 	oldDelims@ A�,A n     BCB 1   � ��+
�+ 
txdlC 1   � ��*
�* 
ascr�,  5 DED r   � �FGF n   � �HIH 4   � ��)J
�) 
citmJ o   � ��(�( 0 textitemnum textItemNumI o   � ��'�' 0 
sourcetext 
sourceTEXTG l     K�&�%K o      �$�$ 0 prefixremoved prefixRemoved�&  �%  E LML r   � �NON o   � ��#�# 0 	aftertext 	afterTextO n     PQP 1   � ��"
�" 
txdlQ 1   � ��!
�! 
ascrM RSR r   � �TUT n   � �VWV 4   � �� X
�  
citmX m   � ��� W o   � ��� 0 prefixremoved prefixRemovedU l     Y��Y o      �� 0 finalresult finalResult�  �  S Z[Z r   � �\]\ o   � ��� 0 	olddelims 	oldDelims] n     ^_^ 1   � ��
� 
txdl_ 1   � ��
� 
ascr[ `a` l  � �����  �  �  a bcb Z  � �de��d o   � ���  0 includemarkers includeMarkerse r   � �fgf b   � �hih b   � �jkj o   � ��� 0 
beforetext 
beforeTextk o   � ��� 0 finalresult finalResulti o   � ��� 0 	aftertext 	afterTextg o      �� 0 finalresult finalResult�  �  c l�l l  � ����
�  �  �
  �  1 R      �	mn
�	 .ascrerr ****      � ****m o      �� 0 errmsg errMsgn �o�
� 
errno o      �� 0 errnum errNum�  2 k   � �pp qrq r   � �sts o   � ��� 0 	olddelims 	oldDelimst n     uvu 1   � ��
� 
txdlv 1   � ��
� 
ascrr wxw l  � ��yz�  y > 8 	tell me to log "Error in getTextBetween() : " & errMsg   z �{{ p   	 t e l l   m e   t o   l o g   " E r r o r   i n   g e t T e x t B e t w e e n ( )   :   "   &   e r r M s gx |� | l  � �}~} r   � ���� m   � ��� ���  � l     ������ o      ���� 0 finalresult finalResult��  ��  ~ : 4 return nothing if the surrounding text is not found    ��� h   r e t u r n   n o t h i n g   i f   t h e   s u r r o u n d i n g   t e x t   i s   n o t   f o u n d�   / ��� l  � ���������  ��  ��  � ��� l  � ���������  ��  ��  � ��� L   � ��� o   � ����� 0 finalresult finalResult� ���� l  � ���������  ��  ��  ��  � ��� l     ��������  ��  ��  � ��� i   C F��� I      ������� 0 
parsechars 
parseChars� ���� o      ���� 	0 prefs  ��  ��  � k     ��� ��� l     ������  � B < version 1.3, Daniel A. Shockley, http://www.danshockley.com   � ��� x   v e r s i o n   1 . 3 ,   D a n i e l   A .   S h o c k l e y ,   h t t p : / / w w w . d a n s h o c k l e y . c o m� ��� l     ��������  ��  ��  � ��� l     ������  � E ? 1.3 - default is to consider case; single-param instead of two   � ��� ~   1 . 3   -   d e f a u l t   i s   t o   c o n s i d e r   c a s e ;   s i n g l e - p a r a m   i n s t e a d   o f   t w o� ��� l     ��������  ��  ��  � ��� r     ��� K     �� ������� 0 considercase considerCase� m    ��
�� boovtrue��  � o      ���� 0 defaultprefs defaultPrefs� ��� l   ��������  ��  ��  � ��� l   ��������  ��  ��  � ��� Z    [������ =   ��� n    
��� m    
��
�� 
pcls� o    ���� 	0 prefs  � m   
 ��
�� 
list� k    ?�� ��� Z    =������ ?   ��� l   ������ I   �����
�� .corecnte****       ****� o    ���� 	0 prefs  ��  ��  ��  � m    ���� � k    ,�� ��� l   ������  � - ' get any parameters after the initial 3   � ��� N   g e t   a n y   p a r a m e t e r s   a f t e r   t h e   i n i t i a l   3� ���� r    ,��� K    *�� ������ 0 
sourcetext 
sourceTEXT� n    ��� 4    ���
�� 
cobj� m    ���� � o    ���� 	0 prefs  � ������ 0 parsestring parseString� n    #��� 4     #���
�� 
cobj� m   ! "���� � o     ���� 	0 prefs  � ������� 0 considercase considerCase� n   $ (��� 4   % (���
�� 
cobj� m   & '���� � o   $ %���� 	0 prefs  ��  � o      ���� 	0 prefs  ��  ��  � r   / =��� K   / ;�� ������ 0 
sourcetext 
sourceTEXT� n   0 4��� 4   1 4���
�� 
cobj� m   2 3���� � o   0 1���� 	0 prefs  � ������� 0 parsestring parseString� n   5 9��� 4   6 9���
�� 
cobj� m   7 8���� � o   5 6���� 	0 prefs  ��  � o      ���� 	0 prefs  � ���� l  > >��������  ��  ��  ��  � ��� >  B L��� n   B E��� m   C E��
�� 
pcls� o   B C���� 	0 prefs  � l  E K������ n   E K��� m   I K��
�� 
pcls� K   E I�� ������� 0 somekey someKey� m   F G���� ��  ��  ��  � ���� k   O W�� ��� l  O O������  � x r Test by matching class to something that IS a record to avoid FileMaker namespace conflict with the term "record"   � ��� �   T e s t   b y   m a t c h i n g   c l a s s   t o   s o m e t h i n g   t h a t   I S   a   r e c o r d   t o   a v o i d   F i l e M a k e r   n a m e s p a c e   c o n f l i c t   w i t h   t h e   t e r m   " r e c o r d "� ��� l  O O��������  ��  ��  � ��� R   O U����
�� .ascrerr ****      � ****� m   S T�� �  > T h e   p a r a m e t e r   f o r   ' p a r s e C h a r s ( ) '   s h o u l d   b e   a   r e c o r d   o r   a t   l e a s t   a   l i s t .   W r a p   t h e   p a r a m e t e r ( s )   i n   c u r l y   b r a c k e t s   f o r   e a s y   u p g r a d e   t o   ' p a r s e C h a r s ( )   v e r s i o n   1 . 3 .  � ����
�� 
errn m   Q R���� ��  � �� l  V V��������  ��  ��  ��  ��  ��  �  l  \ \��������  ��  ��    l  \ \��������  ��  ��    r   \ a	
	 b   \ _ o   \ ]���� 	0 prefs   o   ] ^���� 0 defaultprefs defaultPrefs
 o      ���� 	0 prefs    l  b b��������  ��  ��    l  b b��������  ��  ��    r   b g n   b e o   c e���� 0 
sourcetext 
sourceTEXT o   b c���� 	0 prefs   o      ���� 0 
sourcetext 
sourceTEXT  r   h m n   h k o   i k���� 0 parsestring parseString o   h i���� 	0 prefs   o      ���� 0 parsestring parseString  r   n s  n   n q!"! o   o q���� 0 considercase considerCase" o   n o���� 	0 prefs    o      ���� 0 considercase considerCase #$# l  t t��������  ��  ��  $ %&% l  t t��~�}�  �~  �}  & '(' r   t y)*) n  t w+,+ 1   u w�|
�| 
txdl, 1   t u�{
�{ 
ascr* o      �z�z 0 	olddelims 	oldDelims( -�y- Q   z �./0. k   } �11 232 r   } �454 l  } �6�x�w6 J   } �77 8�v8 c   } �9:9 o   } ~�u�u 0 parsestring parseString: m   ~ �t
�t 
TEXT�v  �x  �w  5 n     ;<; 1   � ��s
�s 
txdl< 1   � ��r
�r 
ascr3 =>= l  � ��q�p�o�q  �p  �o  > ?@? Z   � �AB�nCA o   � ��m�m 0 considercase considerCaseB P   � �DE�lD r   � �FGF n   � �HIH 2   � ��k
�k 
citmI o   � ��j�j 0 
sourcetext 
sourceTEXTG l     J�i�hJ o      �g�g 0 
parsedlist 
parsedList�i  �h  E �f�e
�f conscase�e  �l  �n  C P   � �K�dLK r   � �MNM n   � �OPO 2   � ��c
�c 
citmP o   � ��b�b 0 
sourcetext 
sourceTEXTN l     Q�a�`Q o      �_�_ 0 
parsedlist 
parsedList�a  �`  �d  L �^�]
�^ conscase�]  @ RSR l  � ��\�[�Z�\  �[  �Z  S TUT r   � �VWV o   � ��Y�Y 0 	olddelims 	oldDelimsW n     XYX 1   � ��X
�X 
txdlY 1   � ��W
�W 
ascrU Z�VZ L   � �[[ o   � ��U�U 0 
parsedlist 
parsedList�V  / R      �T\]
�T .ascrerr ****      � ****\ o      �S�S 0 errmsg errMsg] �R^�Q
�R 
errn^ o      �P�P 0 errnum errNum�Q  0 k   � �__ `a` Q   � �bc�Ob r   � �ded o   � ��N�N 0 	olddelims 	oldDelimse n     fgf 1   � ��M
�M 
txdlg 1   � ��L
�L 
ascrc R      �K�J�I
�K .ascrerr ****      � ****�J  �I  �O  a h�Hh R   � ��Gij
�G .ascrerr ****      � ****i b   � �klk m   � �mm �nn : E R R O R :   p a r s e C h a r s ( )   h a n d l e r :  l o   � ��F�F 0 errmsg errMsgj �Eo�D
�E 
errno o   � ��C�C 0 errnum errNum�D  �H  �y  � pqp l     �B�A�@�B  �A  �@  q rsr i   G Jtut I      �?v�>�? 0 replacesimple replaceSimplev w�=w o      �<�< 	0 prefs  �=  �>  u k     �xx yzy l     �;{|�;  { A ; version 1.4, Daniel A. Shockley http://www.danshockley.com   | �}} v   v e r s i o n   1 . 4 ,   D a n i e l   A .   S h o c k l e y   h t t p : / / w w w . d a n s h o c k l e y . c o mz ~~ l     �:�9�8�:  �9  �8   ��� l     �7���7  � Y S 1.4 - Convert sourceText to string, since the previous version failed on numbers.    � ��� �   1 . 4   -   C o n v e r t   s o u r c e T e x t   t o   s t r i n g ,   s i n c e   t h e   p r e v i o u s   v e r s i o n   f a i l e d   o n   n u m b e r s .  � ��� l     �6���6  � t n 1.3 - The class record is specified into a variable to avoid a namespace conflict when run within FileMaker.    � ��� �   1 . 3   -   T h e   c l a s s   r e c o r d   i s   s p e c i f i e d   i n t o   a   v a r i a b l e   t o   a v o i d   a   n a m e s p a c e   c o n f l i c t   w h e n   r u n   w i t h i n   F i l e M a k e r .  � ��� l     �5���5  � � � 1.2 - changes parameters to a record to add option to CONSIDER CASE, since the default changed to ignoring case with Snow Leopard. This handler defaults to CONSIDER CASE = true, since that was what older code expected.    � ����   1 . 2   -   c h a n g e s   p a r a m e t e r s   t o   a   r e c o r d   t o   a d d   o p t i o n   t o   C O N S I D E R   C A S E ,   s i n c e   t h e   d e f a u l t   c h a n g e d   t o   i g n o r i n g   c a s e   w i t h   S n o w   L e o p a r d .   T h i s   h a n d l e r   d e f a u l t s   t o   C O N S I D E R   C A S E   =   t r u e ,   s i n c e   t h a t   w a s   w h a t   o l d e r   c o d e   e x p e c t e d .  � ��� l     �4���4  � Z T 1.1 - coerces the newChars to a STRING, since other data types do not always coerce   � ��� �   1 . 1   -   c o e r c e s   t h e   n e w C h a r s   t o   a   S T R I N G ,   s i n c e   o t h e r   d a t a   t y p e s   d o   n o t   a l w a y s   c o e r c e� ��� l     �3���3  � H B     (example, replacing "nine" with 9 as number replaces with "")   � ��� �           ( e x a m p l e ,   r e p l a c i n g   " n i n e "   w i t h   9   a s   n u m b e r   r e p l a c e s   w i t h   " " )� ��� l     �2�1�0�2  �1  �0  � ��� r     ��� K     �� �/��.�/ 0 considercase considerCase� m    �-
�- boovtrue�.  � o      �,�, 0 defaultprefs defaultPrefs� ��� l   �+�*�)�+  �*  �)  � ��� Z    e����(� =   ��� n    
��� m    
�'
�' 
pcls� o    �&�& 	0 prefs  � m   
 �%
�% 
list� k    I�� ��� Z    G���$�� ?   ��� l   ��#�"� I   �!�� 
�! .corecnte****       ****� o    �� 	0 prefs  �   �#  �"  � m    �� � k    1�� ��� l   ����  � - ' get any parameters after the initial 3   � ��� N   g e t   a n y   p a r a m e t e r s   a f t e r   t h e   i n i t i a l   3� ��� r    1��� K    /�� ���� 0 
sourcetext 
sourceTEXT� n    ��� 4    ��
� 
cobj� m    �� � o    �� 	0 prefs  � ���� 0 oldchars oldChars� n    #��� 4     #��
� 
cobj� m   ! "�� � o     �� 	0 prefs  � ���� 0 newchars newChars� n   $ (��� 4   % (��
� 
cobj� m   & '�� � o   $ %�� 	0 prefs  � ���� 0 considercase considerCase� n   ) -��� 4   * -��
� 
cobj� m   + ,�� � o   ) *�� 	0 prefs  �  � o      �
�
 	0 prefs  �  �$  � r   4 G��� K   4 E�� �	���	 0 
sourcetext 
sourceTEXT� n   5 9��� 4   6 9��
� 
cobj� m   7 8�� � o   5 6�� 	0 prefs  � ���� 0 oldchars oldChars� n   : >��� 4   ; >��
� 
cobj� m   < =�� � o   : ;�� 	0 prefs  � ��� � 0 newchars newChars� n   ? C��� 4   @ C���
�� 
cobj� m   A B���� � o   ? @���� 	0 prefs  �   � o      ���� 	0 prefs  � ���� l  H H��������  ��  ��  ��  � ��� >  L V��� n   L O��� m   M O��
�� 
pcls� o   L M���� 	0 prefs  � l  O U������ n   O U��� m   S U��
�� 
pcls� K   O S�� ������� 0 somekey someKey� m   P Q���� ��  ��  ��  � ���� k   Y a�� ��� l  Y Y������  � x r Test by matching class to something that IS a record to avoid FileMaker namespace conflict with the term "record"   � ��� �   T e s t   b y   m a t c h i n g   c l a s s   t o   s o m e t h i n g   t h a t   I S   a   r e c o r d   t o   a v o i d   F i l e M a k e r   n a m e s p a c e   c o n f l i c t   w i t h   t h e   t e r m   " r e c o r d "� ��� l  Y Y��������  ��  ��  � ��� R   Y _����
�� .ascrerr ****      � ****� m   ] ^�� ���J T h e   p a r a m e t e r   f o r   ' r e p l a c e S i m p l e ( ) '   s h o u l d   b e   a   r e c o r d   o r   a t   l e a s t   a   l i s t .   W r a p   t h e   p a r a m e t e r ( s )   i n   c u r l y   b r a c k e t s   f o r   e a s y   u p g r a d e   t o   ' r e p l a c e S i m p l e ( )   v e r s i o n   1 . 3 .  � �����
�� 
errn� m   [ \���� ��  �  ��  l  ` `��������  ��  ��  ��  ��  �(  �  l  f f��������  ��  ��    l  f f��������  ��  ��    r   f k b   f i	
	 o   f g���� 	0 prefs  
 o   g h���� 0 defaultprefs defaultPrefs o      ���� 	0 prefs    l  l l��������  ��  ��    l  l l��������  ��  ��    r   l q n   l o o   m o���� 0 considercase considerCase o   l m���� 	0 prefs   o      ���� 0 considercase considerCase  r   r w n   r u o   s u���� 0 
sourcetext 
sourceTEXT o   r s���� 	0 prefs   o      ���� 0 
sourcetext 
sourceTEXT  r   x } n   x {  o   y {���� 0 oldchars oldChars  o   x y���� 	0 prefs   o      ���� 0 oldchars oldChars !"! r   ~ �#$# n   ~ �%&% o    ����� 0 newchars newChars& o   ~ ���� 	0 prefs  $ o      ���� 0 newchars newChars" '(' l  � ���������  ��  ��  ( )*) r   � �+,+ c   � �-.- o   � ����� 0 
sourcetext 
sourceTEXT. m   � ���
�� 
TEXT, o      ���� 0 
sourcetext 
sourceTEXT* /0/ l  � ���������  ��  ��  0 121 r   � �343 n  � �565 1   � ���
�� 
txdl6 1   � ���
�� 
ascr4 o      ���� 0 	olddelims 	oldDelims2 787 r   � �9:9 l  � �;����; o   � ����� 0 oldchars oldChars��  ��  : n     <=< 1   � ���
�� 
txdl= 1   � ���
�� 
ascr8 >?> Z   � �@A��B@ o   � ����� 0 considercase considerCaseA P   � �CD��C k   � �EE FGF r   � �HIH n   � �JKJ 2   � ���
�� 
citmK o   � ����� 0 
sourcetext 
sourceTEXTI l     L����L o      ���� 0 
parsedlist 
parsedList��  ��  G MNM r   � �OPO l  � �Q����Q J   � �RR S��S l  � �T����T c   � �UVU o   � ����� 0 newchars newCharsV m   � ���
�� 
TEXT��  ��  ��  ��  ��  P n     WXW 1   � ���
�� 
txdlX 1   � ���
�� 
ascrN Y��Y r   � �Z[Z c   � �\]\ l  � �^����^ o   � ����� 0 
parsedlist 
parsedList��  ��  ] m   � ���
�� 
TEXT[ l     _����_ o      ���� 0 newtext newText��  ��  ��  D ����
�� conscase��  ��  ��  B P   � �`��a` k   � �bb cdc r   � �efe n   � �ghg 2   � ���
�� 
citmh o   � ����� 0 
sourcetext 
sourceTEXTf l     i����i o      ���� 0 
parsedlist 
parsedList��  ��  d jkj r   � �lml l  � �n����n J   � �oo p��p l  � �q����q c   � �rsr o   � ����� 0 newchars newCharss m   � ���
�� 
TEXT��  ��  ��  ��  ��  m n     tut 1   � ���
�� 
txdlu 1   � ���
�� 
ascrk v��v r   � �wxw c   � �yzy l  � �{����{ o   � ����� 0 
parsedlist 
parsedList��  ��  z m   � ���
�� 
TEXTx l     |����| o      ���� 0 newtext newText��  ��  ��  ��  a ����
�� conscase��  ? }~} r   � �� o   � ����� 0 	olddelims 	oldDelims� n     ��� 1   � ���
�� 
txdl� 1   � ���
�� 
ascr~ ��� L   � ��� o   � ��� 0 newtext newText� ��~� l  � ��}�|�{�}  �|  �{  �~  s ��� l     �z�y�x�z  �y  �x  � ��� i   K N��� I      �w��v�w 0 unparsechars unParseChars� ��� o      �u�u 0 thislist thisList� ��t� o      �s�s 0 newdelim newDelim�t  �v  � k     C�� ��� l     �r���r  � B < version 1.2, Daniel A. Shockley, http://www.danshockley.com   � ��� x   v e r s i o n   1 . 2 ,   D a n i e l   A .   S h o c k l e y ,   h t t p : / / w w w . d a n s h o c k l e y . c o m� ��� r     ��� n    ��� 1    �q
�q 
txdl� 1     �p
�p 
ascr� o      �o�o 0 	olddelims 	oldDelims� ��n� Q    C���� k   	 !�� ��� r   	 ��� l  	 ��m�l� J   	 �� ��k� c   	 ��� o   	 
�j�j 0 newdelim newDelim� m   
 �i
�i 
TEXT�k  �m  �l  � n     ��� 1    �h
�h 
txdl� 1    �g
�g 
ascr� ��� r    ��� c    ��� o    �f�f 0 thislist thisList� m    �e
�e 
TEXT� l     ��d�c� o      �b�b 0 unparsedtext unparsedText�d  �c  � ��� r    ��� o    �a�a 0 	olddelims 	oldDelims� n     ��� 1    �`
�` 
txdl� 1    �_
�_ 
ascr� ��^� L    !�� o     �]�] 0 unparsedtext unparsedText�^  � R      �\��
�\ .ascrerr ****      � ****� o      �[�[ 0 errmsg errMsg� �Z��Y
�Z 
errn� o      �X�X 0 errnum errNum�Y  � k   ) C�� ��� Q   ) :���W� r   , 1��� o   , -�V�V 0 	olddelims 	oldDelims� n     ��� 1   . 0�U
�U 
txdl� 1   - .�T
�T 
ascr� R      �S�R�Q
�S .ascrerr ****      � ****�R  �Q  �W  � ��P� R   ; C�O��
�O .ascrerr ****      � ****� b   ? B��� m   ? @�� ��� > E R R O R :   u n P a r s e C h a r s ( )   h a n d l e r :  � o   @ A�N�N 0 errmsg errMsg� �M��L
�M 
errn� o   = >�K�K 0 errnum errNum�L  �P  �n  � ��J� l     �I�H�G�I  �H  �G  �J       �F�  ��������������������F  � �E�D�C�B�A�@�?�>�=�<�;�:�9�8�7�6�5�4�3�2�E 0 
scriptname 
ScriptName�D (0 fmgui_appfrontmost fmGUI_AppFrontMost�C 00 fmgui_dataviewer_close fmGUI_DataViewer_Close�B .0 fmgui_inspector_close fmGUI_Inspector_Close�A 00 fmgui_inspector_ensure fmGUI_Inspector_Ensure�@ 20 fmgui_modeensure_browse fmGUI_ModeEnsure_Browse�? .0 fmgui_modeensure_find fmGUI_ModeEnsure_Find�> 20 fmgui_modeensure_layout fmGUI_ModeEnsure_Layout�= (0 fmgui_window_close fmGUI_Window_Close�< $0 fmgui_modeselect fmGUI_ModeSelect�; 0 sort  �: 0 
logconsole 
logConsole�9 0 loglevel logLEVEL�8 0 logmain logMAIN�7  0 coercetostring coerceToString�6 0 gettextbefore getTextBefore�5  0 gettextbetween getTextBetween�4 0 
parsechars 
parseChars�3 0 replacesimple replaceSimple�2 0 unparsechars unParseChars� �1 )�0�/���.�1 (0 fmgui_appfrontmost fmGUI_AppFrontMost�0  �/  �  � 
 a�- _�,�+�*�) R�(�'
�- 
pcap
�, 
pisf
�+ .sysodelanull��� ��� nmbr
�* 
cwin
�) 
pnam
�( 
butT
�' .prcsclicnull��� ��� uiel�. F� B*��/ :*�,e 1e*�,FOkj O*�k/�,�  *�k/�k/j 	Okj Y hY hUU� �& g�%�$���#�& 00 fmgui_dataviewer_close fmGUI_DataViewer_Close�%  �$  �  �  ��" ��!� �� ~����
�" 
pcap�! (0 fmgui_appfrontmost fmGUI_AppFrontMost
�  
cwin�  
� 
pnam
� 
butT
� .prcsclicnull��� ��� uiel�  �  �# 4� 0*��/ ()j+ O *�k/�[�,\Z�81�k/j 	W X 
 hUU� � ������� .0 fmgui_inspector_close fmGUI_Inspector_Close�  �  �  �  �� ����� ���� ��� �
� 
pcap� (0 fmgui_appfrontmost fmGUI_AppFrontMost
� 
cwin
� 
pnam
� 
pidx�  �  
� 
butT
� .prcsclicnull��� ��� uiel� s� o*��/ g)j+ O k*�k/�[�,\Z�81�,FW X 	 
hO *�k/�[�,\Z�81�k/j W X 	 
hO *�k/�[�,\Z�81�k/j W X 	 
hUU� � ������
� 00 fmgui_inspector_ensure fmGUI_Inspector_Ensure�  �  � �	��	 0 errmsg errMsg� 0 errnum errNum� ������ ���� ������������ 20 fmgui_modeensure_layout fmGUI_ModeEnsure_Layout
� 
pcap� (0 fmgui_appfrontmost fmGUI_AppFrontMost
� 
cwin
� 
pnam
� .coredoexnull���     ****
� 
mbar
�  
mbri
�� 
menE
�� 
menI
�� .prcsclicnull��� ��� uiel�� 0 errmsg errMsg� ������
�� 
errn�� 0 errnum errNum��  
�� 
errn�
 i T*j+  O� F*��/ >)j+ O*�k/�[�,\Z�@1j 	 *�k/��/�k/�k/�[�,\Z�81j Y hOeUUW X  )a �la �%OP� ��(���������� 20 fmgui_modeensure_browse fmGUI_ModeEnsure_Browse��  ��  � ������ 0 errmsg errMsg�� 0 errnum errNum� ;�������E�� $0 fmgui_modeselect fmGUI_ModeSelect�� 0 errmsg errMsg� ������
�� 
errn�� 0 errnum errNum��  
�� 
errn��  *�k+ OPW X  )�l�%OP� ��P���������� .0 fmgui_modeensure_find fmGUI_ModeEnsure_Find��  ��  � ������ 0 errmsg errMsg�� 0 errnum errNum� c�������m�� $0 fmgui_modeselect fmGUI_ModeSelect�� 0 errmsg errMsg� ������
�� 
errn�� 0 errnum errNum��  
�� 
errn��  *�k+ OPW X  )�l�%OP� ��x���������� 20 fmgui_modeensure_layout fmGUI_ModeEnsure_Layout��  ��  � ������ 0 errmsg errMsg�� 0 errnum errNum� ����������� $0 fmgui_modeselect fmGUI_ModeSelect�� 0 errmsg errMsg� ������
�� 
errn�� 0 errnum errNum��  
�� 
errn��  *�k+ OPW X  )�l�%OP� ������������� (0 fmgui_window_close fmGUI_Window_Close�� ����� �  ����  0 somewindowname someWindowName��  � ����  0 somewindowname someWindowName� ���������
�� 
capp
�� kfrmID  
�� 
cwin
�� .coreclosnull���    obj �� )���0 *�/j OPUOeOP� ������������� $0 fmgui_modeselect fmGUI_ModeSelect�� ����� �  ���� 0 modetoselect modeToSelect��  � ������������������ 0 modetoselect modeToSelect�� 0 
modewindow 
modeWindow�� "0 modecontentarea modeContentArea�� *0 modecontentareadesc modeContentAreaDesc�� 0 currentmode currentMode�� 0 menuitemname menuItemName�� 0 errmsg errMsg�� 0 errnum errNum� 1��/��������������������%�����������=?
�� 
pcap�� (0 fmgui_appfrontmost fmGUI_AppFrontMost�� .0 fmgui_inspector_close fmGUI_Inspector_Close
�� 
cwin
�� 
sgrp
�� 
desc
�� 
cwor
�� .sysodelanull��� ��� nmbr
�� 
mbar
�� 
mbri
�� 
menE
�� 
menI
�� .prcsclicnull��� ��� uiel�� 0 errmsg errMsg� ������
�� 
errn�� 0 errnum errNum��  
�� 
errn�� � t� l*��/ d)j+ O)j+ O*�k/E�O��k/�[�,\Z�?1E�O��,E�O��k/E�O�� (�j O��%E�O*�k/�a /a k/a �/j Y hOeOPUUW X  )a �la �%a %�%� ��G�����	 ���� 0 sort  �� ��	�� 	  ���� 0 oldlist oldList��  � ������������ 0 oldlist oldList�� 0 od  �� 0 	textblock 	textBlock�� 0 sortedblock sortedBlock�� 0 
sortedlist 
sortedList	  ������������p��t������
�� 
ascr
�� 
txdl�� 

�� .sysontocTEXT       shor
�� 
cobj
�� 
TEXT
�� 
strq
�� .sysoexecTEXT���     TEXT
�� 
ret 
�� 
citm�� E��,�j lvE[�k/E�Z[�l/��,FZO��&E�O��,%�%j 	E�O���,FO��-E�O���,FO�� �������		���� 0 
logconsole 
logConsole�� ��	�� 	  ������ 0 processname processName�� 0 
consolemsg 
consoleMsg��  	 �������� 0 processname processName�� 0 
consolemsg 
consoleMsg�� 0 shellcommand shellCommand	 ��������������������  0 coercetostring coerceToString
�� .sysontocTEXT       shor�� 0 replacesimple replaceSimple
�� 
leng
�� 
spac
�� 
strq
�� .sysoexecTEXT���     TEXT�� I*�k+  E�O*�jj �mvk+ E�O��,j  �E�Y hO��%�%�%��,%�%��,%E�O�j 
O�OP� ������		��� 0 loglevel logLEVEL�� �~	�~ 	  �}�|�} 	0 level  �| 0 somemsg someMsg��  	 �{�z�y�x�w�v�{ 	0 level  �z 0 somemsg someMsg�y 0 	maxxcount 	maxXcount�x 0 logname logName�w 0 xcount xCount�v 0 i  	 �u5L�t�u �t 0 
logconsole 
logConsole� 5�E�Ob   �%E�O��kE�O k�kh ��%E�[OY��O*��l+ OP� �s\�r�q			�p�s 0 logmain logMAIN�r �o	
�o 	
  �n�n 0 somemsg someMsg�q  	 �m�m 0 somemsg someMsg		 �l�l 0 loglevel logLEVEL�p 
*j�l+  OP� �kw�j�i		�h�k  0 coercetostring coerceToString�j �g	�g 	  �f�f  0 incomingobject incomingObject�i  	 �e�d�c�b�a�`�_�^�e  0 incomingobject incomingObject�d 0 errmsg errMsg�c 0 errnum errNum�b 0 	olddelims 	oldDelims�a 0 
errmsglead 
errMsgLead�` 0 errmsgtrail errMsgTrail�_ 0 od  �^ 0 objectstring objectString	 �]�\�[�Z�Y�X"&�W�V	�U�TC�S�Re�Qtx�P�
�] 
pcls
�\ 
TEXT
�[ 
ctxt
�Z 
long
�Y 
doub
�X 
utxt�W j0 3some_uuid_property_54f827c7379e4073b5a216bb9cde575d 3some_UUID_Property_54F827C7379E4073B5A216BB9CDE575D�V 0 errmsg errMsg	 �O�N�M
�O 
errn�N 0 errnum errNum�M  
�U 
ascr
�T 
txdl
�S 
cobj
�R 
citm�Q  
�P 
bool�h���,�  ��&E[�,E�ZO�Yk��,�  ��&E[�,E�ZO��&YQ��,�  ��&E[�,E�ZO��&Y7��,�  ��&E[�,E�ZO��&Y S ���,FOPW 9X 	 
��,�kvlvE[�k/E�Z[�l/��,FZO��-E[�k/E�Z[�l/E�ZO���,FOa ��,FOPW �X 	 �a 	 �a a & Da E�Oa E�O��,�lvE[�k/E�Z[�l/��,FZO��l/E�O���,FO��k/E�O���,FOPY k�E�O�� )��,�lvE[�k/E�Z[�l/��,FZO��l/E�O���,FY hO�� /��,�lvE[�k/E�Z[�l/��,FZO���,FO��k/E�O���,FY hOPO�� �L%�K�J		�I�L 0 gettextbefore getTextBefore�K �H	�H 	  �G�F�G 0 
sourcetext 
sourceTEXT�F 0 stophere stopHere�J  	 �E�D�C�B�A�@�E 0 
sourcetext 
sourceTEXT�D 0 stophere stopHere�C 0 	olddelims 	oldDelims�B 0 finalresult finalResult�A 0 errmsg errMsg�@ 0 errnum errNum	 	�?�>�=�<�;^�:	}
�? 
ascr
�> 
txdl
�= 
cobj
�< 
citm
�; .corecnte****       ****�: 0 errmsg errMsg	 �9�8�7
�9 
errn�8 0 errnum errNum�7  �I R C��,�lvE[�k/E�Z[�l/��,FZO��-j k  ���,FO�Y ��k/E�O���,FO�W X  ���,FO�� �6��5�4		�3�6  0 gettextbetween getTextBetween�5 �2	�2 	  �1�1 	0 prefs  �4  	 �0�/�.�-�,�+�*�)�(�'�&�%�0 	0 prefs  �/ 0 defaultprefs defaultPrefs�. 0 
sourcetext 
sourceTEXT�- 0 
beforetext 
beforeText�, 0 	aftertext 	afterText�+ 0 textitemnum textItemNum�*  0 includemarkers includeMarkers�) 0 	olddelims 	oldDelims�( 0 prefixremoved prefixRemoved�' 0 finalresult finalResult�& 0 errmsg errMsg�% 0 errnum errNum	 �$�#�"�!� ����������������	��$ 0 textitemnum textItemNum�#  0 includemarkers includeMarkers�" 
�! 
pcls
�  
list
� 
TEXT
� 
bool
� 
errn� 
� .corecnte****       ****
� 
cobj� 0 
sourcetext 
sourceTEXT� 0 
beforetext 
beforeText� 0 	aftertext 	afterText� 
� 
ascr
� 
txdl
� 
citm� 0 errmsg errMsg	 ���
� 
errn� 0 errnum errNum�  �3 ��l�f�E�O��,�	 ��,�&��& )��l�Y hO��,�  1�j �  ���/��,FY hO���k/��l/��m/a E�Y hO��%E�O��,E�O��,E�O��,E�O��,E�O��,E�O \_ a ,�lvE[�k/E�Z[�l/_ a ,FZO�a �/E�O�_ a ,FO�a k/E�O�_ a ,FO� ��%�%E�Y hOPW X  �_ a ,FOa E�O�OP� ����		�� 0 
parsechars 
parseChars� �
	�
 	  �	�	 	0 prefs  �  	 	��������� � 	0 prefs  � 0 defaultprefs defaultPrefs� 0 
sourcetext 
sourceTEXT� 0 parsestring parseString� 0 considercase considerCase� 0 	olddelims 	oldDelims� 0 
parsedlist 
parsedList� 0 errmsg errMsg�  0 errnum errNum	 �������������������������������E����	����m�� 0 considercase considerCase
�� 
pcls
�� 
list
�� .corecnte****       ****�� 0 
sourcetext 
sourceTEXT
�� 
cobj�� 0 parsestring parseString�� �� �� 0 somekey someKey
�� 
errn�� 
�� 
ascr
�� 
txdl
�� 
TEXT
�� 
citm�� 0 errmsg errMsg	 ������
�� 
errn�� 0 errnum errNum��  ��  ��  � ��elE�O��,�  5�j l ��k/��l/��m/�E�Y ��k/��l/�E�OPY ��,�ml�, )��l�OPY hO��%E�O��,E�O��,E�O��,E�O��,E�O =��&kv��,FO� a g 
�a -E�VY ga  
�a -E�VO���,FO�W #X   
���,FW X  hO)�la �%� ��u����		���� 0 replacesimple replaceSimple�� ��	�� 	  ���� 	0 prefs  ��  	 	�������������������� 	0 prefs  �� 0 defaultprefs defaultPrefs�� 0 considercase considerCase�� 0 
sourcetext 
sourceTEXT�� 0 oldchars oldChars�� 0 newchars newChars�� 0 	olddelims 	oldDelims�� 0 
parsedlist 
parsedList�� 0 newtext newText	 �����������������������������������D���� 0 considercase considerCase
�� 
pcls
�� 
list
�� .corecnte****       ****�� 0 
sourcetext 
sourceTEXT
�� 
cobj�� 0 oldchars oldChars�� 0 newchars newChars�� �� �� �� 0 somekey someKey
�� 
errn�� 
�� 
TEXT
�� 
ascr
�� 
txdl
�� 
citm�� ��elE�O��,�  ?�j m ��k/��l/��m/���/�E�Y ��k/��l/��m/�E�OPY ��,�ml�, )��l�OPY hO��%E�O��,E�O��,E�O��,E�O��,E�O��&E�O_ a ,E�O�_ a ,FO� (a g �a -E�O��&kv_ a ,FO��&E�VY %ga  �a -E�O��&kv_ a ,FO��&E�VO�_ a ,FO�OP� �������		���� 0 unparsechars unParseChars�� ��	 �� 	   ������ 0 thislist thisList�� 0 newdelim newDelim��  	 �������������� 0 thislist thisList�� 0 newdelim newDelim�� 0 	olddelims 	oldDelims�� 0 unparsedtext unparsedText�� 0 errmsg errMsg�� 0 errnum errNum	 	��������	!�������
�� 
ascr
�� 
txdl
�� 
TEXT�� 0 errmsg errMsg	! ������
�� 
errn�� 0 errnum errNum��  ��  ��  
�� 
errn�� D��,E�O ��&kv��,FO��&E�O���,FO�W !X   
���,FW X  hO)�l�%ascr  ��ޭ