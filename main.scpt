FasdUAS 1.101.10   ��   ��    k             l     ��  ��      main script     � 	 	    m a i n   s c r i p t   
  
 l     ��  ��      Erik Shagdar, NYHTC     �   (   E r i k   S h a g d a r ,   N Y H T C      l     ��������  ��  ��        l     ��  ��    %  Generated: 2016-03-18 17:03:56     �   >   G e n e r a t e d :   2 0 1 6 - 0 3 - 1 8   1 7 : 0 3 : 5 6      l     ��  ��    n h Run 'main_helper.applescript' to after making changes in any .applescript file and after each git pull.     �   �   R u n   ' m a i n _ h e l p e r . a p p l e s c r i p t '   t o   a f t e r   m a k i n g   c h a n g e s   i n   a n y   . a p p l e s c r i p t   f i l e   a n d   a f t e r   e a c h   g i t   p u l l .      l     ��������  ��  ��        j     �� �� 0 	debugmode 	DebugMode  m     ��
�� boovfals     !   j    �� "�� 0 
scriptname 
ScriptName " m     # # � $ $  m a i n . s c p t !  % & % j    �� '�� &0 clickcommandposix clickCommandPosix ' n     ( ) ( 1    ��
�� 
psxp ) l    *���� * b     + , + l    -���� - c     . / . l    0���� 0 I   �� 1��
�� .earsffdralis        afdr 1 m    ��
�� afdrcusr��  ��  ��   / m    ��
�� 
TEXT��  ��   , m     2 2 � 3 3 F C o d e : a p p l e s c r i p t - f m - h e l p e r : c l i c l i c k��  ��   &  4 5 4 l     ��������  ��  ��   5  6 7 6 l     ��������  ��  ��   7  8 9 8 i     : ; : I      �� <���� $0 encodecharforurl encodeCharForURL <  =�� = o      ���� 0 	this_char  ��  ��   ; k     K > >  ? @ ? l     �� A B��   A   version 1.0    B � C C    v e r s i o n   1 . 0 @  D E D l     ��������  ��  ��   E  F G F r      H I H l     J���� J l     K���� K I    �� L��
�� .sysoctonshor       TEXT L o     ���� 0 	this_char  ��  ��  ��  ��  ��   I l      M���� M o      ���� 0 	ascii_num 	ASCII_num��  ��   G  N O N r      P Q P J     R R  S T S m    	 U U � V V  0 T  W X W m   	 
 Y Y � Z Z  1 X  [ \ [ m   
  ] ] � ^ ^  2 \  _ ` _ m     a a � b b  3 `  c d c m     e e � f f  4 d  g h g m     i i � j j  5 h  k l k m     m m � n n  6 l  o p o m     q q � r r  7 p  s t s m     u u � v v  8 t  w x w m     y y � z z  9 x  { | { m     } } � ~ ~  A |   �  m     � � � � �  B �  � � � m     � � � � �  C �  � � � m     � � � � �  D �  � � � m     � � � � �  E �  ��� � m     � � � � �  F��   Q l      ����� � o      ���� 0 hex_list  ��  ��   O  � � � r   ! / � � � n   ! - � � � 4   " -�� �
�� 
cobj � l  % , ����� � [   % , � � � l  % * ����� � _   % * � � � o   % &���� 0 	ascii_num 	ASCII_num � m   & )���� ��  ��   � m   * +���� ��  ��   � l  ! " ����� � o   ! "���� 0 hex_list  ��  ��   � o      ���� 0 x   �  � � � r   0 > � � � n   0 < � � � 4   1 <�� �
�� 
cobj � l  4 ; ����� � [   4 ; � � � l  4 9 ����� � `   4 9 � � � o   4 5���� 0 	ascii_num 	ASCII_num � m   5 8���� ��  ��   � m   9 :���� ��  ��   � l  0 1 ����� � o   0 1���� 0 hex_list  ��  ��   � o      ���� 0 y   �  ��� � L   ? K � � c   ? J � � � l  ? F ����� � b   ? F � � � b   ? D � � � m   ? B � � � � �  % � o   B C���� 0 x   � o   D E���� 0 y  ��  ��   � m   F I��
�� 
TEXT��   9  � � � l     ��������  ��  ��   �  � � � i     � � � I      �� ����� $0 encodetextforurl encodeTextForURL �  � � � o      ���� 0 	this_text   �  � � � o      ���� 0 encode_url_a encode_URL_A �  ��� � o      ���� 0 encode_url_b encode_URL_B��  ��   � k     f � �  � � � l     �� � ���   �   version 1.0    � � � �    v e r s i o n   1 . 0 �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � / ) this sub-routine is used to encode text     � � � � R   t h i s   s u b - r o u t i n e   i s   u s e d   t o   e n c o d e   t e x t   �  � � � r      � � � m      � � � � � H a b c d e f g h i j k l m n o p q r s t u v w x y z 0 1 2 3 4 5 6 7 8 9 � l      ����� � o      ���� 0 standard_characters  ��  ��   �  � � � l    � � � � r     � � � m     � � � � � 2 $ + ! ' / ? ; & @ = # % > < { } [ ] " ~ ` ^ \ | * � l      ����� � o      ���� 0 url_a_chars URL_A_chars��  ��   � 6 0 double excape this since the code gets compiled    � � � � `   d o u b l e   e x c a p e   t h i s   s i n c e   t h e   c o d e   g e t s   c o m p i l e d �  � � � r     � � � m    	 � � � � �  . - _ : � l      ����� � o      ���� 0 url_b_chars URL_B_chars��  ��   �  � � � r     � � � l    ����� � o    ���� 0 standard_characters  ��  ��   � l      ����� � o      ���� 0 acceptable_characters  ��  ��   �  � � � Z    � ����� � =    � � � o    ���� 0 encode_url_a encode_URL_A � m    ��
�� boovfals � r     � � � b     � � � l    ����� � o    ���� 0 acceptable_characters  ��  ��   � l    ����� � o    ���� 0 url_a_chars URL_A_chars��  ��   � l      ����� � o      ���� 0 acceptable_characters  ��  ��  ��  ��   �  �  � Z    /���� =    # o     !�� 0 encode_url_b encode_URL_B m   ! "�~
�~ boovfals r   & + b   & ) l  & '	�}�|	 o   & '�{�{ 0 acceptable_characters  �}  �|   l  ' (
�z�y
 o   ' (�x�x 0 url_b_chars URL_B_chars�z  �y   l     �w�v o      �u�u 0 acceptable_characters  �w  �v  ��  ��     r   0 3 m   0 1 �   l     �t�s o      �r�r 0 encoded_text  �t  �s    X   4 c�q Z   D ^�p E  D G l  D E�o�n o   D E�m�m 0 acceptable_characters  �o  �n   o   E F�l�l 0 	this_char   r   J O l  J M�k�j b   J M !  l  J K"�i�h" o   J K�g�g 0 encoded_text  �i  �h  ! o   K L�f�f 0 	this_char  �k  �j   l     #�e�d# o      �c�c 0 encoded_text  �e  �d  �p   r   R ^$%$ c   R \&'& l  R Z(�b�a( b   R Z)*) l  R S+�`�_+ o   R S�^�^ 0 encoded_text  �`  �_  * I   S Y�],�\�] $0 encodecharforurl encodeCharForURL, -�[- o   T U�Z�Z 0 	this_char  �[  �\  �b  �a  ' m   Z [�Y
�Y 
TEXT% l     .�X�W. o      �V�V 0 encoded_text  �X  �W  �q 0 	this_char   o   7 8�U�U 0 	this_text   /�T/ L   d f00 l  d e1�S�R1 o   d e�Q�Q 0 encoded_text  �S  �R  �T   � 232 l     �P�O�N�P  �O  �N  3 454 i    676 I      �M8�L�M 0 
getfromfmp 
getFromFMP8 9�K9 o      �J�J 	0 prefs  �K  �L  7 k     �:: ;<; l     �I=>�I  =   version 1.8   > �??    v e r s i o n   1 . 8< @A@ l     �H�G�F�H  �G  �F  A BCB Q     DEFD k    GG HIH l   �EJK�E  J D > prefs MIGHT be a record that looks like this: {fmType:"Adv"}    K �LL |   p r e f s   M I G H T   b e   a   r e c o r d   t h a t   l o o k s   l i k e   t h i s :   { f m T y p e : " A d v " }  I M�DM r    NON n    PQP o    �C�C 0 fmtype fmTypeQ o    �B�B 	0 prefs  O o      �A�A 0 fmtype fmType�D  E R      �@�?�>
�@ .ascrerr ****      � ****�?  �>  F r    RSR m    TT �UU  U n kS o      �=�= 0 fmtype fmTypeC VWV l   �<�;�:�<  �;  �:  W XYX r    Z[Z m    \\ �]] D A p p l e S c r i p t _ T r a n s f e r - D O _ N O T _ R E N A M E[ o      �9�9 0 
astransfer 
asTransferY ^_^ r    `a` m    bb �cc  F i l e M a k e r   P r oa o      �8�8 0 fmpname fmpName_ ded l   �7�6�5�7  �6  �5  e fgf Z    �hi�4jh H    $kk E    #lml l   !n�3�2n I   !�1o�0
�1 .earsffdralis        afdro  f    �0  �3  �2  m o   ! "�/�/ 0 fmpname fmpNamei k   ' {pp qrq O   ' =sts r   + <uvu n   + :wxw 1   8 :�.
�. 
dnamx l  + 8y�-�,y 6  + 8z{z 4  + /�+|
�+ 
pcap| m   - .�*�* { C  0 7}~} 1   1 3�)
�) 
dnam~ o   4 6�(�( 0 fmpname fmpName�-  �,  v o      �'�' 0 fmpactivename fmpActiveNamet m   ' (�                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  r ��� Z   > s����&� =  > A��� o   > ?�%�% 0 fmtype fmType� m   ? @�� ���  U n k� r   D M��� b   D K��� b   D I��� b   D G��� m   D E�� ���  t e l l   a p p   "� o   E F�$�$ 0 fmpactivename fmpActiveName� m   G H�� ���  "� o   I J�#
�# 
ret � o      �"�" 0 begintellfm beginTellFM� ��� =  P S��� o   P Q�!�! 0 fmtype fmType� m   Q R�� ���  A d v� ��� r   V ]��� b   V [��� m   V Y�� ��� Z t e l l   a p p   i d   " c o m . f i l e m a k e r . c l i e n t . a d v a n c e d 1 2 "� o   Y Z� 
�  
ret � o      �� 0 begintellfm beginTellFM� ��� =  ` e��� o   ` a�� 0 fmtype fmType� m   a d�� ���  P r o� ��� r   h o��� b   h m��� m   h k�� ��� P t e l l   a p p   i d   " c o m . f i l e m a k e r . c l i e n t . p r o 1 2 "� o   k l�
� 
ret � o      �� 0 begintellfm beginTellFM�  �&  � ��� r   t {��� b   t y��� o   t u�
� 
ret � m   u x�� ���  e n d   t e l l� o      �� 0 	endtellfm 	endTellFM�  �4  j k   ~ ��� ��� r   ~ ���� m   ~ ��� ���  � o      �� 0 begintellfm beginTellFM� ��� r   � ���� m   � ��� ���  � o      �� 0 	endtellfm 	endTellFM�  g ��� l  � �����  �  �  � ��� r   � ���� b   � ���� b   � ���� m   � ��� ��� $ c e l l   1   o f   l a y o u t   "� o   � ��� 0 
astransfer 
asTransfer� m   � ��� ���  "   o f   w i n d o w   1� o      �� 0 	codetoget 	codeToGet� ��� r   � ���� b   � ���� b   � ���� o   � ��� 0 begintellfm beginTellFM� o   � ��� 0 	codetoget 	codeToGet� o   � ��� 0 	endtellfm 	endTellFM� o      �� 0 
sendsource 
sendSource� ��� r   � ���� I  � ����

� .sysodsct****        scpt� o   � ��	�	 0 
sendsource 
sendSource�
  � o      �� 0 	inputdata 	inputData� ��� l  � �����  �  �  � ��� L   � ��� o   � ��� 0 	inputdata 	inputData�  5 ��� l     ��� �  �  �   � ��� i     #��� I      ������� 0 	sendtofmp 	sendToFMP� ���� o      ���� 0 somedata someData��  ��  � k    )�� ��� l     ������  �   version 1.6   � ���    v e r s i o n   1 . 6� ��� l     ��������  ��  ��  � ��� Q     ���� k    �� ��� l   ������  � b \ someData MIGHT be a record that looks like this: {fmType:"Adv", someData:"BLAH BLAH BLAH"}    � ��� �   s o m e D a t a   M I G H T   b e   a   r e c o r d   t h a t   l o o k s   l i k e   t h i s :   { f m T y p e : " A d v " ,   s o m e D a t a : " B L A H   B L A H   B L A H " }  � ��� r    � � n     o    ���� 0 fmtype fmType o    ���� 0 somedata someData  o      ���� 0 fmtype fmType� �� r   	  n   	  o   
 ���� 0 somedata someData o   	 
���� 0 somedata someData o      ���� 0 somedata someData��  � R      ������
�� .ascrerr ****      � ****��  ��  � r    	 m    

 �  U n k	 o      ���� 0 fmtype fmType�  l   ��������  ��  ��    r     m     � D A p p l e S c r i p t _ T r a n s f e r - D O _ N O T _ R E N A M E o      ���� 0 
astransfer 
asTransfer  r    ! m     �  F i l e M a k e r   P r o o      ���� 0 fmpname fmpName  Z   " ��� H   " * E   " ) !  l  " '"����" I  " '��#��
�� .earsffdralis        afdr#  f   " #��  ��  ��  ! o   ' (���� 0 fmpname fmpName k   - �$$ %&% O   - C'(' r   1 B)*) n   1 @+,+ 1   > @��
�� 
dnam, l  1 >-����- 6  1 >./. 4  1 5��0
�� 
pcap0 m   3 4���� / C  6 =121 1   7 9��
�� 
dnam2 o   : <���� 0 fmpname fmpName��  ��  * o      ���� 0 fmpactivename fmpActiveName( m   - .33�                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  & 454 Z   D {678��6 =  D G9:9 o   D E���� 0 fmtype fmType: m   E F;; �<<  U n k7 r   J S=>= b   J Q?@? b   J OABA b   J MCDC m   J KEE �FF  t e l l   a p p   "D o   K L���� 0 fmpactivename fmpActiveNameB m   M NGG �HH  "@ o   O P��
�� 
ret > o      ���� 0 begintellfm beginTellFM8 IJI =  V [KLK o   V W���� 0 fmtype fmTypeL m   W ZMM �NN  A d vJ OPO r   ^ eQRQ b   ^ cSTS m   ^ aUU �VV Z t e l l   a p p   i d   " c o m . f i l e m a k e r . c l i e n t . a d v a n c e d 1 2 "T o   a b��
�� 
ret R o      ���� 0 begintellfm beginTellFMP WXW =  h mYZY o   h i���� 0 fmtype fmTypeZ m   i l[[ �\\  P r oX ]��] r   p w^_^ b   p u`a` m   p sbb �cc P t e l l   a p p   i d   " c o m . f i l e m a k e r . c l i e n t . p r o 1 2 "a o   s t��
�� 
ret _ o      ���� 0 begintellfm beginTellFM��  ��  5 ded l  | |��������  ��  ��  e f��f r   | �ghg b   | �iji o   | }��
�� 
ret j m   } �kk �ll  e n d   t e l lh o      ���� 0 	endtellfm 	endTellFM��  ��   k   � �mm non r   � �pqp m   � �rr �ss  q o      ���� 0 begintellfm beginTellFMo t��t r   � �uvu m   � �ww �xx  v o      ���� 0 	endtellfm 	endTellFM��   yzy l  � ���������  ��  ��  z {|{ r   � �}~} c   � �� o   � ����� 0 somedata someData� m   � ���
�� 
TEXT~ o      ���� "0 somedatacleaned someDataCleaned| ��� r   � ���� n  � ���� 1   � ���
�� 
txdl� 1   � ���
�� 
ascr� o      ���� 0 	olddelims 	oldDelims� ��� l  � �������  �   escape backslashes    � ��� (   e s c a p e   b a c k s l a s h e s  � ��� r   � ���� I  � ������
�� .sysontocTEXT       shor� m   � ����� \��  � o      ���� 0 	backslash  � ��� r   � ���� o   � ����� 0 	backslash  � n     ��� 1   � ���
�� 
txdl� 1   � ���
�� 
ascr� ��� r   � ���� n   � ���� 2   � ���
�� 
citm� o   � ����� "0 somedatacleaned someDataCleaned� l     ������ o      ���� "0 somedatacleaned someDataCleaned��  ��  � ��� r   � ���� b   � ���� o   � ����� 0 	backslash  � o   � ����� 0 	backslash  � n     ��� 1   � ���
�� 
txdl� 1   � ���
�� 
ascr� ��� r   � ���� c   � ���� l  � ������� o   � ����� "0 somedatacleaned someDataCleaned��  ��  � m   � ���
�� 
TEXT� l     ������ o      ���� "0 somedatacleaned someDataCleaned��  ��  � ��� l  � �������  �   escape double-quotes    � ��� ,   e s c a p e   d o u b l e - q u o t e s  � ��� r   � ���� l  � ������� m   � ��� ���  "��  ��  � n     ��� 1   � ���
�� 
txdl� 1   � ���
�� 
ascr� ��� r   � ���� n   � ���� 2   � ���
�� 
citm� o   � ����� "0 somedatacleaned someDataCleaned� l     ������ o      ���� "0 somedatacleaned someDataCleaned��  ��  � ��� r   � ���� l  � ������� l  � ������� b   � ���� o   � ����� 0 	backslash  � m   � ��� ���  "��  ��  ��  ��  � n     ��� 1   � ���
�� 
txdl� 1   � ���
�� 
ascr� ��� r   � ���� c   � ���� l  � ������� o   � ����� "0 somedatacleaned someDataCleaned��  ��  � m   � ���
�� 
TEXT� l     ������ o      ���� "0 somedatacleaned someDataCleaned��  ��  � ��� l  � �������  � ) # reset the AppleScript delimiters	    � ��� F   r e s e t   t h e   A p p l e S c r i p t   d e l i m i t e r s 	  � ��� r   ���� o   � ����� 0 	olddelims 	oldDelims� n     ��� 1  ��
�� 
txdl� 1   ���
�� 
ascr� ��� l ��������  ��  ��  � ��� r  ��� b  ��� b  ��� b  ��� b  ��� m  �� ��� , s e t   c e l l   1   o f   l a y o u t   "� o  ���� 0 
astransfer 
asTransfer� m  �� ��� & "   o f   w i n d o w   1   t o   ( "� o  ���� "0 somedatacleaned someDataCleaned� m  �� ���  "   a s   s t r i n g )� o      ���� 0 	codetoset 	codeToSet� ��� r  !��� b  ��� b  ��� o  ���� 0 begintellfm beginTellFM� o  �� 0 	codetoset 	codeToSet� o  �~�~ 0 	endtellfm 	endTellFM� o      �}�} 0 
sendsource 
sendSource� ��� l ""�|�{�z�|  �{  �z  �    I "'�y�x
�y .sysodsct****        scpt o  "#�w�w 0 
sendsource 
sendSource�x   �v l ((�u�t�s�u  �t  �s  �v  �  l     �r�q�p�r  �q  �p    i   $ '	 I      �o
�n�o 40 displayfilemakerdatabase displayFileMakerDatabase
 �m o      �l�l 	0 prefs  �m  �n  	 k    �  l     �k�k     version 1.5    �    v e r s i o n   1 . 5  l     �j�i�h�j  �i  �h    Q    � k   �  r     K     �g �g 0 	fmapptype 	fmAppType m    !! �""  P r o  �f#$�f .0 waitcycledelayseconds waitCycleDelaySeconds# m    �e�e $ �d%�c�d ,0 waitsavetotalseconds waitSaveTotalSeconds% ]    &'& m    	�b�b ' 1   	 
�a
�a 
min �c   o      �`�` 0 defaultprefs defaultPrefs ()( r    *+* b    ,-, o    �_�_ 	0 prefs  - o    �^�^ 0 defaultprefs defaultPrefs+ o      �]�] 	0 prefs  ) ./. l   �\�[�Z�\  �[  �Z  / 010 Z   423�Y�X2 o    �W�W 0 	debugmode 	DebugMode3 I    0�V4�U�V 0 
logconsole 
logConsole4 565 o    $�T�T 0 
scriptname 
ScriptName6 7�S7 b   $ ,898 m   $ %:: �;; @ d i s p l a y F i l e M a k e r D a t a b a s e   p r e f s :  9 I   % +�R<�Q�R  0 coercetostring coerceToString< =�P= o   & '�O�O 	0 prefs  �P  �Q  �S  �U  �Y  �X  1 >?> l  5 5�N�M�L�N  �M  �L  ? @A@ r   5 :BCB n   5 8DED o   6 8�K�K 0 dbname dbNameE o   5 6�J�J 	0 prefs  C o      �I�I 0 dbname dbNameA FGF l  ; ;�H�G�F�H  �G  �F  G HIH r   ; @JKJ n   ; >LML o   < >�E�E ,0 waitsavetotalseconds waitSaveTotalSecondsM o   ; <�D�D 	0 prefs  K o      �C�C ,0 waitsavetotalseconds waitSaveTotalSecondsI NON r   A FPQP n   A DRSR o   B D�B�B .0 waitcycledelayseconds waitCycleDelaySecondsS o   A B�A�A 	0 prefs  Q o      �@�@ .0 waitcycledelayseconds waitCycleDelaySecondsO TUT l  G G�?�>�=�?  �>  �=  U VWV r   G RXYX I  G P�<Z[
�< .sysorondlong        doubZ l  G J\�;�:\ ^   G J]^] o   G H�9�9 ,0 waitsavetotalseconds waitSaveTotalSeconds^ o   H I�8�8 .0 waitcycledelayseconds waitCycleDelaySeconds�;  �:  [ �7_�6
�7 
dire_ m   K L�5
�5 olierndD�6  Y o      �4�4 0 waitcyclemax waitCycleMaxW `a` l  S S�3�2�1�3  �2  �1  a bcb Z   S fde�0fd =  S Xghg n   S Viji o   T V�/�/ 0 	fmapptype 	fmAppTypej o   S T�.�. 	0 prefs  h m   V Wkk �ll  A d ve r   [ ^mnm m   [ \oo �pp > c o m . f i l e m a k e r . c l i e n t . a d v a n c e d 1 2n o      �-�- 0 fmappbundleid fmAppBundleID�0  f r   a fqrq m   a dss �tt 4 c o m . f i l e m a k e r . c l i e n t . p r o 1 2r o      �,�, 0 fmappbundleid fmAppBundleIDc uvu l  g g�+�*�)�+  �*  �)  v wxw l  g g�(�'�&�(  �'  �&  x yzy U   g �{|{ k   n �}} ~~ l  n n�%�$�#�%  �$  �#   ��� r   n s��� m   n q�"
�" 
null� o      �!�! 0 doclist docList� ��� Q   t ����� k   w ��� ��� w   w ���� O   { ���� r   � ���� 2   � �� 
�  
docu� o      �� 0 doclist docList� 5   { ����
� 
capp� o    ��� 0 fmappbundleid fmAppBundleID
� kfrmID  �2                                                                                  FM12  alis    �  MacintoshSSD               �u8\H+   3�FileMaker Pro Advanced.app                                      4�̙�Q        ����  	                FileMaker Pro 12 Advanced     �u~�      ̚"�     3�   �  PMacintoshSSD:Applications: FileMaker Pro 12 Advanced: FileMaker Pro Advanced.app  6  F i l e M a k e r   P r o   A d v a n c e d . a p p    M a c i n t o s h S S D  AApplications/FileMaker Pro 12 Advanced/FileMaker Pro Advanced.app   / ��  � ��� l  � �����  �  �  � ��� Z  � ������ >  � ���� o   � ��� 0 doclist docList� m   � ��
� 
null�  S   � ��  �  � ��� l  � �����  �  �  �  � R      ���
� .ascrerr ****      � ****� o      �� 0 errmsg errMsg� ���
� 
errn� o      �� 0 errnum errNum�  � Z   � ������ =  � ���� o   � ��
�
 0 errnum errNum� m   � ��	�	��� l  � �����  � � � just keep trying - this error can be caused when a database is opening and the open script takes a bit too long to finish, or something in the FM interface is slow to respond.    � ���b   j u s t   k e e p   t r y i n g   -   t h i s   e r r o r   c a n   b e   c a u s e d   w h e n   a   d a t a b a s e   i s   o p e n i n g   a n d   t h e   o p e n   s c r i p t   t a k e s   a   b i t   t o o   l o n g   t o   f i n i s h ,   o r   s o m e t h i n g   i n   t h e   F M   i n t e r f a c e   i s   s l o w   t o   r e s p o n d .  �  � R   � ����
� .ascrerr ****      � ****� b   � ���� m   � ��� ��� \ E r r o r   g e t t i n g   l i s t   o f   d a t a b a s e s   a l r e a d y   o p e n :  � o   � ��� 0 errmsg errMsg� ���
� 
errn� o   � ��� 0 errnum errNum�  � ��� l  � ���� �  �  �   � ���� I  � ������
�� .sysodelanull��� ��� nmbr� o   � ����� .0 waitcycledelayseconds waitCycleDelaySeconds��  ��  | o   j k���� 0 waitcyclemax waitCycleMaxz ��� l  � ���������  ��  ��  � ��� X   ������� k   ���� ��� r   � ���� n   � ���� 1   � ���
�� 
pnam� o   � ����� 0 onedoc oneDoc� o      ���� 0 docname docName� ��� l  � �������  � 0 * get the name WITHOUT the file extension:    � ��� T   g e t   t h e   n a m e   W I T H O U T   t h e   f i l e   e x t e n s i o n :  � ��� c   � ���� l  � ������� n   � ���� 1   � ���
�� 
rvse� n   � ���� 2  � ���
�� 
cha � o   � ����� 0 docname docName��  ��  � m   � ���
�� 
TEXT� ��� n   ���� 7  �����
�� 
ctxt� l  ������� [   ���� l  ������� I  ������
�� .sysooffslong    ��� null��  � ����
�� 
psof� m  �� ���  .� �����
�� 
psin� 1  	��
�� 
rslt��  ��  ��  � m  ���� ��  ��  � m  ������� 1   � ���
�� 
rslt� ��� r  +��� c  )��� l %������ n  %��� 1  !%��
�� 
rvse� n  !��� 2 !��
�� 
cha � 1  ��
�� 
rslt��  ��  � m  %(��
�� 
TEXT� o      ���� 0 docname docName� ��� Z ,=������� o  ,1���� 0 	debugmode 	DebugMode� I 49�����
�� .ascrcmnt****      � ****� o  45���� 0 dbname dbName��  ��  ��  � ��� Z >O������� o  >C���� 0 	debugmode 	DebugMode� I FK�����
�� .ascrcmnt****      � ****� o  FG���� 0 docname docName��  ��  ��  � ���� P  P������ k  W��� ��� l WW������  � w qif debugMode then logConsole(ScriptName, "displayFileMakerDatabase docName: " & coerceToString(class of docName))   � ��� � i f   d e b u g M o d e   t h e n   l o g C o n s o l e ( S c r i p t N a m e ,   " d i s p l a y F i l e M a k e r D a t a b a s e   d o c N a m e :   "   &   c o e r c e T o S t r i n g ( c l a s s   o f   d o c N a m e ) )� ��� l WW������  � u oif debugMode then logConsole(ScriptName, "displayFileMakerDatabase dbName: " & coerceToString(class of dbName))   � ��� � i f   d e b u g M o d e   t h e n   l o g C o n s o l e ( S c r i p t N a m e ,   " d i s p l a y F i l e M a k e r D a t a b a s e   d b N a m e :   "   &   c o e r c e T o S t r i n g ( c l a s s   o f   d b N a m e ) )�    l WW��������  ��  ��    l WW��������  ��  ��    l WW����   s m apparently these two TEXT variables have some difference (formatting?) even when they are identical STRINGS:    � �   a p p a r e n t l y   t h e s e   t w o   T E X T   v a r i a b l e s   h a v e   s o m e   d i f f e r e n c e   ( f o r m a t t i n g ? )   e v e n   w h e n   t h e y   a r e   i d e n t i c a l   S T R I N G S : 	��	 Z  W�
��
 = Wb l W\���� c  W\ o  WX���� 0 docname docName m  X[��
�� 
TEXT��  ��   l \a���� c  \a o  \]���� 0 dbname dbName m  ]`��
�� 
TEXT��  ��   k  e�  l ee����   " if debugMode then log "SAME"    � 8 i f   d e b u g M o d e   t h e n   l o g   " S A M E "  w  e� O  i�  k  u�!! "#" I uz��$��
�� .miscmvisnull���    obj $ o  uv���� 0 onedoc oneDoc��  # %&% Z {�'(����' o  {����� 0 	debugmode 	DebugMode( n ��)*) I  ����+���� 0 
logconsole 
logConsole+ ,-, o  ������ 0 
scriptname 
ScriptName- .��. b  ��/0/ m  ��11 �22 B d i s p l a y F i l e M a k e r D a t a b a s e   o n e D o c :  0 n ��343 I  ����5����  0 coercetostring coerceToString5 6��6 o  ������ 0 onedoc oneDoc��  ��  4  f  ����  ��  *  f  ����  ��  & 7��7 l ����89��  8 ( "if debugMode then log (path to it)   9 �:: D i f   d e b u g M o d e   t h e n   l o g   ( p a t h   t o   i t )��    5  ir��;��
�� 
capp; o  mn���� 0 fmappbundleid fmAppBundleID
�� kfrmID  2                                                                                  FM12  alis    �  MacintoshSSD               �u8\H+   3�FileMaker Pro Advanced.app                                      4�̙�Q        ����  	                FileMaker Pro 12 Advanced     �u~�      ̚"�     3�   �  PMacintoshSSD:Applications: FileMaker Pro 12 Advanced: FileMaker Pro Advanced.app  6  F i l e M a k e r   P r o   A d v a n c e d . a p p    M a c i n t o s h S S D  AApplications/FileMaker Pro 12 Advanced/FileMaker Pro Advanced.app   / ��   <��< L  ��== m  ����
�� boovtrue��  ��   l ����>?��  > P Jif debugMode then logConsole(ScriptName, "displayFileMakerDatabase DIFF" )   ? �@@ � i f   d e b u g M o d e   t h e n   l o g C o n s o l e ( S c r i p t N a m e ,   " d i s p l a y F i l e M a k e r D a t a b a s e   D I F F "   )��  ��  � ����
�� conscase��  ��  �� 0 onedoc oneDoc� o   � ����� 0 doclist docList� ABA L  ��CC m  ����
�� boovfalsB D��D l ����������  ��  ��  ��   R      ��EF
�� .ascrerr ****      � ****E o      ���� 0 errmsg errMsgF ��G��
�� 
errnG o      ���� 0 errnum errNum��   R  ����HI
�� .ascrerr ****      � ****H b  ��JKJ b  ��LML b  ��NON m  ��PP �QQ @ d i s p l a y F i l e M a k e r D a t a b a s e   e r r o r :  O o  ������ 0 errmsg errMsgM m  ��RR �SS "   -   e r r o r   n u m b e r :  K o  ������ 0 errnum errNumI ��T��
�� 
errnT o  ������ 0 errnum errNum��   U��U l ����������  ��  ��  ��   VWV l     ��������  ��  ��  W XYX i   ( +Z[Z I      ��\���� 20 ensurefilemakerdatabase ensureFileMakerDatabase\ ]��] o      ���� 	0 prefs  ��  ��  [ k     �^^ _`_ l     ��ab��  a   version 1.3   b �cc    v e r s i o n   1 . 3` ded l     ����~��  �  �~  e fgf r     hih n     jkj o    �}�} 0 dbname dbNamek o     �|�| 	0 prefs  i o      �{�{ 0 dbname dbNameg lml l   �z�y�x�z  �y  �x  m non l   pqrp r    sts I    �wu�v�w 40 displayfilemakerdatabase displayFileMakerDatabaseu v�uv K    ww �txy�t 0 dbname dbNamex o    	�s�s 0 dbname dbNamey �rz�q�r 0 	fmapptype 	fmAppTypez m   
 {{ �||  A d v�q  �u  �v  t o      �p�p 0 isdisplayed isDisplayedq + % first, just see if one is available.   r �}} J   f i r s t ,   j u s t   s e e   i f   o n e   i s   a v a i l a b l e .o ~~ Z   -���o�n� o    �m�m 0 	debugmode 	DebugMode� I    )�l��k�l 0 
logconsole 
logConsole� ��� o    "�j�j 0 
scriptname 
ScriptName� ��i� b   " %��� m   " #�� ��� $ T r i e d   t o   d i s p l a y :  � o   # $�h�h 0 dbname dbName�i  �k  �o  �n   ��g� Z   . ����f�� o   . /�e�e 0 isdisplayed isDisplayed� L   2 4�� m   2 3�d
�d boovtrue�f  � k   7 ��� ��� Z  7 P���c�b� o   7 <�a�a 0 	debugmode 	DebugMode� I   ? L�`��_�` 0 
logconsole 
logConsole� ��� o   @ E�^�^ 0 
scriptname 
ScriptName� ��]� b   E H��� m   E F�� ��� , A b o u t   t o   t r y   t o   o p e n :  � o   F G�\�\ 0 dbname dbName�]  �_  �c  �b  � ��� l  Q Q�[�Z�Y�[  �Z  �Y  � ��X� Z   Q ����W�� I   Q W�V��U�V .0 openfilemakerdatabase openFileMakerDatabase� ��T� o   R S�S�S 	0 prefs  �T  �U  � k   Z ��� ��� l  Z Z�R���R  � 2 , was able to open it, so NOW display window.   � ��� X   w a s   a b l e   t o   o p e n   i t ,   s o   N O W   d i s p l a y   w i n d o w .� ��� I  Z _�Q��P
�Q .sysodelanull��� ��� nmbr� m   Z [�� ?�      �P  � ��� Z  ` y���O�N� o   ` e�M�M 0 	debugmode 	DebugMode� I   h u�L��K�L 0 
logconsole 
logConsole� ��� o   i n�J�J 0 
scriptname 
ScriptName� ��I� b   n q��� m   n o�� ��� R T r i e d   t o   o p e n ,   n o w   t r y   a g a i n   t o   d i s p l a y :  � o   o p�H�H 0 dbname dbName�I  �K  �O  �N  � ��� r   z ���� I   z ��G��F�G 40 displayfilemakerdatabase displayFileMakerDatabase� ��E� K   { ��� �D���D 0 dbname dbName� o   | }�C�C 0 dbname dbName� �B��A�B 0 	fmapptype 	fmAppType� m   ~ �� ���  A d v�A  �E  �F  � o      �@�@ 0 isdisplayed isDisplayed� ��?� L   � ��� o   � ��>�> 0 isdisplayed isDisplayed�?  �W  � k   � ��� ��� l  � ��=���=  � 0 * Was NOT able to open it, so return false.   � ��� T   W a s   N O T   a b l e   t o   o p e n   i t ,   s o   r e t u r n   f a l s e .� ��<� L   � ��� m   � ��;
�; boovfals�<  �X  �g  Y ��� l     �:�9�8�:  �9  �8  � ��� i   , /��� I      �7��6�7 .0 openfilemakerdatabase openFileMakerDatabase� ��5� o      �4�4 	0 prefs  �5  �6  � k     ��� ��� l     �3���3  �   version 1.3   � ���    v e r s i o n   1 . 3� ��� l     �2�1�0�2  �1  �0  � ��� Q     ����� k    u�� ��� r    ��� b    
��� b    ��� m    �� ��� < h t c l i n k : / / A c c e s s F i l e ? F i l e N a m e =� n    ��� o    �/�/ 0 dbname dbName� o    �.�. 	0 prefs  � m    	�� ��� N & C o m m a n d = O p e n & S i l e n t O p e n = 1 & S h o w W i n d o w = 1� o      �-�- 0 	customurl 	customURL� ��� l   �,�+�*�,  �+  �*  � ��� O    p��� k    o�� ��� l   �)�(�'�)  �(  �'  � ��� r    /� � b    - b    $ b    " b     b    	
	 b     b     m     �  F M P : / / n     o    �&�& 0 serverip serverIP o    �%�% 	0 prefs   m     �  /
 n     o    �$�$ 0 
maindbname 
mainDbName o    �#�# 	0 prefs   m     �  ? s c r i p t = n    ! o    !�"�" <0 customlinkreceiverscriptname customLinkReceiverScriptName o    �!�! 	0 prefs   m   " # �  & p a r a m = n  $ , I   % ,� ��  $0 encodetextforurl encodeTextForURL  !  o   % &�� 0 	customurl 	customURL! "#" m   & '�
� boovtrue# $�$ m   ' (�
� boovfals�  �    f   $ %  o      �� 0 fmpurl fmpURL� %&% l  0 0����  �  �  & '(' l  0 0�)*�  ) [ U we must double-encode equals (%3D) and ampersand (%26) to work-around FileMaker bug:   * �++ �   w e   m u s t   d o u b l e - e n c o d e   e q u a l s   ( % 3 D )   a n d   a m p e r s a n d   ( % 2 6 )   t o   w o r k - a r o u n d   F i l e M a k e r   b u g :( ,-, r   0 <./. n  0 :010 I   1 :�2�� 0 replacesimple replaceSimple2 3�3 J   1 644 565 o   1 2�� 0 fmpurl fmpURL6 787 m   2 399 �::  % 3 D8 ;�; m   3 4<< �== 
 % 2 5 3 D�  �  �  1  f   0 1/ o      �� 0 fmpurl fmpURL- >?> r   = K@A@ n  = IBCB I   > I�D�� 0 replacesimple replaceSimpleD E�E J   > EFF GHG o   > ?�� 0 fmpurl fmpURLH IJI m   ? @KK �LL  % 2 6J M�M m   @ CNN �OO 
 % 2 5 2 6�  �  �  C  f   = >A o      �
�
 0 fmpurl fmpURL? PQP l  L L�	���	  �  �  Q RSR Z  L gTU��T o   L Q�� 0 	debugmode 	DebugModeU n  T cVWV I   U c�X�� 0 
logconsole 
logConsoleX YZY o   U Z�� 0 
scriptname 
ScriptNameZ [� [ b   Z _\]\ m   Z ]^^ �__ < o p e n F i l e M a k e r D a t a b a s e   f m p U R L :  ] o   ] ^���� 0 fmpurl fmpURL�   �  W  f   T U�  �  S `a` l  h h��������  ��  ��  a bcb I  h m��d��
�� .GURLGURLnull��� ��� TEXTd o   h i���� 0 fmpurl fmpURL��  c e��e l  n n��������  ��  ��  ��  � m    ff�                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  � ghg l  q q��������  ��  ��  h iji L   q skk m   q r��
�� boovtruej l��l l  t t��������  ��  ��  ��  � R      ��mn
�� .ascrerr ****      � ****m o      ���� 0 errmsg errMsgn ��o��
�� 
errno o      ���� 0 errnum errNum��  � k   } �pp qrq l  } }��st��  s A ; ANY error should return FALSE, as in "could not be opened"   t �uu v   A N Y   e r r o r   s h o u l d   r e t u r n   F A L S E ,   a s   i n   " c o u l d   n o t   b e   o p e n e d "r vwv l  } }��������  ��  ��  w xyx l  } z{|z L   } }} o   } ~���� 0 errmsg errMsg{  false   | �~~ 
 f a l s ey �� l  � ���������  ��  ��  ��  � ��� l  � ���������  ��  ��  � ���� l  � ���������  ��  ��  ��  � ��� l     ��������  ��  ��  � ��� i   0 3��� I      ������� 0 sfr_dictget SFR_DictGet� ��� o      ���� 0 somedict someDict� ���� o      ���� 0 itemname itemName��  ��  � k     X�� ��� l     ������  �   version 1.0   � ���    v e r s i o n   1 . 0� ��� l     ��������  ��  ��  � ��� r     ��� b     
��� b     ��� m     �� ���  < :� I    ������� 0 
sfr_escape 
SFR_Escape� ���� o    ���� 0 itemname itemName��  ��  � m    	�� ���  : =� o      ���� 0 	keystring 	keyString� ��� r    ��� m    �� ���  : >� o      ���� 0 	endstring 	endString� ��� l   ��������  ��  ��  � ��� Z    N������ H    �� E    ��� o    ���� 0 somedict someDict� o    ���� 0 	keystring 	keyString� L    �� m    �� ���  ��  � k    N�� ��� r    "��� n    ��� 1     ��
�� 
txdl� 1    ��
�� 
ascr� o      ���� 0 	olddelims 	oldDelims� ��� r   # (��� l  # $������ o   # $���� 0 	keystring 	keyString��  ��  � n     ��� 1   % '��
�� 
txdl� 1   $ %��
�� 
ascr� ��� r   ) /��� n   ) -��� 4   * -���
�� 
citm� m   + ,���� � o   ) *���� 0 somedict someDict� l     ������ o      ���� 0 
keyremoved 
keyRemoved��  ��  � ���� Z   0 N������ H   0 4�� E   0 3��� o   0 1���� 0 
keyremoved 
keyRemoved� o   1 2���� 0 	endstring 	endString� L   7 9�� m   7 8�� ���  ��  � k   < N�� ��� r   < A��� o   < =���� 0 	endstring 	endString� n     ��� 1   > @��
�� 
txdl� 1   = >��
�� 
ascr� ��� r   B H��� n   B F��� 4   C F���
�� 
citm� m   D E���� � o   B C���� 0 
keyremoved 
keyRemoved� l     ������ o      ���� 0 	itemvalue 	itemValue��  ��  � ���� r   I N��� o   I J���� 0 	olddelims 	oldDelims� n     ��� 1   K M��
�� 
txdl� 1   J K��
�� 
ascr��  ��  � ��� l  O O��������  ��  ��  � ��� L   O V�� I   O U������� 0 sfr_unescape SFR_Unescape� ���� o   P Q���� 0 	itemvalue 	itemValue��  ��  � ��� l  W W��������  ��  ��  � ���� l  W W��������  ��  ��  ��  � ��� l     ��������  ��  ��  � ��� i   4 7��� I      ������� 0 sfr_dictitem SFR_DictItem� ��� o      ���� 0 itemname itemName� ���� o      ���� 0 	itemvalue 	itemValue��  ��  � k     �� � � l     ����     version 1.0    �    v e r s i o n   1 . 0   l     ��������  ��  ��   �� L      b     	 b     

 b     
 b      m      �  < : I    ������ 0 
sfr_escape 
SFR_Escape �� o    ���� 0 itemname itemName��  ��   m    	 �  : = I   
 ������ 0 
sfr_escape 
SFR_Escape � o    �~�~ 0 	itemvalue 	itemValue�  ��  	 m     �  : >��  �  l     �}�|�{�}  �|  �{    i   8 ; I      �z �y�z 0 
sfr_escape 
SFR_Escape  !�x! o      �w�w 0 
somestring 
someString�x  �y   k     3"" #$# l     �v%&�v  %   version 1.0   & �''    v e r s i o n   1 . 0$ ()( l     �u�t�s�u  �t  �s  ) *+* r     ,-, J     .. /0/ m     11 �22  =0 343 m    55 �66  :4 787 m    99 �::  <8 ;�r; m    << �==  >�r  - o      �q�q  0 escapecharlist escapeCharList+ >?> l  	 	�p�o�n�p  �o  �n  ? @A@ X   	 .B�mCB k    )DD EFE r    'GHG I    %�lI�k�l 0 replacesimple replaceSimpleI J�jJ J    !KK LML o    �i�i 0 
somestring 
someStringM NON o    �h�h 0 onechar oneCharO P�gP b    QRQ m    SS �TT  /R o    �f�f 0 onechar oneChar�g  �j  �k  H o      �e�e 0 
somestring 
someStringF U�dU l  ( (�c�b�a�c  �b  �a  �d  �m 0 onechar oneCharC o    �`�`  0 escapecharlist escapeCharListA VWV l  / /�_�^�]�_  �^  �]  W XYX L   / 1ZZ o   / 0�\�\ 0 
somestring 
someStringY [�[[ l  2 2�Z�Y�X�Z  �Y  �X  �[   \]\ l     �W�V�U�W  �V  �U  ] ^_^ i   < ?`a` I      �Tb�S�T 0 sfr_unescape SFR_Unescapeb c�Rc o      �Q�Q 0 
somestring 
someString�R  �S  a k     3dd efe l     �Pgh�P  g   version 1.0   h �ii    v e r s i o n   1 . 0f jkj l     �O�N�M�O  �N  �M  k lml r     non J     pp qrq m     ss �tt  =r uvu m    ww �xx  :v yzy m    {{ �||  <z }�L} m    ~~ �  >�L  o o      �K�K  0 escapecharlist escapeCharListm ��� l  	 	�J�I�H�J  �I  �H  � ��� X   	 .��G�� k    )�� ��� r    '��� I    %�F��E�F 0 replacesimple replaceSimple� ��D� J    !�� ��� o    �C�C 0 
somestring 
someString� ��� b    ��� m    �� ���  /� o    �B�B 0 onechar oneChar� ��A� o    �@�@ 0 onechar oneChar�A  �D  �E  � o      �?�? 0 
somestring 
someString� ��>� l  ( (�=�<�;�=  �<  �;  �>  �G 0 onechar oneChar� o    �:�:  0 escapecharlist escapeCharList� ��� l  / /�9�8�7�9  �8  �7  � ��� L   / 1�� o   / 0�6�6 0 
somestring 
someString� ��5� l  2 2�4�3�2�4  �3  �2  �5  _ ��� l     �1�0�/�1  �0  �/  � ��� i   @ C��� I      �.��-�. 60 fmgui_managedb_field_edit fmGUI_ManageDb_Field_Edit� ��,� o      �+�+ 	0 prefs  �,  �-  � k    ��� ��� l     �*���*  �   version 1.2   � ���    v e r s i o n   1 . 2� ��� l     �)�(�'�)  �(  �'  � ��� l     �&���&  � � � any BOOLEAN parameters can be either actually boolean, or 1/0.  This function will change that to match UI scripting interface needs.   � ���   a n y   B O O L E A N   p a r a m e t e r s   c a n   b e   e i t h e r   a c t u a l l y   b o o l e a n ,   o r   1 / 0 .     T h i s   f u n c t i o n   w i l l   c h a n g e   t h a t   t o   m a t c h   U I   s c r i p t i n g   i n t e r f a c e   n e e d s .� ��� l     �%�$�#�%  �$  �#  � ��� r     Z��� K     X�� �"���" 0 editmode editMode� m    �� ���  C O N F O R M� �!���! 0 	tablename 	tableName� m    � 
�  
null� ���� 0 	fieldname 	fieldName� m    �
� 
null� ���� 0 altpatterns altPatterns� m    �
� 
null� ���� 0 fieldcomment fieldComment� m   	 
�
� 
null� ���� 0 datatype dataType� m    �
� 
null� ���� 0 	fieldtype 	fieldType� m    �
� 
null� ���� 0 calccode calcCode� m    �
� 
null� ���� &0 autoentercalccode autoEnterCalcCode� m    �
� 
null� ���� 20 autoentercalccontexttoc autoEnterCalcContextTOC� m    �
� 
null� ����  0 alwaysevaluate alwaysEvaluate� m    �
� 
null� ����  0 calccontexttoc calcContextTOC� m    �
� 
null� ���� 0 storageglobal storageGlobal� m    �

�
 
null� �	���	 20 storecalculationresults storeCalculationResults� m    �
� 
null� ���� (0 storageindexchoice storageIndexChoice� m     �
� 
null� ���� 0 	autoindex 	autoIndex� m   # $�
� 
null� ���� 0 maxrepetition maxRepetition� m   ' (�
� 
null� ���� 0 indexlanguage indexLanguage� m   + ,� 
�  
null� ������ 0 allowediting allowEditing� m   / 0��
�� 
null� ������ 00 overwriteexistingvalue overwriteExistingValue� m   3 4��
�� 
null� ������ *0 autoenterisconstant autoEnterIsConstant� m   7 8��
�� 
null� ������ 00 autoenteriscalculation autoEnterIsCalculation� m   ; <��
�� 
null� ������ &0 autoenterislookup autoEnterIsLookup� m   ? @��
�� 
null� ������ .0 autoenterspecialvalue autoEnterSpecialValue� m   C D��
�� 
null� ������ 0 
autoserial 
autoSerial� m   G H��
�� 
null� ������ .0 autoenterconstantdata autoEnterConstantData� m   K L��
�� 
null� ������ (0 validationcalccode validationCalcCode� m   O P��
�� 
null� ������� 40 validationcalccontexttoc validationCalcContextTOC� m   S T��
�� 
null��  � o      ���� 0 defaultprefs defaultPrefs� ��� l  [ [������  � � � editMode: "CONFORM" means make field exactly match the entire specified data structure, while "TWEAK" means only to change which things were specified, leaving the other settings alone.    � ���v   e d i t M o d e :   " C O N F O R M "   m e a n s   m a k e   f i e l d   e x a c t l y   m a t c h   t h e   e n t i r e   s p e c i f i e d   d a t a   s t r u c t u r e ,   w h i l e   " T W E A K "   m e a n s   o n l y   t o   c h a n g e   w h i c h   t h i n g s   w e r e   s p e c i f i e d ,   l e a v i n g   t h e   o t h e r   s e t t i n g s   a l o n e .  � ��� l  [ [������  � � � autoEnterSpecialValue: keywords used in FM-XML: NONE, CreationAccountName, CreationUserName,CreationTimestamp, ModificationAccountName, et al.   � ���   a u t o E n t e r S p e c i a l V a l u e :   k e y w o r d s   u s e d   i n   F M - X M L :   N O N E ,   C r e a t i o n A c c o u n t N a m e ,   C r e a t i o n U s e r N a m e , C r e a t i o n T i m e s t a m p ,   M o d i f i c a t i o n A c c o u n t N a m e ,   e t   a l .� ��� l  [ [��� ��  � a [ autoSerial:false or autoSerial:{autoNextValue:null, autoIncrement:null, autoGenerate:null}     � �   a u t o S e r i a l : f a l s e   o r   a u t o S e r i a l : { a u t o N e x t V a l u e : n u l l ,   a u t o I n c r e m e n t : n u l l ,   a u t o G e n e r a t e : n u l l }�  l  [ [��������  ��  ��    l  [ [����   a [ autoEnterIsLookup - LOOKUP FUNCTIONS NOT YET SUPPORTED - WOULD NEED TO HANDLE SUB-ELEMENT.    � �   a u t o E n t e r I s L o o k u p   -   L O O K U P   F U N C T I O N S   N O T   Y E T   S U P P O R T E D   -   W O U L D   N E E D   T O   H A N D L E   S U B - E L E M E N T . 	
	 l  [ [��������  ��  ��  
  l  [ [��������  ��  ��    r   [ ` b   [ ^ o   [ \���� 	0 prefs   o   \ ]���� 0 defaultprefs defaultPrefs o      ���� 	0 prefs    l  a a��������  ��  ��    r   a f n   a d o   b d���� 0 editmode editMode o   a b���� 	0 prefs   o      ���� 0 editmode editMode  l  g g��������  ��  ��    Z  g z ���� >  g l!"! n   g j#$# o   h j���� &0 autoentercalccode autoEnterCalcCode$ o   g h���� 	0 prefs  " m   j k��
�� 
null  r   o v%&% m   o p��
�� boovtrue& n      '(' o   q u���� 00 autoenteriscalculation autoEnterIsCalculation( o   p q���� 	0 prefs  ��  ��   )*) l  { {��������  ��  ��  * +,+ l   { {��-.��  - � �   DEBUGGING   DEBUGGING   DEBUGGING   DEBUGGING   DEBUGGING   DEBUGGING   
DEBUGGING   DEBUGGING   DEBUGGING   DEBUGGING   DEBUGGING   DEBUGGING   DEBUGGING   	
   . �//D       D E B U G G I N G       D E B U G G I N G       D E B U G G I N G       D E B U G G I N G       D E B U G G I N G       D E B U G G I N G       
 D E B U G G I N G       D E B U G G I N G       D E B U G G I N G       D E B U G G I N G       D E B U G G I N G       D E B U G G I N G       D E B U G G I N G       	 
, 010 l  { {��������  ��  ��  1 232 Q   {�4564 k   ~�77 898 l  ~ ~��������  ��  ��  9 :;: l  ~ ~��������  ��  ��  ; <=< l  ~ ~��������  ��  ��  = >?> l  ~ ~��������  ��  ��  ? @A@ l  ~ ~��BC��  B   try to select it first:   C �DD 0   t r y   t o   s e l e c t   i t   f i r s t :A EFE r   ~ �GHG I   ~ ���I���� :0 fmgui_managedb_field_select fmGUI_ManageDb_Field_SelectI J��J o    ����� 	0 prefs  ��  ��  H o      ���� $0 fieldnowselected fieldNowSelectedF KLK l  � ���������  ��  ��  L MNM Z  � �OP����O H   � �QQ o   � ����� $0 fieldnowselected fieldNowSelectedP L   � �RR m   � ���
�� boovfals��  ��  N STS l  � ���������  ��  ��  T UVU O   ��WXW O   ��YZY k   ��[[ \]\ n  � �^_^ I   � ��������� (0 fmgui_appfrontmost fmGUI_AppFrontMost��  ��  _  f   � �] `a` l  � ���������  ��  ��  a bcb l  � ���������  ��  ��  c ded r   � �fgf 6  � �hih n   � �jkj 4  � ���l
�� 
butTl m   � ����� k n   � �mnm 4   � ���o
�� 
tabgo m   � ����� n 4   � ���p
�� 
cwinp m   � ����� i =  � �qrq 1   � ���
�� 
titlr m   � �ss �tt  C h a n g eg o      ���� 0 changebutton changeButtone uvu l  � ���������  ��  ��  v wxw l  � ���yz��  y %  COMMENT is for any field type:   z �{{ >   C O M M E N T   i s   f o r   a n y   f i e l d   t y p e :x |}| Z   �~����~ >  � ���� n   � ���� o   � ����� 0 fieldcomment fieldComment� o   � ����� 	0 prefs  � m   � ���
�� 
null k   ��� ��� Z   � �������� n  � ���� I   � �������� (0 fmgui_textfieldset fmGUI_TextFieldSet� ��� n   � ���� 4   � ����
�� 
txtf� m   � ��� ���  C o m m e n t :� n   � ���� 4   � ����
�� 
tabg� m   � ����� � 4   � ����
�� 
cwin� m   � ����� � ���� n   � ���� o   � ����� 0 fieldcomment fieldComment� o   � ����� 	0 prefs  ��  ��  �  f   � �� I  � ����~
� .prcsclicnull��� ��� uiel� o   � ��}�} 0 changebutton changeButton�~  ��  ��  � ��� l  � ��|�{�z�|  �{  �z  � ��y� I  ��x��w
�x .sysodelanull��� ��� nmbr� m   � ��� ?�      �w  �y  ��  ��  } ��� l �v�u�t�v  �u  �t  � ��� Z  g���s�r� F  ��� = ��� o  �q�q 0 editmode editMode� m  �� ��� 
 T W E A K� = ��� n  ��� o  �p�p 0 	fieldtype 	fieldType� o  �o�o 	0 prefs  � m  �n
�n 
null� k  c�� ��� l �m���m  � 6 0 just find out what it already is and use that:    � ��� `   j u s t   f i n d   o u t   w h a t   i t   a l r e a d y   i s   a n d   u s e   t h a t :  � ��� r  /��� n  -��� 4  &-�l�
�l 
popB� m  ),�� ��� 
 T y p e :� n  &��� 4  !&�k�
�k 
tabg� m  $%�j�j � 4  !�i�
�i 
cwin� m   �h�h � o      �g�g  0 fieldtypepopup fieldTypePopup� ��f� Z  0c����� = 09��� n  05��� 1  15�e
�e 
valL� o  01�d�d  0 fieldtypepopup fieldTypePopup� m  58�� ���  C a l c u l a t i o n� r  <C��� m  <?�� ���  C a l c u l a t e d� n      ��� o  @B�c�c 0 	fieldtype 	fieldType� o  ?@�b�b 	0 prefs  � ��� = FO��� n  FK��� 1  GK�a
�a 
valL� o  FG�`�`  0 fieldtypepopup fieldTypePopup� m  KN�� ���  S u m m a r y� ��_� r  RY��� m  RU�� ���  S u m m a r y� n      ��� o  VX�^�^ 0 	fieldtype 	fieldType� o  UV�]�] 	0 prefs  �_  � r  \c��� m  \_�� ���  N o r m a l� n      ��� o  `b�\�\ 0 	fieldtype 	fieldType� o  _`�[�[ 	0 prefs  �f  �s  �r  � ��� l hh�Z�Y�X�Z  �Y  �X  � ��� l hh�W�V�U�W  �V  �U  � ��� Z  h|����T� = hm��� n  hk��� o  ik�S�S 0 	fieldtype 	fieldType� o  hi�R�R 	0 prefs  � m  kl�Q
�Q 
null� k  p~�� ��� R  p|�P��
�P .ascrerr ****      � ****� m  x{�� ��� 8 P a r a m e t e r   m i s s i n g :   f i e l d T y p e� �O��N
�O 
errn� m  tw�M�M �N  � ��L� l }}�K�J�I�K  �J  �I  �L  � � � = �� n  �� o  ���H�H 0 	fieldtype 	fieldType o  ���G�G 	0 prefs   m  �� �  C a l c u l a t e d   k  ��		 

 l ���F�E�D�F  �E  �D    l ���C�C    	 IF CALC:    �    I F   C A L C :  l ���B�B     Field Type = Calculated    � 0   F i e l d   T y p e   =   C a l c u l a t e d  l ���A�A     click "contains Options"    � 2   c l i c k   " c o n t a i n s   O p t i o n s "  l ���@�@   / ) Data Type: popup "Calculation result is"    � R   D a t a   T y p e :   p o p u p   " C a l c u l a t i o n   r e s u l t   i s "  !  l ���?"#�?  "   Calc Context Table   # �$$ &   C a l c   C o n t e x t   T a b l e! %&% l ���>'(�>  '   Calculation itself   ( �)) &   C a l c u l a t i o n   i t s e l f& *+* l ���=,-�=  ,   Do Not Evaluate�   - �.. "   D o   N o t   E v a l u a t e &+ /0/ l ���<12�<  1  	 Storage:   2 �33    S t o r a g e :0 454 l ���;67�;  6 - '	Global, Do Not Store, None/Minimal/All   7 �88 N 	 G l o b a l ,   D o   N o t   S t o r e ,   N o n e / M i n i m a l / A l l5 9:9 l ���:�9�8�:  �9  �8  : ;<; l ���7=>�7  =   FIELD TYPE:   > �??    F I E L D   T Y P E :< @A@ r  ��BCB n  ��DED 4  ���6F
�6 
popBF m  ��GG �HH 
 T y p e :E n  ��IJI 4  ���5K
�5 
tabgK m  ���4�4 J 4  ���3L
�3 
cwinL m  ���2�2 C o      �1�1  0 fieldtypepopup fieldTypePopupA MNM Z  �AOP�0QO > ��RSR n  ��TUT 1  ���/
�/ 
valLU o  ���.�.  0 fieldtypepopup fieldTypePopupS m  ��VV �WW  C a l c u l a t i o nP k  �
XX YZY n ��[\[ I  ���-]�,�-  0 fmgui_popupset fmGUI_PopupSet] ^_^ o  ���+�+  0 fieldtypepopup fieldTypePopup_ `�*` m  ��aa �bb  C a l c u l a t i o n�*  �,  \  f  ��Z cdc l ���)�(�'�)  �(  �'  d efe l ���&gh�&  g * $ click CHANGE to save the data type.   h �ii H   c l i c k   C H A N G E   t o   s a v e   t h e   d a t a   t y p e .f jkj n ��lml I  ���%n�$�% B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindown o�#o n  ��pqp 4  ���"r
�" 
butTr m  ��ss �tt  C h a n g eq n  ��uvu 4  ���!w
�! 
tabgw m  ��� �  v 4  ���x
� 
cwinx m  ���� �#  �$  m  f  ��k yzy l ������  �  �  z {|{ I ���}�
� .sysodelanull��� ��� nmbr} m  ��~~ ?�      �  | � l ������  �  �  � ��� l ������  � m g if existing field was NOT ALREADY a calc, will get a warning message. Need to handle that possibility.   � ��� �   i f   e x i s t i n g   f i e l d   w a s   N O T   A L R E A D Y   a   c a l c ,   w i l l   g e t   a   w a r n i n g   m e s s a g e .   N e e d   t o   h a n d l e   t h a t   p o s s i b i l i t y .� ��� Z  ������ H  ���� C  ����� n  ����� 1  ���
� 
pnam� 4  ����
� 
cwin� m  ���� � m  ���� ��� & M a n a g e   D a t a b a s e   F o r� k  ��� ��� l ������  � ' ! click OK to confirm the change:    � ��� B   c l i c k   O K   t o   c o n f i r m   t h e   c h a n g e :  � ��� n ����� I  ������ B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow� ��� n  ����� 4  ����
� 
butT� m  ���� ���  O K� 4  ���
�
�
 
cwin� m  ���	�	 �  �  �  f  ��� ��� l ������  �  �  � ��� I ����
� .sysodelanull��� ��� nmbr� m  ���� ?�      �  � ��� l ��� �  �  �   �  �  �  � ���� l 		��������  ��  ��  ��  �0  Q l A���� k  A�� ��� l ������  �   click Options:    � ���     c l i c k   O p t i o n s :  � ��� n 1��� I  1������� B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow� ���� 6 -��� n  ��� 4 ���
�� 
butT� m  ���� � n  ��� 4  ���
�� 
tabg� m  ���� � 4  ���
�� 
cwin� m  ���� � C  !,��� 1  "&��
�� 
pnam� m  '+�� ���  O p t i o n s��  ��  �  f  � ��� l 22��������  ��  ��  � ��� n 2?��� I  3?������� 20 windowwaituntil_frontis windowWaitUntil_FrontIS� ���� K  3;�� ������� 0 
windowname 
windowName� m  69�� ��� & S p e c i f y   C a l c u l a t i o n��  ��  ��  �  f  23� ���� l @@��������  ��  ��  ��  � B < ALREADY was a Calculation field, so need to click OPTIONS:    � ��� x   A L R E A D Y   w a s   a   C a l c u l a t i o n   f i e l d ,   s o   n e e d   t o   c l i c k   O P T I O N S :  N ��� l BB��������  ��  ��  � ��� l BB��������  ��  ��  � ��� l BB��������  ��  ��  � ��� Z  Bt������� G  BS��� = BG��� o  BC���� 0 editmode editMode� m  CF�� ���  C O N F O R M� > JO��� n  JM��� o  KM���� 0 calccode calcCode� o  JK���� 	0 prefs  � m  MN��
�� 
null� k  Vp�� ��� l VV������  �   CALCULATION CODE:   � ��� $   C A L C U L A T I O N   C O D E :� ���� n Vp��� I  Wp������� (0 fmgui_textfieldset fmGUI_TextFieldSet� ��� n  Wi��� 4  di���
�� 
txta� m  gh���� � n  Wd��� 4  ]d���
�� 
scra� m  `c���� � 4  W]���
�� 
cwin� m  [\���� � ���� n  il��� o  jl���� 0 calccode calcCode� o  ij���� 	0 prefs  ��  ��  �  f  VW��  ��  ��  � 	 		  l uu��������  ��  ��  	 			 l uu��		��  	 ' ! Calc CONTEXT Table (occurrence):   	 �		 B   C a l c   C O N T E X T   T a b l e   ( o c c u r r e n c e ) :	 			 Z  u�			
����		 > uz			 n  ux			 o  vx����  0 calccontexttoc calcContextTOC	 o  uv���� 	0 prefs  	 m  xy��
�� 
null	
 n }�			 I  ~���	����  0 fmgui_popupset fmGUI_PopupSet	 			 6 ~�			 n  ~�			 4 ����	
�� 
popB	 m  ������ 	 4  ~���	
�� 
cwin	 m  ������ 	 E  ��			 1  ����
�� 
pnam	 m  ��		 �		  c o n t e x t	 	��	 n  ��		 	 o  ������  0 calccontexttoc calcContextTOC	  o  ������ 	0 prefs  ��  ��  	  f  }~��  ��  	 	!	"	! l ����������  ��  ��  	" 	#	$	# l ����	%	&��  	%   Calc Result TYPE:   	& �	'	' $   C a l c   R e s u l t   T Y P E :	$ 	(	)	( Z  ��	*	+����	* > ��	,	-	, n  ��	.	/	. o  ������ 0 datatype dataType	/ o  ������ 	0 prefs  	- m  ����
�� 
null	+ n ��	0	1	0 I  ����	2����  0 fmgui_popupset fmGUI_PopupSet	2 	3	4	3 6 ��	5	6	5 n  ��	7	8	7 4 ����	9
�� 
popB	9 m  ������ 	8 4  ����	:
�� 
cwin	: m  ������ 	6 E  ��	;	<	; 1  ����
�� 
pnam	< m  ��	=	= �	>	> * C a l c u l a t i o n   r e s u l t   i s	4 	?��	? n  ��	@	A	@ o  ������ 0 datatype dataType	A o  ������ 	0 prefs  ��  ��  	1  f  ����  ��  	) 	B	C	B l ����������  ��  ��  	C 	D	E	D l ����	F	G��  	F 9 3 Do Not Evaluate if all referenced field are empty:   	G �	H	H f   D o   N o t   E v a l u a t e   i f   a l l   r e f e r e n c e d   f i e l d   a r e   e m p t y :	E 	I	J	I Z  �	K	L����	K > ��	M	N	M n  ��	O	P	O o  ������  0 alwaysevaluate alwaysEvaluate	P o  ������ 	0 prefs  	N m  ����
�� 
null	L k  �	Q	Q 	R	S	R r  ��	T	U	T 6 ��	V	W	V n  ��	X	Y	X 4 ����	Z
�� 
chbx	Z m  ������ 	Y 4  ����	[
�� 
cwin	[ m  ������ 	W E  ��	\	]	\ 1  ����
�� 
pnam	] m  ��	^	^ �	_	_ J n o t   e v a l u a t e   i f   a l l   r e f e r e n c e d   f i e l d s	U o      ���� *0 notevaluatecheckbox notEvaluateCheckbox	S 	`��	` Z  �	a	b��	c	a n  ��	d	e	d o  ������  0 alwaysevaluate alwaysEvaluate	e o  ������ 	0 prefs  	b n �	f	g	f I   ��	h���� &0 fmgui_checkboxset fmGUI_CheckboxSet	h 	i	j	i o   ���� *0 notevaluatecheckbox notEvaluateCheckbox	j 	k��	k m  ����  ��  ��  	g  f  � ��  	c n 		l	m	l I  
��	n���� &0 fmgui_checkboxset fmGUI_CheckboxSet	n 	o	p	o o  
���� *0 notevaluatecheckbox notEvaluateCheckbox	p 	q��	q m  ���� ��  ��  	m  f  	
��  ��  ��  	J 	r	s	r l ��������  ��  ��  	s 	t	u	t l ��	v	w��  	v   Repetitions:    	w �	x	x    R e p e t i t i o n s :  	u 	y	z	y Z  S	{	|����	{ G  (	}	~	} = 		�	 o  �� 0 editmode editMode	� m  	�	� �	�	�  C O N F O R M	~ > $	�	�	� n  "	�	�	� o  "�~�~ 0 maxrepetition maxRepetition	� o  �}�} 	0 prefs  	� m  "#�|
�| 
null	| n +O	�	�	� I  ,O�{	��z�{ (0 fmgui_textfieldset fmGUI_TextFieldSet	� 	�	�	� 6 ,F	�	�	� n  ,7	�	�	� 4 27�y	�
�y 
txtf	� m  56�x�x 	� 4  ,2�w	�
�w 
cwin	� m  01�v�v 	� E  :E	�	�	� 1  ;?�u
�u 
pnam	� m  @D	�	� �	�	�  r e p e t i t i o n s	� 	��t	� n  FK	�	�	� o  GK�s�s 0 maxrepetition maxRepetition	� o  FG�r�r 	0 prefs  �t  �z  	�  f  +,��  ��  	z 	�	�	� l TT�q�p�o�q  �p  �o  	� 	�	�	� l TT�n�m�l�n  �m  �l  	� 	�	�	� l TT�k�j�i�k  �j  �i  	� 	�	�	� Z  T�	�	��h�g	� G  T�	�	�	� G  T	�	�	� G  Tq	�	�	� G  Te	�	�	� = TY	�	�	� o  TU�f�f 0 editmode editMode	� l 	UX	��e�d	� m  UX	�	� �	�	�  C O N F O R M�e  �d  	� > \a	�	�	� n  \_	�	�	� o  ]_�c�c 0 storageglobal storageGlobal	� o  \]�b�b 	0 prefs  	� l 
_`	��a�`	� m  _`�_
�_ 
null�a  �`  	� > hm	�	�	� n  hk	�	�	� o  ik�^�^ 20 storecalculationresults storeCalculationResults	� o  hi�]�] 	0 prefs  	� l 
kl	��\�[	� m  kl�Z
�Z 
null�\  �[  	� > t{	�	�	� n  ty	�	�	� o  uy�Y�Y 0 indexlanguage indexLanguage	� o  tu�X�X 	0 prefs  	� l 
yz	��W�V	� m  yz�U
�U 
null�W  �V  	� > ��	�	�	� n  ��	�	�	� o  ���T�T 0 	autoindex 	autoIndex	� o  ���S�S 	0 prefs  	� l 
��	��R�Q	� m  ���P
�P 
null�R  �Q  	� k  ��	�	� 	�	�	� l ���O	�	��O  	�   BEGIN: STORAGE OPTIONS   	� �	�	� .   B E G I N :   S T O R A G E   O P T I O N S	� 	�	�	� l ���N�M�L�N  �M  �L  	� 	�	�	� l ���K	�	��K  	�   click Storage Options:    	� �	�	� 0   c l i c k   S t o r a g e   O p t i o n s :  	� 	�	�	� n ��	�	�	� I  ���J	��I�J B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow	� 	��H	� 6 ��	�	�	� n  ��	�	�	� 4 ���G	�
�G 
butT	� m  ���F�F 	� 4  ���E	�
�E 
cwin	� m  ���D�D 	� E  ��	�	�	� 1  ���C
�C 
pnam	� m  ��	�	� �	�	�  S t o r a g e   O p t i o n s�H  �I  	�  f  ��	� 	�	�	� n ��	�	�	� I  ���B	��A�B "0 windowwaituntil windowWaitUntil	� 	��@	� K  ��	�	� �?	�	��? 0 
windowname 
windowName	� m  ��	�	� �	�	� & S t o r a g e   O p t i o n s   f o r	� �>	�	��>  0 windownametest windowNameTest	� m  ��	�	� �	�	�  s t a r t s   w i t h	� �=	��<�= 0 whichwindow whichWindow	� m  ��	�	� �	�	� 
 f r o n t�<  �@  �A  	�  f  ��	� 	�	�	� l ���;�:�9�;  �:  �9  	� 	�	�	� l ���8�7�6�8  �7  �6  	� 	�	�	� r  ��	�	�	� 4  ���5	�
�5 
cwin	� m  ���4�4 	� o      �3�3 0 workingarea workingArea	� 	�	�	� l ���2�1�0�2  �1  �0  	� 	�	�	� r  ��
 

  6 ��


 n  ��


 4 ���/

�/ 
chbx
 m  ���.�. 
 o  ���-�- 0 workingarea workingArea
 E  ��


 1  ���,
�, 
pnam
 m  ��
	
	 �



  g l o b a l   s t o r a g e
 o      �+�+ .0 globalstoragecheckbox globalStorageCheckbox	� 


 r  �


 6 �


 n  ��


 4 ���*

�* 
chbx
 m  ���)�) 
 o  ���(�( 0 workingarea workingArea
 E  �


 1  ���'
�' 
pnam
 m  � 

 �

  D o   n o t   s t o r e
 o      �&�& (0 donotstorecheckbox doNotStoreCheckbox
 


 l �%�$�#�%  �$  �#  
 


 Z  B

�"�!
 = 



 o  � �  0 editmode editMode
 m  	
 
  �
!
!  C O N F O R M
 k  >
"
" 
#
$
# l �
%
&�  
% F @ These two CANNOT BE NULL if you are making this field CONFORM.    
& �
'
' �   T h e s e   t w o   C A N N O T   B E   N U L L   i f   y o u   a r e   m a k i n g   t h i s   f i e l d   C O N F O R M .  
$ 
(
)
( Z %
*
+��
* = 
,
-
, n  
.
/
. o  �� 0 storageglobal storageGlobal
/ o  �� 	0 prefs  
- m  �
� 
null
+ R  !�
0
1
� .ascrerr ****      � ****
0 m   
2
2 �
3
3 @ s t o r a g e G l o b a l   m u s t   b e   s p e c i f i e d !
1 �
4�
� 
errn
4 m  �� �  �  �  
) 
5�
5 Z &>
6
7��
6 = &+
8
9
8 n  &)
:
;
: o  ')�� 20 storecalculationresults storeCalculationResults
; o  &'�� 	0 prefs  
9 m  )*�
� 
null
7 R  .:�
<
=
� .ascrerr ****      � ****
< m  69
>
> �
?
? T s t o r e C a l c u l a t i o n R e s u l t s   m u s t   b e   s p e c i f i e d !
= �
@�
� 
errn
@ m  25�� �  �  �  �  �"  �!  
 
A
B
A l CC��
�	�  �
  �	  
B 
C
D
C Z  C�
E
F
G
H
E n  CG
I
J
I o  DF�� 0 storageglobal storageGlobal
J o  CD�� 	0 prefs  
F k  JS
K
K 
L
M
L n JQ
N
O
N I  KQ�
P�� &0 fmgui_checkboxset fmGUI_CheckboxSet
P 
Q
R
Q o  KL�� .0 globalstoragecheckbox globalStorageCheckbox
R 
S�
S m  LM�� �  �  
O  f  JK
M 
T�
T l RR� �����   ��  ��  �  
G 
U
V
U H  VZ
W
W n  VY
X
Y
X o  WY���� 20 storecalculationresults storeCalculationResults
Y o  VW���� 	0 prefs  
V 
Z��
Z k  ]f
[
[ 
\
]
\ n ]d
^
_
^ I  ^d��
`���� &0 fmgui_checkboxset fmGUI_CheckboxSet
` 
a
b
a o  ^_���� (0 donotstorecheckbox doNotStoreCheckbox
b 
c��
c m  _`���� ��  ��  
_  f  ]^
] 
d��
d l ee��������  ��  ��  ��  ��  
H l i�
e
f
g
e k  i�
h
h 
i
j
i n ip
k
l
k I  jp��
m���� &0 fmgui_checkboxset fmGUI_CheckboxSet
m 
n
o
n o  jk���� .0 globalstoragecheckbox globalStorageCheckbox
o 
p��
p m  kl����  ��  ��  
l  f  ij
j 
q
r
q n qx
s
t
s I  rx��
u���� &0 fmgui_checkboxset fmGUI_CheckboxSet
u 
v
w
v o  rs���� (0 donotstorecheckbox doNotStoreCheckbox
w 
x��
x m  st����  ��  ��  
t  f  qr
r 
y
z
y l yy��������  ��  ��  
z 
{
|
{ l yy��
}
~��  
} ; 5 Then see which one of the Indexing choices is needed   
~ �

 j   T h e n   s e e   w h i c h   o n e   o f   t h e   I n d e x i n g   c h o i c e s   i s   n e e d e d
| 
���
� Z  y�
�
�
���
� = y�
�
�
� n  y~
�
�
� o  z~���� (0 storageindexchoice storageIndexChoice
� o  yz���� 	0 prefs  
� m  ~�
�
� �
�
�  N o n e
� k  ��
�
� 
�
�
� n ��
�
�
� I  ����
����� &0 fmgui_checkboxset fmGUI_CheckboxSet
� 
�
�
� n  ��
�
�
� 4  ����
�
�� 
chbx
� m  ��
�
� �
�
�  N o n e   1   o f   3
� o  ������ 0 workingarea workingArea
� 
���
� m  ������ ��  ��  
�  f  ��
� 
���
� l ����������  ��  ��  ��  
� 
�
�
� = ��
�
�
� n  ��
�
�
� o  ������ (0 storageindexchoice storageIndexChoice
� o  ������ 	0 prefs  
� m  ��
�
� �
�
�  M i n i m a l
� 
�
�
� k  ��
�
� 
�
�
� n ��
�
�
� I  ����
����� &0 fmgui_checkboxset fmGUI_CheckboxSet
� 
�
�
� n  ��
�
�
� 4  ����
�
�� 
chbx
� m  ��
�
� �
�
�  M i n i m a l   2   o f   3
� o  ������ 0 workingarea workingArea
� 
���
� m  ������ ��  ��  
�  f  ��
� 
���
� l ����������  ��  ��  ��  
� 
�
�
� = ��
�
�
� n  ��
�
�
� o  ������ (0 storageindexchoice storageIndexChoice
� o  ������ 	0 prefs  
� m  ��
�
� �
�
�  A l l
� 
���
� k  ��
�
� 
�
�
� n ��
�
�
� I  ����
����� &0 fmgui_checkboxset fmGUI_CheckboxSet
� 
�
�
� n  ��
�
�
� 4  ����
�
�� 
chbx
� m  ��
�
� �
�
�  A l l   3   o f   3
� o  ������ 0 workingarea workingArea
� 
���
� m  ������ ��  ��  
�  f  ��
� 
���
� l ����������  ��  ��  ��  ��  ��  ��  
f 2 , NOT EITHER OF THOSE, SO UNCHECK THEM FIRST:   
g �
�
� X   N O T   E I T H E R   O F   T H O S E ,   S O   U N C H E C K   T H E M   F I R S T :
D 
�
�
� l ����������  ��  ��  
� 
�
�
� Z  �
�
�����
� > ��
�
�
� n  ��
�
�
� o  ������ 0 indexlanguage indexLanguage
� o  ������ 	0 prefs  
� m  ����
�� 
null
� n �
�
�
� I  ���
�����  0 fmgui_popupset fmGUI_PopupSet
� 
�
�
� 6 ��
�
�
� n  ��
�
�
� 4 ����
�
�� 
popB
� m  ������ 
� o  ������ 0 workingarea workingArea
� E  ��
�
�
� 1  ����
�� 
pnam
� m  ��
�
� �
�
�   D e f a u l t   l a n g u a g e
� 
���
� n  ��
�
�
� o  ������ 0 indexlanguage indexLanguage
� o  ������ 	0 prefs  ��  ��  
�  f  ����  ��  
� 
�
�
� l ��������  ��  ��  
� 
�
�
� Z  H
�
�����
� > 
�
�
� n  
�
�
� o  ���� 0 	autoindex 	autoIndex
� o  ���� 	0 prefs  
� m  ��
�� 
null
� k  D
�
� 
�
�
� r  '
�
�
� 6 %
�
�
� n  
�
�
� 4 ��
�
�� 
chbx
� m  ���� 
� o  ���� 0 workingarea workingArea
� E  $
�
�
� 1  ��
�� 
pnam
� m  #
�
� �
�
�  c r e a t e   i n d e x e s
� o      ���� &0 autoindexcheckbox autoIndexCheckbox
� 
�
�
� Z  (B ��  n  (. o  )-���� 0 	autoindex 	autoIndex o  ()���� 	0 prefs   n 18 I  28������ &0 fmgui_checkboxset fmGUI_CheckboxSet 	 o  23���� &0 autoindexcheckbox autoIndexCheckbox	 
��
 m  34���� ��  ��    f  12��   n ;B I  <B������ &0 fmgui_checkboxset fmGUI_CheckboxSet  o  <=���� &0 autoindexcheckbox autoIndexCheckbox �� m  =>����  ��  ��    f  ;<
� �� l CC��������  ��  ��  ��  ��  ��  
�  l II��������  ��  ��    l II����   %  click OK for Storage Options:     � >   c l i c k   O K   f o r   S t o r a g e   O p t i o n s :    n Ic I  Jc������ B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow �� 6 J_  n  JP!"! 4 KP��#
�� 
butT# m  NO���� " o  JK���� 0 workingarea workingArea  E  S^$%$ 1  TX��
�� 
pnam% m  Y]&& �''  O K��  ��    f  IJ ()( l dd��������  ��  ��  ) *+* n d,-, I  e�.�~� "0 windowwaituntil windowWaitUntil. /�}/ K  e{00 �|12�| 0 
windowname 
windowName1 m  hk33 �44 & S t o r a g e   O p t i o n s   f o r2 �{56�{  0 windownametest windowNameTest5 m  nq77 �88 & d o e s   n o t   s t a r t   w i t h6 �z9�y�z 0 whichwindow whichWindow9 m  tw:: �;; 
 f r o n t�y  �}  �~  -  f  de+ <=< l ���x�w�v�x  �w  �v  = >�u> l ���t?@�t  ?   END OF: STORAGE OPTIONS   @ �AA 0   E N D   O F :   S T O R A G E   O P T I O N S�u  �h  �g  	� BCB l ���s�r�q�s  �r  �q  C DED l ��FGHF r  ��IJI 4  ���pK
�p 
cwinK m  ���o�o J o      �n�n 0 workingarea workingAreaG + % need reference to NEW first window.    H �LL J   n e e d   r e f e r e n c e   t o   N E W   f i r s t   w i n d o w .  E MNM l ���m�l�k�m  �l  �k  N OPO l ���jQR�j  Q - ' click OK to save Specify Calculation:    R �SS N   c l i c k   O K   t o   s a v e   S p e c i f y   C a l c u l a t i o n :  P TUT n ��VWV I  ���iX�h�i B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindowX Y�gY 6 ��Z[Z n  ��\]\ 4 ���f^
�f 
butT^ m  ���e�e ] o  ���d�d 0 workingarea workingArea[ E  ��_`_ 1  ���c
�c 
pnam` m  ��aa �bb  O K�g  �h  W  f  ��U cdc l ���b�a�`�b  �a  �`  d efe n ��ghg I  ���_i�^�_ "0 windowwaituntil windowWaitUntili j�]j K  ��kk �\lm�\ 0 
windowname 
windowNamel m  ��nn �oo & S p e c i f y   C a l c u l a t i o nm �[pq�[  0 windownametest windowNameTestp m  ��rr �ss   d o e s   n o t   c o n t a i nq �Zt�Y�Z 0 whichwindow whichWindowt m  ��uu �vv 
 f r o n t�Y  �]  �^  h  f  ��f wxw l ���X�W�V�X  �W  �V  x yzy L  ��{{ m  ���U
�U boovtruez |}| l ���T�S�R�T  �S  �R  } ~~ l ���Q�P�O�Q  �P  �O   ��N� l ���M�L�K�M  �L  �K  �N   ��� = ����� n  ����� o  ���J�J 0 	fieldtype 	fieldType� o  ���I�I 	0 prefs  � m  ���� ���  S u m m a r y� ��� k  ���� ��� l ���H�G�F�H  �G  �F  � ��� l ���E���E  �   IF SUMMARY:   � ���    I F   S U M M A R Y :� ��� l ���D���D  �   Field Type = Summary   � ��� *   F i e l d   T y p e   =   S u m m a r y� ��� l ���C���C  �   click "contains Options"   � ��� 2   c l i c k   " c o n t a i n s   O p t i o n s "� ��� l ���B���B  � / ) Data Type: popup "Calculation result is"   � ��� R   D a t a   T y p e :   p o p u p   " C a l c u l a t i o n   r e s u l t   i s "� ��� l ���A���A  �   Calc Context Table   � ��� &   C a l c   C o n t e x t   T a b l e� ��� l ���@���@  �   Calculation itself   � ��� &   C a l c u l a t i o n   i t s e l f� ��� l ���?���?  �   Do Not Evaluate�   � ��� "   D o   N o t   E v a l u a t e &� ��� l ���>���>  �  	 Storage:   � ���    S t o r a g e :� ��� l ���=���=  � - '	Global, Do Not Store, None/Minimal/All   � ��� N 	 G l o b a l ,   D o   N o t   S t o r e ,   N o n e / M i n i m a l / A l l� ��� l ���<�;�:�<  �;  �:  � ��� l ���9���9  � p j if existing field was NOT ALREADY a summary, will get a warning message. Need to handle that possibility.   � ��� �   i f   e x i s t i n g   f i e l d   w a s   N O T   A L R E A D Y   a   s u m m a r y ,   w i l l   g e t   a   w a r n i n g   m e s s a g e .   N e e d   t o   h a n d l e   t h a t   p o s s i b i l i t y .� ��� l ���8�7�6�8  �7  �6  � ��� l ���5���5  �   NOT YET SUPPORTED ! ! !    � ��� 2   N O T   Y E T   S U P P O R T E D   !   !   !  � ��� l ���4���4  �   NOT YET SUPPORTED ! ! !    � ��� 2   N O T   Y E T   S U P P O R T E D   !   !   !  � ��� l ���3���3  �   NOT YET SUPPORTED ! ! !    � ��� 2   N O T   Y E T   S U P P O R T E D   !   !   !  � ��� l ���2�1�0�2  �1  �0  � ��/� l ���.�-�,�.  �-  �,  �/  � ��� = ����� n  ����� o  ���+�+ 0 	fieldtype 	fieldType� o  ���*�* 	0 prefs  � m  ���� ���  N o r m a l� ��)� k  �x�� ��� l ���(���(  � / )ELSE IF NOT CALC (Field Type is Normal):	   � ��� R E L S E   I F   N O T   C A L C   ( F i e l d   T y p e   i s   N o r m a l ) : 	� ��� l ���'���'  �  
 Data Type   � ���    D a t a   T y p e� ��� l ���&���&  �   click "contains Options"   � ��� 2   c l i c k   " c o n t a i n s   O p t i o n s "� ��� l ���%���%  �   TAB: Storage:   � ���    T A B :   S t o r a g e :� ��� l ���$���$  � - '	Global, Do Not Store, None/Minimal/All   � ��� N 	 G l o b a l ,   D o   N o t   S t o r e ,   N o n e / M i n i m a l / A l l� ��� l ���#���#  �   TAB: Auto-Enter   � ���     T A B :   A u t o - E n t e r� ��� l ���" �"    - '	Creation, Modification, Serial, Data,     � N 	 C r e a t i o n ,   M o d i f i c a t i o n ,   S e r i a l ,   D a t a ,  �  l ���!�!    	Calculated Value:     � & 	 C a l c u l a t e d   V a l u e :   	 l ��� 
�   
   		Calc Context Table    � *   	 	 C a l c   C o n t e x t   T a b l e	  l ����     		Calculation itself    � *   	 	 C a l c u l a t i o n   i t s e l f  l ����     		Do Not Evaluate�    � &   	 	 D o   N o t   E v a l u a t e &  l ����   % 	Do not replace existing value�    � > 	 D o   n o t   r e p l a c e   e x i s t i n g   v a l u e &  l ����     TAB: Validation:    �   "   T A B :   V a l i d a t i o n : !"! l ���#$�  #  	[Skip for now]   $ �%%  	 [ S k i p   f o r   n o w ]" &'& l ���()�  (   Prohibit modification�   ) �** .   P r o h i b i t   m o d i f i c a t i o n &' +,+ l ������  �  �  , -.- l ������  �  �  . /0/ l ������  �  �  0 121 l ���34�  3   field DATA TYPE:   4 �55 "   f i e l d   D A T A   T Y P E :2 676 Z  �|89��8 G  ��:;: = ��<=< o  ���� 0 editmode editMode= m  ��>> �??  C O N F O R M; > ��@A@ n  ��BCB o  ���� 0 datatype dataTypeC o  ���� 	0 prefs  A m  ���

�
 
null9 k  �xDD EFE r  �GHG n  �IJI 4  �	K
�	 
popBK m  
LL �MM 
 T y p e :J n  �NON 4  ��P
� 
tabgP m  �� O 4  ���Q
� 
cwinQ m  ���� H o      �� 0 datatypepopup dataTypePopupF R�R Z  xST��S > UVU n  WXW 1  � 
�  
valLX o  ���� 0 datatypepopup dataTypePopupV n  YZY o  ���� 0 datatype dataTypeZ o  ���� 	0 prefs  T k  t[[ \]\ n #^_^ I  #��`����  0 fmgui_popupset fmGUI_PopupSet` aba o  ���� 0 datatypepopup dataTypePopupb c��c n  ded o  ���� 0 datatype dataTypee o  ���� 	0 prefs  ��  ��  _  f  ] fgf l $$��������  ��  ��  g hih l $$��jk��  j * $ click CHANGE to save the data type.   k �ll H   c l i c k   C H A N G E   t o   s a v e   t h e   d a t a   t y p e .i mnm n $;opo I  %;��q���� B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindowq r��r n  %7sts 4  07��u
�� 
butTu m  36vv �ww  C h a n g et n  %0xyx 4  +0��z
�� 
tabgz m  ./���� y 4  %+��{
�� 
cwin{ m  )*���� ��  ��  p  f  $%n |}| l <<��������  ��  ��  } ~~ I <C�����
�� .sysodelanull��� ��� nmbr� m  <?�� ?�      ��   ��� l DD��������  ��  ��  � ��� l DD������  � 9 3 MIGHT open a dialog warning about type conversion:   � ��� f   M I G H T   o p e n   a   d i a l o g   w a r n i n g   a b o u t   t y p e   c o n v e r s i o n :� ���� Z  Dt������� H  DS�� C  DR��� n  DN��� 1  JN��
�� 
pnam� 4  DJ���
�� 
cwin� m  HI���� � m  NQ�� ��� & M a n a g e   D a t a b a s e   F o r� k  Vp�� ��� l VV������  � ' ! click OK to confirm the change:    � ��� B   c l i c k   O K   t o   c o n f i r m   t h e   c h a n g e :  � ��� n Vh��� I  Wh������� B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow� ���� n  Wd��� 4  ]d���
�� 
butT� m  `c�� ���  O K� 4  W]���
�� 
cwin� m  [\���� ��  ��  �  f  VW� ��� l ii��������  ��  ��  � ���� I ip�����
�� .sysodelanull��� ��� nmbr� m  il�� ?�      ��  ��  ��  ��  ��  �  �  �  �  �  7 ��� l }}��������  ��  ��  � ��� l }}��������  ��  ��  � ��� l }}������  �   click Options:    � ���     c l i c k   O p t i o n s :  � ��� n }���� I  ~�������� B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow� ���� 6 ~���� n  ~���� 4 �����
�� 
butT� m  ������ � n  ~���� 4  �����
�� 
tabg� m  ������ � 4  ~����
�� 
cwin� m  ������ � C  ����� 1  ����
�� 
pnam� m  ���� ���  O p t i o n s��  ��  �  f  }~� ��� n ����� I  ��������� "0 windowwaituntil windowWaitUntil� ���� K  ���� ������ 0 
windowname 
windowName� m  ���� ���  O p t i o n s   f o r� ������  0 windownametest windowNameTest� m  ���� ���  s t a r t s   w i t h� ������� 0 whichwindow whichWindow� m  ���� ��� 
 f r o n t��  ��  ��  �  f  ��� ��� l ����������  ��  ��  � ��� l ����������  ��  ��  � ��� l ��������  � P J--------------------------------------------------------------------------   � ��� � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -� ��� l ��������  �   NORMAL FIELD   � ���    N O R M A L   F I E L D� ��� l ��������  � P J--------------------------------------------------------------------------   � ��� � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -� ��� r  ����� n  ����� 4  �����
�� 
tabg� m  ������ � 4  �����
�� 
cwin� m  ������ � o      ���� 0 workingarea workingArea� ��� l ����������  ��  ��  � ��� l ����������  ��  ��  � ��� l ��������  � P J--------------------------------------------------------------------------   � ��� � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -� ��� l ����� ��  �   STORAGE TAB:     �    S T O R A G E   T A B :�  l ������   P J--------------------------------------------------------------------------    � � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  l ����������  ��  ��   	
	 l ����������  ��  ��  
  l ����������  ��  ��    Z  �	���� G  � G  �� G  �� G  �� = �� o  ������ 0 editmode editMode l 	������ m  �� �  C O N F O R M��  ��   > �� n  �� !  o  ������ 0 storageglobal storageGlobal! o  ������ 	0 prefs   l 
��"����" m  ����
�� 
null��  ��   > ��#$# n  ��%&% o  ������ (0 storageindexchoice storageIndexChoice& o  ������ 	0 prefs  $ l 
��'����' m  ����
�� 
null��  ��   > ��()( n  ��*+* o  ������ 0 indexlanguage indexLanguage+ o  ������ 	0 prefs  ) l 
��,����, m  ����
�� 
null��  ��   > �-.- n  �/0/ o  ����� 0 	autoindex 	autoIndex0 o  ������ 	0 prefs  . l 
1���1 m  �~
�~ 
null��  �   k  
	22 343 l 

�}�|�{�}  �|  �{  4 565 I 
�z7�y
�z .prcsclicnull��� ��� uiel7 n  
898 4  �x:
�x 
radB: m  ;; �<<  S t o r a g e9 o  
�w�w 0 workingarea workingArea�y  6 =>= l �v�u�t�v  �u  �t  > ?@? l �sAB�s  A   Repetitions:   B �CC    R e p e t i t i o n s :@ DED n 6FGF I  6�rH�q�r (0 fmgui_textfieldset fmGUI_TextFieldSetH IJI 6 -KLK n  MNM 4 �pO
�p 
txtfO m  �o�o N o  �n�n 0 workingarea workingAreaL E  !,PQP 1  "&�m
�m 
pnamQ m  '+RR �SS  r e p e t i t i o n sJ T�lT n  -2UVU o  .2�k�k 0 maxrepetition maxRepetitionV o  -.�j�j 	0 prefs  �l  �q  G  f  E WXW l 77�i�h�g�i  �h  �g  X YZY l 77�f[\�f  [   Global:   \ �]]    G l o b a l :Z ^_^ r  7N`a` 6 7Lbcb n  7=ded 4 8=�ef
�e 
chbxf m  ;<�d�d e o  78�c�c 0 workingarea workingAreac E  @Kghg 1  AE�b
�b 
pnamh m  FJii �jj  g l o b a l   s t o r a g ea o      �a�a .0 globalstoragecheckbox globalStorageCheckbox_ klk l OO�`�_�^�`  �_  �^  l mnm Z  Osop�]�\o = OTqrq o  OP�[�[ 0 editmode editModer m  PSss �tt  C O N F O R Mp k  Wouu vwv l WW�Zxy�Z  x D > This CANNOT BE NULL, if we are making field conform!!!!!					   y �zz |   T h i s   C A N N O T   B E   N U L L ,   i f   w e   a r e   m a k i n g   f i e l d   c o n f o r m ! ! ! ! ! 	 	 	 	 	w {�Y{ Z Wo|}�X�W| = W\~~ n  WZ��� o  XZ�V�V 0 storageglobal storageGlobal� o  WX�U�U 	0 prefs   m  Z[�T
�T 
null} R  _k�S��
�S .ascrerr ****      � ****� m  gj�� ��� @ s t o r a g e G l o b a l   m u s t   b e   s p e c i f i e d !� �R��Q
�R 
errn� m  cf�P�P �Q  �X  �W  �Y  �]  �\  n ��� l tt�O�N�M�O  �N  �M  � ��� l tt�L�K�J�L  �K  �J  � ��� l tt�I�H�G�I  �H  �G  � ��� Z  t����F�� n  tx��� o  uw�E�E 0 storageglobal storageGlobal� o  tu�D�D 	0 prefs  � k  {��� ��� l {{�C�B�A�C  �B  �A  � ��� Z  {����@�?� > {���� n  {���� 1  |��>
�> 
valL� o  {|�=�= .0 globalstoragecheckbox globalStorageCheckbox� m  ���<�< � k  ���� ��� l ���;���;  � ( " should be GLOBAL, but is NOT yet:   � ��� D   s h o u l d   b e   G L O B A L ,   b u t   i s   N O T   y e t :� ��� n ����� I  ���:��9�: *0 clickobjectbycoords clickObjectByCoords� ��8� o  ���7�7 .0 globalstoragecheckbox globalStorageCheckbox�8  �9  �  f  ��� ��� I ���6��5
�6 .sysodelanull��� ��� nmbr� m  ���� ?�      �5  � ��� l ���4�3�2�4  �3  �2  � ��� l ���1���1  � G A MIGHT open a dialog warning about change to global status:						   � ��� �   M I G H T   o p e n   a   d i a l o g   w a r n i n g   a b o u t   c h a n g e   t o   g l o b a l   s t a t u s : 	 	 	 	 	 	� ��0� Z  �����/�.� H  ���� C  ����� n  ����� 1  ���-
�- 
pnam� 4  ���,�
�, 
cwin� m  ���+�+ � m  ���� ���  O p t i o n s   f o r� k  ���� ��� l ���*���*  � ' ! click OK to confirm the change:    � ��� B   c l i c k   O K   t o   c o n f i r m   t h e   c h a n g e :  � ��� n ����� I  ���)��(�) B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow� ��'� n  ����� 4  ���&�
�& 
butT� m  ���� ���  O K� 4  ���%�
�% 
cwin� m  ���$�$ �'  �(  �  f  ��� ��� l ���#�"�!�#  �"  �!  � ��� l ��� ���   � < 6 wait until back to normal "Options for Field" window:   � ��� l   w a i t   u n t i l   b a c k   t o   n o r m a l   " O p t i o n s   f o r   F i e l d "   w i n d o w :� ��� n ����� I  ������ "0 windowwaituntil windowWaitUntil� ��� K  ���� ���� 0 
windowname 
windowName� m  ���� ���  O p t i o n s   f o r� ����  0 windownametest windowNameTest� m  ���� ���  s t a r t s   w i t h� ���� 0 whichwindow whichWindow� m  ���� ��� 
 f r o n t�  �  �  �  f  ��� ��� l ������  �  �  �  �/  �.  �0  �@  �?  � ��� l ������  �  �  � ��� l ������  �  �  �  �F  � l ������ k  ���� ��� Z  �H����� > ����� n  ����� 1  ���
� 
valL� o  ���
�
 .0 globalstoragecheckbox globalStorageCheckbox� m  ���	�	  � k  �D�� ��� l ������  �  �  � � � l ����   $  IS GLOBAL, but should NOT be:    � <   I S   G L O B A L ,   b u t   s h o u l d   N O T   b e :   n �� I  ����� *0 clickobjectbycoords clickObjectByCoords 	�	 o  ���� .0 globalstoragecheckbox globalStorageCheckbox�  �    f  �� 

 I ��� ��
�  .sysodelanull��� ��� nmbr m  �� ?�      ��    l ����������  ��  ��    l ������   G A MIGHT open a dialog warning about change to global status:						    � �   M I G H T   o p e n   a   d i a l o g   w a r n i n g   a b o u t   c h a n g e   t o   g l o b a l   s t a t u s : 	 	 	 	 	 	  Z  �B���� H  � C  �
 n  � 1  ��
�� 
pnam 4  ���
�� 
cwin m   ����  m  	 �    O p t i o n s   f o r k  >!! "#" l ��$%��  $ ' ! click OK to confirm the change:    % �&& B   c l i c k   O K   t o   c o n f i r m   t h e   c h a n g e :  # '(' n  )*) I   ��+���� B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow+ ,��, n  -.- 4  ��/
�� 
butT/ m  00 �11  O K. 4  ��2
�� 
cwin2 m  ���� ��  ��  *  f  ( 343 l !!��������  ��  ��  4 565 l !!��78��  7 < 6 wait until back to normal "Options for Field" window:   8 �99 l   w a i t   u n t i l   b a c k   t o   n o r m a l   " O p t i o n s   f o r   F i e l d "   w i n d o w :6 :;: n !<<=< I  "<��>���� "0 windowwaituntil windowWaitUntil> ?��? K  "8@@ ��AB�� 0 
windowname 
windowNameA m  %(CC �DD  O p t i o n s   f o rB ��EF��  0 windownametest windowNameTestE m  +.GG �HH  s t a r t s   w i t hF ��I���� 0 whichwindow whichWindowI m  14JJ �KK 
 f r o n t��  ��  ��  =  f  !"; L��L l ==��������  ��  ��  ��  ��  ��   M��M l CC��������  ��  ��  ��  �  �  � NON l II��������  ��  ��  O PQP l II��������  ��  ��  Q RSR l II��TU��  T ; 5 Then see which one of the Indexing choices is needed   U �VV j   T h e n   s e e   w h i c h   o n e   o f   t h e   I n d e x i n g   c h o i c e s   i s   n e e d e dS W��W Z  I�XYZ��X = IR[\[ n  IN]^] o  JN���� (0 storageindexchoice storageIndexChoice^ o  IJ���� 	0 prefs  \ m  NQ__ �``  N o n eY k  Ueaa bcb n Ucded I  Vc��f���� &0 fmgui_checkboxset fmGUI_CheckboxSetf ghg n  V^iji 4  W^��k
�� 
chbxk m  Z]ll �mm  N o n e   1   o f   3j o  VW���� 0 workingarea workingAreah n��n m  ^_���� ��  ��  e  f  UVc o��o o  de���� 0 fdsfdsf  ��  Z pqp = hqrsr n  hmtut o  im���� (0 storageindexchoice storageIndexChoiceu o  hi���� 	0 prefs  s m  mpvv �ww  M i n i m a lq xyx k  t�zz {|{ n t�}~} I  u������� &0 fmgui_checkboxset fmGUI_CheckboxSet ��� n  u}��� 4  v}���
�� 
chbx� m  y|�� ���  M i n i m a l   2   o f   3� o  uv���� 0 workingarea workingArea� ���� m  }~���� ��  ��  ~  f  tu| ���� l ����������  ��  ��  ��  y ��� = ����� n  ����� o  ������ (0 storageindexchoice storageIndexChoice� o  ������ 	0 prefs  � m  ���� ���  A l l� ���� k  ���� ��� n ����� I  ��������� &0 fmgui_checkboxset fmGUI_CheckboxSet� ��� n  ����� 4  �����
�� 
chbx� m  ���� ���  A l l   3   o f   3� o  ������ 0 workingarea workingArea� ���� m  ������ ��  ��  �  f  ��� ���� l ����������  ��  ��  ��  ��  ��  ��  � ' ! NOT global, SO UNCHECK it FIRST:   � ��� B   N O T   g l o b a l ,   S O   U N C H E C K   i t   F I R S T :� ��� l ����������  ��  ��  � ��� l ��������  �   Index Language:    � ��� "   I n d e x   L a n g u a g e :  � ��� Z  ��������� > ����� n  ����� o  ������ 0 indexlanguage indexLanguage� o  ������ 	0 prefs  � m  ����
�� 
null� n ����� I  ���������  0 fmgui_popupset fmGUI_PopupSet� ��� 6 ����� n  ����� 4 �����
�� 
popB� m  ������ � o  ������ 0 workingarea workingArea� E  ����� 1  ����
�� 
pnam� m  ���� ���   D e f a u l t   l a n g u a g e� ���� n  ����� o  ������ 0 indexlanguage indexLanguage� o  ������ 	0 prefs  ��  ��  �  f  ����  ��  � ��� l ����������  ��  ��  � ��� l ��������  � %  Create indexes automatically:    � ��� >   C r e a t e   i n d e x e s   a u t o m a t i c a l l y :  � ��� Z  �	������� > ����� n  ����� o  ������ 0 	autoindex 	autoIndex� o  ������ 	0 prefs  � m  ����
�� 
null� k  �	�� ��� r  ����� 6 ����� n  ����� 4 �����
�� 
chbx� m  ������ � o  ������ 0 workingarea workingArea� E  ����� 1  ����
�� 
pnam� m  ���� ���  c r e a t e   i n d e x e s� o      ���� &0 autoindexcheckbox autoIndexCheckbox� ��� Z  �	������ n  ����� o  ������ 0 	autoindex 	autoIndex� o  ������ 	0 prefs  � n 		��� I  		������� &0 fmgui_checkboxset fmGUI_CheckboxSet� ��� o  		���� &0 autoindexcheckbox autoIndexCheckbox� ���� m  		���� ��  ��  �  f  		��  � n 		��� I  		������� &0 fmgui_checkboxset fmGUI_CheckboxSet� ��� o  		���� &0 autoindexcheckbox autoIndexCheckbox� ���� m  		����  ��  ��  �  f  		� ���� l 		�������  ��  �  ��  ��  ��  � ��� l 		�~�}�|�~  �}  �|  � ��{� l 		�z���z  �   END OF: Storage Tab.   � ��� *   E N D   O F :   S t o r a g e   T a b .�{  ��  ��   ��� l 		�y�x�w�y  �x  �w  � ��� l 		�v���v  � P J--------------------------------------------------------------------------   � ��� � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -�    l 		�u�u     NORMAL FIELD    �    N O R M A L   F I E L D  l 		�t�t   U O--------------------------------------------------------------------------					    �		 � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 	 	 	 	 	 

 l 		�s�s     AUTO-ENTER TAB:    �     A U T O - E N T E R   T A B :  l 		�r�r   U O--------------------------------------------------------------------------					    � � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 	 	 	 	 	  r  		, n  		* 4  	%	*�q
�q 
tabg m  	(	)�p�p  4  		%�o
�o 
cwin m  	#	$�n�n  o      �m�m 0 workingarea workingArea  I 	-	9�l�k
�l .prcsclicnull��� ��� uiel n  	-	5  4  	.	5�j!
�j 
radB! m  	1	4"" �##  A u t o - E n t e r  o  	-	.�i�i 0 workingarea workingArea�k   $%$ l 	:	:�h�g�f�h  �g  �f  % &'& l 	:	:�e()�e  (   Serial Number:   ) �**    S e r i a l   N u m b e r :' +,+ Z  	:
-.�d�c- > 	:	A/0/ n  	:	?121 o  	;	?�b�b 0 
autoserial 
autoSerial2 o  	:	;�a�a 	0 prefs  0 m  	?	@�`
�` 
null. Z  	D
34�_53 = 	D	Q676 n  	D	M898 m  	I	M�^
�^ 
pcls9 n  	D	I:;: o  	E	I�]�] 0 
autoserial 
autoSerial; o  	D	E�\�\ 	0 prefs  7 m  	M	P�[
�[ 
bool4 n 	T	b<=< I  	U	b�Z>�Y�Z &0 fmgui_checkboxset fmGUI_CheckboxSet> ?@? n  	U	]ABA 4  	V	]�XC
�X 
chbxC m  	Y	\DD �EE  S e r i a l   n u m b e rB o  	U	V�W�W 0 workingarea workingArea@ F�VF m  	]	^�U�U  �V  �Y  =  f  	T	U�_  5 k  	e
GG HIH l 	e	e�TJK�T  J * $ autoSerial is a RECORD of settings:   K �LL H   a u t o S e r i a l   i s   a   R E C O R D   o f   s e t t i n g s :I MNM n 	e	sOPO I  	f	s�SQ�R�S &0 fmgui_checkboxset fmGUI_CheckboxSetQ RSR n  	f	nTUT 4  	g	n�QV
�Q 
chbxV m  	j	mWW �XX  S e r i a l   n u m b e rU o  	f	g�P�P 0 workingarea workingAreaS Y�OY m  	n	o�N�N �O  �R  P  f  	e	fN Z[Z l 	t	t�M�L�K�M  �L  �K  [ \]\ l 	t	t�J�I�H�J  �I  �H  ] ^_^ n 	t	�`a` I  	u	��Gb�F�G (0 fmgui_textfieldset fmGUI_TextFieldSetb cdc 6 	u	�efe n  	u	{ghg 4 	v	{�Ei
�E 
txtfi m  	y	z�D�D h o  	u	v�C�C 0 workingarea workingAreaf E  	~	�jkj 1  		��B
�B 
pnamk m  	�	�ll �mm  n e x t   v a l u ed n�An n  	�	�opo o  	�	��@�@ 0 autonextvalue autoNextValuep n  	�	�qrq o  	�	��?�? 0 
autoserial 
autoSerialr o  	�	��>�> 	0 prefs  �A  �F  a  f  	t	u_ sts l 	�	��=�<�;�=  �<  �;  t uvu n 	�	�wxw I  	�	��:y�9�: (0 fmgui_textfieldset fmGUI_TextFieldSety z{z 6 	�	�|}| n  	�	�~~ 4 	�	��8�
�8 
txtf� m  	�	��7�7  o  	�	��6�6 0 workingarea workingArea} E  	�	���� 1  	�	��5
�5 
pnam� m  	�	��� ���  i n c r e m e n t{ ��4� n  	�	���� o  	�	��3�3 0 autoincrement autoIncrement� n  	�	���� o  	�	��2�2 0 
autoserial 
autoSerial� o  	�	��1�1 	0 prefs  �4  �9  x  f  	�	�v ��� l 	�	��0�/�.�0  �/  �.  � ��� Z  	�	�����-� = 	�	���� n  	�	���� o  	�	��,�, 0 autogenerate autoGenerate� n  	�	���� o  	�	��+�+ 0 
autoserial 
autoSerial� o  	�	��*�* 	0 prefs  � m  	�	��� ���  O n C r e a t i o n� n 	�	���� I  	�	��)��(�) &0 fmgui_checkboxset fmGUI_CheckboxSet� ��� n  	�	���� 4  	�	��'�
�' 
chbx� m  	�	��� ��� $ O n   c r e a t i o n   1   o f   2� o  	�	��&�& 0 workingarea workingArea� ��%� m  	�	��$�$ �%  �(  �  f  	�	�� ��� = 	�	���� n  	�	���� o  	�	��#�# 0 autogenerate autoGenerate� n  	�	���� o  	�	��"�" 0 
autoserial 
autoSerial� o  	�	��!�! 	0 prefs  � m  	�	��� ���  O n C o m m i t� �� � n 	�	���� I  	�	����� &0 fmgui_checkboxset fmGUI_CheckboxSet� ��� n  	�	���� 4  	�	���
� 
chbx� m  	�	��� ���   O n   c o m m i t   2   o f   2� o  	�	��� 0 workingarea workingArea� ��� m  	�	��� �  �  �  f  	�	��   �-  � ��� l 
 
 ����  �  �  �  �d  �c  , ��� l 

����  �  �  � ��� l 

����  �  �  � ��� l 

����  � A ; Special Value (creation,modification,last visited record):   � ��� v   S p e c i a l   V a l u e   ( c r e a t i o n , m o d i f i c a t i o n , l a s t   v i s i t e d   r e c o r d ) :� ��� Z  
������ > 

��� n  

��� o  

�� .0 autoenterspecialvalue autoEnterSpecialValue� o  

�� 	0 prefs  � m  

�

�
 
null� k  
��� ��� l 

�	���	  � � � autoEnterSpecialValue: keywords used in FM-XML: PreviousRecord, CreationAccountName, CreationUserName,CreationTimestamp, ModificationAccountName, et al.   � ���2   a u t o E n t e r S p e c i a l V a l u e :   k e y w o r d s   u s e d   i n   F M - X M L :   P r e v i o u s R e c o r d ,   C r e a t i o n A c c o u n t N a m e ,   C r e a t i o n U s e r N a m e , C r e a t i o n T i m e s t a m p ,   M o d i f i c a t i o n A c c o u n t N a m e ,   e t   a l .� ��� Z  
������ = 

��� n  

��� o  

�� .0 autoenterspecialvalue autoEnterSpecialValue� o  

�� 	0 prefs  � m  

�� ���  P r e v i o u s R e c o r d� k  

9�� ��� n 

7��� I  

7���� &0 fmgui_checkboxset fmGUI_CheckboxSet� ��� 6 

2��� n  

#��� 4 

#��
� 
chbx� m  
!
"�� � o  

�� 0 workingarea workingArea� E  
&
1��� 1  
'
+� 
�  
pnam� m  
,
0�� ���  l a s t   v i s i t e d� ���� m  
2
3���� ��  �  �  f  

� ���� l 
8
8��������  ��  ��  ��  � ��� C  
<
E��� n  
<
A��� o  
=
A���� .0 autoenterspecialvalue autoEnterSpecialValue� o  
<
=���� 	0 prefs  � m  
A
D�� ���  C r e a t i o n� ��� k  
H
��� ��� Z  
H
������� = 
H
Q   n  
H
M o  
I
M���� .0 autoenterspecialvalue autoEnterSpecialValue o  
H
I���� 	0 prefs   m  
M
P �   C r e a t i o n U s e r N a m e� r  
T
Y m  
T
W �		  N a m e o      ���� 0 
menuchoice 
menuChoice� 

 = 
\
e n  
\
a o  
]
a���� .0 autoenterspecialvalue autoEnterSpecialValue o  
\
]���� 	0 prefs   m  
a
d �  C r e a t i o n N a m e  r  
h
m m  
h
k �  N a m e o      ���� 0 
menuchoice 
menuChoice  = 
p
y n  
p
u o  
q
u���� .0 autoenterspecialvalue autoEnterSpecialValue o  
p
q���� 	0 prefs   m  
u
x � & C r e a t i o n A c c o u n t N a m e  !  r  
|
�"#" m  
|
$$ �%%  A c c o u n t   N a m e# o      ���� 0 
menuchoice 
menuChoice! &'& = 
�
�()( n  
�
�*+* o  
�
����� .0 autoenterspecialvalue autoEnterSpecialValue+ o  
�
����� 	0 prefs  ) m  
�
�,, �-- " C r e a t i o n T i m e s t a m p' ./. r  
�
�010 m  
�
�22 �33 2 T i m e s t a m p   ( D a t e   a n d   T i m e )1 o      ���� 0 
menuchoice 
menuChoice/ 454 = 
�
�676 n  
�
�898 o  
�
����� .0 autoenterspecialvalue autoEnterSpecialValue9 o  
�
����� 	0 prefs  7 m  
�
�:: �;;  C r e a t i o n T i m e5 <=< r  
�
�>?> m  
�
�@@ �AA  T i m e? o      ���� 0 
menuchoice 
menuChoice= BCB = 
�
�DED n  
�
�FGF o  
�
����� .0 autoenterspecialvalue autoEnterSpecialValueG o  
�
����� 	0 prefs  E m  
�
�HH �II  C r e a t i o n D a t eC J��J r  
�
�KLK m  
�
�MM �NN  D a t eL o      ���� 0 
menuchoice 
menuChoice��  ��  � OPO n 
�
�QRQ I  
�
���S����  0 fmgui_popupset fmGUI_PopupSetS TUT n  
�
�VWV 4  
�
���X
�� 
popBX m  
�
�YY �ZZ  C r e a t i o nW o  
�
����� 0 workingarea workingAreaU [��[ o  
�
����� 0 
menuchoice 
menuChoice��  ��  R  f  
�
�P \��\ l 
�
���������  ��  ��  ��  � ]^] C  
�
�_`_ n  
�
�aba o  
�
����� .0 autoenterspecialvalue autoEnterSpecialValueb o  
�
����� 	0 prefs  ` m  
�
�cc �dd  M o d i f i c a t i o n^ efe k  
�kgg hih Z  
�Zjkl��j = 
�
�mnm n  
�
�opo o  
�
����� .0 autoenterspecialvalue autoEnterSpecialValuep o  
�
����� 	0 prefs  n m  
�
�qq �rr ( M o d i f i c a t i o n U s e r N a m ek r  
�
�sts m  
�
�uu �vv  N a m et o      ���� 0 
menuchoice 
menuChoicel wxw = 
�
�yzy n  
�
�{|{ o  
�
����� .0 autoenterspecialvalue autoEnterSpecialValue| o  
�
����� 	0 prefs  z m  
�
�}} �~~   M o d i f i c a t i o n N a m ex � r  ��� m  �� ���  N a m e� o      ���� 0 
menuchoice 
menuChoice� ��� = 	��� n  	��� o  
���� .0 autoenterspecialvalue autoEnterSpecialValue� o  	
���� 	0 prefs  � m  �� ��� . M o d i f i c a t i o n A c c o u n t N a m e� ��� r  ��� m  �� ���  A c c o u n t   N a m e� o      ���� 0 
menuchoice 
menuChoice� ��� = &��� n  "��� o  "���� .0 autoenterspecialvalue autoEnterSpecialValue� o  ���� 	0 prefs  � m  "%�� ��� * M o d i f i c a t i o n T i m e s t a m p� ��� r  ).��� m  ),�� ��� 2 T i m e s t a m p   ( D a t e   a n d   T i m e )� o      ���� 0 
menuchoice 
menuChoice� ��� = 1:��� n  16��� o  26���� .0 autoenterspecialvalue autoEnterSpecialValue� o  12���� 	0 prefs  � m  69�� ���   M o d i f i c a t i o n T i m e� ��� r  =B��� m  =@�� ���  T i m e� o      ���� 0 
menuchoice 
menuChoice� ��� = EN��� n  EJ��� o  FJ���� .0 autoenterspecialvalue autoEnterSpecialValue� o  EF���� 	0 prefs  � m  JM�� ���   M o d i f i c a t i o n D a t e� ���� r  QV��� m  QT�� ���  D a t e� o      ���� 0 
menuchoice 
menuChoice��  ��  i ��� n [i��� I  \i�������  0 fmgui_popupset fmGUI_PopupSet� ��� n  \d��� 4  ]d���
�� 
popB� m  `c�� ���  M o d i f i c a t i o n� o  \]���� 0 workingarea workingArea� ���� o  de���� 0 
menuchoice 
menuChoice��  ��  �  f  [\� ��� l jj��������  ��  ��  � ���� l jj��������  ��  ��  ��  f ��� = nw��� n  ns��� o  os���� .0 autoenterspecialvalue autoEnterSpecialValue� o  no���� 	0 prefs  � m  sv�� ���  N O N E� ���� k  z��� ��� l zz������  � : 4 need to make sure NO special values are checked on:   � ��� h   n e e d   t o   m a k e   s u r e   N O   s p e c i a l   v a l u e s   a r e   c h e c k e d   o n :� ��� n z���� I  {�������� &0 fmgui_checkboxset fmGUI_CheckboxSet� ��� 6 {���� n  {���� 4 |����
�� 
chbx� m  ����� � o  {|���� 0 workingarea workingArea� = ����� 1  ����
�� 
titl� m  ���� ���  C r e a t i o n� ���� m  ������  ��  ��  �  f  z{� ��� n ����� I  ��������� &0 fmgui_checkboxset fmGUI_CheckboxSet� ��� 6 ����� n  ����� 4 �����
�� 
chbx� m  ������ � o  ������ 0 workingarea workingArea� = ����� 1  ����
�� 
titl� m  ���� ���  M o d i f i c a t i o n� ���� m  ������  ��  ��  �  f  ��� ��� n ��� � I  �������� &0 fmgui_checkboxset fmGUI_CheckboxSet  6 �� n  �� 4 ����
�� 
chbx m  ������  o  ������ 0 workingarea workingArea E  ��	
	 1  ����
�� 
pnam
 m  �� �  l a s t   v i s i t e d �� m  ������  ��  ��     f  ��� �� l ����������  ��  ��  ��  ��  �  �  l ����������  ��  ��   �� l ����������  ��  ��  ��  �  �  �  l ����������  ��  ��    l ������     Constant:     �    C o n s t a n t :    Z  �D���� > �� n  ��  o  ������ *0 autoenterisconstant autoEnterIsConstant  o  ������ 	0 prefs   m  ����
�� 
null k  �@!! "#" r  ��$%$ 6 ��&'& n  ��()( 4 ����*
�� 
chbx* m  ������ ) o  ������ 0 workingarea workingArea' E  ��+,+ 1  ����
�� 
pnam, m  ��-- �..  D a t a% o      ���� 0 datacheckbox dataCheckbox# /0/ Z  �>12��31 n  �454 o  ����� *0 autoenterisconstant autoEnterIsConstant5 o  ���� 	0 prefs  2 k  466 787 n 9:9 I  �~;�}�~ &0 fmgui_checkboxset fmGUI_CheckboxSet; <=< o  �|�| 0 datacheckbox dataCheckbox= >�{> m  �z�z �{  �}  :  f  8 ?�y? Z  4@A�xB@ = CDC n  EFE o  �w�w .0 autoenterconstantdata autoEnterConstantDataF o  �v�v 	0 prefs  D m  �u
�u 
nullA l �tGH�t  G 7 1 Possibly null if autoEnterIsConstant is false...   H �II b   P o s s i b l y   n u l l   i f   a u t o E n t e r I s C o n s t a n t   i s   f a l s e . . .�x  B n 4JKJ I  4�sL�r�s (0 fmgui_textfieldset fmGUI_TextFieldSetL MNM n  +OPO 4  $+�qQ
�q 
txtaQ m  '*RR �SS 
 D a t a :P n  $TUT 4  $�pV
�p 
scraV m   #WW �XX 
 D a t a :U o  �o�o 0 workingarea workingAreaN Y�nY n  +0Z[Z o  ,0�m�m .0 autoenterconstantdata autoEnterConstantData[ o  +,�l�l 	0 prefs  �n  �r  K  f  �y  ��  3 n 7>\]\ I  8>�k^�j�k &0 fmgui_checkboxset fmGUI_CheckboxSet^ _`_ o  89�i�i 0 datacheckbox dataCheckbox` a�ha m  9:�g�g  �h  �j  ]  f  780 bcb l ??�f�e�d�f  �e  �d  c ded l ??�c�b�a�c  �b  �a  e f�`f l ??�_�^�]�_  �^  �]  �`  ��  ��   ghg l EE�\�[�Z�\  �[  �Z  h iji Z  ETkl�Y�Xk > ELmnm n  EJopo o  FJ�W�W &0 autoenterislookup autoEnterIsLookupp o  EF�V�V 	0 prefs  n m  JK�U
�U 
nulll k  OOqq rsr l OO�Ttu�T  t   NOT YET SUPPORTED!!!!!	   u �vv 0   N O T   Y E T   S U P P O R T E D ! ! ! ! ! 	s wxw l OO�Syz�S  y   NOT YET SUPPORTED!!!!!	   z �{{ 0   N O T   Y E T   S U P P O R T E D ! ! ! ! ! 	x |�R| l OO�Q}~�Q  } $  NOT YET SUPPORTED!!!!!							   ~ � <   N O T   Y E T   S U P P O R T E D ! ! ! ! ! 	 	 	 	 	 	 	�R  �Y  �X  j ��� l UU�P�O�N�P  �O  �N  � ��� l UU�M�L�K�M  �L  �K  � ��� l UU�J���J  �   AutoEnter Calculation:    � ��� 0   A u t o E n t e r   C a l c u l a t i o n :  � ��� Z  U����I�H� > U\��� n  UZ��� o  VZ�G�G 00 autoenteriscalculation autoEnterIsCalculation� o  UV�F�F 	0 prefs  � m  Z[�E
�E 
null� k  _��� ��� Z  _����D�� H  _e�� n  _d��� o  `d�C�C 00 autoenteriscalculation autoEnterIsCalculation� o  _`�B�B 	0 prefs  � k  hx�� ��� l hh�A���A  � + % Need to make sure it is NOT checked:   � ��� J   N e e d   t o   m a k e   s u r e   i t   i s   N O T   c h e c k e d :� ��� n hv��� I  iv�@��?�@ &0 fmgui_checkboxset fmGUI_CheckboxSet� ��� n  iq��� 4  jq�>�
�> 
chbx� m  mp�� ���   C a l c u l a t e d   v a l u e� o  ij�=�= 0 workingarea workingArea� ��<� m  qr�;�;  �<  �?  �  f  hi� ��:� l ww�9�8�7�9  �8  �7  �:  �D  � l {����� k  {��� ��� r  {���� n  {���� 4  |��6�
�6 
chbx� m  ��� ���   C a l c u l a t e d   v a l u e� o  {|�5�5 0 workingarea workingArea� o      �4�4 .0 autoentercalccheckbox autoEnterCalcCheckbox� ��� l ���3���3  � G A if the checkbox is already checked, need to click Specify button   � ��� �   i f   t h e   c h e c k b o x   i s   a l r e a d y   c h e c k e d ,   n e e d   t o   c l i c k   S p e c i f y   b u t t o n� ��� l ���2���2  � ^ X if not already checked, checking it opens the window, so use special function for click   � ��� �   i f   n o t   a l r e a d y   c h e c k e d ,   c h e c k i n g   i t   o p e n s   t h e   w i n d o w ,   s o   u s e   s p e c i a l   f u n c t i o n   f o r   c l i c k� ��� Z  �����1�� > ����� n  ����� 1  ���0
�0 
valL� o  ���/�/ .0 autoentercalccheckbox autoEnterCalcCheckbox� m  ���.�. � n ����� I  ���-��,�- B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow� ��+� o  ���*�* .0 autoentercalccheckbox autoEnterCalcCheckbox�+  �,  �  f  ���1  � k  ���� ��� l ���)���)  � \ V there are TWO buttons named "Specify�" - the first is for CALC, second is for lookup:   � ��� �   t h e r e   a r e   T W O   b u t t o n s   n a m e d   " S p e c i f y & "   -   t h e   f i r s t   i s   f o r   C A L C ,   s e c o n d   i s   f o r   l o o k u p :� ��(� n ����� I  ���'��&�' B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow� ��%� 6 ����� n  ����� 4 ���$�
�$ 
butT� m  ���#�# � o  ���"�" 0 workingarea workingArea� C  ����� 1  ���!
�! 
pnam� m  ���� ���  S p e c i f y�%  �&  �  f  ���(  � ��� l ��� ���   �  �  � ��� l ������  � + % wait for Specify Calculation window:   � ��� J   w a i t   f o r   S p e c i f y   C a l c u l a t i o n   w i n d o w :� ��� n ����� I  ������ 20 windowwaituntil_frontis windowWaitUntil_FrontIS� ��� K  ���� ���� 0 
windowname 
windowName� m  ���� ��� & S p e c i f y   C a l c u l a t i o n�  �  �  �  f  ��� ��� l ������  �  �  � ��� r  ����� 4  ����
� 
cwin� m  ���� � o      �� 0 workingarea workingArea� ��� l ������  �  �  �    l ����     CALCULATION CODE:    � $   C A L C U L A T I O N   C O D E :  l ������  �  �    Z  ��	
�
	 = �� n  �� 1  ���	
�	 
leng n  �� o  ���� &0 autoentercalccode autoEnterCalcCode o  ���� 	0 prefs   m  ����  
 k  ��  l  ����   � � if for some reason an empty string is specified, we want to force an error in FM's syntax checker for the validation calc box instead of silently allowing an empty string as the validation calc.     ��   i f   f o r   s o m e   r e a s o n   a n   e m p t y   s t r i n g   i s   s p e c i f i e d ,   w e   w a n t   t o   f o r c e   a n   e r r o r   i n   F M ' s   s y n t a x   c h e c k e r   f o r   t h e   v a l i d a t i o n   c a l c   b o x   i n s t e a d   o f   s i l e n t l y   a l l o w i n g   a n   e m p t y   s t r i n g   a s   t h e   v a l i d a t i o n   c a l c .   � r  �� m  �� � i f   (   / *   a u t o - e n t e r   c a l c   w a s   s p e c i f i e d   a s   a n   e m p t y   s t r i n g   r a t h e r   t h a n   a   n u l l   v a l u e   i n d i c a t i n g   a   b u g   i n   t h e   s c r i p t   r u n n i n g   t h e   s e t u p   t o o l .   * /   ) o      �� 20 autoentercalccode_value autoEnterCalcCode_VALUE�  �
   r  �� n  ��  o  ���� &0 autoentercalccode autoEnterCalcCode  o  ���� 	0 prefs   o      � �  20 autoentercalccode_value autoEnterCalcCode_VALUE !"! l ����������  ��  ��  " #$# n �%&% I  ���'���� (0 fmgui_textfieldset fmGUI_TextFieldSet' ()( n  ��*+* 4  ����,
�� 
txta, m  ������ + n  ��-.- 4  ����/
�� 
scra/ m  ������ . 4  ����0
�� 
cwin0 m  ������ ) 1��1 o  ������ 20 autoentercalccode_value autoEnterCalcCode_VALUE��  ��  &  f  ��$ 232 l ��������  ��  ��  3 454 l ��������  ��  ��  5 676 l ��89��  8 ' ! Calc CONTEXT Table (occurrence):   9 �:: B   C a l c   C O N T E X T   T a b l e   ( o c c u r r e n c e ) :7 ;<; Z  -=>����= > 	?@? n  ABA o  ���� 20 autoentercalccontexttoc autoEnterCalcContextTOCB o  ���� 	0 prefs  @ m  ��
�� 
null> n )CDC I  )��E����  0 fmgui_popupset fmGUI_PopupSetE FGF 6 "HIH n  JKJ 4 ��L
�� 
popBL m  ���� K o  ���� 0 workingarea workingAreaI E  !MNM 1  ��
�� 
pnamN m   OO �PP  c o n t e x tG Q��Q n  "%RSR o  #%���� 20 autoentercalccontexttoc autoEnterCalcContextTOCS o  "#���� 	0 prefs  ��  ��  D  f  ��  ��  < TUT l ..��������  ��  ��  U VWV l ..��XY��  X 9 3 Do Not Evaluate if all referenced field are empty:   Y �ZZ f   D o   N o t   E v a l u a t e   i f   a l l   r e f e r e n c e d   f i e l d   a r e   e m p t y :W [\[ Z  .j]^����] > .3_`_ n  .1aba o  /1����  0 alwaysevaluate alwaysEvaluateb o  ./���� 	0 prefs  ` m  12��
�� 
null^ k  6fcc ded r  6Mfgf 6 6Khih n  6<jkj 4 7<��l
�� 
chbxl m  :;���� k o  67���� 0 workingarea workingAreai E  ?Jmnm 1  @D��
�� 
pnamn m  EIoo �pp J n o t   e v a l u a t e   i f   a l l   r e f e r e n c e d   f i e l d sg o      ���� *0 notevaluatecheckbox notEvaluateCheckboxe q��q Z  Nfrs��tr n  NRuvu o  OQ����  0 alwaysevaluate alwaysEvaluatev o  NO���� 	0 prefs  s n U\wxw I  V\��y���� &0 fmgui_checkboxset fmGUI_CheckboxSety z{z o  VW���� *0 notevaluatecheckbox notEvaluateCheckbox{ |��| m  WX����  ��  ��  x  f  UV��  t n _f}~} I  `f������ &0 fmgui_checkboxset fmGUI_CheckboxSet ��� o  `a���� *0 notevaluatecheckbox notEvaluateCheckbox� ���� m  ab���� ��  ��  ~  f  _`��  ��  ��  \ ��� l kk��������  ��  ��  � ��� l kk��������  ��  ��  � ��� l kk������  � - ' click OK to save Specify Calculation:    � ��� N   c l i c k   O K   t o   s a v e   S p e c i f y   C a l c u l a t i o n :  � ��� n k���� I  l�������� B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow� ���� 6 l���� n  lr��� 4 mr���
�� 
butT� m  pq���� � o  lm���� 0 workingarea workingArea� E  u���� 1  vz��
�� 
pnam� m  {�� ���  O K��  ��  �  f  kl� ��� l ����������  ��  ��  � ��� n ����� I  ��������� "0 windowwaituntil windowWaitUntil� ���� K  ���� ������ 0 
windowname 
windowName� m  ���� ��� & S p e c i f y   C a l c u l a t i o n� ������  0 windownametest windowNameTest� m  ���� ���   d o e s   n o t   c o n t a i n� ������� 0 whichwindow whichWindow� m  ���� ��� 
 f r o n t��  ��  ��  �  f  ��� ��� l ����������  ��  ��  � ��� r  ����� n  ����� 4  �����
�� 
tabg� m  ������ � 4  �����
�� 
cwin� m  ������ � o      ���� 0 workingarea workingArea� ��� l ����������  ��  ��  � ��� l ��������  � 7 1 Do not replace existing value of field (if any):   � ��� b   D o   n o t   r e p l a c e   e x i s t i n g   v a l u e   o f   f i e l d   ( i f   a n y ) :� ��� Z  ��������� > ����� n  ����� o  ������ 00 overwriteexistingvalue overwriteExistingValue� o  ������ 	0 prefs  � m  ����
�� 
null� k  ���� ��� r  ����� 6 ����� n  ����� 4 �����
�� 
chbx� m  ������ � o  ������ 0 workingarea workingArea� E  ����� 1  ����
�� 
pnam� m  ���� ��� . D o   n o t   r e p l a c e   e x i s t i n g� o      ���� @0 overwriteexistingvaluecheckbox overwriteExistingValueCheckbox� ���� Z  �������� n  ����� o  ������ 00 overwriteexistingvalue overwriteExistingValue� o  ������ 	0 prefs  � n ����� I  ��������� &0 fmgui_checkboxset fmGUI_CheckboxSet� ��� o  ������ @0 overwriteexistingvaluecheckbox overwriteExistingValueCheckbox� ���� m  ������  ��  ��  �  f  ����  � n ����� I  ��������� &0 fmgui_checkboxset fmGUI_CheckboxSet� ��� o  ������ @0 overwriteexistingvaluecheckbox overwriteExistingValueCheckbox� ���� m  ������ ��  ��  �  f  ����  ��  ��  � ��� l ����������  ��  ��  � ���� l ���������  ��  �  ��  �   there IS a Calc:   � ��� "   t h e r e   I S   a   C a l c :� ��~� l ���}�|�{�}  �|  �{  �~  �I  �H  � ��� l ���z�y�x�z  �y  �x  � ��� l ���w�v�u�w  �v  �u  � ��� l ���t���t  � 8 2 Prohibit modification of value during data entry:   � ��� d   P r o h i b i t   m o d i f i c a t i o n   o f   v a l u e   d u r i n g   d a t a   e n t r y :� ��� Z  �E���s�r� > ���� n  ���� o   �q�q 0 allowediting allowEditing� o  � �p�p 	0 prefs  � m  �o
�o 
null� k  	A�� � � r  	" 6 	 n  	 4 
�n
�n 
chbx m  �m�m  o  	
�l�l 0 workingarea workingArea E  	 1  �k
�k 
pnam	 m  

 � * P r o h i b i t   m o d i f i c a t i o n o      �j�j *0 prohibitmodcheckbox prohibitModCheckbox  �i Z  #A�h n  #) o  $(�g�g 0 allowediting allowEditing o  #$�f�f 	0 prefs   n ,5 I  -5�e�d�e &0 fmgui_checkboxset fmGUI_CheckboxSet  o  -0�c�c *0 prohibitmodcheckbox prohibitModCheckbox �b m  01�a�a  �b  �d    f  ,-�h   n 8A I  9A�`�_�` &0 fmgui_checkboxset fmGUI_CheckboxSet  o  9<�^�^ *0 prohibitmodcheckbox prohibitModCheckbox �] m  <=�\�\ �]  �_    f  89�i  �s  �r  �  l FF�[�Z�Y�[  �Z  �Y    !  l FF�X�W�V�X  �W  �V  ! "#" l FF�U$%�U  $ P J--------------------------------------------------------------------------   % �&& � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -# '(' l FF�T)*�T  )   NORMAL FIELD   * �++    N O R M A L   F I E L D( ,-, l FF�S./�S  . U O--------------------------------------------------------------------------					   / �00 � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 	 	 	 	 	- 121 l FF�R34�R  3   VALIDATION TAB:   4 �55     V A L I D A T I O N   T A B :2 676 l FF�Q89�Q  8 T N--------------------------------------------------------------------------				   9 �:: � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 	 	 	 	7 ;<; l FF�P�O�N�P  �O  �N  < =>= l FF�M?@�M  ? 8 2 MOST VALIDATION FEATURES NOT YET SUPPORTED ! ! !    @ �AA d   M O S T   V A L I D A T I O N   F E A T U R E S   N O T   Y E T   S U P P O R T E D   !   !   !  > BCB l FF�LDE�L  D 8 2 MOST VALIDATION FEATURES NOT YET SUPPORTED ! ! !    E �FF d   M O S T   V A L I D A T I O N   F E A T U R E S   N O T   Y E T   S U P P O R T E D   !   !   !  C GHG l FF�KIJ�K  I 8 2 MOST VALIDATION FEATURES NOT YET SUPPORTED ! ! !    J �KK d   M O S T   V A L I D A T I O N   F E A T U R E S   N O T   Y E T   S U P P O R T E D   !   !   !  H LML l FF�J�I�H�J  �I  �H  M NON I FR�GP�F
�G .prcsclicnull��� ��� uielP n  FNQRQ 4  GN�ES
�E 
radBS m  JMTT �UU  V a l i d a t i o nR o  FG�D�D 0 workingarea workingArea�F  O VWV l SS�C�B�A�C  �B  �A  W XYX Z  S7Z[�@�?Z > SZ\]\ n  SX^_^ o  TX�>�> (0 validationcalccode validationCalcCode_ o  ST�=�= 	0 prefs  ] m  XY�<
�< 
null[ k  ]3`` aba l ]]�;�:�9�;  �:  �9  b cdc n ]jefe I  ^j�8g�7�8 B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindowg h�6h n  ^fiji 4  _f�5k
�5 
butTk m  bell �mm  S p e c i f y &j o  ^_�4�4 0 workingarea workingArea�6  �7  f  f  ]^d non l kk�3�2�1�3  �2  �1  o pqp l kk�0rs�0  r + % wait for Specify Calculation window:   s �tt J   w a i t   f o r   S p e c i f y   C a l c u l a t i o n   w i n d o w :q uvu n kxwxw I  lx�/y�.�/ 20 windowwaituntil_frontis windowWaitUntil_FrontISy z�-z K  lt{{ �,|�+�, 0 
windowname 
windowName| m  or}} �~~ & S p e c i f y   C a l c u l a t i o n�+  �-  �.  x  f  klv � l yy�*�)�(�*  �)  �(  � ��� r  y���� 4  y�'�
�' 
cwin� m  }~�&�& � o      �%�% 0 workingarea workingArea� ��� l ���$�#�"�$  �#  �"  � ��� l ���!���!  �   CALCULATION CODE:    � ��� &   C A L C U L A T I O N   C O D E :  � ��� Z  ����� �� = ����� n  ����� 1  ���
� 
leng� n  ����� o  ���� (0 validationcalccode validationCalcCode� o  ���� 	0 prefs  � m  ����  � k  ���� ��� l  ������  � � � if for some reason an empty string is specified, we want to force an error in FM's syntax checker for the validation calc box instead of silently allowing an empty string as the validation calc.    � ����   i f   f o r   s o m e   r e a s o n   a n   e m p t y   s t r i n g   i s   s p e c i f i e d ,   w e   w a n t   t o   f o r c e   a n   e r r o r   i n   F M ' s   s y n t a x   c h e c k e r   f o r   t h e   v a l i d a t i o n   c a l c   b o x   i n s t e a d   o f   s i l e n t l y   a l l o w i n g   a n   e m p t y   s t r i n g   a s   t h e   v a l i d a t i o n   c a l c .  � ��� r  ����� m  ���� ��� i f   (   / *   v a l i d a t i o n   c a l c   w a s   s p e c i f i e d   a s   a n   e m p t y   s t r i n g   r a t h e r   t h a n   a   n u l l   v a l u e   i n d i c a t i n g   a   b u g   i n   t h e   s c r i p t   r u n n i n g   t h e   s e t u p   t o o l .   * /   )� o      �� 40 validationcalccode_value validationCalcCode_VALUE�  �   � r  ����� n  ����� o  ���� (0 validationcalccode validationCalcCode� o  ���� 	0 prefs  � o      �� 40 validationcalccode_value validationCalcCode_VALUE� ��� l ������  �  �  � ��� n ����� I  ������ (0 fmgui_textfieldset fmGUI_TextFieldSet� ��� n  ����� 4  ����
� 
txta� m  ���� � n  ����� 4  ����
� 
scra� m  ���� � 4  ����
� 
cwin� m  ���� � ��
� o  ���	�	 40 validationcalccode_value validationCalcCode_VALUE�
  �  �  f  ��� ��� l ������  �  �  � ��� l ������  �  �  � ��� l ������  � ' ! Calc CONTEXT Table (occurrence):   � ��� B   C a l c   C O N T E X T   T a b l e   ( o c c u r r e n c e ) :� ��� Z  ������ � > ����� n  ����� o  ������ 40 validationcalccontexttoc validationCalcContextTOC� o  ������ 	0 prefs  � m  ����
�� 
null� n ����� I  ���������  0 fmgui_popupset fmGUI_PopupSet� ��� 6 ����� n  ����� 4 �����
�� 
popB� m  ������ � o  ������ 0 workingarea workingArea� E  ����� 1  ����
�� 
pnam� m  ���� ���  c o n t e x t� ���� n  ����� o  ������ 40 validationcalccontexttoc validationCalcContextTOC� o  ������ 	0 prefs  ��  ��  �  f  ���  �   � ��� l ����������  ��  ��  � ��� l ��������  � - ' click OK to save Specify Calculation:    � ��� N   c l i c k   O K   t o   s a v e   S p e c i f y   C a l c u l a t i o n :  � ��� n ���� I  �������� B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow� ���� 6 ���� n  ����� 4 �����
�� 
butT� m  ������ � o  ������ 0 workingarea workingArea� E  ���� 1  ����
�� 
pnam� m  ��� ���  O K��  ��  �  f  ��� ��� l ��������  ��  ��  � ��� n #��� I  	#������� "0 windowwaituntil windowWaitUntil� ���� K  	�� ������ 0 
windowname 
windowName� m  �� ��� & S p e c i f y   C a l c u l a t i o n� ������  0 windownametest windowNameTest� m  �� �     d o e s   n o t   c o n t a i n� ������ 0 whichwindow whichWindow m   � 
 f r o n t��  ��  ��  �  f  	�  l $$��������  ��  ��    r  $1	 n  $/

 4  */��
�� 
tabg m  -.����  4  $*��
�� 
cwin m  ()���� 	 o      ���� 0 workingarea workingArea  l 22��������  ��  ��   �� l 22����     END OF: Validation.     � *   E N D   O F :   V a l i d a t i o n .  ��  �@  �?  Y  l 88��������  ��  ��    l 88��������  ��  ��    l 88����   #  SAVE NORMAL FIELD - OPTIONS:    � :   S A V E   N O R M A L   F I E L D   -   O P T I O N S :  l 88�� ��   #  click OK for field Options:      �!! :   c l i c k   O K   f o r   f i e l d   O p t i o n s :   "#" n 8W$%$ I  9W��&���� B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow& '��' 6 9S()( n  9D*+* 4 ?D��,
�� 
butT, m  BC���� + 4  9?��-
�� 
cwin- m  =>���� ) E  GR./. 1  HL��
�� 
pnam/ m  MQ00 �11  O K��  ��  %  f  89# 232 l XX��������  ��  ��  3 454 n Xs676 I  Ys��8���� "0 windowwaituntil windowWaitUntil8 9��9 K  Yo:: ��;<�� 0 
windowname 
windowName; m  \_== �>>  O p t i o n s   f o r< ��?@��  0 windownametest windowNameTest? m  beAA �BB & d o e s   n o t   s t a r t   w i t h@ ��C���� 0 whichwindow whichWindowC m  hkDD �EE 
 f r o n t��  ��  ��  7  f  XY5 FGF l tt��������  ��  ��  G HIH l tt��������  ��  ��  I JKJ L  tvLL m  tu��
�� boovtrueK MNM l ww��������  ��  ��  N OPO l ww��������  ��  ��  P Q��Q l ww��������  ��  ��  ��  �)  �T  � RSR l }}��������  ��  ��  S TUT l }}��������  ��  ��  U VWV L  }XX m  }~��
�� boovtrueW Y��Y l ����������  ��  ��  ��  Z 4   � ���Z
�� 
pcapZ m   � �[[ �\\ , F i l e M a k e r   P r o   A d v a n c e dX m   � �]]�                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  V ^_^ l ����������  ��  ��  _ `a` l ����������  ��  ��  a bcb l ����������  ��  ��  c d��d l  ����ef��  e � �   DEBUGGING   DEBUGGING   DEBUGGING   DEBUGGING   DEBUGGING   DEBUGGING   
DEBUGGING   DEBUGGING   DEBUGGING   DEBUGGING   DEBUGGING   DEBUGGING   DEBUGGING   
   f �ggB       D E B U G G I N G       D E B U G G I N G       D E B U G G I N G       D E B U G G I N G       D E B U G G I N G       D E B U G G I N G       
 D E B U G G I N G       D E B U G G I N G       D E B U G G I N G       D E B U G G I N G       D E B U G G I N G       D E B U G G I N G       D E B U G G I N G       
��  5 R      �hi
� .ascrerr ****      � ****h o      �� 0 errmsg errMsgi �j�
� 
errnj o      �� 0 errnum errNum�  6 R  ���kl
� .ascrerr ****      � ****k b  ��mnm b  ��opo b  ��qrq m  ��ss �tt 0 C o u l d n ' t   e d i t   a   F i e l d   -  r I  ���u��  0 coercetostring coerceToStringu v�v o  ���� 	0 prefs  �  �  p m  ��ww �xx    -  n o  ���� 0 errmsg errMsgl �y�
� 
errny o  ���� 0 errnum errNum�  3 z{z l ������  �  �  { |�~| l ���}�|�{�}  �|  �{  �~  � }~} l     �z�y�x�z  �y  �x  ~ � i   D G��� I      �w��v�w :0 fmgui_managedb_field_select fmGUI_ManageDb_Field_Select� ��u� o      �t�t 	0 prefs  �u  �v  � k    ��� ��� l     �s���s  �   version 1.2   � ���    v e r s i o n   1 . 2� ��� l     �r�q�p�r  �q  �p  � ��� r     
��� K     �� �o���o 0 	fieldname 	fieldName� m    �n
�n 
null� �m���m 0 	tablename 	tableName� m    �l
�l 
null� �k��j�k 0 altpatterns altPatterns� m    �i
�i 
null�j  � o      �h�h 0 defaultprefs defaultPrefs� ��� r    ��� b    ��� o    �g�g 	0 prefs  � o    �f�f 0 defaultprefs defaultPrefs� o      �e�e 	0 prefs  � ��� l   �d�c�b�d  �c  �b  � ��� l   �a���a  �   CONSTANTS:    � ���    C O N S T A N T S :  � ��� r    ��� b    ��� b    ��� b    ��� m    �� ��� @ t e l l   a p p l i c a t i o n   " S y s t e m   E v e n t s "� o    �`
�` 
ret � l 	  ��_�^� m    �� ��� b t e l l   a p p l i c a t i o n   p r o c e s s   " F i l e M a k e r   P r o   A d v a n c e d "�_  �^  � o    �]
�] 
ret � o      �\�\  0 testcodeheader testCodeHeader� ��� r    ��� m    �� ���  s e l e c t   (� o      �[�[ 0 
selectcode 
selectCode� ��� r    "��� m     �� ��� � f i r s t   r o w   o f   ( t a b l e   1   o f   s c r o l l   a r e a   1   o f   t a b   g r o u p   1   o f   w i n d o w   1 )� o      �Z�Z 0 
rowrefcode 
rowRefCode� ��� r   # &��� m   # $�� ���    w h o s e  � o      �Y�Y 0 	whosecode 	whoseCode� ��� r   ' *��� m   ' (�� ��� , v a l u e   o f   s t a t i c   t e x t   1� o      �X�X *0 fieldnameobjectcode fieldNameObjectCode� ��� l  + +�W���W  � ( " (then some test will be inserted)   � ��� D   ( t h e n   s o m e   t e s t   w i l l   b e   i n s e r t e d )� ��� r   + .��� m   + ,�� ��� 
   a n d  � o      �V�V $0 betweentestscode betweenTestsCode� ��� l  / /�U���U  � 7 1 (then possibly some other test will be inserted)   � ��� b   ( t h e n   p o s s i b l y   s o m e   o t h e r   t e s t   w i l l   b e   i n s e r t e d )� ��� r   / 2��� m   / 0�� ���  )� o      �T�T &0 afteralltestscode afterAllTestsCode� ��� r   3 <��� b   3 :��� b   3 8��� b   3 6��� o   3 4�S
�S 
ret � m   4 5�� ���  e n d   t e l l� o   6 7�R
�R 
ret � m   8 9�� ���  e n d   t e l l� o      �Q�Q  0 testcodefooter testCodeFooter� ��� l  = =�P�O�N�P  �O  �N  � ��� Q   =����� k   @��� ��� l  @ @�M�L�K�M  �L  �K  � ��� I   @ G�J��I�J >0 fmgui_managedb_fieldlistfocus fmGUI_ManageDb_FieldListFocus� ��H� J   A C�G�G  �H  �I  � ��� l  H H�F�E�D�F  �E  �D  � � � Z  H \�C�B >  H M n   H K o   I K�A�A 0 	tablename 	tableName o   H I�@�@ 	0 prefs   m   K L�?
�? 
null I   P X�>�=�> @0 fmgui_managedb_fieldspicktable fmGUI_ManageDb_FieldsPickTable �< n   Q T	
	 o   R T�;�; 0 	tablename 	tableName
 o   Q R�:�: 	0 prefs  �<  �=  �C  �B     l  ] ]�9�8�7�9  �8  �7    I   ] b�6�5�4�6 (0 fmgui_appfrontmost fmGUI_AppFrontMost�5  �4    l  c c�3�2�1�3  �2  �1    Q   c� k   f �  O   f � O   l � k   w �  l  w w�0�/�.�0  �/  �.    �-  I  w ��,!�+
�, .miscslctnull���     uiel! l  w �"�*�)" 6  w �#$# n   w �%&% 4  � ��('
�( 
crow' m   � ��'�' & l  w �(�&�%( n   w �)*) 4   � ��$+
�$ 
tabB+ m   � ��#�# * n   w �,-, 4   � ��".
�" 
scra. m   � ��!�! - n   w �/0/ 4   } �� 1
�  
tabg1 m   � ��� 0 4   w }�2
� 
cwin2 m   { |�� �&  �%  $ =  � �343 n   � �565 1   � ��
� 
valL6 4   � ��7
� 
sttx7 m   � ��� 4 n   � �898 o   � ��� 0 	fieldname 	fieldName9 o   � ��� 	0 prefs  �*  �)  �+  �-   4   l t�:
� 
pcap: m   p s;; �<< , F i l e M a k e r   P r o   A d v a n c e d m   f i==�                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��   >�> L   � �?? m   � ��
� boovtrue�   R      �@A
� .ascrerr ****      � ****@ o      �� 0 errmsg errMsgA �B�
� 
errnB o      �� 0 errnum errNum�   Z   ��CD�EC >  � �FGF o   � ��� 0 errnum errNumG m   � ����ID k   � �HH IJI l  � ��KL�  K / ) some error OTHER than not found in list:   L �MM R   s o m e   e r r o r   O T H E R   t h a n   n o t   f o u n d   i n   l i s t :J N�N R   � ��
OP
�
 .ascrerr ****      � ****O o   � ��	�	 0 errmsg errMsgP �Q�
� 
errnQ o   � ��� 0 errnum errNum�  �  �  E k   ��RR STS l  � ��UV�  U * $ NOT FOUND, so try each altPattern:    V �WW H   N O T   F O U N D ,   s o   t r y   e a c h   a l t P a t t e r n :  T XYX r   � �Z[Z m   � ��
� boovfals[ o      �� $0 fieldnowselected fieldNowSelectedY \]\ X   ��^�_^ k   ��`` aba r   � �cdc n   � �efe 1   � ��
� 
pcntf n   � �ghg o   � �� �  0 pattern  h o   � ����� 0 onealtpattern oneAltPatternd o      ���� 0 testlist testListb iji l  � ���������  ��  ��  j klk Q   ��mnom k   �lpp qrq l  � ���st��  s !  BEGIN: try oneAltPattern:    t �uu 6   B E G I N :   t r y   o n e A l t P a t t e r n :  r vwv l  � ���������  ��  ��  w xyx r   � �z{z J   � �����  { o      ���� 0 testcode testCodey |}| X   �/~��~ s  *��� l '������ b  '��� b  ��� b  ��� m  �� ���  � n  ��� o  ���� 0 testtype testType� o  ���� 0 
onetestrec 
oneTestRec� m  �� ���   � n &��� I  &������� 0 quotestring quoteString� ���� n  "��� o  "���� 0 	testmatch 	testMatch� o  ���� 0 
onetestrec 
oneTestRec��  ��  �  f  ��  ��  � n      ���  ;  ()� o  '(���� 0 testcode testCode�� 0 
onetestrec 
oneTestRec o   � ����� 0 testlist testList} ��� l 00��������  ��  ��  � ��� r  0?��� n 0=��� I  1=������� 0 unparsechars unParseChars� ��� o  12���� 0 testcode testCode� ���� b  29��� b  25��� o  23���� $0 betweentestscode betweenTestsCode� o  34���� *0 fieldnameobjectcode fieldNameObjectCode� m  58�� ���   ��  ��  �  f  01� o      ���� 0 testcode testCode� ��� l @@��������  ��  ��  � ��� l @@��������  ��  ��  � ��� r  @Q��� b  @O��� b  @M��� b  @K��� b  @G��� b  @E��� b  @C��� o  @A���� 0 
selectcode 
selectCode� o  AB���� 0 
rowrefcode 
rowRefCode� o  CD���� 0 	whosecode 	whoseCode� o  EF���� *0 fieldnameobjectcode fieldNameObjectCode� m  GJ�� ���   � o  KL���� 0 testcode testCode� o  MN���� &0 afteralltestscode afterAllTestsCode� o      ���� 0 testcode testCode� ��� l RR��������  ��  ��  � ��� r  RY��� b  RW��� b  RU��� o  RS����  0 testcodeheader testCodeHeader� o  ST���� 0 testcode testCode� o  UV����  0 testcodefooter testCodeFooter� o      ���� 0 testcode testCode� ��� l ZZ��������  ��  ��  � ��� l ZZ��������  ��  ��  � ��� O Zd��� I ^c�����
�� .sysodsct****        scpt� o  ^_���� 0 testcode testCode��  �  f  Z[� ��� l ee�������  ��  �  � ��� l eh���� r  eh��� m  ef�
� boovtrue� o      �� $0 fieldnowselected fieldNowSelected� #  no error, so we selected it.   � ��� :   n o   e r r o r ,   s o   w e   s e l e c t e d   i t .� ��� l ij����  S  ij� + % no need to keep checking altPatterns   � ��� J   n o   n e e d   t o   k e e p   c h e c k i n g   a l t P a t t e r n s� ��� l kk����  �  �  � ��� l kk����  � !  ERROR: try oneAltPattern.    � ��� 6   E R R O R :   t r y   o n e A l t P a t t e r n .  �  n R      ���
� .ascrerr ****      � ****� o      �� 0 errmsg errMsg� ���
� 
errn� o      �� 0 errnum errNum�  o k  t��� ��� Z  t������ > ty��� o  tu�� 0 errnum errNum� m  ux���I� k  |��� ��� l ||����  � / ) some error OTHER than not found in list:   � ��� R   s o m e   e r r o r   O T H E R   t h a n   n o t   f o u n d   i n   l i s t :� ��� R  |����
� .ascrerr ****      � ****� o  ���� 0 errmsg errMsg� ���
� 
errn� o  ���� 0 errnum errNum�  �  �  � l ������  � = 7 just try the next altPattern, so continue repeat loop.   � ��� n   j u s t   t r y   t h e   n e x t   a l t P a t t e r n ,   s o   c o n t i n u e   r e p e a t   l o o p .�    l ������  �  �   � l ����   "  END OF: try oneAltPattern.     � 8   E N D   O F :   t r y   o n e A l t P a t t e r n .  �  l � l ������  �  �  �  � 0 onealtpattern oneAltPattern_ n   � � o   � ��� 0 altpatterns altPatterns o   � ��� 	0 prefs  ] 	
	 l ������  �  �  
  L  �� o  ���� $0 fieldnowselected fieldNowSelected � l ������  �  �  �   � l ������  �  �  �  � R      �
� .ascrerr ****      � **** o      �� 0 errmsg errMsg ��
� 
errn o      �� 0 errnum errNum�  � R  ���
� .ascrerr ****      � **** b  �� b  �� b  �� m  �� � 4 C o u l d n ' t   s e l e c t   a   F i e l d   -   I  �����  0 coercetostring coerceToString � o  ���� 	0 prefs  �  �   m  �� �      -   o  ���� 0 errmsg errMsg �!�
� 
errn! o  ���� 0 errnum errNum�  � "�" l ������  �  �  �  � #$# l     �~�}�|�~  �}  �|  $ %&% i   H K'(' I      �{)�z�{ >0 fmgui_managedb_fieldlistfocus fmGUI_ManageDb_FieldListFocus) *�y* o      �x�x 	0 prefs  �y  �z  ( k     F++ ,-, l     �w./�w  .   version 1.1   / �00    v e r s i o n   1 . 1- 121 l     �v�u�t�v  �u  �t  2 343 Q     D5675 k    488 9:9 I    
�s;�r�s 40 fmgui_managedb_fieldstab fmGUI_ManageDb_FieldsTab; <�q< J    �p�p  �q  �r  : =>= l   �o�n�m�o  �n  �m  > ?@? O    2ABA O    1CDC k    0EE FGF n   HIH I    �l�k�j�l (0 fmgui_appfrontmost fmGUI_AppFrontMost�k  �j  I  f    G JKJ r    -LML m    �i
�i boovtrueM n      NON 1   * ,�h
�h 
focuO l   *P�g�fP n    *QRQ 4   ' *�eS
�e 
tabBS m   ( )�d�d R n    'TUT 4   $ '�cV
�c 
scraV m   % &�b�b U n    $WXW 4   ! $�aY
�a 
tabgY m   " #�`�` X 4    !�_Z
�_ 
cwinZ m     �^�^ �g  �f  K [�][ L   . 0\\ m   . /�\
�\ boovtrue�]  D 4    �[]
�[ 
pcap] m    ^^ �__ , F i l e M a k e r   P r o   A d v a n c e dB m    ``�                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  @ a�Za l  3 3�Y�X�W�Y  �X  �W  �Z  6 R      �Vbc
�V .ascrerr ****      � ****b o      �U�U 0 errmsg errMsgc �Td�S
�T 
errnd o      �R�R 0 errnum errNum�S  7 R   < D�Qef
�Q .ascrerr ****      � ****e b   @ Cghg m   @ Aii �jj > C o u l d n ' t   f o c u s   o n   F i e l d   l i s t   -  h o   A B�P�P 0 errmsg errMsgf �Ok�N
�O 
errnk o   > ?�M�M 0 errnum errNum�N  4 l�Ll l  E E�K�J�I�K  �J  �I  �L  & mnm l     �H�G�F�H  �G  �F  n opo i   L Oqrq I      �Es�D�E @0 fmgui_managedb_fieldspicktable fmGUI_ManageDb_FieldsPickTables t�Ct o      �B�B 0 basetablename baseTableName�C  �D  r k     Guu vwv l     �Axy�A  x   version 1.3   y �zz    v e r s i o n   1 . 3w {|{ l     �@�?�>�@  �?  �>  | }~} Q     E�� k    1�� ��� I    
�=��<�= 40 fmgui_managedb_fieldstab fmGUI_ManageDb_FieldsTab� ��;� J    �:�:  �;  �<  � ��9� O    1��� O    0��� k    /�� ��� n   ��� I    �8�7�6�8 (0 fmgui_appfrontmost fmGUI_AppFrontMost�7  �6  �  f    � ��� n   ,��� I    ,�5��4�5  0 fmgui_popupset fmGUI_PopupSet� ��� n    '��� 4   $ '�3�
�3 
popB� m   % &�� ���  T a b l e :� n    $��� 4   ! $�2�
�2 
tabg� m   " #�1�1 � 4    !�0�
�0 
cwin� m     �/�/ � ��.� o   ' (�-�- 0 basetablename baseTableName�.  �4  �  f    � ��,� L   - /�� m   - .�+
�+ boovtrue�,  � 4    �*�
�* 
pcap� m    �� ��� , F i l e M a k e r   P r o   A d v a n c e d� m    ���                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  �9  � R      �)��
�) .ascrerr ****      � ****� o      �(�( 0 errmsg errMsg� �'��&
�' 
errn� o      �%�% 0 errnum errNum�&  � R   9 E�$��
�$ .ascrerr ****      � ****� b   = D��� b   = B��� b   = @��� m   = >�� ��� . C o u l d n ' t   s e l e c t   t a b l e   '� o   > ?�#�# 0 basetablename baseTableName� m   @ A�� ���  '   -  � o   B C�"�" 0 errmsg errMsg� �!�� 
�! 
errn� o   ; <�� 0 errnum errNum�   ~ ��� l  F F����  �  �  �  p ��� l     ����  �  �  � ��� i   P S��� I      ���� 40 fmgui_managedb_fieldstab fmGUI_ManageDb_FieldsTab� ��� o      �� 	0 prefs  �  �  � k     ]�� ��� l     ����  �   version 1.3   � ���    v e r s i o n   1 . 3� ��� l     ����  �  �  � ��� Q     [���� k    I�� ��� I    
���� *0 fmgui_managedb_open fmGUI_ManageDb_Open� ��� J    ��  �  �  � ��� O    I��� O    H��� k    G�� ��� n   ��� I    �
�	��
 (0 fmgui_appfrontmost fmGUI_AppFrontMost�	  �  �  f    � ��� r    2��� N    0�� 6   /��� n    &��� 4  # &��
� 
radB� m   $ %�� � n    #��� 4     #��
� 
tabg� m   ! "�� � 4     ��
� 
cwin� m    �� � E   ' .��� 1   ( *�
� 
titl� m   + -�� ��� 
 F i e l d� o      � �  "0 fieldstabobject fieldsTabObject� ��� Z   3 D������� >  3 8��� n   3 6��� 1   4 6��
�� 
valL� o   3 4���� "0 fieldstabobject fieldsTabObject� m   6 7���� � I  ; @�����
�� .prcsclicnull��� ��� uiel� o   ; <���� "0 fieldstabobject fieldsTabObject��  ��  ��  � ���� L   E G�� m   E F��
�� boovtrue��  � 4    ���
�� 
pcap� m    �� ��� , F i l e M a k e r   P r o   A d v a n c e d� m    ���                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  �  � R      ����
�� .ascrerr ****      � ****� o      ���� 0 errmsg errMsg� �� ��
�� 
errn  o      ���� 0 errnum errNum��  � R   Q [��
�� .ascrerr ****      � **** b   U Z m   U X � @ C o u l d n ' t   g o   t o   t h e   f i e l d s   t a b   -   o   X Y���� 0 errmsg errMsg ����
�� 
errn o   S T���� 0 errnum errNum��  � �� l  \ \��������  ��  ��  ��  � 	
	 l     ��������  ��  ��  
  i   T W I      ������ *0 fmgui_managedb_open fmGUI_ManageDb_Open �� o      ���� 	0 prefs  ��  ��   k    �  l     ����     version 1.2    �    v e r s i o n   1 . 2  l     ��������  ��  ��    Q    � O   � O   � !  k   �"" #$# l   ��������  ��  ��  $ %&% n   '(' I    �������� (0 fmgui_appfrontmost fmGUI_AppFrontMost��  ��  (  f    & )*) l   ��������  ��  ��  * +,+ l   ��-.��  -   try to open Manage DB   . �// ,   t r y   t o   o p e n   M a n a g e   D B, 0��0 Z   �12��31 C    454 n    676 1    ��
�� 
pnam7 4    ��8
�� 
cwin8 m    ���� 5 m    99 �:: & M a n a g e   D a t a b a s e   f o r2 L    !;; m     ��
�� boovtrue��  3 k   $�<< =>= I  $ D��?��
�� .prcsclicnull��� ��� uiel? l  $ @@����@ 6  $ @ABA n   $ 7CDC 4  4 7��E
�� 
menIE m   5 6���� D n   $ 4FGF 4   1 4��H
�� 
menEH m   2 3���� G n   $ 1IJI 4   . 1��K
�� 
menIK m   / 0LL �MM  M a n a g eJ n   $ .NON 4   + .��P
�� 
menEP m   , -���� O n   $ +QRQ 4   ( +��S
�� 
mbriS m   ) *TT �UU  F i l eR 4   $ (�V
� 
mbarV m   & '�� B C   8 ?WXW 1   9 ;�
� 
pnamX m   < >YY �ZZ  D a t a b a s e��  ��  ��  > [\[ l  E E����  �  �  \ ]^] l  E E�_`�  _   TO DO   ` �aa    T O   D O^ bcb l  E E�de�  d   TO DO   e �ff    T O   D Oc ghg l  E E�ij�  i   TO DO   j �kk    T O   D Oh lml l  E E�no�  n v p 2015-06-03 ( eshagdar ): probably going to need to open manageDB via openManageDB script if the menu item fails   o �pp �   2 0 1 5 - 0 6 - 0 3   (   e s h a g d a r   ) :   p r o b a b l y   g o i n g   t o   n e e d   t o   o p e n   m a n a g e D B   v i a   o p e n M a n a g e D B   s c r i p t   i f   t h e   m e n u   i t e m   f a i l sm qrq l  E E����  �  �  r sts l  E E�uv�  u 3 - do this in case already on relationships tab   v �ww Z   d o   t h i s   i n   c a s e   a l r e a d y   o n   r e l a t i o n s h i p s   t a bt xyx l  E Jz{|z I  E J�}�
� .sysodelanull��� ��� nmbr} m   E F�� �  {   seconds   | �~~    s e c o n d sy � r   K N��� m   K L�
� boovtrue� o      �� *0 lookingforxdbcerror lookingForXDBCError� ��� V   O ���� Z   U ������ C  U _��� n   U [��� 1   Y [�
� 
pnam� 4   U Y��
� 
cwin� m   W X�� � m   [ ^�� ���  C o n n e c t   t o  � k   b ��� ��� I  b z���
� .prcsclicnull��� ��� uiel� l  b v���� 6  b v��� n   b k��� 4  f k��
� 
butT� m   i j�� � 4   b f��
� 
cwin� m   d e�� � =  l u��� 1   m o�
� 
pnam� m   p t�� ���  C a n c e l�  �  �  � ��� l  { ����� I  { ����
� .sysodelanull��� ��� nmbr� m   { |�� �  �   seconds   � ���    s e c o n d s�  �  � r   � ���� m   � ��
� boovfals� o      �� *0 lookingforxdbcerror lookingForXDBCError� o   S T�� *0 lookingforxdbcerror lookingForXDBCError� ��� l  � �����  �  �  � ��� l  � �����  � P J to to the TOs tab and dismiss any xDBC connections that failed to connect   � ��� �   t o   t o   t h e   T O s   t a b   a n d   d i s m i s s   a n y   x D B C   c o n n e c t i o n s   t h a t   f a i l e d   t o   c o n n e c t� ��� n  � ���� I   � ����� B0 fmgui_managedb_relationshipstab fmGUI_ManageDb_RelationshipsTab� ��� J   � ���  �  �  �  f   � �� ��� l  � ����� I  � ����
� .sysodelanull��� ��� nmbr� m   � ��� �  �   seconds   � ���    s e c o n d s� ��� r   � ���� m   � ��
� boovtrue� o      �� *0 lookingforxdbcerror lookingForXDBCError� ��� V   � ���� Z   � ������ C  � ���� n   � ���� 1   � ��
� 
pnam� 4   � ���
� 
cwin� m   � ��� � m   � ��� ���  C o n n e c t   t o  � k   � ��� ��� I  � ����
� .prcsclicnull��� ��� uiel� l  � ����� 6  � ���� n   � ���� 4  � ���
� 
butT� m   � ��� � 4   � ���
� 
cwin� m   � ��� � =  � ���� 1   � ��
� 
pnam� m   � ��� ���  C a n c e l�  �  �  � ��~� l  � ����� I  � ��}��|
�} .sysodelanull��� ��� nmbr� m   � ��{�{ �|  �   seconds   � ���    s e c o n d s�~  �  � r   � ���� m   � ��z
�z boovfals� o      �y�y *0 lookingforxdbcerror lookingForXDBCError� o   � ��x�x *0 lookingforxdbcerror lookingForXDBCError� ��� l  � ��w�v�u�w  �v  �u  � ��� l  � ��t���t  � M Gzoom out to show all TOs and dismiss any that weren't already dismissed   � ��� � z o o m   o u t   t o   s h o w   a l l   T O s   a n d   d i s m i s s   a n y   t h a t   w e r e n ' t   a l r e a d y   d i s m i s s e d� ��� I  � ��s��
�s .prcskprsnull���     ctxt� m   � ��� ���  i� �r��q
�r 
faal� m   � ��p
�p eMdsKcmd�q  � ��� l  � ����� I  � ��o��n
�o .sysodelanull��� ��� nmbr� m   � ��m�m �n  �   seconds   � ���    s e c o n d s� ��� r   � ���� m   � ��l
�l boovtrue� o      �k�k *0 lookingforxdbcerror lookingForXDBCError� ��� V   �&   Z   �!�j C  � n   � � 1   � ��i
�i 
pnam 4   � ��h	
�h 
cwin	 m   � ��g�g  m   �

 �  C o n n e c t   t o   k    I �f�e
�f .prcsclicnull��� ��� uiel n   4  
�d
�d 
butT m   �  C a n c e l 4  
�c
�c 
cwin m  	�b�b �e   �a l  I �`�_
�` .sysodelanull��� ��� nmbr m  �^�^ �_     seconds    �    s e c o n d s�a  �j   r  ! m  �]
�] boovfals o      �\�\ *0 lookingforxdbcerror lookingForXDBCError o   � ��[�[ *0 lookingforxdbcerror lookingForXDBCError�  l ''�Z�Y�X�Z  �Y  �X    !  l ''�W"#�W  "   zoom back in   # �$$    z o o m   b a c k   i n! %&% r  '7'(' n  '5)*) 4  05�V+
�V 
txtf+ m  34�U�U * n  '0,-, 4  +0�T.
�T 
tabg. m  ./�S�S - 4  '+�R/
�R 
cwin/ m  )*�Q�Q ( o      �P�P 0 	zoomfield 	zoomField& 010 r  8?232 m  89�O
�O boovtrue3 n      454 1  :>�N
�N 
focu5 o  9:�M�M 0 	zoomfield 	zoomField1 676 r  @I898 m  @C:: �;;  1 0 09 n      <=< 1  DH�L
�L 
valL= o  CD�K�K 0 	zoomfield 	zoomField7 >?> r  J^@A@ m  JK�J
�J boovtrueA n      BCB 1  Y]�I
�I 
focuC n  KYDED 4  TY�HF
�H 
scraF m  WX�G�G E n  KTGHG 4  OT�FI
�F 
tabgI m  RS�E�E H 4  KO�DJ
�D 
cwinJ m  MN�C�C ? KLK r  _xMNM m  _`�B�B  N n      OPO 1  sw�A
�A 
valLP n  `sQRQ 4  ns�@S
�@ 
scrbS m  qr�?�? R n  `nTUT 4  in�>V
�> 
scraV m  lm�=�= U n  `iWXW 4  di�<Y
�< 
tabgY m  gh�;�; X 4  `d�:Z
�: 
cwinZ m  bc�9�9 L [\[ r  y�]^] m  yz�8�8  ^ n      _`_ 1  ���7
�7 
valL` n  z�aba 4  ���6c
�6 
scrbc m  ���5�5 b n  z�ded 4  ���4f
�4 
scraf m  ���3�3 e n  z�ghg 4  ~��2i
�2 
tabgi m  ���1�1 h 4  z~�0j
�0 
cwinj m  |}�/�/ \ klk l ���.�-�,�.  �-  �,  l m�+m L  ��nn m  ���*
�* boovtrue�+  ��  ! 4    �)o
�) 
pcapo m   	 
pp �qq , F i l e M a k e r   P r o   A d v a n c e d m    rr�                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��   R      �(st
�( .ascrerr ****      � ****s o      �'�' 0 errmsg errMsgt �&u�%
�& 
errnu o      �$�$ 0 errnum errNum�%   R  ���#vw
�# .ascrerr ****      � ****v b  ��xyx m  ��zz �{{ 4 C o u l d n ' t   o p e n   m a n a g e   D B   -  y o  ���"�" 0 errmsg errMsgw �!|� 
�! 
errn| o  ���� 0 errnum errNum�    }�} l ������  �  �  �   ~~ l     ����  �  �   ��� i   X [��� I      ���� B0 fmgui_managedb_relationshipstab fmGUI_ManageDb_RelationshipsTab� ��� o      �� 	0 prefs  �  �  � k     S�� ��� l     ����  �   version 1.3   � ���    v e r s i o n   1 . 3� ��� l     ����  �  �  � ��� Q     Q���� k    A�� ��� I    ���� (0 fmgui_appfrontmost fmGUI_AppFrontMost�  �  � ��� l  	 	����  �  fmGUI_ManageDb_Open({})   � ��� . f m G U I _ M a n a g e D b _ O p e n ( { } )� ��� O   	 A��� O    @��� k    ?�� ��� r    *��� N    (�� l   '��
�	� 6   '��� n    ��� 4   ��
� 
radB� m    �� � n    ��� 4    ��
� 
tabg� m    �� � 4    ��
� 
cwin� m    �� � E    &��� 1     "�
� 
titl� m   # %�� ���  R e l a t i o n s h i p�
  �	  � o      �� "0 fieldstabobject fieldsTabObject� ��� Z   + <��� ��� >  + 0��� n   + .��� 1   , .��
�� 
valL� o   + ,���� "0 fieldstabobject fieldsTabObject� m   . /���� � I  3 8�����
�� .prcsclicnull��� ��� uiel� o   3 4���� "0 fieldstabobject fieldsTabObject��  �   ��  � ���� L   = ?�� m   = >��
�� boovtrue��  � 4    ���
�� 
pcap� m    �� ��� , F i l e M a k e r   P r o   A d v a n c e d� m   	 
���                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  �  � R      ����
�� .ascrerr ****      � ****� o      ���� 0 errmsg errMsg� �����
�� 
errn� o      ���� 0 errnum errNum��  � R   I Q����
�� .ascrerr ****      � ****� b   M P��� m   M N�� ��� N C o u l d n ' t   g o   t o   t h e   R e l a t i o n s h i p s   t a b   -  � o   N O���� 0 errmsg errMsg� �����
�� 
errn� o   K L���� 0 errnum errNum��  � ���� l  R R��������  ��  ��  ��  � ��� l     ��������  ��  ��  � ��� i   \ _��� I      ������� *0 fmgui_managedb_save fmGUI_ManageDB_Save� ���� o      ���� 	0 prefs  ��  ��  � k     ��� ��� l     ������  �   version 1.4   � ���    v e r s i o n   1 . 4� ��� l     ��������  ��  ��  � ��� r     ��� K     �� ������� ,0 notinmanagedbiserror notInManageDbIsError� m    ��
�� boovtrue��  � o      ���� 0 defaultprefs defaultPrefs� ��� l   ��������  ��  ��  � ��� r    ��� b    
��� o    ���� 	0 prefs  � o    	���� 0 defaultprefs defaultPrefs� o      ���� 	0 prefs  � ��� l   ��������  ��  ��  � ��� l   ��������  ��  ��  � ��� r    ��� m    �� ��� & M a n a g e   D a t a b a s e   f o r� o      ���� 40 managedbwindownameprefix manageDbWindowNamePrefix� ��� l   ���� r    ��� m    ���� 
� o      ���� .0 waitcycledelayseconds waitCycleDelaySeconds�   seconds   � ���    s e c o n d s� ��� l      r     ]     m    ���� < 1    ��
�� 
min  o      ���� ,0 waitsavetotalseconds waitSaveTotalSeconds  seconds    �  s e c o n d s� 	 l   ��������  ��  ��  	 

 r    & I   $��
�� .sysorondlong        doub l   ���� ^     o    ���� ,0 waitsavetotalseconds waitSaveTotalSeconds o    �� .0 waitcycledelayseconds waitCycleDelaySeconds��  ��   ��
� 
dire m     �
� olierndD�   o      �� 0 waitcyclemax waitCycleMax  l  ' '����  �  �    Q   ' � k   * �  O   * � k   . �   !"! O   . �#$# k   5 �%% &'& l  5 5����  �  �  ' ()( n  5 :*+* I   6 :���� (0 fmgui_appfrontmost fmGUI_AppFrontMost�  �  +  f   5 6) ,-, l  ; ;����  �  �  - ./. Z   ; �01�20 C   ; C343 n   ; A565 1   ? A�
� 
pnam6 4   ; ?�7
� 
cwin7 m   = >�� 4 o   A B�� 40 managedbwindownameprefix manageDbWindowNamePrefix1 Q   F y89:8 k   I e;; <=< r   I Q>?> n   I O@A@ 1   M O�
� 
pnamA 4   I M�B
� 
cwinB m   K L�� ? o      �� (0 managedbwindowname manageDbWindowName= CDC I  R ]�E�
� .prcsclicnull��� ��� uielE l  R YF��F n   R YGHG 4   V Y�I
� 
butTI m   W XJJ �KK  O KH 4   R V�L
� 
cwinL m   T U�� �  �  �  D MNM l  ^ cOPQO I  ^ c�R�
� .sysodelanull��� ��� nmbrR m   ^ _�� �  P   let click register.   Q �SS (   l e t   c l i c k   r e g i s t e r .N TUT l  d d�VW�  V 6 0 will continue below to wait for window to close   W �XX `   w i l l   c o n t i n u e   b e l o w   t o   w a i t   f o r   w i n d o w   t o   c l o s eU Y�Y l  d d����  �  �  �  9 R      �Z[
� .ascrerr ****      � ****Z o      �� 0 errmsg errMsg[ �\�
� 
errn\ o      �� 0 errnum errNum�  : R   m y�]^
� .ascrerr ****      � ****] b   s x_`_ m   s vaa �bb @ C o u l d n ' t   s a v e   M a n a g e   D a t a b a s e   -  ` o   v w�� 0 errmsg errMsg^ �c�
� 
errnc o   q r�� 0 errnum errNum�  �  2 Z   | �de�fd n   | �ghg o   } �� ,0 notinmanagedbiserror notInManageDbIsErrorh o   | }�� 	0 prefs  e R   � ��ij
� .ascrerr ****      � ****i m   � �kk �ll p M a n a g e   D a t a b a s e   w i n d o w   w a s n ' t   o p e n ,   s o   n o t h i n g   t o   c l o s e .j �m�
� 
errnm m   � ��� �  �  f k   � �nn opo l  � ��qr�  q . ( Not in Manage Database, but that is OK.   r �ss P   N o t   i n   M a n a g e   D a t a b a s e ,   b u t   t h a t   i s   O K .p t�t L   � �uu m   � ��
� boovtrue�  / v�v l  � �����  �  �  �  $ 4   . 2�~w
�~ 
pcapw m   0 1xx �yy , F i l e M a k e r   P r o   A d v a n c e d" z{z l  � ��}�|�{�}  �|  �{  { |}| n  � �~~ I   � ��z��y�z "0 windowwaituntil windowWaitUntil� ��x� K   � ��� �w���w 0 
windowname 
windowName� o   � ��v�v (0 managedbwindowname manageDbWindowName� �u���u  0 windownametest windowNameTest� m   � ��� ���   d o e s   n o t   c o n t a i n� �t���t 0 whichwindow whichWindow� m   � ��� ���  a n y� �s���s .0 waitcycledelayseconds waitCycleDelaySeconds� o   � ��r�r .0 waitcycledelayseconds waitCycleDelaySeconds� �q��p�q 0 waitcyclemax waitCycleMax� o   � ��o�o 0 waitcyclemax waitCycleMax�p  �x  �y    f   � �} ��� l  � ��n�m�l�n  �m  �l  � ��� l  � ����� I  � ��k��j
�k .sysodelanull��� ��� nmbr� m   � ��i�i �j  � ( " let normal window come to front.    � ��� D   l e t   n o r m a l   w i n d o w   c o m e   t o   f r o n t .  � ��� l  � ��h�g�f�h  �g  �f  � ��� L   � ��� m   � ��e
�e boovtrue� ��d� l  � ��c�b�a�c  �b  �a  �d   m   * +���                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��   ��� l  � ��`�_�^�`  �_  �^  � ��]� l  � ��\�[�Z�\  �[  �Z  �]   R      �Y��
�Y .ascrerr ****      � ****� o      �X�X 0 errmsg errMsg� �W��V
�W 
errn� o      �U�U 0 errnum errNum�V   R   � ��T��
�T .ascrerr ****      � ****� b   � ���� m   � ��� ��� @ C o u l d n ' t   s a v e   M a n a g e   D a t a b a s e   -  � o   � ��S�S 0 errmsg errMsg� �R��Q
�R 
errn� o   � ��P�P 0 errnum errNum�Q   ��O� l  � ��N�M�L�N  �M  �L  �O  � ��� l     �K�J�I�K  �J  �I  � ��� i   ` c��� I      �H��G�H &0 fmgui_checkboxset fmGUI_CheckboxSet� ��� o      �F�F  0 checkboxobject checkboxObject� ��E� o      �D�D 0 checkboxvalue checkboxValue�E  �G  � k     9�� ��� l     �C���C  �   version 1.0   � ���    v e r s i o n   1 . 0� ��� l     �B�A�@�B  �A  �@  � ��?� w     9��� Q    9���� k    %�� ��� Z     ���>�=� >   ��� o    �<�< 0 checkboxvalue checkboxValue� m    �;
�; 
null� Z    ���:�9� >   ��� n    ��� 1    �8
�8 
valL� o    �7�7  0 checkboxobject checkboxObject� o    �6�6 0 checkboxvalue checkboxValue� I   �5��4
�5 .prcsclicnull��� ��� uiel� o    �3�3  0 checkboxobject checkboxObject�4  �:  �9  �>  �=  � ��� L   ! #�� m   ! "�2
�2 boovtrue� ��1� l  $ $�0�/�.�0  �/  �.  �1  � R      �-��
�- .ascrerr ****      � ****� o      �,�, 0 errmsg errMsg� �+��*
�+ 
errn� o      �)�) 0 errnum errNum�*  � R   - 9�(��
�( .ascrerr ****      � ****� b   1 8��� b   1 6��� b   1 4��� m   1 2�� ��� " C o u l d n ' t   s e l e c t   '� o   2 3�'�' 0 checkboxvalue checkboxValue� m   4 5�� ��� " '   f o r   c h e c k b o x   -  � o   6 7�&�& 0 errmsg errMsg� �%��$
�% 
errn� o   / 0�#�# 0 errnum errNum�$  ��                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  �?  � ��� l     �"�!� �"  �!  �   � ��� i   d g��� I      ���� B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow� ��� o      �� 0 	buttonref 	buttonRef�  �  � k     
�� ��� l     ����  �   version 1.0   � ���    v e r s i o n   1 . 0� ��� l     ����  �  �  � ��� w     ��� n   ��� I    ���� *0 clickobjectbycoords clickObjectByCoords� ��� o    �� 0 	buttonref 	buttonRef�  �  �  f    ��                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  �  �  l  	 	����  �  �  �  �  l     ����  �  �    i   h k I      ��� :0 fmgui_popup_selectbycommand fmGUI_Popup_SelectByCommand �
 o      �	�	 	0 prefs  �
  �   k    		 

 l     ��     version 1.0    �    v e r s i o n   1 . 0  l     ����  �  �    r      K     
 �� 0 popupobject popupObject m    �
� 
null �� 0 popupchoice popupChoice m    �
� 
null � �  0 selectcommand selectCommand m     �  i s ������ &0 clickifalreadyset clickIfAlreadySet m    ��
�� boovfals��   o      ���� 0 defaultprefs defaultPrefs   l   ��������  ��  ��    !"! Z    ,#$����# =   %&% n    '(' m    ��
�� 
pcls( o    ���� 	0 prefs  & n    )*) m    ��
�� 
pcls* J    ++ ,-, m    .. �//  a- 0��0 m    ���� ��  $ r    (121 K    &33 ��45�� 0 popupobject popupObject4 n    676 4    ��8
�� 
cobj8 m    ���� 7 o    ���� 	0 prefs  5 ��9���� 0 popupchoice popupChoice9 n     $:;: 4   ! $��<
�� 
cobj< m   " #���� ; o     !���� 	0 prefs  ��  2 o      ���� 	0 prefs  ��  ��  " =>= l  - -��������  ��  ��  > ?@? l  - -��������  ��  ��  @ ABA r   - 2CDC b   - 0EFE o   - .���� 	0 prefs  F o   . /���� 0 defaultprefs defaultPrefsD o      ���� 	0 prefs  B GHG l  3 3��������  ��  ��  H IJI r   3 8KLK n   3 6MNM o   4 6���� 0 popupobject popupObjectN o   3 4���� 	0 prefs  L o      ���� 0 popupobject popupObjectJ OPO r   9 >QRQ n   9 <STS o   : <���� 0 selectcommand selectCommandT o   9 :���� 	0 prefs  R o      ���� 0 selectcommand selectCommandP UVU r   ? DWXW n   ? BYZY o   @ B���� 0 popupchoice popupChoiceZ o   ? @���� 	0 prefs  X o      ���� 0 popupchoice popupChoiceV [\[ l  E J]^_] r   E J`a` n   E Hbcb o   F H���� &0 clickifalreadyset clickIfAlreadySetc o   E F���� 	0 prefs  a o      ���� &0 clickifalreadyset clickIfAlreadySet^ 6 0 re-select even if popup is the requested value.   _ �dd `   r e - s e l e c t   e v e n   i f   p o p u p   i s   t h e   r e q u e s t e d   v a l u e .\ efe l  K K��������  ��  ��  f ghg l  K K��������  ��  ��  h i��i w   Kjkj Q   Mlmnl Z   P�op��qo H   P Vrr l  P Us����s I  P U��t��
�� .coredoexnull���     ****t o   P Q���� 0 popupobject popupObject��  ��  ��  p k   Y auu vwv l  Y Y��xy��  x * $ does NOT exist, so error with that:   y �zz H   d o e s   N O T   e x i s t ,   s o   e r r o r   w i t h   t h a t :w {|{ R   Y _��}~
�� .ascrerr ****      � ****} m   ] ^ ��� R T h e   s p e c i f i e d   p o p u p O b j e c t   d o e s   n o t   e x i s t .~ ����
�� 
errn� m   [ \�� �  | ��� l  ` `����  �  �  �  ��  q k   d��� ��� l  d d����  � !  the popupObject DOES exist   � ��� 6   t h e   p o p u p O b j e c t   D O E S   e x i s t� ��� r   d g��� m   d e�
� boovfals� o      �� 0 mustpick mustPick� ��� Z   h$����� H   h r�� l  h q���� I  h q���
� .coredoexnull���     ****� n   h m��� 1   i m�
� 
valL� o   h i�� 0 popupobject popupObject�  �  �  � k   u z�� ��� l  u u����  � i c first check if the value of the popupObject exists - if it doesn't, then we can't test it directly   � ��� �   f i r s t   c h e c k   i f   t h e   v a l u e   o f   t h e   p o p u p O b j e c t   e x i s t s   -   i f   i t   d o e s n ' t ,   t h e n   w e   c a n ' t   t e s t   i t   d i r e c t l y� ��� r   u x��� m   u v�
� boovtrue� o      �� 0 mustpick mustPick� ��� l  y y����  �  �  �  �  � l  }$���� k   }$�� ��� l  } }����  � K E note that our selection might be one of several 'matching' commands:   � ��� �   n o t e   t h a t   o u r   s e l e c t i o n   m i g h t   b e   o n e   o f   s e v e r a l   ' m a t c h i n g '   c o m m a n d s :� ��� Z   }$����� o   } ~�� &0 clickifalreadyset clickIfAlreadySet� k   � ��� ��� l  � �����  � > 8 RE-SELECT even if popup already is the requested value.   � ��� p   R E - S E L E C T   e v e n   i f   p o p u p   a l r e a d y   i s   t h e   r e q u e s t e d   v a l u e .� ��� r   � ���� m   � ��
� boovtrue� o      �� 0 mustpick mustPick� ��� l  � �����  �  �  �  � ��� =  � ���� o   � ��� 0 selectcommand selectCommand� m   � ��� ���  i s� ��� k   � ��� ��� Z   � ������ >  � ���� n   � ���� 1   � ��
� 
valL� o   � ��� 0 popupobject popupObject� o   � ��� 0 popupchoice popupChoice� r   � ���� m   � ��
� boovtrue� o      �� 0 mustpick mustPick�  �  � ��� l  � �����  �  �  �  � ��� =  � ���� o   � ��� 0 selectcommand selectCommand� m   � ��� ���  c o n t a i n s� ��� k   � ��� ��� Z   � ������� H   � ��� E   � ���� n   � ���� 1   � ���
�� 
valL� o   � ����� 0 popupobject popupObject� o   � ����� 0 popupchoice popupChoice� r   � ���� m   � ���
�� boovtrue� o      ���� 0 mustpick mustPick�  ��  � ���� l  � ���������  ��  ��  ��  � ��� =  � ���� o   � ����� 0 selectcommand selectCommand� m   � ��� ���  s t a r t s W i t h� ��� k   � ��� ��� Z   � �������� H   � ��� C   � ���� n   � ���� 1   � ���
�� 
valL� o   � ����� 0 popupobject popupObject� o   � ����� 0 popupchoice popupChoice� r   � ���� m   � ��
� boovtrue� o      �~�~ 0 mustpick mustPick��  ��  � ��}� l  � ��|�{�z�|  �{  �z  �}  � ��� =  � ���� o   � ��y�y 0 selectcommand selectCommand� m   � ��� ���  b e g i n s W i t h� ��� k   �    Z   � ��x�w H   � � C   � � n   � �	 1   � ��v
�v 
valL	 o   � ��u�u 0 popupobject popupObject o   � ��t�t 0 popupchoice popupChoice r   � �

 m   � ��s
�s boovtrue o      �r�r 0 mustpick mustPick�x  �w   �q l   �p�o�n�p  �o  �n  �q  �  = 	 o  �m�m 0 selectcommand selectCommand m   �  e n d s W i t h �l k     Z  �k�j H   D   n   1  �i
�i 
valL o  �h�h 0 popupobject popupObject o  �g�g 0 popupchoice popupChoice r   m  �f
�f boovtrue o      �e�e 0 mustpick mustPick�k  �j    �d  l �c�b�a�c  �b  �a  �d  �l  �  �  � C = we can see the value without 'picking' the menu, so test it:   � �!! z   w e   c a n   s e e   t h e   v a l u e   w i t h o u t   ' p i c k i n g '   t h e   m e n u ,   s o   t e s t   i t :� "#" l %%�`�_�^�`  �_  �^  # $%$ Z  %�&'�]�\& o  %&�[�[ 0 mustpick mustPick' Z  )�()�Z�Y( > ),*+* o  )*�X�X 0 popupchoice popupChoice+ m  *+�W
�W 
null) k  /�,, -.- I /4�V/�U
�V .prcsclicnull��� ��� uiel/ o  /0�T�T 0 popupobject popupObject�U  . 010 Z  5�234�S2 = 5:565 o  56�R�R 0 selectcommand selectCommand6 m  6977 �88  i s3 I =Y�Q9�P
�Q .prcsclicnull��� ��� uiel9 l =U:�O�N: 6 =U;<; n  =H=>= 4 CH�M?
�M 
menI? m  FG�L�L > n  =C@A@ 4  >C�KB
�K 
menEB m  AB�J�J A o  =>�I�I 0 popupobject popupObject< = KTCDC 1  LP�H
�H 
pnamD o  QS�G�G 0 popupchoice popupChoice�O  �N  �P  4 EFE = \aGHG o  \]�F�F 0 selectcommand selectCommandH m  ]`II �JJ  c o n t a i n sF KLK k  d�MM NON I d��EP�D
�E .prcsclicnull��� ��� uielP l d|Q�C�BQ 6 d|RSR n  doTUT 4 jo�AV
�A 
menIV m  mn�@�@ U n  djWXW 4  ej�?Y
�? 
menEY m  hi�>�> X o  de�=�= 0 popupobject popupObjectS E  r{Z[Z 1  sw�<
�< 
pnam[ o  xz�;�; 0 popupchoice popupChoice�C  �B  �D  O \�:\ l ���9�8�7�9  �8  �7  �:  L ]^] = ��_`_ o  ���6�6 0 selectcommand selectCommand` m  ��aa �bb  b e g i n s W i t h^ cdc k  ��ee fgf I ���5h�4
�5 .prcsclicnull��� ��� uielh l ��i�3�2i 6 ��jkj n  ��lml 4 ���1n
�1 
menIn m  ���0�0 m n  ��opo 4  ���/q
�/ 
menEq m  ���.�. p o  ���-�- 0 popupobject popupObjectk C  ��rsr 1  ���,
�, 
pnams o  ���+�+ 0 popupchoice popupChoice�3  �2  �4  g t�*t l ���)�(�'�)  �(  �'  �*  d uvu = ��wxw o  ���&�& 0 selectcommand selectCommandx m  ��yy �zz  e n d s W i t hv {�%{ k  ��|| }~} I ���$�#
�$ .prcsclicnull��� ��� uiel l ����"�!� 6 ����� n  ����� 4 ��� �
�  
menI� m  ���� � n  ����� 4  ����
� 
menE� m  ���� � o  ���� 0 popupobject popupObject� D  ����� 1  ���
� 
pnam� o  ���� 0 popupchoice popupChoice�"  �!  �#  ~ ��� l ������  �  �  �  �%  �S  1 ��� l ������  �  �  �  �Z  �Y  �]  �\  % ��� l ������  �  �  � ��� L  ���� m  ���
� boovtrue� ��� l �����
�  �  �
  �  m R      �	��
�	 .ascrerr ****      � ****� o      �� 0 errmsg errMsg� ���
� 
errn� o      �� 0 errnum errNum�  n R  ����
� .ascrerr ****      � ****� b  ���� b  ���� b  ����� b  ����� b  ����� m  ���� ��� N C o u l d n ' t   s e l e c t   m e n u   i t e m   w h o s e   v a l u e   _� o  ���� 0 selectcommand selectCommand� m  ���� ���  _   '� o  ���� 0 popupchoice popupChoice� m  ��� ���  '   i n   p o p u p   -  � o  �� 0 errmsg errMsg� � ���
�  
errn� o  ������ 0 errnum errNum��  k�                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  ��   ��� l     ��������  ��  ��  � ��� i   l o��� I      �������  0 fmgui_popupset fmGUI_PopupSet� ��� o      ���� 0 popupobject popupObject� ���� o      ���� 0 popupchoice popupChoice��  ��  � k     *�� ��� l     ������  �   version 1.0   � ���    v e r s i o n   1 . 0� ��� l     ��������  ��  ��  � ���� w     *��� Q    *���� k    �� ��� l   ��������  ��  ��  � ��� I    ������� :0 fmgui_popup_selectbycommand fmGUI_Popup_SelectByCommand� ���� K    �� ������ 0 popupobject popupObject� o    ���� 0 popupobject popupObject� ������� 0 popupchoice popupChoice� o   	 
���� 0 popupchoice popupChoice��  ��  ��  � ��� L    �� 1    ��
�� 
rslt� ���� l   ��������  ��  ��  ��  � R      ����
�� .ascrerr ****      � ****� o      ���� 0 errmsg errMsg� �����
�� 
errn� o      ���� 0 errnum errNum��  � R    *����
�� .ascrerr ****      � ****� b   " )��� b   " '��� b   " %��� m   " #�� ��� " C o u l d n ' t   s e l e c t   '� o   # $���� 0 popupchoice popupChoice� m   % &�� ���  '   i n   p o p u p   -  � o   ' (���� 0 errmsg errMsg� �����
�� 
errn� o     !���� 0 errnum errNum��  ��                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  ��  � ��� l     ��������  ��  ��  � ��� i   p s��� I      ������� (0 fmgui_textfieldset fmGUI_TextFieldSet� ��� o      ���� "0 textfieldobject textfieldObject� ���� o      ����  0 textfieldvalue textfieldValue��  ��  � k     @�� ��� l     ������  �   version 1.0   � ���    v e r s i o n   1 . 0� ��� l     ��������  ��  ��  � ���� w     @��� Q    @���� k    ,�� ��� Z    '������� >   ��� o    ����  0 textfieldvalue textfieldValue� m    ��
�� 
null� Z    #� ��� >    n     1    ��
�� 
valL o    ���� "0 textfieldobject textfieldObject l   ���� o    ��  0 textfieldvalue textfieldValue��  ��    k     	 r    

 m    �
� boovtrue n       1    �
� 
focu o    �� "0 textfieldobject textfieldObject	 � r     o    ��  0 textfieldvalue textfieldValue n       1    �
� 
valL o    �� "0 textfieldobject textfieldObject�  ��   l  ! # L   ! # m   ! "�
� boovfals   did not need to change.    � 0   d i d   n o t   n e e d   t o   c h a n g e .��  ��  �  L   ( * m   ( )�
� boovtrue � l  + +����  �  �  �  � R      �
� .ascrerr ****      � **** o      �� 0 errmsg errMsg ��
� 
errn o      �� 0 errnum errNum�  � R   4 @� 
� .ascrerr ****      � **** b   8 ?!"! b   8 =#$# b   8 ;%&% m   8 9'' �(( " C o u l d n ' t   s e l e c t   '& o   9 :��  0 textfieldvalue textfieldValue$ m   ; <)) �** & '   f o r   t e x t   f i e l d   -  " o   = >�� 0 errmsg errMsg  �+�
� 
errn+ o   6 7�� 0 errnum errNum�  ��                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  ��  � ,-, l     ����  �  �  - ./. i   t w010 I      ���� (0 fmgui_appfrontmost fmGUI_AppFrontMost�  �  1 k     E22 343 l     �56�  5   version 1.1   6 �77    v e r s i o n   1 . 14 898 l     ����  �  �  9 :�: O     E;<; O    D=>= Z    C?@��? >   ABA 1    �
� 
pisfB m    �
� boovtrue@ k    ?CC DED r    FGF m    �
� boovtrueG 1    �
� 
pisfE HIH I   �J�
� .sysodelanull��� ��� nmbrJ m    �� �  I KLK l   ����  �  �  L MNM l   �OP�  O ) #close FMEmpower window if it's open   P �QQ F c l o s e   F M E m p o w e r   w i n d o w   i f   i t ' s   o p e nN R�R Z    ?ST��S =   'UVU n    %WXW 1   # %�
� 
pnamX 4    #�Y
� 
cwinY m   ! "�� V m   % &ZZ �[[ $ 2 e m p o w e r F M   T o o l b o xT k   * ;\\ ]^] I  * 5�_�
� .prcsclicnull��� ��� uiel_ n   * 1`a` 4   . 1�b
� 
butTb m   / 0�� a 4   * .�c
� 
cwinc m   , -�� �  ^ d�d I  6 ;�e�
� .sysodelanull��� ��� nmbre m   6 7�� �  �  �  �  �  �  �  > 4    �~f
�~ 
pcapf m    gg �hh , F i l e M a k e r   P r o   A d v a n c e d< m     ii�                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  �  / jkj l     �}�|�{�}  �|  �{  k lml i   x {non I      �z�y�x�z 00 fmgui_dataviewer_close fmGUI_DataViewer_Close�y  �x  o k     3pp qrq l     �wst�w  s   version 1.0   t �uu    v e r s i o n   1 . 0r vwv l     �v�u�t�v  �u  �t  w x�sx O     3yzy O    2{|{ k    1}} ~~ n   ��� I    �r�q�p�r (0 fmgui_appfrontmost fmGUI_AppFrontMost�q  �p  �  f     ��o� Q    1���n� I   (�m��l
�m .prcsclicnull��� ��� uiel� n    $��� 4   ! $�k�
�k 
butT� m   " #�j�j � l   !��i�h� 6   !��� 4   �g�
�g 
cwin� m    �f�f � =    ��� 1    �e
�e 
pnam� m    �� ���  D a t a   V i e w e r�i  �h  �l  � R      �d�c�b
�d .ascrerr ****      � ****�c  �b  �n  �o  | 4    �a�
�a 
pcap� m    �� ��� , F i l e M a k e r   P r o   A d v a n c e dz m     ���                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  �s  m ��� l     �`�_�^�`  �_  �^  � ��� i   | ��� I      �]�\�[�] .0 fmgui_inspector_close fmGUI_Inspector_Close�\  �[  � k     r�� ��� l     �Z���Z  �   version 1.0   � ���    v e r s i o n   1 . 0� ��� l     �Y�X�W�Y  �X  �W  � ��V� O     r��� O    q��� k    p�� ��� n   ��� I    �U�T�S�U (0 fmgui_appfrontmost fmGUI_AppFrontMost�T  �S  �  f    � ��� l   �R���R  � I C try the click twice in case the first only brings window to front.   � ��� �   t r y   t h e   c l i c k   t w i c e   i n   c a s e   t h e   f i r s t   o n l y   b r i n g s   w i n d o w   t o   f r o n t .� ��� Q    .���Q� r    %��� m    �P�P � n      ��� 1   " $�O
�O 
pidx� l   "��N�M� 6   "��� 4   �L�
�L 
cwin� m    �K�K � =   !��� 1    �J
�J 
pnam� m     �� ���  I n s p e c t o r�N  �M  � R      �I�H�G
�I .ascrerr ****      � ****�H  �G  �Q  � ��� Q   / O���F� I  2 F�E��D
�E .prcsclicnull��� ��� uiel� n   2 B��� 4   ? B�C�
�C 
butT� m   @ A�B�B � l  2 ?��A�@� 6  2 ?��� 4  2 6�?�
�? 
cwin� m   4 5�>�> � =  7 >��� 1   8 :�=
�= 
pnam� m   ; =�� ���  I n s p e c t o r�A  �@  �D  � R      �<�;�:
�< .ascrerr ****      � ****�;  �:  �F  � ��9� Q   P p���8� I  S g�7��6
�7 .prcsclicnull��� ��� uiel� n   S c��� 4   ` c�5�
�5 
butT� m   a b�4�4 � l  S `��3�2� 6  S `��� 4  S W�1�
�1 
cwin� m   U V�0�0 � =  X _��� 1   Y [�/
�/ 
pnam� m   \ ^�� ���  I n s p e c t o r�3  �2  �6  � R      �.�-�,
�. .ascrerr ****      � ****�-  �,  �8  �9  � 4    �+�
�+ 
pcap� m    �� ��� , F i l e M a k e r   P r o   A d v a n c e d� m     ���                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  �V  � ��� l     �*�)�(�*  �)  �(  � ��� i   � ���� I      �'�&�%�' 00 fmgui_inspector_ensure fmGUI_Inspector_Ensure�&  �%  � k     h�� ��� l     �$���$  �   version 1.1   � ���    v e r s i o n   1 . 1� ��� l     �#�"�!�#  �"  �!  � ��� Q     f���� k    R�� ��� I    � ���  20 fmgui_modeensure_layout fmGUI_ModeEnsure_Layout�  �  � ��� O   	 R��� O    Q��� k    P    l   ����  �  �    n    I    ���� (0 fmgui_appfrontmost fmGUI_AppFrontMost�  �    f      l   ����  �  �   	
	 Z    M�� H    , l   +�� I   +��
� .coredoexnull���     **** l   '�� 6   ' 4   �
� 
cwin m    �
�
  E    & 1     "�	
�	 
pnam m   # % �  I n s p e c t o r�  �  �  �  �   I  / I��
� .prcsclicnull��� ��� uiel l  / E�� 6  / E n   / < 4  9 <�
� 
menI m   : ;��  n   / 9  4   6 9�!
� 
menE! m   7 8��   n   / 6"#" 4   3 6� $
�  
mbri$ m   4 5%% �&&  V i e w# 4   / 3��'
�� 
mbar' m   1 2����  =  = D()( 1   > @��
�� 
pnam) m   A C** �++  I n s p e c t o r�  �  �  �  �  
 ,��, L   N P-- m   N O��
�� boovtrue��  � 4    ��.
�� 
pcap. m    // �00 , F i l e M a k e r   P r o   A d v a n c e d� m   	 
11�                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  �  � R      ��23
�� .ascrerr ****      � ****2 o      ���� 0 errmsg errMsg3 ��4��
�� 
errn4 o      ���� 0 errnum errNum��  � R   Z f��56
�� .ascrerr ****      � ****5 b   ` e787 m   ` c99 �:: 4 C o u l d n ' t   o p e n   I n s p e c t o r   -  8 o   c d���� 0 errmsg errMsg6 ��;��
�� 
errn; o   ^ _���� 0 errnum errNum��  � <��< l  g g��������  ��  ��  ��  � =>= l     ��������  ��  ��  > ?@? i   � �ABA I      �������� 20 fmgui_modeensure_browse fmGUI_ModeEnsure_Browse��  ��  B k     CC DED l     ��FG��  F   version 1.0   G �HH    v e r s i o n   1 . 0E IJI l     ��������  ��  ��  J KLK Q     MNOM k    PP QRQ I    	��S���� $0 fmgui_modeselect fmGUI_ModeSelectS T��T m    UU �VV  B r o w s e��  ��  R W��W l  
 
��������  ��  ��  ��  N R      ��XY
�� .ascrerr ****      � ****X o      ���� 0 errmsg errMsgY ��Z��
�� 
errnZ o      ���� 0 errnum errNum��  O R    ��[\
�� .ascrerr ****      � ****[ b    ]^] m    __ �`` B C o u l d n ' t   e n s u r e   i n   B r o w s e   M o d e   -  ^ o    ���� 0 errmsg errMsg\ ��a��
�� 
errna o    ���� 0 errnum errNum��  L bcb l   ��������  ��  ��  c d��d l   ��������  ��  ��  ��  @ efe l     ��������  ��  ��  f ghg i   � �iji I      �������� .0 fmgui_modeensure_find fmGUI_ModeEnsure_Find��  ��  j k     kk lml l     ��no��  n   version 1.0   o �pp    v e r s i o n   1 . 0m qrq l     ��������  ��  ��  r sts Q     uvwu k    xx yzy I    	�{�� $0 fmgui_modeselect fmGUI_ModeSelect{ |�| m    }} �~~  F i n d�  �  z � l  
 
����  �  �  �  v R      ���
� .ascrerr ****      � ****� o      �� 0 errmsg errMsg� ���
� 
errn� o      �� 0 errnum errNum�  w R    ���
� .ascrerr ****      � ****� b    ��� m    �� ��� B C o u l d n ' t   e n s u r e   i n   B r o w s e   M o d e   -  � o    �� 0 errmsg errMsg� ���
� 
errn� o    �� 0 errnum errNum�  t ��� l   ����  �  �  � ��� l   ����  �  �  �  h ��� l     ����  �  �  � ��� i   � ���� I      ���� 20 fmgui_modeensure_layout fmGUI_ModeEnsure_Layout�  �  � k     �� ��� l     ����  �   version 1.0   � ���    v e r s i o n   1 . 0� ��� l     ����  �  �  � ��� Q     ���� k    �� ��� I    	���� $0 fmgui_modeselect fmGUI_ModeSelect� ��� m    �� ���  L a y o u t�  �  � ��� l  
 
����  �  �  �  � R      ���
� .ascrerr ****      � ****� o      �� 0 errmsg errMsg� ���
� 
errn� o      �� 0 errnum errNum�  � R    ���
� .ascrerr ****      � ****� b    ��� m    �� ��� B C o u l d n ' t   e n s u r e   i n   B r o w s e   M o d e   -  � o    �� 0 errmsg errMsg� ���
� 
errn� o    �� 0 errnum errNum�  � ��� l   ����  �  �  �  � ��� l     ����  �  �  � ��� i   � ���� I      ���� $0 fmgui_modeselect fmGUI_ModeSelect� ��� o      �� 0 modetoselect modeToSelect�  �  � k     ��� ��� l     ����  �   version 1.0   � ���    v e r s i o n   1 . 0� ��� l     ���~�  �  �~  � ��}� Q     ����� O    r��� O    q��� k    p�� ��� n   ��� I    �|�{�z�| (0 fmgui_appfrontmost fmGUI_AppFrontMost�{  �z  �  f    � ��� n   ��� I    �y�x�w�y .0 fmgui_inspector_close fmGUI_Inspector_Close�x  �w  �  f    � ��� l   �v�u�t�v  �u  �t  � ��� l   �s���s  � @ : Need to click in upper-left corner of area before pasting   � ��� t   N e e d   t o   c l i c k   i n   u p p e r - l e f t   c o r n e r   o f   a r e a   b e f o r e   p a s t i n g� ��� r     ��� 4    �r�
�r 
cwin� m    �q�q � o      �p�p 0 
modewindow 
modeWindow� ��� r   ! 0��� 6  ! .��� n   ! %��� 4  " %�o�
�o 
sgrp� m   # $�n�n � o   ! "�m�m 0 
modewindow 
modeWindow� D   & -��� 1   ' )�l
�l 
desc� m   * ,�� ��� " M o d e   C o n t e n t   A r e a� o      �k�k "0 modecontentarea modeContentArea� ��� r   1 6��� n   1 4��� 1   2 4�j
�j 
desc� o   1 2�i�i "0 modecontentarea modeContentArea� o      �h�h *0 modecontentareadesc modeContentAreaDesc� ��� r   7 =��� n   7 ;��� 4  8 ;�g�
�g 
cwor� m   9 :�f�f � o   7 8�e�e *0 modecontentareadesc modeContentAreaDesc� o      �d�d 0 currentmode currentMode� ��� l  > >�c�b�a�c  �b  �a  � ��� Z   > k���`�_� >  > A   o   > ?�^�^ 0 currentmode currentMode o   ? @�]�] 0 modetoselect modeToSelect� k   D g  I  D I�\�[
�\ .sysodelanull��� ��� nmbr m   D E ?�      �[    r   J O	
	 b   J M o   J K�Z�Z 0 modetoselect modeToSelect m   K L � 
   M o d e
 o      �Y�Y 0 menuitemname menuItemName �X I  P g�W�V
�W .prcsclicnull��� ��� uiel l  P c�U�T n   P c 4   ^ c�S
�S 
menI o   a b�R�R 0 menuitemname menuItemName n   P ^ 4   Y ^�Q
�Q 
menE m   \ ]�P�P  n   P Y 4   T Y�O
�O 
mbri m   U X �  V i e w 4   P T�N
�N 
mbar m   R S�M�M �U  �T  �V  �X  �`  �_  �  l  l l�L�K�J�L  �K  �J    !  L   l n"" m   l m�I
�I boovtrue! #�H# l  o o�G�F�E�G  �F  �E  �H  � 4    �D$
�D 
pcap$ m   	 
%% �&& , F i l e M a k e r   P r o   A d v a n c e d� m    ''�                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  � R      �C()
�C .ascrerr ****      � ****( o      �B�B 0 errmsg errMsg) �A*�@
�A 
errn* o      �?�? 0 errnum errNum�@  � R   z ��>+,
�> .ascrerr ****      � ****+ b   � �-.- b   � �/0/ b   � �121 m   � �33 �44 2 C o u l d n ' t   s w i t c h   t o   m o d e   '2 o   � ��=�= 0 modetoselect modeToSelect0 m   � �55 �66  '   -  . o   � ��<�< 0 errmsg errMsg, �;7�:
�; 
errn7 o   ~ �9�9 0 errnum errNum�:  �}  � 898 l     �8�7�6�8  �7  �6  9 :;: i   � �<=< I      �5>�4�5 (0 fmgui_window_close fmGUI_Window_Close> ?�3? o      �2�2  0 somewindowname someWindowName�3  �4  = k     @@ ABA l     �1CD�1  C   version 1.1   D �EE    v e r s i o n   1 . 1B FGF l     �0�/�.�0  �/  �.  G HIH O     JKJ k    LL MNM l   �-�,�+�-  �,  �+  N OPO I   �*Q�)
�* .coreclosnull���    obj Q 4    �(R
�( 
cwinR o   
 �'�'  0 somewindowname someWindowName�)  P S�&S l   �%�$�#�%  �$  �#  �&  K 5     �"T�!
�" 
cappT m    UU �VV > c o m . f i l e m a k e r . c l i e n t . a d v a n c e d 1 2
�! kfrmID  I WXW l   � ���   �  �  X YZY L    [[ m    �
� boovtrueZ \�\ l   ����  �  �  �  ; ]^] l     ����  �  �  ^ _`_ i   � �aba I      �c�� "0 windowwaituntil windowWaitUntilc d�d o      �� 	0 prefs  �  �  b k    Cee fgf l     �hi�  h   version 1.2   i �jj    v e r s i o n   1 . 2g klk l     ����  �  �  l mnm r     opo K     qq �rs� 0 
windowname 
windowNamer m    �
� 
nulls �tu�  0 windownametest windowNameTestt m    vv �ww  c o n t a i n su �
xy�
 0 whichwindow whichWindowx m    zz �{{  a n yy �	|}�	 .0 waitcycledelayseconds waitCycleDelaySeconds| m    ~~ ?�      } ��� 0 waitcyclemax waitCycleMax m   	 
�� �  p o      �� 0 defaultprefs defaultPrefsn ��� r    ��� b    ��� o    �� 	0 prefs  � o    �� 0 defaultprefs defaultPrefs� o      �� 	0 prefs  � ��� l   �� ���  �   ��  � ��� r    ��� n    ��� o    ���� 0 
windowname 
windowName� o    ���� 	0 prefs  � o      ���� 0 
windowname 
windowName� ��� r     ��� n    ��� o    ����  0 windownametest windowNameTest� o    ���� 	0 prefs  � o      ����  0 windownametest windowNameTest� ��� r   ! &��� n   ! $��� o   " $���� 0 whichwindow whichWindow� o   ! "���� 	0 prefs  � o      ���� 0 whichwindow whichWindow� ��� l  ' '��������  ��  ��  � ��� r   ' *��� m   ' (��
�� boovfals� o      ���� 0 checkresult checkResult� ��� l  + +��������  ��  ��  � ��� U   +>��� k   59�� ��� O   5 ���� Z   9 ����� =  9 <��� o   9 :���� 0 whichwindow whichWindow� m   : ;�� ���  a n y� r   ? K��� n   ? I��� 1   E I��
�� 
pnam� n   ? E��� 2   C E��
�� 
cwin� 4   ? C���
�� 
pcap� m   A B�� ��� , F i l e M a k e r   P r o   A d v a n c e d� o      ���� "0 windownamecheck windowNameCheck� ��� =  N S��� o   N O���� 0 whichwindow whichWindow� m   O R�� ��� 
 f r o n t� ���� r   V e��� n   V c��� 1   _ c��
�� 
pnam� n   V _��� 4   \ _���
�� 
cwin� m   ] ^���� � 4   V \���
�� 
pcap� m   X [�� ��� , F i l e M a k e r   P r o   A d v a n c e d� o      ���� "0 windownamecheck windowNameCheck��  � l  h ���� k   h �� ��� r   h o��� c   h m��� o   h i���� 0 whichwindow whichWindow� m   i l��
�� 
nmbr� o      ���� 0 windowindex windowIndex� ���� r   p ��� n   p }��� 1   y }��
�� 
pnam� n   p y��� 4   v y���
�� 
cwin� o   w x���� 0 windowindex windowIndex� 4   p v���
�� 
pcap� m   r u�� ��� , F i l e M a k e r   P r o   A d v a n c e d� o      ���� "0 windownamecheck windowNameCheck��  � + % whichWindow  is window index number:   � ��� J   w h i c h W i n d o w     i s   w i n d o w   i n d e x   n u m b e r :� m   5 6���                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  � ��� l  � ���������  ��  ��  � ��� l  � ���������  ��  ��  � ��� Z   �%������ =  � ���� o   � �����  0 windownametest windowNameTest� m   � ��� ���  c o n t a i n s� k   � ��� ��� r   � ���� l  � ������� E   � ���� o   � ����� "0 windownamecheck windowNameCheck� o   � ����� 0 
windowname 
windowName��  ��  � o      ���� 0 checkresult checkResult� ���� l  � ���������  ��  ��  ��  � ��� =  � ���� o   � �����  0 windownametest windowNameTest� m   � ��� ���   d o e s   n o t   c o n t a i n�    k   � �  r   � � l  � ����� H   � � E   � �	
	 o   � ����� "0 windownamecheck windowNameCheck
 o   � ����� 0 
windowname 
windowName��  ��   o      ���� 0 checkresult checkResult �� l  � ���������  ��  ��  ��    =  � � o   � �����  0 windownametest windowNameTest m   � � �  e q u a l s  k   � �  r   � � l  � ����� =  � � o   � ����� "0 windownamecheck windowNameCheck o   � ����� 0 
windowname 
windowName��  ��   o      ���� 0 checkresult checkResult �� l  � ���������  ��  ��  ��    =  � �  o   � �����  0 windownametest windowNameTest  m   � �!! �""  i s #$# k   � �%% &'& r   � �()( l  � �*����* =  � �+,+ o   � ����� "0 windownamecheck windowNameCheck, o   � ����� 0 
windowname 
windowName��  ��  ) o      ���� 0 checkresult checkResult' -��- l  � ���������  ��  ��  ��  $ ./. =  � �010 o   � �����  0 windownametest windowNameTest1 m   � �22 �33  s t a r t s   w i t h/ 454 k   � �66 787 r   � �9:9 l  � �;����; C   � �<=< o   � ����� "0 windownamecheck windowNameCheck= o   � ����� 0 
windowname 
windowName��  ��  : o      ���� 0 checkresult checkResult8 >��> l  � ���������  ��  ��  ��  5 ?@? =  � �ABA o   � ���  0 windownametest windowNameTestB m   � �CC �DD & d o e s   n o t   s t a r t   w i t h@ EFE k   � �GG HIH r   � �JKJ l  � �L��L H   � �MM C   � �NON o   � ��� "0 windownamecheck windowNameCheckO o   � ��� 0 
windowname 
windowName�  �  K o      �� 0 checkresult checkResultI P�P l  � �����  �  �  �  F QRQ =  � �STS o   � ���  0 windownametest windowNameTestT m   � �UU �VV  e n d s   w i t hR WXW k   � �YY Z[Z r   � �\]\ l  � �^��^ D   � �_`_ o   � ��� "0 windownamecheck windowNameCheck` o   � ��� 0 
windowname 
windowName�  �  ] o      �� 0 checkresult checkResult[ a�a l  � �����  �  �  �  X bcb = ded o  ��  0 windownametest windowNameTeste m  ff �gg " d o e s   n o t   e n d   w i t hc hih r  	jkj l 	l��l H  	mm D  	non o  	
�� "0 windownamecheck windowNameChecko o  
�� 0 
windowname 
windowName�  �  k o      �� 0 checkresult checkResulti pqp = rsr o  ��  0 windownametest windowNameTests m  tt �uu  i s   n o tq v�v k  !ww xyx r  z{z l |��| > }~} o  �� "0 windownamecheck windowNameCheck~ o  �� 0 
windowname 
windowName�  �  { o      �� 0 checkresult checkResulty �~ l   �}�|�{�}  �|  �{  �~  �  ��  � ��� l &&�z�y�x�z  �y  �x  � ��� Z &/���w�v� o  &'�u�u 0 checkresult checkResult�  S  *+�w  �v  � ��� l 00�t�s�r�t  �s  �r  � ��� I 07�q��p
�q .sysodelanull��� ��� nmbr� n  03��� o  13�o�o .0 waitcycledelayseconds waitCycleDelaySeconds� o  01�n�n 	0 prefs  �p  � ��� l 88�m�l�k�m  �l  �k  � ��j� l 88�i�h�g�i  �h  �g  �j  � n   . 2��� o   / 1�f�f 0 waitcyclemax waitCycleMax� o   . /�e�e 	0 prefs  � ��� l ??�d�c�b�d  �c  �b  � ��� L  ?A�� o  ?@�a�a 0 checkresult checkResult� ��`� l BB�_�^�]�_  �^  �]  �`  ` ��� l     �\�[�Z�\  �[  �Z  � ��� i   � ���� I      �Y��X�Y 20 windowwaituntil_frontis windowWaitUntil_FrontIS� ��W� o      �V�V 	0 prefs  �W  �X  � k     �� ��� l     �U���U  �   version 1.0   � ���    v e r s i o n   1 . 0� ��� l     �T�S�R�T  �S  �R  � ��� r     ��� K     �� �Q���Q 0 
windowname 
windowName� m    �P
�P 
null� �O���O  0 windownametest windowNameTest� m    �� ���  i s� �N���N 0 whichwindow whichWindow� m    �� ��� 
 f r o n t� �M���M .0 waitcycledelayseconds waitCycleDelaySeconds� m    �� ?�������� �L��K�L 0 waitcyclemax waitCycleMax� m   	 
�J�J d�K  � o      �I�I 0 defaultprefs defaultPrefs� ��� r    ��� b    ��� o    �H�H 	0 prefs  � o    �G�G 0 defaultprefs defaultPrefs� o      �F�F 	0 prefs  � ��� l   �E�D�C�E  �D  �C  � ��� L    �� I    �B��A�B "0 windowwaituntil windowWaitUntil� ��@� o    �?�? 	0 prefs  �@  �A  � ��� l   �>�=�<�>  �=  �<  � ��;� l   �:�9�8�:  �9  �8  �;  � ��� l     �7�6�5�7  �6  �5  � ��� i   � ���� I      �4��3�4 0 sort  � ��2� o      �1�1 0 oldlist oldList�2  �3  � k     D�� ��� l     �0���0  �   version 1.0   � ���    v e r s i o n   1 . 0� ��� l     �/�.�-�/  �.  �-  � ��� r     ��� J     
�� ��� n    ��� 1    �,
�, 
txdl� 1     �+
�+ 
ascr� ��*� I   �)��(
�) .sysontocTEXT       shor� m    �'�' 
�(  �*  � J      �� ��� o      �&�& 0 od  � ��%� n     ��� 1    �$
�$ 
txdl� 1    �#
�# 
ascr�%  � ��� r    !��� c    ��� o    �"�" 0 oldlist oldList� m    �!
�! 
TEXT� o      � �  0 	textblock 	textBlock� ��� r   " /��� I  " -���
� .sysoexecTEXT���     TEXT� b   " )��� b   " '��� m   " #�� ��� 
 e c h o  � n   # &��� 1   $ &�
� 
strq� o   # $�� 0 	textblock 	textBlock� m   ' (�� �        |   s o r t�  � o      �� 0 sortedblock sortedBlock�     r   0 5    o   0 1�
� 
ret   n         1   2 4�
� 
txdl  1   1 2�
� 
ascr      r   6 ; 	 
 	 n   6 9    2   7 9�
� 
citm  o   6 7�� 0 sortedblock sortedBlock 
 o      �� 0 
sortedlist 
sortedList      r   < A    o   < =�� 0 od    n         1   > @�
� 
txdl  1   = >�
� 
ascr      l  B B����  �  �     �  L   B D   o   B C�� 0 
sortedlist 
sortedList�  �     l     ���
�  �  �
        i   � �    I      �	 ��	 0 
logconsole 
logConsole      o      �� 0 processname processName    �   o      �� 0 
consolemsg 
consoleMsg�  �    k     H ! !  " # " l     � $ %�   $   version 2.0    % � & &    v e r s i o n   2 . 0 #  ' ( ' l     ����  �  �   (  ) * ) r      + , + I     �  -���   0 coercetostring coerceToString -  .�� . o    ���� 0 
consolemsg 
consoleMsg��  ��   , o      ���� 0 
consolemsg 
consoleMsg *  / 0 / l  	  1 2 3 1 r   	  4 5 4 I   	 �� 6���� 0 replacesimple replaceSimple 6  7�� 7 J   
  8 8  9 : 9 o   
 ���� 0 
consolemsg 
consoleMsg :  ; < ; I   �� =��
�� .sysontocTEXT       shor = m    ����  ��   <  >�� > m     ? ? � @ @  ��  ��  ��   5 o      ���� 0 
consolemsg 
consoleMsg 2 %  ASCII 0 breaks shell scripting    3 � A A >   A S C I I   0   b r e a k s   s h e l l   s c r i p t i n g 0  B C B Z    ) D E���� D =    F G F n     H I H 1    ��
�� 
leng I o    ���� 0 
consolemsg 
consoleMsg G m    ����   E k   " % J J  K L K l  " "�� M N��   M H B we still want this function to log that an empty string was sent:    N � O O �   w e   s t i l l   w a n t   t h i s   f u n c t i o n   t o   l o g   t h a t   a n   e m p t y   s t r i n g   w a s   s e n t : L  P�� P r   " % Q R Q m   " # S S � T T  [ E M P T Y   S T R I N G ] R o      ���� 0 
consolemsg 
consoleMsg��  ��  ��   C  U V U r   * = W X W b   * ; Y Z Y b   * 7 [ \ [ b   * 5 ] ^ ] b   * 1 _ ` _ b   * / a b a b   * - c d c m   * + e e � f f  l o g g e r d 1   + ,��
�� 
spac b m   - . g g � h h  - t ` 1   / 0��
�� 
spac ^ n   1 4 i j i 1   2 4��
�� 
strq j o   1 2���� 0 processname processName \ 1   5 6��
�� 
spac Z n   7 : k l k 1   8 :��
�� 
strq l o   7 8���� 0 
consolemsg 
consoleMsg X o      ���� 0 shellcommand shellCommand V  m n m l  > >��������  ��  ��   n  o p o I  > C�� q��
�� .sysoexecTEXT���     TEXT q o   > ?���� 0 shellcommand shellCommand��   p  r s r L   D F t t o   D E���� 0 shellcommand shellCommand s  u�� u l  G G��������  ��  ��  ��     v w v l     ��������  ��  ��   w  x y x i   � � z { z I      �� |���� 0 loglevel logLEVEL |  } ~ } o      ���� 	0 level   ~  ��  o      ���� 0 somemsg someMsg��  ��   { k     4 � �  � � � l     �� � ���   �   version 1.0    � � � �    v e r s i o n   1 . 0 �  � � � l     ��������  ��  ��   �  � � � r      � � � m     ����  � o      ���� 0 	maxxcount 	maxXcount �  � � � r     � � � b     � � � o    	���� 0 
scriptname 
ScriptName � m   	 
 � � � � �  _ � o      ���� 0 logname logName �  � � � r     � � � [     � � � \     � � � o    ���� 0 	maxxcount 	maxXcount � o    ���� 	0 level   � m    ����  � o      ���� 0 xcount xCount �  � � � l   ��������  ��  ��   �  � � � Y    * ��� � �� � r     % � � � b     # � � � o     !�� 0 logname logName � m   ! " � � � � �  X � o      �� 0 logname logName�� 0 i   � m    ��  � o    �� 0 xcount xCount�   �  � � � l  + +����  �  �   �  � � � I   + 2� ��� 0 
logconsole 
logConsole �  � � � o   , -�� 0 logname logName �  �� � o   - .�� 0 somemsg someMsg�  �   �  �� � l  3 3����  �  �  �   y  � � � l     ����  �  �   �  � � � i   � � � � � I      � ��� 0 logmain logMAIN �  �� � o      �� 0 somemsg someMsg�  �   � k      � �  � � � l     � � ��   �   version 1.0    � � � �    v e r s i o n   1 . 0 �  � � � l     ����  �  �   �  �� � l     � � � � I     � ��� 0 loglevel logLEVEL �  � � � m    ��   �  �� � o    �� 0 somemsg someMsg�  �   �    log at highest importance    � � � � 4   l o g   a t   h i g h e s t   i m p o r t a n c e�   �  � � � l     ����  �  �   �  � � � i   � � � � � I      � ��� 0 clickatcoords clickAtCoords �  � � � o      �� 0 xclick xClick �  �� � o      �� 0 yclick yClick�  �   � k     0 � �  � � � l     � � ��   �   version 1.0    � � � �    v e r s i o n   1 . 0 �  � � � l     ����  �  �   �  � � � r     	 � � � I    � � �
� .sysorondlong        doub � o     �� 0 xclick xClick � � ��
� 
dire � m    �
� olierndD�   � o      �� 0 xclick xClick �  � � � r   
  � � � I  
 � � �
� .sysorondlong        doub � o   
 �� 0 yclick yClick � � ��
� 
dire � m    �
� olierndD�   � o      �� 0 yclick yClick �  � � � I   '� ��
� .sysoexecTEXT���     TEXT � b    # � � � b    ! � � � b     � � � b     � � � n     � � � 1    �
� 
strq � o    �� &0 clickcommandposix clickCommandPosix � m     � � � � �    - r   � o    �� 0 xclick xClick � 1     �
� 
spac � o   ! "�� 0 yclick yClick�   �  ��~ � L   ( 0 � � l  ( / ��}�| � b   ( / � � � b   ( - �!  � l  ( +!�{�z! c   ( +!!! o   ( )�y�y 0 xclick xClick! m   ) *�x
�x 
TEXT�{  �z  !  m   + ,!! �!!  , � o   - .�w�w 0 yclick yClick�}  �|  �~   � !!! l     �v�u�t�v  �u  �t  ! !!	! i   � �!
!!
 I      �s!�r�s *0 clickobjectbycoords clickObjectByCoords! !�q! o      �p�p 0 
someobject 
someObject�q  �r  ! k     M!! !!! l     �o!!�o  !   version 1.0   ! �!!    v e r s i o n   1 . 0! !!! l     �n�m�l�n  �m  �l  ! !!! w     '!!! k    '!! !!! r    !!! n    !! ! 1    �k
�k 
posn!  o    �j�j 0 
someobject 
someObject! J      !!!! !"!#!" o      �i�i 0 xcoord xCoord!# !$�h!$ o      �g�g 0 ycoord yCoord�h  ! !%�f!% r    '!&!'!& n    !(!)!( 1    �e
�e 
ptsz!) o    �d�d 0 
someobject 
someObject!' J      !*!* !+!,!+ o      �c�c 0 xsize xSize!, !-�b!- o      �a�a 0 ysize ySize�b  �f  !�                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  ! !.!/!. l  ( (�`�_�^�`  �_  �^  !/ !0!1!0 l  ( 5!2!3!4!2 r   ( 5!5!6!5 I  ( 3�]!7!8
�] .sysorondlong        doub!7 l  ( -!9�\�[!9 [   ( -!:!;!: o   ( )�Z�Z 0 xcoord xCoord!; ^   ) ,!<!=!< o   ) *�Y�Y 0 xsize xSize!= m   * +�X�X �\  �[  !8 �W!>�V
�W 
dire!> m   . /�U
�U olierndD�V  !6 o      �T�T 0 xclick xClick!3   middle   !4 �!?!?    m i d d l e!1 !@!A!@ l  6 C!B!C!D!B r   6 C!E!F!E I  6 A�S!G!H
�S .sysorondlong        doub!G l  6 ;!I�R�Q!I [   6 ;!J!K!J o   6 7�P�P 0 ycoord yCoord!K ^   7 :!L!M!L o   7 8�O�O 0 ysize ySize!M m   8 9�N�N �R  �Q  !H �M!N�L
�M 
dire!N m   < =�K
�K olierndD�L  !F o      �J�J 0 yclick yClick!C   middle   !D �!O!O    m i d d l e!A !P!Q!P l  D D�I�H�G�I  �H  �G  !Q !R!S!R I   D K�F!T�E�F 0 clickatcoords clickAtCoords!T !U!V!U o   E F�D�D 0 xclick xClick!V !W�C!W o   F G�B�B 0 yclick yClick�C  �E  !S !X�A!X l  L L�@�?�>�@  �?  �>  �A  !	 !Y!Z!Y l     �=�<�;�=  �<  �;  !Z ![!\![ i   � �!]!^!] I      �:!_�9�:  0 coercetostring coerceToString!_ !`�8!` o      �7�7  0 incomingobject incomingObject�8  �9  !^ k    �!a!a !b!c!b l     �6!d!e�6  !d   version 2.2   !e �!f!f    v e r s i o n   2 . 2!c !g!h!g l     �5�4�3�5  �4  �3  !h !i�2!i Z    �!j!k!l!m!j =    !n!o!n n     !p!q!p m    �1
�1 
pcls!q o     �0�0  0 incomingobject incomingObject!o m    �/
�/ 
TEXT!k k    !r!r !s!t!s r    !u!v!u l   !w�.�-!w c    !x!y!x o    	�,�,  0 incomingobject incomingObject!y m   	 
�+
�+ 
TEXT�.  �-  !v K      !z!z �*!{�)
�* 
ctxt!{ o      �(�(  0 incomingobject incomingObject�)  !t !|�'!| L    !}!} o    �&�&  0 incomingobject incomingObject�'  !l !~!!~ =   !�!�!� n    !�!�!� m    �%
�% 
pcls!� o    �$�$  0 incomingobject incomingObject!� m    �#
�# 
long! !�!�!� k     /!�!� !�!�!� r     *!�!�!� l    #!��"�!!� c     #!�!�!� o     !� �   0 incomingobject incomingObject!� m   ! "�
� 
TEXT�"  �!  !� K      !�!� �!��
� 
ctxt!� o      ��  0 incomingobject incomingObject�  !� !��!� L   + /!�!� c   + .!�!�!� o   + ,��  0 incomingobject incomingObject!� m   , -�
� 
TEXT�  !� !�!�!� =  2 7!�!�!� n   2 5!�!�!� m   3 5�
� 
pcls!� o   2 3��  0 incomingobject incomingObject!� m   5 6�
� 
doub!� !�!�!� k   : I!�!� !�!�!� r   : D!�!�!� l  : =!���!� c   : =!�!�!� o   : ;��  0 incomingobject incomingObject!� m   ; <�
� 
TEXT�  �  !� K      !�!� �!��
� 
ctxt!� o      ��  0 incomingobject incomingObject�  !� !��!� L   E I!�!� c   E H!�!�!� o   E F��  0 incomingobject incomingObject!� m   F G�
� 
TEXT�  !� !�!�!� =  L Q!�!�!� n   L O!�!�!� m   M O�
� 
pcls!� o   L M�
�
  0 incomingobject incomingObject!� m   O P�	
�	 
utxt!� !��!� k   T c!�!� !�!�!� r   T ^!�!�!� l  T W!���!� c   T W!�!�!� o   T U��  0 incomingobject incomingObject!� m   U V�
� 
TEXT�  �  !� K      !�!� �!��
� 
ctxt!� o      ��  0 incomingobject incomingObject�  !� !�� !� L   _ c!�!� c   _ b!�!�!� o   _ `����  0 incomingobject incomingObject!� m   ` a��
�� 
TEXT�   �  !m k   f�!�!� !�!�!� l  f f��!�!���  !� , & LIST, RECORD, styled text, or unknown   !� �!�!� L   L I S T ,   R E C O R D ,   s t y l e d   t e x t ,   o r   u n k n o w n!� !�!�!� Q   f~!�!�!�!� k   i �!�!� !�!�!� Q   i �!�!�!�!� k   l s!�!� !�!�!� r   l q!�!�!� m   l m!�!� �!�!� ` s o m e _ U U I D _ V a l u e _ 5 4 F 8 2 7 C 7 3 7 9 E 4 0 7 3 B 5 A 2 1 6 B B 9 C D E 5 7 5 D!� n      !�!�!� o   n p���� j0 3some_uuid_property_54f827c7379e4073b5a216bb9cde575d 3some_UUID_Property_54F827C7379E4073B5A216BB9CDE575D!� m   m n!�!� �!�!�  X X X X!� !�!�!� l  r r��������  ��  ��  !� !�!�!� l  r r��!�!���  !� V P GENERATE the error message for a known 'object' (here, a string) so we can get    !� �!�!� �   G E N E R A T E   t h e   e r r o r   m e s s a g e   f o r   a   k n o w n   ' o b j e c t '   ( h e r e ,   a   s t r i n g )   s o   w e   c a n   g e t  !� !���!� l  r r��!�!���  !� 7 1 the 'lead' and 'trail' part of the error message   !� �!�!� b   t h e   ' l e a d '   a n d   ' t r a i l '   p a r t   o f   t h e   e r r o r   m e s s a g e��  !� R      ��!�!�
�� .ascrerr ****      � ****!� o      ���� 0 errmsg errMsg!� ��!���
�� 
errn!� o      ���� 0 errnum errNum��  !� k   { �!�!� !�!�!� r   { �!�!�!� J   { �!�!� !�!�!� n  { ~!�!�!� 1   | ~��
�� 
txdl!� 1   { |��
�� 
ascr!� !���!� J   ~ �!�!� !���!� m   ~ !�!� �!�!�  " X X X X "��  ��  !� J      !�!� !�!�!� o      ���� 0 	olddelims 	oldDelims!� !���!� n     !�!�!� 1   � ���
�� 
txdl!� 1   � ���
�� 
ascr��  !� !�!�!� r   � �" ""  n   � �""" 2  � ���
�� 
citm" o   � ����� 0 errmsg errMsg" J      "" """ o      ���� 0 
errmsglead 
errMsgLead" "��" o      ���� 0 errmsgtrail errMsgTrail��  !� "��" r   � �"	"
"	 o   � ����� 0 	olddelims 	oldDelims"
 n     """ 1   � ���
�� 
txdl" 1   � ���
�� 
ascr��  !� """ l  � ���������  ��  ��  " """ l  � ���""��  " = 7 now, generate error message for the SPECIFIED object:    " �"" n   n o w ,   g e n e r a t e   e r r o r   m e s s a g e   f o r   t h e   S P E C I F I E D   o b j e c t :  " """ r   � �""" m   � �"" �"" ` s o m e _ U U I D _ V a l u e _ 5 4 F 8 2 7 C 7 3 7 9 E 4 0 7 3 B 5 A 2 1 6 B B 9 C D E 5 7 5 D" n      """ o   � ����� j0 3some_uuid_property_54f827c7379e4073b5a216bb9cde575d 3some_UUID_Property_54F827C7379E4073B5A216BB9CDE575D" o   � �����  0 incomingobject incomingObject" """ l  � ���������  ��  ��  " "��" l  � ���������  ��  ��  ��  !� R      ��"��
�� .ascrerr ****      � ****" o      ���� 0 errmsg errMsg��  !� Z   �~" "!��"""  F   � �"#"$"# C   � �"%"&"% o   � ����� 0 errmsg errMsg"& m   � �"'"' �"("( � S y s t e m   E v e n t s   g o t   a n   e r r o r :   C a n  t   m a k e   s o m e _ U U I D _ P r o p e r t y _ 5 4 F 8 2 7 C 7 3 7 9 E 4 0 7 3 B 5 A 2 1 6 B B 9 C D E 5 7 5 D   o f  "$ D   � �")"*") o   � ����� 0 errmsg errMsg"* m   � �"+"+ �",", ( i n t o   t y p e   s p e c i f i e r ."! k   �"-"- "."/". r   � �"0"1"0 m   � �"2"2 �"3"3 � S y s t e m   E v e n t s   g o t   a n   e r r o r :   C a n  t   m a k e   s o m e _ U U I D _ P r o p e r t y _ 5 4 F 8 2 7 C 7 3 7 9 E 4 0 7 3 B 5 A 2 1 6 B B 9 C D E 5 7 5 D   o f  "1 o      ���� 0 
errmsglead 
errMsgLead"/ "4"5"4 r   � �"6"7"6 m   � �"8"8 �"9"9 *   i n t o   t y p e   s p e c i f i e r ."7 o      ���� 0 errmsgtrail errMsgTrail"5 ":";": l  � ���������  ��  ��  "; "<"="< r   � �">"?"> J   � �"@"@ "A"B"A n  � �"C"D"C 1   � ���
�� 
txdl"D 1   � ���
�� 
ascr"B "E��"E o   � ����� 0 
errmsglead 
errMsgLead��  "? J      "F"F "G"H"G o      ���� 0 od  "H "I��"I n     "J"K"J 1   � ���
�� 
txdl"K 1   � ���
�� 
ascr��  "= "L"M"L l  � �����  �  �  "M "N"O"N r   � �"P"Q"P n   � �"R"S"R 4   � ��"T
� 
citm"T m   � ��� "S o   � ��� 0 errmsg errMsg"Q o      �� 0 objectstring objectString"O "U"V"U r   �"W"X"W o   � ��� 0 errmsgtrail errMsgTrail"X n     "Y"Z"Y 1   �
� 
txdl"Z 1   � �
� 
ascr"V "["\"[ l ����  �  �  "\ "]"^"] r  
"_"`"_ n  "a"b"a 4  �"c
� 
citm"c m  �� "b o  �� 0 objectstring objectString"` o      �� 0 objectstring objectString"^ "d"e"d r  "f"g"f o  �� 0 od  "g n     "h"i"h 1  �
� 
txdl"i 1  �
� 
ascr"e "j"k"j l ����  �  �  "k "l"m"l l ����  �  �  "m "n�"n l ����  �  �  �  ��  "" k  ~"o"o "p"q"p l �"r"s�  "r  tell me to log errMsg   "s �"t"t * t e l l   m e   t o   l o g   e r r M s g"q "u"v"u r  "w"x"w o  �� 0 errmsg errMsg"x o      �� 0 objectstring objectString"v "y"z"y l ����  �  �  "z "{"|"{ Z  G"}"~��"} E  ""�" o  �� 0 objectstring objectString"� o  �� 0 
errmsglead 
errMsgLead"~ k  C"�"� "�"�"� r  6"�"�"� J  %"�"� "�"�"� n ""�"�"� 1   "�
� 
txdl"� 1   �
� 
ascr"� "��"� o  "#�� 0 
errmsglead 
errMsgLead�  "� J      "�"� "�"�"� o      �� 0 od  "� "��"� n     "�"�"� 1  24�
� 
txdl"� 1  12�
� 
ascr�  "� "�"�"� r  7="�"�"� n  7;"�"�"� 4  8;�"�
� 
citm"� m  9:�� "� o  78�� 0 objectstring objectString"� o      �� 0 objectstring objectString"� "��"� r  >C"�"�"� o  >?�� 0 od  "� n     "�"�"� 1  @B�
� 
txdl"� 1  ?@�
� 
ascr�  �  �  "| "�"�"� l HH����  �  �  "� "�"�"� Z  H|"�"���"� E  HK"�"�"� o  HI�� 0 objectstring objectString"� o  IJ�� 0 errmsgtrail errMsgTrail"� k  Nx"�"� "�"�"� r  Ne"�"�"� J  NT"�"� "�"�"� n NQ"�"�"� 1  OQ�
� 
txdl"� 1  NO�
� 
ascr"� "��~"� o  QR�}�} 0 errmsgtrail errMsgTrail�~  "� J      "�"� "�"�"� o      �|�| 0 od  "� "��{"� n     "�"�"� 1  ac�z
�z 
txdl"� 1  `a�y
�y 
ascr�{  "� "�"�"� r  fk"�"�"� o  fg�x�x 0 errmsgtrail errMsgTrail"� n     "�"�"� 1  hj�w
�w 
txdl"� 1  gh�v
�v 
ascr"� "�"�"� r  lr"�"�"� n  lp"�"�"� 4  mp�u"�
�u 
citm"� m  no�t�t "� o  lm�s�s 0 objectstring objectString"� o      �r�r 0 objectstring objectString"� "��q"� r  sx"�"�"� o  st�p�p 0 od  "� n     "�"�"� 1  uw�o
�o 
txdl"� 1  tu�n
�n 
ascr�q  �  �  "� "�"�"� l }}�m�l�k�m  �l  �k  "� "��j"� l }}�i"�"��i  "� O Iset {text:objectString} to (objectString as string) -- what does THIS do?   "� �"�"� � s e t   { t e x t : o b j e c t S t r i n g }   t o   ( o b j e c t S t r i n g   a s   s t r i n g )   - -   w h a t   d o e s   T H I S   d o ?�j  !� "�"�"� l �h�g�f�h  �g  �f  "� "��e"� L  �"�"� o  ��d�d 0 objectstring objectString�e  �2  !\ "�"�"� l     �c�b�a�c  �b  �a  "� "�"�"� i   � �"�"�"� I      �`"��_�` 0 gettextbefore getTextBefore"� "�"�"� o      �^�^ 0 
sourcetext 
sourceTEXT"� "��]"� o      �\�\ 0 stophere stopHere�]  �_  "� k     Q"�"� "�"�"� l     �["�"��[  "�   version 1.1   "� �"�"�    v e r s i o n   1 . 1"� "�"�"� l     �Z�Y�X�Z  �Y  �X  "� "��W"� Q     Q"�"�"�"� k    A"�"� "�"�"� r    "�"�"� J    	"�"� "�"�"� n   "�"�"� 1    �V
�V 
txdl"� 1    �U
�U 
ascr"� "��T"� o    �S�S 0 stophere stopHere�T  "� J      "�"� "�"�"� o      �R�R 0 	olddelims 	oldDelims"� "��Q"� n     "�"�"� 1    �P
�P 
txdl"� 1    �O
�O 
ascr�Q  "� "�"�"� Z    8"�"��N"�"� =   $"�# "� l   "#�M�L# I   "�K#�J
�K .corecnte****       ****# n    ### 2   �I
�I 
citm# o    �H�H 0 
sourcetext 
sourceTEXT�J  �M  �L  #  m   " #�G�G "� k   ' /## ### r   ' ,##	# o   ' (�F�F 0 	olddelims 	oldDelims#	 n     #
##
 1   ) +�E
�E 
txdl# 1   ( )�D
�D 
ascr# #�C# L   - /## m   - .## �##  �C  �N  "� r   2 8### n   2 6### 4   3 6�B#
�B 
citm# m   4 5�A�A # o   2 3�@�@ 0 
sourcetext 
sourceTEXT# l     #�?�># o      �=�= 0 finalresult finalResult�?  �>  "� ### r   9 >### o   9 :�<�< 0 	olddelims 	oldDelims# n     ### 1   ; =�;
�; 
txdl# 1   : ;�:
�: 
ascr# #�9# L   ? A## o   ? @�8�8 0 finalresult finalResult�9  "� R      �7##
�7 .ascrerr ****      � ****# o      �6�6 0 errmsg errMsg# �5# �4
�5 
errn#  o      �3�3 0 errnum errNum�4  "� k   I Q#!#! #"###" r   I N#$#%#$ o   I J�2�2 0 	olddelims 	oldDelims#% n     #&#'#& 1   K M�1
�1 
txdl#' 1   J K�0
�0 
ascr## #(�/#( l  O Q#)#*#+#) L   O Q#,#, m   O P#-#- �#.#.  #* 3 - return nothing if the stop text is not found   #+ �#/#/ Z   r e t u r n   n o t h i n g   i f   t h e   s t o p   t e x t   i s   n o t   f o u n d�/  �W  "� #0#1#0 l     �.�-�,�.  �-  �,  #1 #2#3#2 i   � �#4#5#4 I      �+#6�*�+  0 gettextbetween getTextBetween#6 #7�)#7 o      �(�( 	0 prefs  �)  �*  #5 k     �#8#8 #9#:#9 l     �'#;#<�'  #;   version 1.6   #< �#=#=    v e r s i o n   1 . 6#: #>#?#> l     �&�%�$�&  �%  �$  #? #@#A#@ r     #B#C#B K     #D#D �##E#F�# 0 textitemnum textItemNum#E m    �"�" #F �!#G� �!  0 includemarkers includeMarkers#G m    �
� boovfals�   #C o      �� 0 defaultprefs defaultPrefs#A #H#I#H l  	 	����  �  �  #I #J#K#J Z   	 '#L#M��#L F   	 #N#O#N l  	 #P��#P >  	 #Q#R#Q n   	 #S#T#S m   
 �
� 
pcls#T o   	 
�� 	0 prefs  #R m    �
� 
list�  �  #O l   #U��#U >   #V#W#V c    #X#Y#X l   #Z��#Z n    #[#\#[ m    �
� 
pcls#\ o    �� 	0 prefs  �  �  #Y m    �
� 
TEXT#W m    #]#] �#^#^  r e c o r d�  �  #M R    #�#_#`
� .ascrerr ****      � ****#_ m   ! "#a#a �#b#b g e t T e x t B e t w e e n   F A I L E D :   p a r a m e t e r   s h o u l d   b e   a   r e c o r d   o r   l i s t .   I f   i t   i s   m u l t i p l e   i t e m s ,   j u s t   m a k e   i t   i n t o   a   l i s t   t o   u p g r a d e   t o   t h i s   h a n d l e r .#` �#c�

� 
errn#c m     �	�	 �
  �  �  #K #d#e#d Z   ( `#f#g��#f =  ( -#h#i#h n   ( +#j#k#j m   ) +�
� 
pcls#k o   ( )�� 	0 prefs  #i m   + ,�
� 
list#g k   0 \#l#l #m#n#m Z   0 F#o#p��#o =  0 7#q#r#q l  0 5#s�� #s I  0 5��#t��
�� .corecnte****       ****#t o   0 1���� 	0 prefs  ��  �  �   #r m   5 6���� #p r   : B#u#v#u n   : >#w#x#w 4   ; >��#y
�� 
cobj#y m   < =���� #x o   : ;���� 	0 prefs  #v n      #z#{#z o   ? A���� 0 textitemnum textItemNum#{ o   > ?���� 0 defaultprefs defaultPrefs�  �  #n #|��#| r   G \#}#~#} K   G Z## ��#�#��� 0 
sourcetext 
sourceTEXT#� n   H L#�#�#� 4   I L��#�
�� 
cobj#� m   J K���� #� o   H I���� 	0 prefs  #� ��#�#��� 0 
beforetext 
beforeText#� n   M Q#�#�#� 4   N Q��#�
�� 
cobj#� m   O P���� #� o   M N���� 	0 prefs  #� ��#����� 0 	aftertext 	afterText#� n   R V#�#�#� 4   S V��#�
�� 
cobj#� m   T U���� #� o   R S���� 	0 prefs  ��  #~ o      ���� 	0 prefs  ��  �  �  #e #�#�#� l  a f#�#�#�#� r   a f#�#�#� b   a d#�#�#� o   a b���� 	0 prefs  #� o   b c���� 0 defaultprefs defaultPrefs#� o      ���� 	0 prefs  #� , & add on default preferences, if needed   #� �#�#� L   a d d   o n   d e f a u l t   p r e f e r e n c e s ,   i f   n e e d e d#� #�#�#� r   g l#�#�#� n   g j#�#�#� o   h j���� 0 
sourcetext 
sourceTEXT#� o   g h���� 	0 prefs  #� o      ���� 0 
sourcetext 
sourceTEXT#� #�#�#� r   m r#�#�#� n   m p#�#�#� o   n p���� 0 
beforetext 
beforeText#� o   m n���� 	0 prefs  #� o      ���� 0 
beforetext 
beforeText#� #�#�#� r   s x#�#�#� n   s v#�#�#� o   t v���� 0 	aftertext 	afterText#� o   s t���� 	0 prefs  #� o      ���� 0 	aftertext 	afterText#� #�#�#� r   y ~#�#�#� n   y |#�#�#� o   z |���� 0 textitemnum textItemNum#� o   y z���� 	0 prefs  #� o      ���� 0 textitemnum textItemNum#� #�#�#� r    �#�#�#� n    �#�#�#� o   � �����  0 includemarkers includeMarkers#� o    ����� 	0 prefs  #� o      ����  0 includemarkers includeMarkers#� #�#�#� l  � ���������  ��  ��  #� #�#�#� Q   � �#�#�#�#� k   � �#�#� #�#�#� r   � �#�#�#� J   � �#�#� #�#�#� n  � �#�#�#� 1   � ���
�� 
txdl#� 1   � ���
�� 
ascr#� #���#� o   � ����� 0 
beforetext 
beforeText��  #� J      #�#� #�#�#� o      ���� 0 	olddelims 	oldDelims#� #���#� n     #�#�#� 1   � ���
�� 
txdl#� 1   � ���
�� 
ascr��  #� #�#�#� r   � �#�#�#� n   � �#�#�#� 4   � ���#�
�� 
citm#� o   � ����� 0 textitemnum textItemNum#� o   � ����� 0 
sourcetext 
sourceTEXT#� l     #�����#� o      ���� 0 prefixremoved prefixRemoved��  ��  #� #�#�#� r   � �#�#�#� o   � ����� 0 	aftertext 	afterText#� n     #�#�#� 1   � ���
�� 
txdl#� 1   � ���
�� 
ascr#� #�#�#� r   � �#�#�#� n   � �#�#�#� 4   � ���#�
�� 
citm#� m   � ����� #� o   � ��� 0 prefixremoved prefixRemoved#� l     #���#� o      �� 0 finalresult finalResult�  �  #� #�#�#� r   � �#�#�#� o   � ��� 0 	olddelims 	oldDelims#� n     #�#�#� 1   � ��
� 
txdl#� 1   � ��
� 
ascr#� #�#�#� l  � �����  �  �  #� #�#�#� Z  � �#�#���#� o   � ���  0 includemarkers includeMarkers#� r   � �#�#�#� b   � �#�#�#� b   � �#�#�#� o   � ��� 0 
beforetext 
beforeText#� o   � ��� 0 finalresult finalResult#� o   � ��� 0 	aftertext 	afterText#� o      �� 0 finalresult finalResult�  �  #� #��#� l  � �����  �  �  �  #� R      �#�#�
� .ascrerr ****      � ****#� o      �� 0 errmsg errMsg#� �#��
� 
errn#� o      �� 0 errnum errNum�  #� k   � �#�#� #�#�#� r   � �#�#�#� o   � ��� 0 	olddelims 	oldDelims#� n     #�$ #� 1   � ��
� 
txdl$  1   � ��
� 
ascr#� $$$ l  � ��$$�  $ > 8 	tell me to log "Error in getTextBetween() : " & errMsg   $ �$$ p   	 t e l l   m e   t o   l o g   " E r r o r   i n   g e t T e x t B e t w e e n ( )   :   "   &   e r r M s g$ $�$ l  � �$$$	$ r   � �$
$$
 m   � �$$ �$$  $ l     $��$ o      �� 0 finalresult finalResult�  �  $ : 4 return nothing if the surrounding text is not found   $	 �$$ h   r e t u r n   n o t h i n g   i f   t h e   s u r r o u n d i n g   t e x t   i s   n o t   f o u n d�  #� $$$ l  � �����  �  �  $ $$$ l  � �����  �  �  $ $$$ L   � �$$ o   � ��� 0 finalresult finalResult$ $�$ l  � �����  �  �  �  #3 $$$ l     ����  �  �  $ $$$ i   � �$$$ I      �$�� 0 
parsechars 
parseChars$ $�$ o      �� 	0 prefs  �  �  $ k     �$ $  $!$"$! l     �$#$$�  $#   version 1.3   $$ �$%$%    v e r s i o n   1 . 3$" $&$'$& l     ����  �  �  $' $($)$( r     $*$+$* K     $,$, �$-�� 0 considercase considerCase$- m    �
� boovtrue�  $+ o      �� 0 defaultprefs defaultPrefs$) $.$/$. l   ����  �  �  $/ $0$1$0 l   ���~�  �  �~  $1 $2$3$2 Z    [$4$5$6�}$4 =   $7$8$7 n    
$9$:$9 m    
�|
�| 
pcls$: o    �{�{ 	0 prefs  $8 m   
 �z
�z 
list$5 k    ?$;$; $<$=$< Z    =$>$?�y$@$> ?   $A$B$A l   $C�x�w$C I   �v$D�u
�v .corecnte****       ****$D o    �t�t 	0 prefs  �u  �x  �w  $B m    �s�s $? k    ,$E$E $F$G$F l   �r$H$I�r  $H - ' get any parameters after the initial 3   $I �$J$J N   g e t   a n y   p a r a m e t e r s   a f t e r   t h e   i n i t i a l   3$G $K�q$K r    ,$L$M$L K    *$N$N �p$O$P�p 0 
sourcetext 
sourceTEXT$O n    $Q$R$Q 4    �o$S
�o 
cobj$S m    �n�n $R o    �m�m 	0 prefs  $P �l$T$U�l 0 parsestring parseString$T n    #$V$W$V 4     #�k$X
�k 
cobj$X m   ! "�j�j $W o     �i�i 	0 prefs  $U �h$Y�g�h 0 considercase considerCase$Y n   $ ($Z$[$Z 4   % (�f$\
�f 
cobj$\ m   & '�e�e $[ o   $ %�d�d 	0 prefs  �g  $M o      �c�c 	0 prefs  �q  �y  $@ r   / =$]$^$] K   / ;$_$_ �b$`$a�b 0 
sourcetext 
sourceTEXT$` n   0 4$b$c$b 4   1 4�a$d
�a 
cobj$d m   2 3�`�` $c o   0 1�_�_ 	0 prefs  $a �^$e�]�^ 0 parsestring parseString$e n   5 9$f$g$f 4   6 9�\$h
�\ 
cobj$h m   7 8�[�[ $g o   5 6�Z�Z 	0 prefs  �]  $^ o      �Y�Y 	0 prefs  $= $i�X$i l  > >�W�V�U�W  �V  �U  �X  $6 $j$k$j >  B L$l$m$l n   B E$n$o$n m   C E�T
�T 
pcls$o o   B C�S�S 	0 prefs  $m l  E K$p�R�Q$p n   E K$q$r$q m   I K�P
�P 
pcls$r K   E I$s$s �O$t�N�O 0 somekey someKey$t m   F G�M�M �N  �R  �Q  $k $u�L$u k   O W$v$v $w$x$w l  O O�K$y$z�K  $y x r Test by matching class to something that IS a record to avoid FileMaker namespace conflict with the term "record"   $z �${${ �   T e s t   b y   m a t c h i n g   c l a s s   t o   s o m e t h i n g   t h a t   I S   a   r e c o r d   t o   a v o i d   F i l e M a k e r   n a m e s p a c e   c o n f l i c t   w i t h   t h e   t e r m   " r e c o r d "$x $|$}$| l  O O�J�I�H�J  �I  �H  $} $~$$~ R   O U�G$�$�
�G .ascrerr ****      � ****$� m   S T$�$� �$�$�> T h e   p a r a m e t e r   f o r   ' p a r s e C h a r s ( ) '   s h o u l d   b e   a   r e c o r d   o r   a t   l e a s t   a   l i s t .   W r a p   t h e   p a r a m e t e r ( s )   i n   c u r l y   b r a c k e t s   f o r   e a s y   u p g r a d e   t o   ' p a r s e C h a r s ( )   v e r s i o n   1 . 3 .  $� �F$��E
�F 
errn$� m   Q R�D�D �E  $ $��C$� l  V V�B�A�@�B  �A  �@  �C  �L  �}  $3 $�$�$� l  \ \�?�>�=�?  �>  �=  $� $�$�$� l  \ \�<�;�:�<  �;  �:  $� $�$�$� r   \ a$�$�$� b   \ _$�$�$� o   \ ]�9�9 	0 prefs  $� o   ] ^�8�8 0 defaultprefs defaultPrefs$� o      �7�7 	0 prefs  $� $�$�$� l  b b�6�5�4�6  �5  �4  $� $�$�$� l  b b�3�2�1�3  �2  �1  $� $�$�$� r   b g$�$�$� n   b e$�$�$� o   c e�0�0 0 
sourcetext 
sourceTEXT$� o   b c�/�/ 	0 prefs  $� o      �.�. 0 
sourcetext 
sourceTEXT$� $�$�$� r   h m$�$�$� n   h k$�$�$� o   i k�-�- 0 parsestring parseString$� o   h i�,�, 	0 prefs  $� o      �+�+ 0 parsestring parseString$� $�$�$� r   n s$�$�$� n   n q$�$�$� o   o q�*�* 0 considercase considerCase$� o   n o�)�) 	0 prefs  $� o      �(�( 0 considercase considerCase$� $�$�$� l  t t�'�&�%�'  �&  �%  $� $�$�$� l  t t�$�#�"�$  �#  �"  $� $�$�$� r   t y$�$�$� n  t w$�$�$� 1   u w�!
�! 
txdl$� 1   t u� 
�  
ascr$� o      �� 0 	olddelims 	oldDelims$� $��$� Q   z �$�$�$�$� k   } �$�$� $�$�$� r   } �$�$�$� l  } �$���$� J   } �$�$� $��$� c   } �$�$�$� o   } ~�� 0 parsestring parseString$� m   ~ �
� 
TEXT�  �  �  $� n     $�$�$� 1   � ��
� 
txdl$� 1   � ��
� 
ascr$� $�$�$� l  � �����  �  �  $� $�$�$� Z   � �$�$��$�$� o   � ��� 0 considercase considerCase$� P   � �$�$��$� r   � �$�$�$� n   � �$�$�$� 2   � ��
� 
citm$� o   � ��� 0 
sourcetext 
sourceTEXT$� l     $���$� o      �� 0 
parsedlist 
parsedList�  �  $� ��

� conscase�
  �  �  $� P   � �$��	$�$� r   � �$�$�$� n   � �$�$�$� 2   � ��
� 
citm$� o   � ��� 0 
sourcetext 
sourceTEXT$� l     $���$� o      �� 0 
parsedlist 
parsedList�  �  �	  $� ��
� conscase�  $� $�$�$� l  � ��� ���  �   ��  $� $�$�$� r   � �$�$�$� o   � ����� 0 	olddelims 	oldDelims$� n     $�$�$� 1   � ���
�� 
txdl$� 1   � ���
�� 
ascr$� $���$� L   � �$�$� o   � ����� 0 
parsedlist 
parsedList��  $� R      ��$�$�
�� .ascrerr ****      � ****$� o      ���� 0 errmsg errMsg$� ��$���
�� 
errn$� o      ���� 0 errnum errNum��  $� k   � �$�$� $�$�$� Q   � �$�$���$� r   � �$�$�$� o   � ����� 0 	olddelims 	oldDelims$� n     $�$�$� 1   � ���
�� 
txdl$� 1   � ���
�� 
ascr$� R      ������
�� .ascrerr ****      � ****��  ��  ��  $� $���$� R   � ���$�$�
�� .ascrerr ****      � ****$� b   � �$�$�$� m   � �$�$� �$�$� : E R R O R :   p a r s e C h a r s ( )   h a n d l e r :  $� o   � ����� 0 errmsg errMsg$� ��$���
�� 
errn$� o   � ����� 0 errnum errNum��  ��  �  $ $�$�$� l     ��������  ��  ��  $� $�$�$� i   � �$�$�$� I      ��$����� 0 replacesimple replaceSimple$� $���$� o      ���� 	0 prefs  ��  ��  $� k     �$�$� $�$�$� l     ��$�$���  $�   version 1.4   $� �% %     v e r s i o n   1 . 4$� %%% l     ��������  ��  ��  % %%% r     %%% K     %% ��%���� 0 considercase considerCase% m    ��
�� boovtrue��  % o      ���� 0 defaultprefs defaultPrefs% %	%
%	 l   ��������  ��  ��  %
 %%% Z    e%%%��% =   %%% n    
%%% m    
��
�� 
pcls% o    ���� 	0 prefs  % m   
 ��
�� 
list% k    I%% %%% Z    G%%��%% ?   %%% l   %����% I   ��%��
�� .corecnte****       ****% o    ���� 	0 prefs  ��  ��  ��  % m    ���� % k    1%% %% % l   ��%!%"��  %! - ' get any parameters after the initial 3   %" �%#%# N   g e t   a n y   p a r a m e t e r s   a f t e r   t h e   i n i t i a l   3%  %$��%$ r    1%%%&%% K    /%'%' ��%(%)�� 0 
sourcetext 
sourceTEXT%( n    %*%+%* 4    ��%,
�� 
cobj%, m    ���� %+ o    ���� 	0 prefs  %) ��%-%.�� 0 oldchars oldChars%- n    #%/%0%/ 4     #��%1
�� 
cobj%1 m   ! "���� %0 o     ���� 	0 prefs  %. ��%2%3�� 0 newchars newChars%2 n   $ (%4%5%4 4   % (�%6
� 
cobj%6 m   & '�� %5 o   $ %�� 	0 prefs  %3 �%7�� 0 considercase considerCase%7 n   ) -%8%9%8 4   * -�%:
� 
cobj%: m   + ,�� %9 o   ) *�� 	0 prefs  �  %& o      �� 	0 prefs  ��  ��  % r   4 G%;%<%; K   4 E%=%= �%>%?� 0 
sourcetext 
sourceTEXT%> n   5 9%@%A%@ 4   6 9�%B
� 
cobj%B m   7 8�� %A o   5 6�� 	0 prefs  %? �%C%D� 0 oldchars oldChars%C n   : >%E%F%E 4   ; >�%G
� 
cobj%G m   < =�� %F o   : ;�� 	0 prefs  %D �%H�� 0 newchars newChars%H n   ? C%I%J%I 4   @ C�%K
� 
cobj%K m   A B�� %J o   ? @�� 	0 prefs  �  %< o      �� 	0 prefs  % %L�%L l  H H����  �  �  �  % %M%N%M >  L V%O%P%O n   L O%Q%R%Q m   M O�
� 
pcls%R o   L M�� 	0 prefs  %P l  O U%S��%S n   O U%T%U%T m   S U�
� 
pcls%U K   O S%V%V �%W�� 0 somekey someKey%W m   P Q�� �  �  �  %N %X�%X k   Y a%Y%Y %Z%[%Z l  Y Y�%\%]�  %\ x r Test by matching class to something that IS a record to avoid FileMaker namespace conflict with the term "record"   %] �%^%^ �   T e s t   b y   m a t c h i n g   c l a s s   t o   s o m e t h i n g   t h a t   I S   a   r e c o r d   t o   a v o i d   F i l e M a k e r   n a m e s p a c e   c o n f l i c t   w i t h   t h e   t e r m   " r e c o r d "%[ %_%`%_ l  Y Y����  �  �  %` %a%b%a R   Y _�%c%d
� .ascrerr ****      � ****%c m   ] ^%e%e �%f%fJ T h e   p a r a m e t e r   f o r   ' r e p l a c e S i m p l e ( ) '   s h o u l d   b e   a   r e c o r d   o r   a t   l e a s t   a   l i s t .   W r a p   t h e   p a r a m e t e r ( s )   i n   c u r l y   b r a c k e t s   f o r   e a s y   u p g r a d e   t o   ' r e p l a c e S i m p l e ( )   v e r s i o n   1 . 3 .  %d �%g�
� 
errn%g m   [ \�� �  %b %h�%h l  ` `����  �  �  �  �  ��  % %i%j%i l  f f����  �  �  %j %k%l%k l  f f����  �  �  %l %m%n%m r   f k%o%p%o b   f i%q%r%q o   f g�� 	0 prefs  %r o   g h�� 0 defaultprefs defaultPrefs%p o      �� 	0 prefs  %n %s%t%s l  l l����  �  �  %t %u%v%u l  l l����  �  �  %v %w%x%w r   l q%y%z%y n   l o%{%|%{ o   m o�� 0 considercase considerCase%| o   l m�� 	0 prefs  %z o      �~�~ 0 considercase considerCase%x %}%~%} r   r w%%�% n   r u%�%�%� o   s u�}�} 0 
sourcetext 
sourceTEXT%� o   r s�|�| 	0 prefs  %� o      �{�{ 0 
sourcetext 
sourceTEXT%~ %�%�%� r   x }%�%�%� n   x {%�%�%� o   y {�z�z 0 oldchars oldChars%� o   x y�y�y 	0 prefs  %� o      �x�x 0 oldchars oldChars%� %�%�%� r   ~ �%�%�%� n   ~ �%�%�%� o    ��w�w 0 newchars newChars%� o   ~ �v�v 	0 prefs  %� o      �u�u 0 newchars newChars%� %�%�%� l  � ��t�s�r�t  �s  �r  %� %�%�%� r   � �%�%�%� c   � �%�%�%� o   � ��q�q 0 
sourcetext 
sourceTEXT%� m   � ��p
�p 
TEXT%� o      �o�o 0 
sourcetext 
sourceTEXT%� %�%�%� l  � ��n�m�l�n  �m  �l  %� %�%�%� r   � �%�%�%� n  � �%�%�%� 1   � ��k
�k 
txdl%� 1   � ��j
�j 
ascr%� o      �i�i 0 	olddelims 	oldDelims%� %�%�%� r   � �%�%�%� l  � �%��h�g%� o   � ��f�f 0 oldchars oldChars�h  �g  %� n     %�%�%� 1   � ��e
�e 
txdl%� 1   � ��d
�d 
ascr%� %�%�%� Z   � �%�%��c%�%� o   � ��b�b 0 considercase considerCase%� P   � �%�%��a%� k   � �%�%� %�%�%� r   � �%�%�%� n   � �%�%�%� 2   � ��`
�` 
citm%� o   � ��_�_ 0 
sourcetext 
sourceTEXT%� l     %��^�]%� o      �\�\ 0 
parsedlist 
parsedList�^  �]  %� %�%�%� r   � �%�%�%� l  � �%��[�Z%� J   � �%�%� %��Y%� l  � �%��X�W%� c   � �%�%�%� o   � ��V�V 0 newchars newChars%� m   � ��U
�U 
TEXT�X  �W  �Y  �[  �Z  %� n     %�%�%� 1   � ��T
�T 
txdl%� 1   � ��S
�S 
ascr%� %��R%� r   � �%�%�%� c   � �%�%�%� l  � �%��Q�P%� o   � ��O�O 0 
parsedlist 
parsedList�Q  �P  %� m   � ��N
�N 
TEXT%� l     %��M�L%� o      �K�K 0 newtext newText�M  �L  �R  %� �J�I
�J conscase�I  �a  �c  %� P   � �%��H%�%� k   � �%�%� %�%�%� r   � �%�%�%� n   � �%�%�%� 2   � ��G
�G 
citm%� o   � ��F�F 0 
sourcetext 
sourceTEXT%� l     %��E�D%� o      �C�C 0 
parsedlist 
parsedList�E  �D  %� %�%�%� r   � �%�%�%� l  � �%��B�A%� J   � �%�%� %��@%� l  � �%��?�>%� c   � �%�%�%� o   � ��=�= 0 newchars newChars%� m   � ��<
�< 
TEXT�?  �>  �@  �B  �A  %� n     %�%�%� 1   � ��;
�; 
txdl%� 1   � ��:
�: 
ascr%� %��9%� r   � �%�%�%� c   � �%�%�%� l  � �%��8�7%� o   � ��6�6 0 
parsedlist 
parsedList�8  �7  %� m   � ��5
�5 
TEXT%� l     %��4�3%� o      �2�2 0 newtext newText�4  �3  �9  �H  %� �1�0
�1 conscase�0  %� %�%�%� r   � �%�%�%� o   � ��/�/ 0 	olddelims 	oldDelims%� n     %�%�%� 1   � ��.
�. 
txdl%� 1   � ��-
�- 
ascr%� %�%�%� L   � �%�%� o   � ��,�, 0 newtext newText%� %��+%� l  � ��*�)�(�*  �)  �(  �+  $� %�%�%� l     �'�&�%�'  �&  �%  %� %�%�%� i   � �%�%�%� I      �$%��#�$ 0 unparsechars unParseChars%� %�%�%� o      �"�" 0 thislist thisList%� %��!%� o      � �  0 newdelim newDelim�!  �#  %� k     C%�%� %�%�%� l     �%�%��  %�   version 1.2   %� �%�%�    v e r s i o n   1 . 2%� %�& %� l     ����  �  �  &  &&& r     &&& n    &&& 1    �
� 
txdl& 1     �
� 
ascr& o      �� 0 	olddelims 	oldDelims& &�& Q    C&&	&
& k   	 !&& &&& r   	 &&& l  	 &��& J   	 && &�& c   	 &&& o   	 
�� 0 newdelim newDelim& m   
 �
� 
TEXT�  �  �  & n     &&& 1    �
� 
txdl& 1    �
� 
ascr& &&& r    &&& c    &&& o    �� 0 thislist thisList& m    �
� 
TEXT& l     &��& o      �� 0 unparsedtext unparsedText�  �  & &&& r    & &!&  o    �� 0 	olddelims 	oldDelims&! n     &"&#&" 1    �

�
 
txdl&# 1    �	
�	 
ascr& &$�&$ L    !&%&% o     �� 0 unparsedtext unparsedText�  &	 R      �&&&'
� .ascrerr ****      � ****&& o      �� 0 errmsg errMsg&' �&(�
� 
errn&( o      �� 0 errnum errNum�  &
 k   ) C&)&) &*&+&* Q   ) :&,&-�&, r   , 1&.&/&. o   , -� �  0 	olddelims 	oldDelims&/ n     &0&1&0 1   . 0��
�� 
txdl&1 1   - .��
�� 
ascr&- R      ������
�� .ascrerr ****      � ****��  ��  �  &+ &2��&2 R   ; C��&3&4
�� .ascrerr ****      � ****&3 b   ? B&5&6&5 m   ? @&7&7 �&8&8 > E R R O R :   u n P a r s e C h a r s ( )   h a n d l e r :  &6 o   @ A���� 0 errmsg errMsg&4 ��&9��
�� 
errn&9 o   = >���� 0 errnum errNum��  ��  �  %� &:��&: l     ��������  ��  ��  ��       4��&;�� #&<&=&>&?&@&A&B&C&D&E&F&G&H&I&J&K&L&M&N&O&P&Q&R&S&T&U&V&W&X&Y&Z&[&\&]&^&_&`&a&b&c&d&e&f&g&h&i&j&k��  &; 2��������������������������������������������������������������������������������������������������� 0 	debugmode 	DebugMode�� 0 
scriptname 
ScriptName�� &0 clickcommandposix clickCommandPosix�� $0 encodecharforurl encodeCharForURL�� $0 encodetextforurl encodeTextForURL�� 0 
getfromfmp 
getFromFMP�� 0 	sendtofmp 	sendToFMP�� 40 displayfilemakerdatabase displayFileMakerDatabase�� 20 ensurefilemakerdatabase ensureFileMakerDatabase�� .0 openfilemakerdatabase openFileMakerDatabase�� 0 sfr_dictget SFR_DictGet�� 0 sfr_dictitem SFR_DictItem�� 0 
sfr_escape 
SFR_Escape�� 0 sfr_unescape SFR_Unescape�� 60 fmgui_managedb_field_edit fmGUI_ManageDb_Field_Edit�� :0 fmgui_managedb_field_select fmGUI_ManageDb_Field_Select�� >0 fmgui_managedb_fieldlistfocus fmGUI_ManageDb_FieldListFocus�� @0 fmgui_managedb_fieldspicktable fmGUI_ManageDb_FieldsPickTable�� 40 fmgui_managedb_fieldstab fmGUI_ManageDb_FieldsTab�� *0 fmgui_managedb_open fmGUI_ManageDb_Open�� B0 fmgui_managedb_relationshipstab fmGUI_ManageDb_RelationshipsTab�� *0 fmgui_managedb_save fmGUI_ManageDB_Save�� &0 fmgui_checkboxset fmGUI_CheckboxSet�� B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow�� :0 fmgui_popup_selectbycommand fmGUI_Popup_SelectByCommand��  0 fmgui_popupset fmGUI_PopupSet�� (0 fmgui_textfieldset fmGUI_TextFieldSet�� (0 fmgui_appfrontmost fmGUI_AppFrontMost�� 00 fmgui_dataviewer_close fmGUI_DataViewer_Close�� .0 fmgui_inspector_close fmGUI_Inspector_Close�� 00 fmgui_inspector_ensure fmGUI_Inspector_Ensure�� 20 fmgui_modeensure_browse fmGUI_ModeEnsure_Browse�� .0 fmgui_modeensure_find fmGUI_ModeEnsure_Find�� 20 fmgui_modeensure_layout fmGUI_ModeEnsure_Layout�� $0 fmgui_modeselect fmGUI_ModeSelect�� (0 fmgui_window_close fmGUI_Window_Close�� "0 windowwaituntil windowWaitUntil�� 20 windowwaituntil_frontis windowWaitUntil_FrontIS�� 0 sort  �� 0 
logconsole 
logConsole�� 0 loglevel logLEVEL�� 0 logmain logMAIN�� 0 clickatcoords clickAtCoords�� *0 clickobjectbycoords clickObjectByCoords��  0 coercetostring coerceToString�� 0 gettextbefore getTextBefore��  0 gettextbetween getTextBetween� 0 
parsechars 
parseChars� 0 replacesimple replaceSimple� 0 unparsechars unParseChars
�� boovfals&< �&l&l f / U s e r s / e s h a g d a r / C o d e / a p p l e s c r i p t - f m - h e l p e r / c l i c l i c k&= � ;��&m&n�� $0 encodecharforurl encodeCharForURL� �&o� &o  �� 0 	this_char  �  &m ������ 0 	this_char  � 0 	ascii_num 	ASCII_num� 0 hex_list  � 0 x  � 0 y  &n � U Y ] a e i m q u y } � � � � ��� ��
� .sysoctonshor       TEXT� 
� 
cobj
� 
TEXT� L�j  E�O���������������a a vE�O�a �a "k/E�O�a �a #k/E�Oa �%�%a &&> � ���&p&q�� $0 encodetextforurl encodeTextForURL� �&r� &r  ���� 0 	this_text  � 0 encode_url_a encode_URL_A� 0 encode_url_b encode_URL_B�  &p 	���������� 0 	this_text  � 0 encode_url_a encode_URL_A� 0 encode_url_b encode_URL_B� 0 standard_characters  � 0 url_a_chars URL_A_chars� 0 url_b_chars URL_B_chars� 0 acceptable_characters  � 0 encoded_text  � 0 	this_char  &q 	 � � ������
� 
kocl
� 
cobj
� .corecnte****       ****� $0 encodecharforurl encodeCharForURL
� 
TEXT� g�E�O�E�O�E�O�E�O�f  
��%E�Y hO�f  
��%E�Y hO�E�O .�[��l kh �� 
��%E�Y �*�k+ %�&E�[OY��O�&? �7��&s&t�� 0 
getfromfmp 
getFromFMP� �&u� &u  �� 	0 prefs  �  &s 
����������� 	0 prefs  � 0 fmtype fmType� 0 
astransfer 
asTransfer� 0 fmpname fmpName� 0 fmpactivename fmpActiveName� 0 begintellfm beginTellFM� 0 	endtellfm 	endTellFM� 0 	codetoget 	codeToGet� 0 
sendsource 
sendSource� 0 	inputdata 	inputData&t ���T\b��&v���������������� 0 fmtype fmType�  �  
� .earsffdralis        afdr
� 
pcap&v  
� 
dnam
� 
ret 
� .sysodsct****        scpt� � 
��,E�W 
X  �E�O�E�O�E�O)j � Y� *�k/�[�,\Z�>1�,E�UO��  �%�%�%E�Y %��  a �%E�Y �a   a �%E�Y hO�a %E�Y a E�Oa E�Oa �%a %E�O��%�%E�O�j E�O�&@ ���~�}&w&x�|� 0 	sendtofmp 	sendToFMP�~ �{&y�{ &y  �z�z 0 somedata someData�}  &w �y�x�w�v�u�t�s�r�q�p�o�n�y 0 somedata someData�x 0 fmtype fmType�w 0 
astransfer 
asTransfer�v 0 fmpname fmpName�u 0 fmpactivename fmpActiveName�t 0 begintellfm beginTellFM�s 0 	endtellfm 	endTellFM�r "0 somedatacleaned someDataCleaned�q 0 	olddelims 	oldDelims�p 0 	backslash  �o 0 	codetoset 	codeToSet�n 0 
sendsource 
sendSource&x #�m�l�k�j
�i3�h&v�g;EG�fMU[bkrw�e�d�c�b�a�`������_�m 0 fmtype fmType�l 0 somedata someData�k  �j  
�i .earsffdralis        afdr
�h 
pcap
�g 
dnam
�f 
ret 
�e 
TEXT
�d 
ascr
�c 
txdl�b \
�a .sysontocTEXT       shor
�` 
citm
�_ .sysodsct****        scpt�|* ��,E�O��,E�W 
X  �E�O�E�O�E�O)j � [� *�k/�[�,\Z�>1�,E�UO��  ��%�%�%E�Y '�a   a �%E�Y �a   a �%E�Y hO�a %E�Y a E�Oa E�O�a &E�O_ a ,E�Oa j E�O�_ a ,FO�a -E�O��%_ a ,FO�a &E�Oa _ a ,FO�a -E�O�a %_ a ,FO�a &E�O�_ a ,FOa �%a  %�%a !%E�O��%�%E�O�j "OP&A �^	�]�\&z&{�[�^ 40 displayfilemakerdatabase displayFileMakerDatabase�] �Z&|�Z &|  �Y�Y 	0 prefs  �\  &z �X�W�V�U�T�S�R�Q�P�O�N�M�X 	0 prefs  �W 0 defaultprefs defaultPrefs�V 0 dbname dbName�U ,0 waitsavetotalseconds waitSaveTotalSeconds�T .0 waitcycledelayseconds waitCycleDelaySeconds�S 0 waitcyclemax waitCycleMax�R 0 fmappbundleid fmAppBundleID�Q 0 doclist docList�P 0 errmsg errMsg�O 0 errnum errNum�N 0 onedoc oneDoc�M 0 docname docName&{ 0�L!�K�J�I�H�G:�F�E�D�C�B�Akos�@��?�>�=�<&}�;�:��9�8�7�6�5�4�3�2�1�0�/��.�-�,�+��*1PR�L 0 	fmapptype 	fmAppType�K .0 waitcycledelayseconds waitCycleDelaySeconds�J �I ,0 waitsavetotalseconds waitSaveTotalSeconds
�H 
min �G �F  0 coercetostring coerceToString�E 0 
logconsole 
logConsole�D 0 dbname dbName
�C 
dire
�B olierndD
�A .sysorondlong        doub
�@ 
null
�? 
capp
�> kfrmID  
�= 
docu�< 0 errmsg errMsg&} �)�(�'
�) 
errn�( 0 errnum errNum�'  �;��
�: 
errn
�9 .sysodelanull��� ��� nmbr
�8 
kocl
�7 
cobj
�6 .corecnte****       ****
�5 
pnam
�4 
cha 
�3 
rvse
�2 
TEXT
�1 
rslt
�0 
ctxt
�/ 
psof
�. 
psin�- 
�, .sysooffslong    ��� null
�+ .ascrcmnt****      � ****
�* .miscmvisnull���    obj �[�������l� �E�O��%E�Ob    *b  �*�k+ %l+ 	Y hO��,E�O��,E�O��,E�O��!��l E�O��,�  �E�Y a E�O b�kha E�O -a Z*a �a 0 	*a -E�UO�a  Y hOPW X  �a   hY )a �la �%O�j [OY��O ߧ[a a l kh 
�a ,E�O�a  -a !,a "&O_ #[a $\[Z*a %a &a '_ #a ( )k\Zi2EO_ #a  -a !,a "&E�Ob    
�j *Y hOb    
�j *Y hOga + Q�a "&�a "&  Aa Z*a �a 0 *�j ,Ob    )b  a -)�k+ %l+ 	Y hOPUOeY hV[OY�3OfOPW X  )a �la .�%a /%�%OP&B �&[�%�$&~&�#�& 20 ensurefilemakerdatabase ensureFileMakerDatabase�% �"&��" &�  �!�! 	0 prefs  �$  &~ � ���  	0 prefs  � 0 dbname dbName� 0 isdisplayed isDisplayed& ��{����������� 0 dbname dbName� 0 	fmapptype 	fmAppType� � 40 displayfilemakerdatabase displayFileMakerDatabase� 0 
logconsole 
logConsole� .0 openfilemakerdatabase openFileMakerDatabase
� .sysodelanull��� ��� nmbr�# ���,E�O*����k+ E�Ob    *b  �%l+ Y hO� eY Zb    *b  �%l+ Y hO*�k+  5�j 
Ob    *b  �%l+ Y hO*����k+ E�O�Y f&C ����&�&��� .0 openfilemakerdatabase openFileMakerDatabase� �&�� &�  �� 	0 prefs  �  &� ������ 	0 prefs  � 0 	customurl 	customURL� 0 fmpurl fmpURL� 0 errmsg errMsg� 0 errnum errNum&� ���f�
�	��9<�KN^���&�� 0 dbname dbName�
 0 serverip serverIP�	 0 
maindbname 
mainDbName� <0 customlinkreceiverscriptname customLinkReceiverScriptName� $0 encodetextforurl encodeTextForURL� 0 replacesimple replaceSimple� 0 
logconsole 
logConsole
� .GURLGURLnull��� ��� TEXT� 0 errmsg errMsg&� ��� 
� 
errn� 0 errnum errNum�   � � w��,%�%E�O� `��,%�%��,%�%��,%�%)�efm+ %E�O)���mvk+ E�O)��a mvk+ E�Ob    )b  a �%l+ Y hO�j OPUOeOPW X  �OPOP&D �������&�&����� 0 sfr_dictget SFR_DictGet�� ��&��� &�  ������ 0 somedict someDict�� 0 itemname itemName��  &� ���������������� 0 somedict someDict�� 0 itemname itemName�� 0 	keystring 	keyString�� 0 	endstring 	endString�� 0 	olddelims 	oldDelims�� 0 
keyremoved 
keyRemoved�� 0 	itemvalue 	itemValue&� 
����������������� 0 
sfr_escape 
SFR_Escape
�� 
ascr
�� 
txdl
�� 
citm�� 0 sfr_unescape SFR_Unescape�� Y�*�k+ %�%E�O�E�O�� �Y 3��,E�O���,FO��l/E�O�� �Y ���,FO��k/E�O���,FO*�k+ 	OP&E �������&�&����� 0 sfr_dictitem SFR_DictItem�� ��&��� &�  ������ 0 itemname itemName�� 0 	itemvalue 	itemValue��  &� ������ 0 itemname itemName�� 0 	itemvalue 	itemValue&� ���� 0 
sfr_escape 
SFR_Escape�� �*�k+ %�%*�k+ %�%&F ������&�&����� 0 
sfr_escape 
SFR_Escape�� ��&��� &�  ���� 0 
somestring 
someString��  &� �������� 0 
somestring 
someString��  0 escapecharlist escapeCharList�� 0 onechar oneChar&� 
159<��������S���� 
�� 
kocl
�� 
cobj
�� .corecnte****       ****�� 0 replacesimple replaceSimple�� 4�����vE�O $�[��l kh *���%mvk+ 	E�OP[OY��O�OP&G ��a����&�&����� 0 sfr_unescape SFR_Unescape�� ��&��� &�  ���� 0 
somestring 
someString��  &� �������� 0 
somestring 
someString��  0 escapecharlist escapeCharList�� 0 onechar oneChar&� 
sw{~������������� 
�� 
kocl
�� 
cobj
�� .corecnte****       ****�� 0 replacesimple replaceSimple�� 4�����vE�O $�[��l kh *��%�mvk+ 	E�OP[OY��O�OP&H �������&�&����� 60 fmgui_managedb_field_edit fmGUI_ManageDb_Field_Edit�� ��&��� &�  ���� 	0 prefs  ��  &� ������������������������� 	0 prefs  � 0 defaultprefs defaultPrefs� 0 editmode editMode� $0 fieldnowselected fieldNowSelected� 0 changebutton changeButton�  0 fieldtypepopup fieldTypePopup� *0 notevaluatecheckbox notEvaluateCheckbox� 0 workingarea workingArea� .0 globalstoragecheckbox globalStorageCheckbox� (0 donotstorecheckbox doNotStoreCheckbox� &0 autoindexcheckbox autoIndexCheckbox� 0 datatypepopup dataTypePopup� 0 fdsfdsf  � 0 
menuchoice 
menuChoice� 0 datacheckbox dataCheckbox� .0 autoentercalccheckbox autoEnterCalcCheckbox� 20 autoentercalccode_value autoEnterCalcCode_VALUE� @0 overwriteexistingvaluecheckbox overwriteExistingValueCheckbox� *0 prohibitmodcheckbox prohibitModCheckbox� 40 validationcalccode_value validationCalcCode_VALUE� 0 errmsg errMsg� 0 errnum errNum&� ���������������������������������]�[����&v�s�����������������~�}�GVa�|s�{�z����y��x��w�v�u		=�t	^�s	�	�	�	�	��r	��q	��p�o
	

 
2
>
�
�
�
�
�
�
�
�&37:anru��>Lv�������n;Ris��m�����0CGJ_lv�����"�lDWl�k��j�i�������$,2:@HMYcqu}�������������-WR�����hOo�����
Tl}�����0=AD�g&�s�fw� 0 editmode editMode� 0 	tablename 	tableName
� 
null� 0 	fieldname 	fieldName� 0 altpatterns altPatterns� 0 fieldcomment fieldComment� 0 datatype dataType� 0 	fieldtype 	fieldType� 0 calccode calcCode� &0 autoentercalccode autoEnterCalcCode� 20 autoentercalccontexttoc autoEnterCalcContextTOC�  0 alwaysevaluate alwaysEvaluate�  0 calccontexttoc calcContextTOC� 0 storageglobal storageGlobal� 20 storecalculationresults storeCalculationResults� (0 storageindexchoice storageIndexChoice� 0 	autoindex 	autoIndex� 0 maxrepetition maxRepetition� 0 indexlanguage indexLanguage� 0 allowediting allowEditing� 00 overwriteexistingvalue overwriteExistingValue� *0 autoenterisconstant autoEnterIsConstant� 00 autoenteriscalculation autoEnterIsCalculation� &0 autoenterislookup autoEnterIsLookup� .0 autoenterspecialvalue autoEnterSpecialValue� 0 
autoserial 
autoSerial� .0 autoenterconstantdata autoEnterConstantData� (0 validationcalccode validationCalcCode� 40 validationcalccontexttoc validationCalcContextTOC� 8� :0 fmgui_managedb_field_select fmGUI_ManageDb_Field_Select
� 
pcap� (0 fmgui_appfrontmost fmGUI_AppFrontMost
� 
cwin
� 
tabg
� 
butT
� 
titl
� 
txtf� (0 fmgui_textfieldset fmGUI_TextFieldSet
� .prcsclicnull��� ��� uiel
� .sysodelanull��� ��� nmbr
� 
bool
� 
popB
� 
valL
�~ 
errn�} �|  0 fmgui_popupset fmGUI_PopupSet�{ B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow
�z 
pnam�y 0 
windowname 
windowName�x 20 windowwaituntil_frontis windowWaitUntil_FrontIS
�w 
scra�v 
�u 
txta
�t 
chbx�s &0 fmgui_checkboxset fmGUI_CheckboxSet�r  0 windownametest windowNameTest�q 0 whichwindow whichWindow�p �o "0 windowwaituntil windowWaitUntil
�n 
radB�m *0 clickobjectbycoords clickObjectByCoords
�l 
pcls�k 0 autonextvalue autoNextValue�j 0 autoincrement autoIncrement�i 0 autogenerate autoGenerate
�h 
leng�g 0 errmsg errMsg&� �e�d�c
�e 
errn�d 0 errnum errNum�c  �f  0 coercetostring coerceToString�������������������������������a �a �a �a �a �a �a �a �a �a �a �a �a �a �a E�O��%E�O��,E�O��,� e�a ,FY hO*�k+ E�O� fY hOa  �*a !a "/�)j+ #O*a $k/a %k/a &k/a '[a (,\Za )81E�O��,� 3)*a $k/a %k/a *a +/��,l+ , 
�j -Y hOa .j /Y hO�a 0 	 ��,� a 1& M*a $k/a %k/a 2a 3/E�O�a 4,a 5  a 6��,FY �a 4,a 7  a 8��,FY 	a 9��,FY hO��,�  )a :a ;la <OPY���,a = D*a $k/a %k/a 2a >/E�O�a 4,a ? c)�a @l+ AO)*a $k/a %k/a &a B/k+ COa .j /O*a $k/a D,a E !)*a $k/a &a F/k+ COa .j /OPY hOPY 6)*a $k/a %k/a &k/a '[a D,\Za G>1k+ CO)a Ha Ilk+ JOPO�a K 
 ��,�a 1& )*a $k/a La M/a Nk/��,l+ ,Y hO��,� ')*a $k/a 2k/a '[a D,\Za O@1��,l+ AY hO��,� ')*a $k/a 2k/a '[a D,\Za P@1��,l+ AY hO��,� :*a $k/a Qk/a '[a D,\Za R@1E�O��,E )�jl+ SY 	)�kl+ SY hO�a T 
 �a ,�a 1& ))*a $k/a *k/a '[a D,\Za U@1�a ,l+ ,Y hO�a V 
 ��,�a 1&
 ��,�a 1&
 �a ,�a 1&
 �a ,�a 1&�)*a $k/a &k/a '[a D,\Za W@1k+ CO)a Ha Xa Ya Za [a \a ]k+ ^O*a $k/E�O�a Qk/a '[a D,\Za _@1E�O�a Qk/a '[a D,\Za `@1E�O�a a  6��,�  )a :a ;la bY hO��,�  )a :a ;la cY hY hO��,E )�kl+ SOPY ���, )�kl+ SOPY p)�jl+ SO)�jl+ SO�a ,a d  )�a Qa e/kl+ SOPY A�a ,a f  )�a Qa g/kl+ SOPY "�a ,a h  )�a Qa i/kl+ SOPY hO�a ,� $)�a 2k/a '[a D,\Za j@1�a ,l+ AY hO�a ,� 9�a Qk/a '[a D,\Za k@1E�O�a ,E )�kl+ SY 	)�jl+ SOPY hO)�a &k/a '[a D,\Za l@1k+ CO)a Ha ma Ya na [a oa ]k+ ^OPY hO*a $k/E�O)�a &k/a '[a D,\Za p@1k+ CO)a Ha qa Ya ra [a sa ]k+ ^OeOPY	���,a t  hY	���,a u 	��a v 
 ��,�a 1& �*a $k/a %k/a 2a w/E�O�a 4,��, _)���,l+ AO)*a $k/a %k/a &a x/k+ COa .j /O*a $k/a D,a y )*a $k/a &a z/k+ COa .j /Y hY hY hO)*a $k/a %k/a &k/a '[a D,\Za {>1k+ CO)a Ha |a Ya }a [a ~a ]k+ ^O*a $k/a %k/E�O�a  
 ��,�a 1&
 �a ,�a 1&
 �a ,�a 1&
 �a ,�a 1&�a �a �/j -O)�a *k/a '[a D,\Za �@1�a ,l+ ,O�a Qk/a '[a D,\Za �@1E�O�a �  ��,�  )a :a ;la �Y hY hO��,E j�a 4,k Z)�k+ �Oa .j /O*a $k/a D,a � 5)*a $k/a &a �/k+ CO)a Ha �a Ya �a [a �a ]k+ ^OPY hY hOPY ƨa 4,j \)�k+ �Oa .j /O*a $k/a D,a � 5)*a $k/a &a �/k+ CO)a Ha �a Ya �a [a �a ]k+ ^OPY hOPY hO�a ,a �  )�a Qa �/kl+ SO�Y A�a ,a �  )�a Qa �/kl+ SOPY "�a ,a �  )�a Qa �/kl+ SOPY hO�a ,� $)�a 2k/a '[a D,\Za �@1�a ,l+ AY hO�a ,� 9�a Qk/a '[a D,\Za �@1E�O�a ,E )�kl+ SY 	)�jl+ SOPY hOPY hO*a $k/a %k/E�O�a �a �/j -O�a ,�  a ,a �,a 1  )�a Qa �/jl+ SY �)�a Qa �/kl+ SO)�a *k/a '[a D,\Za �@1�a ,a �,l+ ,O)�a *k/a '[a D,\Za �@1�a ,a �,l+ ,O�a ,a �,a �  )�a Qa �/kl+ SY $�a ,a �,a �  )�a Qa �/kl+ SY hOPY hO�a ,�ʠa ,a �  ")�a Qk/a '[a D,\Za �@1kl+ SOPY��a ,a � ��a ,a �  
a �E�Y g�a ,a �  
a �E�Y S�a ,a �  
a �E�Y ?�a ,a �  
a �E�Y +�a ,a �  
a �E�Y �a ,a �  
a �E�Y hO)�a 2a �/�l+ AOPY �a ,a � ��a ,a �  
a �E�Y g�a ,a �  
a �E�Y S�a ,a �  
a �E�Y ?�a ,a �  
a �E�Y +�a ,a �  
a �E�Y �a ,a �  
a �E�Y hO)�a 2a �/�l+ AOPY g�a ,a �  Z)�a Qk/a '[a (,\Za �81jl+ SO)�a Qk/a '[a (,\Za �81jl+ SO)�a Qk/a '[a D,\Za �@1jl+ SOPY hOPY hO�a ,� a�a Qk/a '[a D,\Za �@1E�O�a ,E 4)�kl+ SO�a ,�  hY )�a La �/a Na �/�a ,l+ ,Y 	)�jl+ SOPY hO�a ,� hY hO�a ,���a , )�a Qa �/jl+ SOPY�a Qa �/E�O�a 4,k )�k+ CY )�a &k/a '[a D,\Za �>1k+ CO)a Ha �lk+ JO*a $k/E�O��,a �,j  a �E^ Y 	��,E^ O)*a $k/a La M/a Nk/] l+ ,O��,� ")�a 2k/a '[a D,\Za �@1��,l+ AY hO��,� 5�a Qk/a '[a D,\Za �@1E�O��,E )�jl+ SY 	)�kl+ SY hO)�a &k/a '[a D,\Za �@1k+ CO)a Ha �a Ya �a [a �a ]k+ ^O*a $k/a %k/E�O�a ,� =�a Qk/a '[a D,\Za �@1E^ O�a ,E )] jl+ SY )] kl+ SY hOPOPY hO�a ,� =�a Qk/a '[a D,\Za �@1E^ O�a ,E )] jl+ SY )] kl+ SY hO�a �a �/j -O�a ,� �)�a &a �/k+ CO)a Ha �lk+ JO*a $k/E�O�a ,a �,j  a �E^ Y �a ,E^ O)*a $k/a La M/a Nk/] l+ ,O�a ,� $)�a 2k/a '[a D,\Za �@1�a ,l+ AY hO)�a &k/a '[a D,\Za �@1k+ CO)a Ha �a Ya �a [a �a ]k+ ^O*a $k/a %k/E�OPY hO)*a $k/a &k/a '[a D,\Za �@1k+ CO)a Ha �a Ya �a [a �a ]k+ ^OeOPY hOeOPUUOPW "X � �)a :] la �*�k+ �%a �%] %OP&I �b��a�`&�&��_�b :0 fmgui_managedb_field_select fmGUI_ManageDb_Field_Select�a �^&��^ &�  �]�] 	0 prefs  �`  &� �\�[�Z�Y�X�W�V�U�T�S�R�Q�P�O�N�M�L�\ 	0 prefs  �[ 0 defaultprefs defaultPrefs�Z  0 testcodeheader testCodeHeader�Y 0 
selectcode 
selectCode�X 0 
rowrefcode 
rowRefCode�W 0 	whosecode 	whoseCode�V *0 fieldnameobjectcode fieldNameObjectCode�U $0 betweentestscode betweenTestsCode�T &0 afteralltestscode afterAllTestsCode�S  0 testcodefooter testCodeFooter�R 0 errmsg errMsg�Q 0 errnum errNum�P $0 fieldnowselected fieldNowSelected�O 0 onealtpattern oneAltPattern�N 0 testlist testList�M 0 testcode testCode�L 0 
onetestrec 
oneTestRec&� 4�K�J�I�H�G��F����������E�D�C=�B;�A�@�?�>�=&v�<�;�:�9&��8�7�6�5�4�3�2��1��0�/��.��-�,�K 0 	fieldname 	fieldName
�J 
null�I 0 	tablename 	tableName�H 0 altpatterns altPatterns�G 
�F 
ret �E >0 fmgui_managedb_fieldlistfocus fmGUI_ManageDb_FieldListFocus�D @0 fmgui_managedb_fieldspicktable fmGUI_ManageDb_FieldsPickTable�C (0 fmgui_appfrontmost fmGUI_AppFrontMost
�B 
pcap
�A 
cwin
�@ 
tabg
�? 
scra
�> 
tabB
�= 
crow
�< 
sttx
�; 
valL
�: .miscslctnull���     uiel�9 0 errmsg errMsg&� �+�*�)
�+ 
errn�* 0 errnum errNum�)  �8�I
�7 
errn
�6 
kocl
�5 
cobj
�4 .corecnte****       ****�3 0 pattern  
�2 
pcnt�1 0 testtype testType�0 0 	testmatch 	testMatch�/ 0 quotestring quoteString�. 0 unparsechars unParseChars
�- .sysodsct****        scpt�,  0 coercetostring coerceToString�_��������E�O��%E�O��%�%�%E�O�E�O�E�O�E�O�E�O�E�O�E�O��%�%�%E�O]*jvk+ O��,� *��,k+ Y hO*j+ O Ma  @*a a / 4*a k/a k/a k/a k/a k/a [a k/a ,\Z��,81j UUOeW �X   �a ! )a "�l�Y �fE�O à�,[a #a $l %kh �a &,a ',E�O jvE�O 7�[a #a $l %kh a (] a ),%a *%)] a +,k+ ,%�6G[OY��O)���%a -%l+ .E�O��%�%�%a /%�%�%E�O��%�%E�O) �j 0UOeE�OOPW X   �a ! )a "�l�Y hOPOP[OY�QO�OPOPW X   )a "�la 1*�k+ 2%a 3%�%OP&J �((�'�&&�&��%�( >0 fmgui_managedb_fieldlistfocus fmGUI_ManageDb_FieldListFocus�' �$&��$ &�  �#�# 	0 prefs  �&  &� �"�!� �" 	0 prefs  �! 0 errmsg errMsg�  0 errnum errNum&� �`�^�������&��i� 40 fmgui_managedb_fieldstab fmGUI_ManageDb_FieldsTab
� 
pcap� (0 fmgui_appfrontmost fmGUI_AppFrontMost
� 
cwin
� 
tabg
� 
scra
� 
tabB
� 
focu� 0 errmsg errMsg&� ���
� 
errn� 0 errnum errNum�  
� 
errn�% G 6*jvk+  O� $*��/ )j+ Oe*�k/�k/�k/�k/�,FOeUUOPW X 
 )�l��%OP&K �r��&�&��� @0 fmgui_managedb_fieldspicktable fmGUI_ManageDb_FieldsPickTable� �&�� &�  �� 0 basetablename baseTableName�  &� ���
� 0 basetablename baseTableName� 0 errmsg errMsg�
 0 errnum errNum&� �	����������&�����	 40 fmgui_managedb_fieldstab fmGUI_ManageDb_FieldsTab
� 
pcap� (0 fmgui_appfrontmost fmGUI_AppFrontMost
� 
cwin
� 
tabg
� 
popB�  0 fmgui_popupset fmGUI_PopupSet� 0 errmsg errMsg&� � ����
�  
errn�� 0 errnum errNum��  
� 
errn� H 3*jvk+  O� #*��/ )j+ O)*�k/�k/��/�l+ 	OeUUW X 
 )�l��%�%�%OP&L �������&�&����� 40 fmgui_managedb_fieldstab fmGUI_ManageDb_FieldsTab�� ��&��� &�  ���� 	0 prefs  ��  &� ���������� 	0 prefs  �� "0 fieldstabobject fieldsTabObject�� 0 errmsg errMsg�� 0 errnum errNum&� ��������������&v���������&����� *0 fmgui_managedb_open fmGUI_ManageDb_Open
�� 
pcap�� (0 fmgui_appfrontmost fmGUI_AppFrontMost
�� 
cwin
�� 
tabg
�� 
radB
�� 
titl
�� 
valL
�� .prcsclicnull��� ��� uiel�� 0 errmsg errMsg&� ������
�� 
errn�� 0 errnum errNum��  
�� 
errn�� ^ K*jvk+  O� ;*��/ 3)j+ O*�k/�k/�k/�[�,\Z�@1E�O��,k 
�j Y hOeUUW X  )�la �%OP&M ������&�&����� *0 fmgui_managedb_open fmGUI_ManageDb_Open�� ��&��� &�  ���� 	0 prefs  ��  &� ������������ 	0 prefs  �� *0 lookingforxdbcerror lookingForXDBCError�� 0 	zoomfield 	zoomField�� 0 errmsg errMsg�� 0 errnum errNum&� (r��p������9����T����L&vY�������������������
������:��������&���z
�� 
pcap�� (0 fmgui_appfrontmost fmGUI_AppFrontMost
�� 
cwin
�� 
pnam
�� 
mbar
�� 
mbri
�� 
menE
�� 
menI
�� .prcsclicnull��� ��� uiel
�� .sysodelanull��� ��� nmbr
�� 
butT�� B0 fmgui_managedb_relationshipstab fmGUI_ManageDb_RelationshipsTab
�� 
faal
�� eMdsKcmd
�� .prcskprsnull���     ctxt
�� 
tabg
�� 
txtf
�� 
focu
�� 
valL
�� 
scra
�� 
scrb�� 0 errmsg errMsg&� ������
�� 
errn�� 0 errnum errNum��  
�� 
errn������*��/�)j+ O*�k/�,� eYs*�k/��/�k/��/�k/�k/�[�,\Z�>1j Okj OeE�O ;h�*�k/�,a  #*�k/a k/�[�,\Za 81j Okj Y fE�[OY��O)jvk+ Okj OeE�O ;h�*�k/�,a  #*�k/a k/�[�,\Za 81j Okj Y fE�[OY��Oa a a l Okj OeE�O 2h�*�k/�,a  *�k/a a /j Okj Y fE�[OY��O*�k/a k/a k/E�Oe�a ,FOa  �a !,FOe*�k/a k/a "k/a ,FOj*�k/a k/a "k/a #k/a !,FOj*�k/a k/a "k/a #l/a !,FOeUUW X $ %)a &�la '�%OP&N �����&�&���� B0 fmgui_managedb_relationshipstab fmGUI_ManageDb_RelationshipsTab� �&�� &�  �� 	0 prefs  �  &� ����� 	0 prefs  � "0 fieldstabobject fieldsTabObject� 0 errmsg errMsg� 0 errnum errNum&� �������&v�����&���� (0 fmgui_appfrontmost fmGUI_AppFrontMost
� 
pcap
� 
cwin
� 
tabg
� 
radB
� 
titl
� 
valL
� .prcsclicnull��� ��� uiel� 0 errmsg errMsg&� ���
� 
errn� 0 errnum errNum�  
� 
errn� T C*j+  O� 5*��/ -*�k/�k/�k/�[�,\Z�@1E�O��,k 
�j Y hOeUUW X  )�l�%OP&O ����&�&��� *0 fmgui_managedb_save fmGUI_ManageDB_Save� �&�� &�  �� 	0 prefs  �  &� 	���������� 	0 prefs  � 0 defaultprefs defaultPrefs� 40 managedbwindownameprefix manageDbWindowNamePrefix� .0 waitcycledelayseconds waitCycleDelaySeconds� ,0 waitsavetotalseconds waitSaveTotalSeconds� 0 waitcyclemax waitCycleMax� (0 managedbwindowname manageDbWindowName� 0 errmsg errMsg� 0 errnum errNum&� !����������x����J���&��a�k���������� ,0 notinmanagedbiserror notInManageDbIsError� 
� <
� 
min 
� 
dire
� olierndD
� .sysorondlong        doub
� 
pcap� (0 fmgui_appfrontmost fmGUI_AppFrontMost
� 
cwin
� 
pnam
� 
butT
� .prcsclicnull��� ��� uiel
� .sysodelanull��� ��� nmbr� 0 errmsg errMsg&� ���
� 
errn� 0 errnum errNum�  
� 
errn� � 0 
windowname 
windowName�  0 windownametest windowNameTest� 0 whichwindow whichWindow� .0 waitcycledelayseconds waitCycleDelaySeconds� 0 waitcyclemax waitCycleMax� "0 windowwaituntil windowWaitUntil� ��elE�O��%E�O�E�O�E�O�� E�O��!��l E�O �� �*��/ c)j+ O*�k/�,� 8 !*�k/�,E�O*�k/��/j Okj OPW X  )a �la �%Y ��,E )a a la Y eOPUO)a �a a a a a �a ��k+ Okj OeOPUOPW X  )a �la  �%OP&P ����~&�&��}� &0 fmgui_checkboxset fmGUI_CheckboxSet� �|&��| &�  �{�z�{  0 checkboxobject checkboxObject�z 0 checkboxvalue checkboxValue�~  &� �y�x�w�v�y  0 checkboxobject checkboxObject�x 0 checkboxvalue checkboxValue�w 0 errmsg errMsg�v 0 errnum errNum&� 	��u�t�s�r&��q��
�u 
null
�t 
valL
�s .prcsclicnull��� ��� uiel�r 0 errmsg errMsg&� �p�o�n
�p 
errn�o 0 errnum errNum�n  
�q 
errn�} :�Z %�� ��,� 
�j Y hY hOeOPW X  )�l�%�%�%&Q �m��l�k&�&��j�m B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow�l �i&��i &�  �h�h 0 	buttonref 	buttonRef�k  &� �g�g 0 	buttonref 	buttonRef&� ��f�f *0 clickobjectbycoords clickObjectByCoords�j �Z)�k+ OP&R �e�d�c&�&��b�e :0 fmgui_popup_selectbycommand fmGUI_Popup_SelectByCommand�d �a&��a &�  �`�` 	0 prefs  �c  &� 	�_�^�]�\�[�Z�Y�X�W�_ 	0 prefs  �^ 0 defaultprefs defaultPrefs�] 0 popupobject popupObject�\ 0 selectcommand selectCommand�[ 0 popupchoice popupChoice�Z &0 clickifalreadyset clickIfAlreadySet�Y 0 mustpick mustPick�X 0 errmsg errMsg�W 0 errnum errNum&� $�V�U�T�S�R�Q�P.�O�Nk�M�L�K�J�����I7�H�G&v�FIay�E&�����V 0 popupobject popupObject
�U 
null�T 0 popupchoice popupChoice�S 0 selectcommand selectCommand�R &0 clickifalreadyset clickIfAlreadySet�Q 
�P 
pcls
�O 
cobj�N 
�M .coredoexnull���     ****
�L 
errn�K 
�J 
valL
�I .prcsclicnull��� ��� uiel
�H 
menE
�G 
menI
�F 
pnam�E 0 errmsg errMsg&� �D�C�B
�D 
errn�C 0 errnum errNum�B  �b�������f�E�O��,�llv�,  ��k/��l/�E�Y hO��%E�O��,E�O��,E�O��,E�O��,E�O�Z��j  )��l�OPY�fE�O�a ,j  
eE�OPY �� 
eE�OPY ��a   �a ,� eE�Y hOPY �a   �a ,� eE�Y hOPY `�a   �a ,� eE�Y hOPY A�a   �a ,� eE�Y hOPY "�a   �a ,� eE�Y hOPY hO� ��� ��j O�a   !�a k/a k/a [a ,\Z�81j Y ~�a   #�a k/a k/a [a ,\Z�@1j OPY U�a   #�a k/a k/a [a ,\Z�>1j OPY ,�a   #�a k/a k/a [a ,\Z�?1j OPY hOPY hY hOeOPW X   )��la !�%a "%�%a #%�%&S �A��@�?&�&��>�A  0 fmgui_popupset fmGUI_PopupSet�@ �=&��= &�  �<�;�< 0 popupobject popupObject�; 0 popupchoice popupChoice�?  &� �:�9�8�7�: 0 popupobject popupObject�9 0 popupchoice popupChoice�8 0 errmsg errMsg�7 0 errnum errNum&� ��6�5�4�3�2�1&��0���6 0 popupobject popupObject�5 0 popupchoice popupChoice�4 �3 :0 fmgui_popup_selectbycommand fmGUI_Popup_SelectByCommand
�2 
rslt�1 0 errmsg errMsg&� �/�.�-
�/ 
errn�. 0 errnum errNum�-  
�0 
errn�> +�Z *���k+ O�EOPW X  )�l�%�%�%&T �,��+�*&�&��)�, (0 fmgui_textfieldset fmGUI_TextFieldSet�+ �(&��( &�  �'�&�' "0 textfieldobject textfieldObject�&  0 textfieldvalue textfieldValue�*  &� �%�$�#�"�% "0 textfieldobject textfieldObject�$  0 textfieldvalue textfieldValue�# 0 errmsg errMsg�" 0 errnum errNum&� 	��!� ��&��')
�! 
null
�  
valL
� 
focu� 0 errmsg errMsg&� ���
� 
errn� 0 errnum errNum�  
� 
errn�) A�Z ,�� ��,� e��,FO���,FY fY hOeOPW X  )�l�%�%�%&U �1��&�&��� (0 fmgui_appfrontmost fmGUI_AppFrontMost�  �  &�  &� 
i�g����Z��
� 
pcap
� 
pisf
� .sysodelanull��� ��� nmbr
� 
cwin
� 
pnam
� 
butT
� .prcsclicnull��� ��� uiel� F� B*��/ :*�,e 1e*�,FOkj O*�k/�,�  *�k/�k/j 	Okj Y hY hUU&V �o��&�&��� 00 fmgui_dataviewer_close fmGUI_DataViewer_Close�  �  &�  &� ��
��	�&v������
�
 
pcap�	 (0 fmgui_appfrontmost fmGUI_AppFrontMost
� 
cwin
� 
pnam
� 
butT
� .prcsclicnull��� ��� uiel�  �  � 4� 0*��/ ()j+ O *�k/�[�,\Z�81�k/j 	W X 
 hUU&W ���� &�&���� .0 fmgui_inspector_close fmGUI_Inspector_Close�  �   &�  &� ��������&v���������������
�� 
pcap�� (0 fmgui_appfrontmost fmGUI_AppFrontMost
�� 
cwin
�� 
pnam
�� 
pidx��  ��  
�� 
butT
�� .prcsclicnull��� ��� uiel�� s� o*��/ g)j+ O k*�k/�[�,\Z�81�,FW X 	 
hO *�k/�[�,\Z�81�k/j W X 	 
hO *�k/�[�,\Z�81�k/j W X 	 
hUU&X �������&�&����� 00 fmgui_inspector_ensure fmGUI_Inspector_Ensure��  ��  &� ������ 0 errmsg errMsg�� 0 errnum errNum&� ��1��/����&v��������%����*����&���9�� 20 fmgui_modeensure_layout fmGUI_ModeEnsure_Layout
�� 
pcap�� (0 fmgui_appfrontmost fmGUI_AppFrontMost
�� 
cwin
�� 
pnam
�� .coredoexnull���     ****
�� 
mbar
�� 
mbri
�� 
menE
�� 
menI
�� .prcsclicnull��� ��� uiel�� 0 errmsg errMsg&� ������
�� 
errn�� 0 errnum errNum��  
�� 
errn�� i T*j+  O� F*��/ >)j+ O*�k/�[�,\Z�@1j 	 *�k/��/�k/�k/�[�,\Z�81j Y hOeUUW X  )a �la �%OP&Y ��B����&�&����� 20 fmgui_modeensure_browse fmGUI_ModeEnsure_Browse��  ��  &� ������ 0 errmsg errMsg�� 0 errnum errNum&� U����&���_�� $0 fmgui_modeselect fmGUI_ModeSelect�� 0 errmsg errMsg&� ������
�� 
errn�� 0 errnum errNum��  
�� 
errn��  *�k+ OPW X  )�l�%OP&Z ��j����&�&����� .0 fmgui_modeensure_find fmGUI_ModeEnsure_Find��  ��  &� ������ 0 errmsg errMsg�� 0 errnum errNum&� }����&������ $0 fmgui_modeselect fmGUI_ModeSelect�� 0 errmsg errMsg&� ������
�� 
errn�� 0 errnum errNum��  
�� 
errn��  *�k+ OPW X  )�l�%OP&[ �������&�&����� 20 fmgui_modeensure_layout fmGUI_ModeEnsure_Layout��  ��  &� ������ 0 errmsg errMsg�� 0 errnum errNum&� �����&����� $0 fmgui_modeselect fmGUI_ModeSelect�� 0 errmsg errMsg&� ���
� 
errn� 0 errnum errNum�  
� 
errn��  *�k+ OPW X  )�l�%OP&\ ����&�&��� $0 fmgui_modeselect fmGUI_ModeSelect� �&�� &�  �� 0 modetoselect modeToSelect�  &� ��������� 0 modetoselect modeToSelect� 0 
modewindow 
modeWindow� "0 modecontentarea modeContentArea� *0 modecontentareadesc modeContentAreaDesc� 0 currentmode currentMode� 0 menuitemname menuItemName� 0 errmsg errMsg� 0 errnum errNum&� '�%����&v����������&��35
� 
pcap� (0 fmgui_appfrontmost fmGUI_AppFrontMost� .0 fmgui_inspector_close fmGUI_Inspector_Close
� 
cwin
� 
sgrp
� 
desc
� 
cwor
� .sysodelanull��� ��� nmbr
� 
mbar
� 
mbri
� 
menE
� 
menI
� .prcsclicnull��� ��� uiel� 0 errmsg errMsg&� ���
� 
errn� 0 errnum errNum�  
� 
errn� � t� l*��/ d)j+ O)j+ O*�k/E�O��k/�[�,\Z�?1E�O��,E�O��k/E�O�� (�j O��%E�O*�k/�a /a k/a �/j Y hOeOPUUW X  )a �la �%a %�%&] �=��&�&��� (0 fmgui_window_close fmGUI_Window_Close� �&�� &�  ��  0 somewindowname someWindowName�  &� ��  0 somewindowname someWindowName&� �U���
� 
capp
� kfrmID  
� 
cwin
� .coreclosnull���    obj � )���0 *�/j OPUOeOP&^ �b��&�&��� "0 windowwaituntil windowWaitUntil� �&�� &�  �� 	0 prefs  �  &� ��������� 	0 prefs  � 0 defaultprefs defaultPrefs� 0 
windowname 
windowName�  0 windownametest windowNameTest� 0 whichwindow whichWindow� 0 checkresult checkResult� "0 windownamecheck windowNameCheck� 0 windowindex windowIndex&� ���v�z�~~�}�|�{���z��y�x���w���!2CUft�v� 0 
windowname 
windowName
� 
null�  0 windownametest windowNameTest� 0 whichwindow whichWindow�~ .0 waitcycledelayseconds waitCycleDelaySeconds�} 0 waitcyclemax waitCycleMax�| �{ 

�z 
pcap
�y 
cwin
�x 
pnam
�w 
nmbr
�v .sysodelanull��� ��� nmbr�D�����������E�O��%E�O��,E�O��,E�O��,E�OfE�O��,Ekh� H��  *��/�-a ,E�Y 3�a   *�a /�k/a ,E�Y �a &E�O*�a /�/a ,E�UO�a   ��E�OPY ��a   ��E�OPY ��a   �� E�OPY o�a   �� E�OPY ]�a   ��E�OPY K�a   ��E�OPY 8�a   ��E�OPY &�a   ��E�Y �a   ��E�OPY hO� Y hO��,j OP[OY��O�OP&_ �u��t�s&�&��r�u 20 windowwaituntil_frontis windowWaitUntil_FrontIS�t �q&��q &�  �p�p 	0 prefs  �s  &� �o�n�o 	0 prefs  �n 0 defaultprefs defaultPrefs&� �m�l�k��j��i��h�g�f�e�m 0 
windowname 
windowName
�l 
null�k  0 windownametest windowNameTest�j 0 whichwindow whichWindow�i .0 waitcycledelayseconds waitCycleDelaySeconds�h 0 waitcyclemax waitCycleMax�g d�f 
�e "0 windowwaituntil windowWaitUntil�r �����������E�O��%E�O*�k+ OP&` �d��c�b&�&��a�d 0 sort  �c �`&��` &�  �_�_ 0 oldlist oldList�b  &� �^�]�\�[�Z�^ 0 oldlist oldList�] 0 od  �\ 0 	textblock 	textBlock�[ 0 sortedblock sortedBlock�Z 0 
sortedlist 
sortedList&� �Y�X�W�V�U�T��S��R�Q�P
�Y 
ascr
�X 
txdl�W 

�V .sysontocTEXT       shor
�U 
cobj
�T 
TEXT
�S 
strq
�R .sysoexecTEXT���     TEXT
�Q 
ret 
�P 
citm�a E��,�j lvE[�k/E�Z[�l/��,FZO��&E�O��,%�%j 	E�O���,FO��-E�O���,FO�&a �O �N�M&�&��L�O 0 
logconsole 
logConsole�N �K&��K &�  �J�I�J 0 processname processName�I 0 
consolemsg 
consoleMsg�M  &� �H�G�F�H 0 processname processName�G 0 
consolemsg 
consoleMsg�F 0 shellcommand shellCommand&� �E�D ?�C�B S e�A g�@�?�E  0 coercetostring coerceToString
�D .sysontocTEXT       shor�C 0 replacesimple replaceSimple
�B 
leng
�A 
spac
�@ 
strq
�? .sysoexecTEXT���     TEXT�L I*�k+  E�O*�jj �mvk+ E�O��,j  �E�Y hO��%�%�%��,%�%��,%E�O�j 
O�OP&b �> {�=�<&�&��;�> 0 loglevel logLEVEL�= �:&��: &�  �9�8�9 	0 level  �8 0 somemsg someMsg�<  &� �7�6�5�4�3�2�7 	0 level  �6 0 somemsg someMsg�5 0 	maxxcount 	maxXcount�4 0 logname logName�3 0 xcount xCount�2 0 i  &� �1 � ��0�1 �0 0 
logconsole 
logConsole�; 5�E�Ob  �%E�O��kE�O k�kh ��%E�[OY��O*��l+ OP&c �/ ��.�-&�&��,�/ 0 logmain logMAIN�. �+&��+ &�  �*�* 0 somemsg someMsg�-  &� �)�) 0 somemsg someMsg&� �(�( 0 loglevel logLEVEL�, *j�l+  &d �' ��&�%&�&��$�' 0 clickatcoords clickAtCoords�& �#&��# &�  �"�!�" 0 xclick xClick�! 0 yclick yClick�%  &� � ��  0 xclick xClick� 0 yclick yClick&� 	���� ����!
� 
dire
� olierndD
� .sysorondlong        doub
� 
strq
� 
spac
� .sysoexecTEXT���     TEXT
� 
TEXT�$ 1���l E�O���l E�Ob  �,�%�%�%�%j O��&�%�%&e �!��&�&��� *0 clickobjectbycoords clickObjectByCoords� �&�� &�  �� 0 
someobject 
someObject�  &� �������� 0 
someobject 
someObject� 0 xcoord xCoord� 0 ycoord yCoord� 0 xsize xSize� 0 ysize ySize� 0 xclick xClick� 0 yclick yClick&� !�
�	�����
�
 
posn
�	 
cobj
� 
ptsz
� 
dire
� olierndD
� .sysorondlong        doub� 0 clickatcoords clickAtCoords� N�Z��,E[�k/E�Z[�l/E�ZO��,E[�k/E�Z[�l/E�ZO��l!��l E�O��l!��l E�O*��l+ OP&f �!^��&�&�� �  0 coercetostring coerceToString� ��&��� &�  ����  0 incomingobject incomingObject�  &� ������������������  0 incomingobject incomingObject�� 0 errmsg errMsg�� 0 errnum errNum�� 0 	olddelims 	oldDelims�� 0 
errmsglead 
errMsgLead�� 0 errmsgtrail errMsgTrail�� 0 od  �� 0 objectstring objectString&� ������������!�!�����&�����!�����"��"'"+��"2"8
�� 
pcls
�� 
TEXT
�� 
ctxt
�� 
long
�� 
doub
�� 
utxt�� j0 3some_uuid_property_54f827c7379e4073b5a216bb9cde575d 3some_UUID_Property_54F827C7379E4073B5A216BB9CDE575D�� 0 errmsg errMsg&� ������
�� 
errn�� 0 errnum errNum��  
�� 
ascr
�� 
txdl
�� 
cobj
�� 
citm��  
�� 
bool� ���,�  ��&E[�,E�ZO�Yk��,�  ��&E[�,E�ZO��&YQ��,�  ��&E[�,E�ZO��&Y7��,�  ��&E[�,E�ZO��&Y S ���,FOPW 9X 	 
��,�kvlvE[�k/E�Z[�l/��,FZO��-E[�k/E�Z[�l/E�ZO���,FOa ��,FOPW �X 	 �a 	 �a a & Da E�Oa E�O��,�lvE[�k/E�Z[�l/��,FZO��l/E�O���,FO��k/E�O���,FOPY k�E�O�� )��,�lvE[�k/E�Z[�l/��,FZO��l/E�O���,FY hO�� /��,�lvE[�k/E�Z[�l/��,FZO���,FO��k/E�O���,FY hOPO�&g ��"�����&�&����� 0 gettextbefore getTextBefore�� ��&��� &�  ������ 0 
sourcetext 
sourceTEXT�� 0 stophere stopHere��  &� �������������� 0 
sourcetext 
sourceTEXT�� 0 stophere stopHere�� 0 	olddelims 	oldDelims�� 0 finalresult finalResult�� 0 errmsg errMsg�� 0 errnum errNum&� 	����������#��&�#-
�� 
ascr
�� 
txdl
�� 
cobj
�� 
citm
�� .corecnte****       ****�� 0 errmsg errMsg&� ������
�� 
errn�� 0 errnum errNum��  �� R C��,�lvE[�k/E�Z[�l/��,FZO��-j k  ���,FO�Y ��k/E�O���,FO�W X  ���,FO�&h ��#5����&�&�����  0 gettextbetween getTextBetween�� ��&��� &�  ���� 	0 prefs  ��  &� ����������������������� 	0 prefs  �� 0 defaultprefs defaultPrefs�� 0 
sourcetext 
sourceTEXT�� 0 
beforetext 
beforeText�� 0 	aftertext 	afterText�� 0 textitemnum textItemNum��  0 includemarkers includeMarkers�� 0 	olddelims 	oldDelims�� 0 prefixremoved prefixRemoved� 0 finalresult finalResult� 0 errmsg errMsg� 0 errnum errNum&� ������#]���#a����������' $� 0 textitemnum textItemNum�  0 includemarkers includeMarkers� 
� 
pcls
� 
list
� 
TEXT
� 
bool
� 
errn� 
� .corecnte****       ****
� 
cobj� 0 
sourcetext 
sourceTEXT� 0 
beforetext 
beforeText� 0 	aftertext 	afterText� 
� 
ascr
� 
txdl
� 
citm� 0 errmsg errMsg'  ���
� 
errn� 0 errnum errNum�  �� ��l�f�E�O��,�	 ��,�&��& )��l�Y hO��,�  1�j �  ���/��,FY hO���k/��l/��m/a E�Y hO��%E�O��,E�O��,E�O��,E�O��,E�O��,E�O \_ a ,�lvE[�k/E�Z[�l/_ a ,FZO�a �/E�O�_ a ,FO�a k/E�O�_ a ,FO� ��%�%E�Y hOPW X  �_ a ,FOa E�O�OP&i �$��''�� 0 
parsechars 
parseChars� �'� '  �� 	0 prefs  �  ' 	���������� 	0 prefs  � 0 defaultprefs defaultPrefs� 0 
sourcetext 
sourceTEXT� 0 parsestring parseString� 0 considercase considerCase� 0 	olddelims 	oldDelims� 0 
parsedlist 
parsedList� 0 errmsg errMsg� 0 errnum errNum' ������������$����$���'��$�� 0 considercase considerCase
� 
pcls
� 
list
� .corecnte****       ****� 0 
sourcetext 
sourceTEXT
� 
cobj� 0 parsestring parseString� � � 0 somekey someKey
� 
errn� 
� 
ascr
� 
txdl
� 
TEXT
� 
citm� 0 errmsg errMsg' ���
� 
errn� 0 errnum errNum�  �  �  � ��elE�O��,�  5�j l ��k/��l/��m/�E�Y ��k/��l/�E�OPY ��,�ml�, )��l�OPY hO��%E�O��,E�O��,E�O��,E�O��,E�O =��&kv��,FO� a g 
�a -E�VY ga  
�a -E�VO���,FO�W #X   
���,FW X  hO)�la �%&j �$���''�~� 0 replacesimple replaceSimple� �}'�} '  �|�| 	0 prefs  �  ' 	�{�z�y�x�w�v�u�t�s�{ 	0 prefs  �z 0 defaultprefs defaultPrefs�y 0 considercase considerCase�x 0 
sourcetext 
sourceTEXT�w 0 oldchars oldChars�v 0 newchars newChars�u 0 	olddelims 	oldDelims�t 0 
parsedlist 
parsedList�s 0 newtext newText' �r�q�p�o�n�m�l�k�j�i�h�g�f�e%e�d�c�b%��a�r 0 considercase considerCase
�q 
pcls
�p 
list
�o .corecnte****       ****�n 0 
sourcetext 
sourceTEXT
�m 
cobj�l 0 oldchars oldChars�k 0 newchars newChars�j �i �h �g 0 somekey someKey
�f 
errn�e 
�d 
TEXT
�c 
ascr
�b 
txdl
�a 
citm�~ ��elE�O��,�  ?�j m ��k/��l/��m/���/�E�Y ��k/��l/��m/�E�OPY ��,�ml�, )��l�OPY hO��%E�O��,E�O��,E�O��,E�O��,E�O��&E�O_ a ,E�O�_ a ,FO� (a g �a -E�O��&kv_ a ,FO��&E�VY %ga  �a -E�O��&kv_ a ,FO��&E�VO�_ a ,FO�OP&k �`%��_�^''	�]�` 0 unparsechars unParseChars�_ �\'
�\ '
  �[�Z�[ 0 thislist thisList�Z 0 newdelim newDelim�^  ' �Y�X�W�V�U�T�Y 0 thislist thisList�X 0 newdelim newDelim�W 0 	olddelims 	oldDelims�V 0 unparsedtext unparsedText�U 0 errmsg errMsg�T 0 errnum errNum'	 	�S�R�Q�P'�O�N�M&7
�S 
ascr
�R 
txdl
�Q 
TEXT�P 0 errmsg errMsg' �L�K�J
�L 
errn�K 0 errnum errNum�J  �O  �N  
�M 
errn�] D��,E�O ��&kv��,FO��&E�O���,FO�W !X   
���,FW X  hO)�l�%ascr  ��ޭ