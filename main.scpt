FasdUAS 1.101.10   ��   ��    k             l     ��  ��      main script     � 	 	    m a i n   s c r i p t   
  
 l     ��  ��      Erik Shagdar, NYHTC     �   (   E r i k   S h a g d a r ,   N Y H T C      l     ��������  ��  ��        l     ��  ��    %  Generated: 2016-03-23 18:06:31     �   >   G e n e r a t e d :   2 0 1 6 - 0 3 - 2 3   1 8 : 0 6 : 3 1      l     ��  ��    n h Run 'main_helper.applescript' to after making changes in any .applescript file and after each git pull.     �   �   R u n   ' m a i n _ h e l p e r . a p p l e s c r i p t '   t o   a f t e r   m a k i n g   c h a n g e s   i n   a n y   . a p p l e s c r i p t   f i l e   a n d   a f t e r   e a c h   g i t   p u l l .      l     ��  ��    � � Assumes file is located at '~/Code/applescript-fm-helper/'. If it does not, make sure to update clickCommandPosix property and 'vendor.sh' script.     �  &   A s s u m e s   f i l e   i s   l o c a t e d   a t   ' ~ / C o d e / a p p l e s c r i p t - f m - h e l p e r / ' .   I f   i t   d o e s   n o t ,   m a k e   s u r e   t o   u p d a t e   c l i c k C o m m a n d P o s i x   p r o p e r t y   a n d   ' v e n d o r . s h '   s c r i p t .     !   l     ��������  ��  ��   !  " # " j     �� $�� 0 	debugmode 	DebugMode $ m     ��
�� boovfals #  % & % j    �� '�� 0 
scriptname 
ScriptName ' m     ( ( � ) )  m a i n . s c p t &  * + * j    �� ,�� &0 clickcommandposix clickCommandPosix , n     - . - 1    ��
�� 
psxp . l    /���� / b     0 1 0 l    2���� 2 c     3 4 3 l    5���� 5 I   �� 6��
�� .earsffdralis        afdr 6 m    ��
�� afdrcusr��  ��  ��   4 m    ��
�� 
TEXT��  ��   1 m     7 7 � 8 8 f C o d e / a p p l e s c r i p t - f m - h e l p e r / v e n d o r / c l i c l i c k / c l i c l i c k��  ��   +  9 : 9 l     ��������  ��  ��   :  ; < ; l     ��������  ��  ��   <  = > = i     ? @ ? I      �� A���� $0 encodecharforurl encodeCharForURL A  B�� B o      ���� 0 	this_char  ��  ��   @ k     K C C  D E D l     �� F G��   F   version 1.0    G � H H    v e r s i o n   1 . 0 E  I J I l     ��������  ��  ��   J  K L K r      M N M l     O���� O l     P���� P I    �� Q��
�� .sysoctonshor       TEXT Q o     ���� 0 	this_char  ��  ��  ��  ��  ��   N l      R���� R o      ���� 0 	ascii_num 	ASCII_num��  ��   L  S T S r      U V U J     W W  X Y X m    	 Z Z � [ [  0 Y  \ ] \ m   	 
 ^ ^ � _ _  1 ]  ` a ` m   
  b b � c c  2 a  d e d m     f f � g g  3 e  h i h m     j j � k k  4 i  l m l m     n n � o o  5 m  p q p m     r r � s s  6 q  t u t m     v v � w w  7 u  x y x m     z z � { {  8 y  | } | m     ~ ~ �    9 }  � � � m     � � � � �  A �  � � � m     � � � � �  B �  � � � m     � � � � �  C �  � � � m     � � � � �  D �  � � � m     � � � � �  E �  ��� � m     � � � � �  F��   V l      ����� � o      ���� 0 hex_list  ��  ��   T  � � � r   ! / � � � n   ! - � � � 4   " -�� �
�� 
cobj � l  % , ����� � [   % , � � � l  % * ����� � _   % * � � � o   % &���� 0 	ascii_num 	ASCII_num � m   & )���� ��  ��   � m   * +���� ��  ��   � l  ! " ����� � o   ! "���� 0 hex_list  ��  ��   � o      ���� 0 x   �  � � � r   0 > � � � n   0 < � � � 4   1 <�� �
�� 
cobj � l  4 ; ����� � [   4 ; � � � l  4 9 ����� � `   4 9 � � � o   4 5���� 0 	ascii_num 	ASCII_num � m   5 8���� ��  ��   � m   9 :���� ��  ��   � l  0 1 ����� � o   0 1���� 0 hex_list  ��  ��   � o      ���� 0 y   �  ��� � L   ? K � � c   ? J � � � l  ? F ����� � b   ? F � � � b   ? D � � � m   ? B � � � � �  % � o   B C���� 0 x   � o   D E���� 0 y  ��  ��   � m   F I��
�� 
TEXT��   >  � � � l     ��������  ��  ��   �  � � � i     � � � I      �� ����� $0 encodetextforurl encodeTextForURL �  � � � o      ���� 0 	this_text   �  � � � o      ���� 0 encode_url_a encode_URL_A �  ��� � o      ���� 0 encode_url_b encode_URL_B��  ��   � k     f � �  � � � l     �� � ���   �   version 1.0    � � � �    v e r s i o n   1 . 0 �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � / ) this sub-routine is used to encode text     � � � � R   t h i s   s u b - r o u t i n e   i s   u s e d   t o   e n c o d e   t e x t   �  � � � r      � � � m      � � � � � H a b c d e f g h i j k l m n o p q r s t u v w x y z 0 1 2 3 4 5 6 7 8 9 � l      ����� � o      ���� 0 standard_characters  ��  ��   �  � � � l    � � � � r     � � � m     � � � � � 2 $ + ! ' / ? ; & @ = # % > < { } [ ] " ~ ` ^ \ | * � l      ����� � o      ���� 0 url_a_chars URL_A_chars��  ��   � 6 0 double excape this since the code gets compiled    � � � � `   d o u b l e   e x c a p e   t h i s   s i n c e   t h e   c o d e   g e t s   c o m p i l e d �  � � � r     � � � m    	 � � � � �  . - _ : � l      ����� � o      ���� 0 url_b_chars URL_B_chars��  ��   �  � � � r     � � � l    ����� � o    ���� 0 standard_characters  ��  ��   � l      ����� � o      ���� 0 acceptable_characters  ��  ��   �  � � � Z    � ����� � =    � � � o    ���� 0 encode_url_a encode_URL_A � m    ��
�� boovfals � r     � � � b     �  � l   ���� o    ���� 0 acceptable_characters  ��  ��    l   ���� o    ���� 0 url_a_chars URL_A_chars��  ��   � l     ���� o      ���� 0 acceptable_characters  ��  ��  ��  ��   �  Z    /��� =    #	 o     !�~�~ 0 encode_url_b encode_URL_B	 m   ! "�}
�} boovfals r   & +

 b   & ) l  & '�|�{ o   & '�z�z 0 acceptable_characters  �|  �{   l  ' (�y�x o   ' (�w�w 0 url_b_chars URL_B_chars�y  �x   l     �v�u o      �t�t 0 acceptable_characters  �v  �u  ��  �    r   0 3 m   0 1 �   l     �s�r o      �q�q 0 encoded_text  �s  �r    X   4 c�p Z   D ^�o E  D G  l  D E!�n�m! o   D E�l�l 0 acceptable_characters  �n  �m    o   E F�k�k 0 	this_char   r   J O"#" l  J M$�j�i$ b   J M%&% l  J K'�h�g' o   J K�f�f 0 encoded_text  �h  �g  & o   K L�e�e 0 	this_char  �j  �i  # l     (�d�c( o      �b�b 0 encoded_text  �d  �c  �o   r   R ^)*) c   R \+,+ l  R Z-�a�`- b   R Z./. l  R S0�_�^0 o   R S�]�] 0 encoded_text  �_  �^  / I   S Y�\1�[�\ $0 encodecharforurl encodeCharForURL1 2�Z2 o   T U�Y�Y 0 	this_char  �Z  �[  �a  �`  , m   Z [�X
�X 
TEXT* l     3�W�V3 o      �U�U 0 encoded_text  �W  �V  �p 0 	this_char   o   7 8�T�T 0 	this_text   4�S4 L   d f55 l  d e6�R�Q6 o   d e�P�P 0 encoded_text  �R  �Q  �S   � 787 l     �O�N�M�O  �N  �M  8 9:9 i    ;<; I      �L=�K�L 0 
getfromfmp 
getFromFMP= >�J> o      �I�I 	0 prefs  �J  �K  < k     �?? @A@ l     �HBC�H  B   version 1.8   C �DD    v e r s i o n   1 . 8A EFE l     �G�F�E�G  �F  �E  F GHG Q     IJKI k    LL MNM l   �DOP�D  O D > prefs MIGHT be a record that looks like this: {fmType:"Adv"}    P �QQ |   p r e f s   M I G H T   b e   a   r e c o r d   t h a t   l o o k s   l i k e   t h i s :   { f m T y p e : " A d v " }  N R�CR r    STS n    UVU o    �B�B 0 fmtype fmTypeV o    �A�A 	0 prefs  T o      �@�@ 0 fmtype fmType�C  J R      �?�>�=
�? .ascrerr ****      � ****�>  �=  K r    WXW m    YY �ZZ  U n kX o      �<�< 0 fmtype fmTypeH [\[ l   �;�:�9�;  �:  �9  \ ]^] r    _`_ m    aa �bb D A p p l e S c r i p t _ T r a n s f e r - D O _ N O T _ R E N A M E` o      �8�8 0 
astransfer 
asTransfer^ cdc r    efe m    gg �hh  F i l e M a k e r   P r of o      �7�7 0 fmpname fmpNamed iji l   �6�5�4�6  �5  �4  j klk Z    �mn�3om H    $pp E    #qrq l   !s�2�1s I   !�0t�/
�0 .earsffdralis        afdrt  f    �/  �2  �1  r o   ! "�.�. 0 fmpname fmpNamen k   ' {uu vwv O   ' =xyx r   + <z{z n   + :|}| 1   8 :�-
�- 
dnam} l  + 8~�,�+~ 6  + 8� 4  + /�*�
�* 
pcap� m   - .�)�) � C  0 7��� 1   1 3�(
�( 
dnam� o   4 6�'�' 0 fmpname fmpName�,  �+  { o      �&�& 0 fmpactivename fmpActiveNamey m   ' (���                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  w ��� Z   > s����%� =  > A��� o   > ?�$�$ 0 fmtype fmType� m   ? @�� ���  U n k� r   D M��� b   D K��� b   D I��� b   D G��� m   D E�� ���  t e l l   a p p   "� o   E F�#�# 0 fmpactivename fmpActiveName� m   G H�� ���  "� o   I J�"
�" 
ret � o      �!�! 0 begintellfm beginTellFM� ��� =  P S��� o   P Q� �  0 fmtype fmType� m   Q R�� ���  A d v� ��� r   V ]��� b   V [��� m   V Y�� ��� Z t e l l   a p p   i d   " c o m . f i l e m a k e r . c l i e n t . a d v a n c e d 1 2 "� o   Y Z�
� 
ret � o      �� 0 begintellfm beginTellFM� ��� =  ` e��� o   ` a�� 0 fmtype fmType� m   a d�� ���  P r o� ��� r   h o��� b   h m��� m   h k�� ��� P t e l l   a p p   i d   " c o m . f i l e m a k e r . c l i e n t . p r o 1 2 "� o   k l�
� 
ret � o      �� 0 begintellfm beginTellFM�  �%  � ��� r   t {��� b   t y��� o   t u�
� 
ret � m   u x�� ���  e n d   t e l l� o      �� 0 	endtellfm 	endTellFM�  �3  o k   ~ ��� ��� r   ~ ���� m   ~ ��� ���  � o      �� 0 begintellfm beginTellFM� ��� r   � ���� m   � ��� ���  � o      �� 0 	endtellfm 	endTellFM�  l ��� l  � �����  �  �  � ��� r   � ���� b   � ���� b   � ���� m   � ��� ��� $ c e l l   1   o f   l a y o u t   "� o   � ��� 0 
astransfer 
asTransfer� m   � ��� ���  "   o f   w i n d o w   1� o      �� 0 	codetoget 	codeToGet� ��� r   � ���� b   � ���� b   � ���� o   � ��� 0 begintellfm beginTellFM� o   � ��� 0 	codetoget 	codeToGet� o   � ��� 0 	endtellfm 	endTellFM� o      �� 0 
sendsource 
sendSource� ��� r   � ���� I  � ��
��	
�
 .sysodsct****        scpt� o   � ��� 0 
sendsource 
sendSource�	  � o      �� 0 	inputdata 	inputData� ��� l  � �����  �  �  � ��� L   � ��� o   � ��� 0 	inputdata 	inputData�  : ��� l     �� ���  �   ��  � ��� i     #��� I      ������� 0 	sendtofmp 	sendToFMP� ���� o      ���� 0 somedata someData��  ��  � k    )�� ��� l     ������  �   version 1.6   � ���    v e r s i o n   1 . 6� ��� l     ��������  ��  ��  � ��� Q     ���� k    �� ��� l   ��� ��  � b \ someData MIGHT be a record that looks like this: {fmType:"Adv", someData:"BLAH BLAH BLAH"}      � �   s o m e D a t a   M I G H T   b e   a   r e c o r d   t h a t   l o o k s   l i k e   t h i s :   { f m T y p e : " A d v " ,   s o m e D a t a : " B L A H   B L A H   B L A H " }  �  r     n     o    ���� 0 fmtype fmType o    ���� 0 somedata someData o      ���� 0 fmtype fmType �� r   	 	
	 n   	  o   
 ���� 0 somedata someData o   	 
���� 0 somedata someData
 o      ���� 0 somedata someData��  � R      ������
�� .ascrerr ****      � ****��  ��  � r     m     �  U n k o      ���� 0 fmtype fmType�  l   ��������  ��  ��    r     m     � D A p p l e S c r i p t _ T r a n s f e r - D O _ N O T _ R E N A M E o      ���� 0 
astransfer 
asTransfer  r    ! m     �  F i l e M a k e r   P r o o      ���� 0 fmpname fmpName   Z   " �!"��#! H   " *$$ E   " )%&% l  " ''����' I  " '��(��
�� .earsffdralis        afdr(  f   " #��  ��  ��  & o   ' (���� 0 fmpname fmpName" k   - �)) *+* O   - C,-, r   1 B./. n   1 @010 1   > @��
�� 
dnam1 l  1 >2����2 6  1 >343 4  1 5��5
�� 
pcap5 m   3 4���� 4 C  6 =676 1   7 9��
�� 
dnam7 o   : <���� 0 fmpname fmpName��  ��  / o      ���� 0 fmpactivename fmpActiveName- m   - .88�                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  + 9:9 Z   D {;<=��; =  D G>?> o   D E���� 0 fmtype fmType? m   E F@@ �AA  U n k< r   J SBCB b   J QDED b   J OFGF b   J MHIH m   J KJJ �KK  t e l l   a p p   "I o   K L���� 0 fmpactivename fmpActiveNameG m   M NLL �MM  "E o   O P��
�� 
ret C o      ���� 0 begintellfm beginTellFM= NON =  V [PQP o   V W���� 0 fmtype fmTypeQ m   W ZRR �SS  A d vO TUT r   ^ eVWV b   ^ cXYX m   ^ aZZ �[[ Z t e l l   a p p   i d   " c o m . f i l e m a k e r . c l i e n t . a d v a n c e d 1 2 "Y o   a b��
�� 
ret W o      ���� 0 begintellfm beginTellFMU \]\ =  h m^_^ o   h i���� 0 fmtype fmType_ m   i l`` �aa  P r o] b��b r   p wcdc b   p uefe m   p sgg �hh P t e l l   a p p   i d   " c o m . f i l e m a k e r . c l i e n t . p r o 1 2 "f o   s t��
�� 
ret d o      ���� 0 begintellfm beginTellFM��  ��  : iji l  | |��������  ��  ��  j k��k r   | �lml b   | �non o   | }��
�� 
ret o m   } �pp �qq  e n d   t e l lm o      ���� 0 	endtellfm 	endTellFM��  ��  # k   � �rr sts r   � �uvu m   � �ww �xx  v o      ���� 0 begintellfm beginTellFMt y��y r   � �z{z m   � �|| �}}  { o      ���� 0 	endtellfm 	endTellFM��    ~~ l  � ���������  ��  ��   ��� r   � ���� c   � ���� o   � ����� 0 somedata someData� m   � ���
�� 
TEXT� o      ���� "0 somedatacleaned someDataCleaned� ��� r   � ���� n  � ���� 1   � ���
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
asTransfer� m  �� ��� & "   o f   w i n d o w   1   t o   ( "� o  ���� "0 somedatacleaned someDataCleaned� m  �� ���  "   a s   s t r i n g )� o      ���� 0 	codetoset 	codeToSet� ��� r  !��� b  � � b   o  �� 0 begintellfm beginTellFM o  �~�~ 0 	codetoset 	codeToSet  o  �}�} 0 	endtellfm 	endTellFM� o      �|�| 0 
sendsource 
sendSource�  l ""�{�z�y�{  �z  �y    I "'�x�w
�x .sysodsct****        scpt o  "#�v�v 0 
sendsource 
sendSource�w   �u l ((�t�s�r�t  �s  �r  �u  � 	
	 l     �q�p�o�q  �p  �o  
  i   $ ' I      �n�m�n 40 displayfilemakerdatabase displayFileMakerDatabase �l o      �k�k 	0 prefs  �l  �m   k    �  l     �j�j     version 1.5    �    v e r s i o n   1 . 5  l     �i�h�g�i  �h  �g    Q    � k   �   r    !"! K    ## �f$%�f 0 	fmapptype 	fmAppType$ m    && �''  P r o% �e()�e .0 waitcycledelayseconds waitCycleDelaySeconds( m    �d�d ) �c*�b�c ,0 waitsavetotalseconds waitSaveTotalSeconds* ]    +,+ m    	�a�a , 1   	 
�`
�` 
min �b  " o      �_�_ 0 defaultprefs defaultPrefs  -.- r    /0/ b    121 o    �^�^ 	0 prefs  2 o    �]�] 0 defaultprefs defaultPrefs0 o      �\�\ 	0 prefs  . 343 l   �[�Z�Y�[  �Z  �Y  4 565 Z   478�X�W7 o    �V�V 0 	debugmode 	DebugMode8 I    0�U9�T�U 0 
logconsole 
logConsole9 :;: o    $�S�S 0 
scriptname 
ScriptName; <�R< b   $ ,=>= m   $ %?? �@@ @ d i s p l a y F i l e M a k e r D a t a b a s e   p r e f s :  > I   % +�QA�P�Q  0 coercetostring coerceToStringA B�OB o   & '�N�N 	0 prefs  �O  �P  �R  �T  �X  �W  6 CDC l  5 5�M�L�K�M  �L  �K  D EFE r   5 :GHG n   5 8IJI o   6 8�J�J 0 dbname dbNameJ o   5 6�I�I 	0 prefs  H o      �H�H 0 dbname dbNameF KLK l  ; ;�G�F�E�G  �F  �E  L MNM r   ; @OPO n   ; >QRQ o   < >�D�D ,0 waitsavetotalseconds waitSaveTotalSecondsR o   ; <�C�C 	0 prefs  P o      �B�B ,0 waitsavetotalseconds waitSaveTotalSecondsN STS r   A FUVU n   A DWXW o   B D�A�A .0 waitcycledelayseconds waitCycleDelaySecondsX o   A B�@�@ 	0 prefs  V o      �?�? .0 waitcycledelayseconds waitCycleDelaySecondsT YZY l  G G�>�=�<�>  �=  �<  Z [\[ r   G R]^] I  G P�;_`
�; .sysorondlong        doub_ l  G Ja�:�9a ^   G Jbcb o   G H�8�8 ,0 waitsavetotalseconds waitSaveTotalSecondsc o   H I�7�7 .0 waitcycledelayseconds waitCycleDelaySeconds�:  �9  ` �6d�5
�6 
dired m   K L�4
�4 olierndD�5  ^ o      �3�3 0 waitcyclemax waitCycleMax\ efe l  S S�2�1�0�2  �1  �0  f ghg Z   S fij�/ki =  S Xlml n   S Vnon o   T V�.�. 0 	fmapptype 	fmAppTypeo o   S T�-�- 	0 prefs  m m   V Wpp �qq  A d vj r   [ ^rsr m   [ \tt �uu > c o m . f i l e m a k e r . c l i e n t . a d v a n c e d 1 2s o      �,�, 0 fmappbundleid fmAppBundleID�/  k r   a fvwv m   a dxx �yy 4 c o m . f i l e m a k e r . c l i e n t . p r o 1 2w o      �+�+ 0 fmappbundleid fmAppBundleIDh z{z l  g g�*�)�(�*  �)  �(  { |}| l  g g�'�&�%�'  �&  �%  } ~~ U   g ���� k   n ��� ��� l  n n�$�#�"�$  �#  �"  � ��� r   n s��� m   n q�!
�! 
null� o      � �  0 doclist docList� ��� Q   t ����� k   w ��� ��� w   w ���� O   { ���� r   � ���� 2   � ��
� 
docu� o      �� 0 doclist docList� 5   { ����
� 
capp� o    ��� 0 fmappbundleid fmAppBundleID
� kfrmID  �2                                                                                  FM12  alis    �  MacintoshSSD               �u8\H+   3�FileMaker Pro Advanced.app                                      4�̙�Q        ����  	                FileMaker Pro 12 Advanced     �u~�      ̚"�     3�   �  PMacintoshSSD:Applications: FileMaker Pro 12 Advanced: FileMaker Pro Advanced.app  6  F i l e M a k e r   P r o   A d v a n c e d . a p p    M a c i n t o s h S S D  AApplications/FileMaker Pro 12 Advanced/FileMaker Pro Advanced.app   / ��  � ��� l  � �����  �  �  � ��� Z  � ������ >  � ���� o   � ��� 0 doclist docList� m   � ��
� 
null�  S   � ��  �  � ��� l  � �����  �  �  �  � R      ���
� .ascrerr ****      � ****� o      �� 0 errmsg errMsg� ���
� 
errn� o      �� 0 errnum errNum�  � Z   � ����
�� =  � ���� o   � ��	�	 0 errnum errNum� m   � ������ l  � �����  � � � just keep trying - this error can be caused when a database is opening and the open script takes a bit too long to finish, or something in the FM interface is slow to respond.    � ���b   j u s t   k e e p   t r y i n g   -   t h i s   e r r o r   c a n   b e   c a u s e d   w h e n   a   d a t a b a s e   i s   o p e n i n g   a n d   t h e   o p e n   s c r i p t   t a k e s   a   b i t   t o o   l o n g   t o   f i n i s h ,   o r   s o m e t h i n g   i n   t h e   F M   i n t e r f a c e   i s   s l o w   t o   r e s p o n d .  �
  � R   � ����
� .ascrerr ****      � ****� b   � ���� m   � ��� ��� \ E r r o r   g e t t i n g   l i s t   o f   d a t a b a s e s   a l r e a d y   o p e n :  � o   � ��� 0 errmsg errMsg� ���
� 
errn� o   � ��� 0 errnum errNum�  � ��� l  � ��� ���  �   ��  � ���� I  � ������
�� .sysodelanull��� ��� nmbr� o   � ����� .0 waitcycledelayseconds waitCycleDelaySeconds��  ��  � o   j k���� 0 waitcyclemax waitCycleMax ��� l  � ���������  ��  ��  � ��� X   ������� k   ���� ��� r   � ���� n   � ���� 1   � ���
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
�� .ascrcmnt****      � ****� o  FG���� 0 docname docName��  ��  ��  � ���� P  P������ k  W��� ��� l WW������  � w qif debugMode then logConsole(ScriptName, "displayFileMakerDatabase docName: " & coerceToString(class of docName))   � ��� � i f   d e b u g M o d e   t h e n   l o g C o n s o l e ( S c r i p t N a m e ,   " d i s p l a y F i l e M a k e r D a t a b a s e   d o c N a m e :   "   &   c o e r c e T o S t r i n g ( c l a s s   o f   d o c N a m e ) )�    l WW����   u oif debugMode then logConsole(ScriptName, "displayFileMakerDatabase dbName: " & coerceToString(class of dbName))    � � i f   d e b u g M o d e   t h e n   l o g C o n s o l e ( S c r i p t N a m e ,   " d i s p l a y F i l e M a k e r D a t a b a s e   d b N a m e :   "   &   c o e r c e T o S t r i n g ( c l a s s   o f   d b N a m e ) )  l WW��������  ��  ��    l WW��������  ��  ��   	
	 l WW����   s m apparently these two TEXT variables have some difference (formatting?) even when they are identical STRINGS:    � �   a p p a r e n t l y   t h e s e   t w o   T E X T   v a r i a b l e s   h a v e   s o m e   d i f f e r e n c e   ( f o r m a t t i n g ? )   e v e n   w h e n   t h e y   a r e   i d e n t i c a l   S T R I N G S :
 �� Z  W��� = Wb l W\���� c  W\ o  WX���� 0 docname docName m  X[��
�� 
TEXT��  ��   l \a���� c  \a o  \]���� 0 dbname dbName m  ]`��
�� 
TEXT��  ��   k  e�  l ee����   " if debugMode then log "SAME"    � 8 i f   d e b u g M o d e   t h e n   l o g   " S A M E "  !  w  e�"#" O  i�$%$ k  u�&& '(' I uz��)��
�� .miscmvisnull���    obj ) o  uv���� 0 onedoc oneDoc��  ( *+* Z {�,-����, o  {����� 0 	debugmode 	DebugMode- n ��./. I  ����0���� 0 
logconsole 
logConsole0 121 o  ������ 0 
scriptname 
ScriptName2 3��3 b  ��454 m  ��66 �77 B d i s p l a y F i l e M a k e r D a t a b a s e   o n e D o c :  5 n ��898 I  ����:����  0 coercetostring coerceToString: ;��; o  ������ 0 onedoc oneDoc��  ��  9  f  ����  ��  /  f  ����  ��  + <��< l ����=>��  = ( "if debugMode then log (path to it)   > �?? D i f   d e b u g M o d e   t h e n   l o g   ( p a t h   t o   i t )��  % 5  ir��@��
�� 
capp@ o  mn���� 0 fmappbundleid fmAppBundleID
�� kfrmID  #2                                                                                  FM12  alis    �  MacintoshSSD               �u8\H+   3�FileMaker Pro Advanced.app                                      4�̙�Q        ����  	                FileMaker Pro 12 Advanced     �u~�      ̚"�     3�   �  PMacintoshSSD:Applications: FileMaker Pro 12 Advanced: FileMaker Pro Advanced.app  6  F i l e M a k e r   P r o   A d v a n c e d . a p p    M a c i n t o s h S S D  AApplications/FileMaker Pro 12 Advanced/FileMaker Pro Advanced.app   / ��  ! A��A L  ��BB m  ����
�� boovtrue��  ��   l ����CD��  C P Jif debugMode then logConsole(ScriptName, "displayFileMakerDatabase DIFF" )   D �EE � i f   d e b u g M o d e   t h e n   l o g C o n s o l e ( S c r i p t N a m e ,   " d i s p l a y F i l e M a k e r D a t a b a s e   D I F F "   )��  ��  � ����
�� conscase��  ��  �� 0 onedoc oneDoc� o   � ����� 0 doclist docList� FGF L  ��HH m  ����
�� boovfalsG I��I l ����������  ��  ��  ��   R      ��JK
�� .ascrerr ****      � ****J o      ���� 0 errmsg errMsgK ��L��
�� 
errnL o      ���� 0 errnum errNum��   R  ����MN
�� .ascrerr ****      � ****M b  ��OPO b  ��QRQ b  ��STS m  ��UU �VV @ d i s p l a y F i l e M a k e r D a t a b a s e   e r r o r :  T o  ������ 0 errmsg errMsgR m  ��WW �XX "   -   e r r o r   n u m b e r :  P o  ������ 0 errnum errNumN ��Y��
�� 
errnY o  ������ 0 errnum errNum��   Z��Z l ����������  ��  ��  ��   [\[ l     ��������  ��  ��  \ ]^] i   ( +_`_ I      ��a���� 20 ensurefilemakerdatabase ensureFileMakerDatabasea b��b o      ���� 	0 prefs  ��  ��  ` k     �cc ded l     ��fg��  f   version 1.3   g �hh    v e r s i o n   1 . 3e iji l     ��~�}�  �~  �}  j klk r     mnm n     opo o    �|�| 0 dbname dbNamep o     �{�{ 	0 prefs  n o      �z�z 0 dbname dbNamel qrq l   �y�x�w�y  �x  �w  r sts l   uvwu r    xyx I    �vz�u�v 40 displayfilemakerdatabase displayFileMakerDatabasez {�t{ K    || �s}~�s 0 dbname dbName} o    	�r�r 0 dbname dbName~ �q�p�q 0 	fmapptype 	fmAppType m   
 �� ���  A d v�p  �t  �u  y o      �o�o 0 isdisplayed isDisplayedv + % first, just see if one is available.   w ��� J   f i r s t ,   j u s t   s e e   i f   o n e   i s   a v a i l a b l e .t ��� Z   -���n�m� o    �l�l 0 	debugmode 	DebugMode� I    )�k��j�k 0 
logconsole 
logConsole� ��� o    "�i�i 0 
scriptname 
ScriptName� ��h� b   " %��� m   " #�� ��� $ T r i e d   t o   d i s p l a y :  � o   # $�g�g 0 dbname dbName�h  �j  �n  �m  � ��f� Z   . ����e�� o   . /�d�d 0 isdisplayed isDisplayed� L   2 4�� m   2 3�c
�c boovtrue�e  � k   7 ��� ��� Z  7 P���b�a� o   7 <�`�` 0 	debugmode 	DebugMode� I   ? L�_��^�_ 0 
logconsole 
logConsole� ��� o   @ E�]�] 0 
scriptname 
ScriptName� ��\� b   E H��� m   E F�� ��� , A b o u t   t o   t r y   t o   o p e n :  � o   F G�[�[ 0 dbname dbName�\  �^  �b  �a  � ��� l  Q Q�Z�Y�X�Z  �Y  �X  � ��W� Z   Q ����V�� I   Q W�U��T�U .0 openfilemakerdatabase openFileMakerDatabase� ��S� o   R S�R�R 	0 prefs  �S  �T  � k   Z ��� ��� l  Z Z�Q���Q  � 2 , was able to open it, so NOW display window.   � ��� X   w a s   a b l e   t o   o p e n   i t ,   s o   N O W   d i s p l a y   w i n d o w .� ��� I  Z _�P��O
�P .sysodelanull��� ��� nmbr� m   Z [�� ?�      �O  � ��� Z  ` y���N�M� o   ` e�L�L 0 	debugmode 	DebugMode� I   h u�K��J�K 0 
logconsole 
logConsole� ��� o   i n�I�I 0 
scriptname 
ScriptName� ��H� b   n q��� m   n o�� ��� R T r i e d   t o   o p e n ,   n o w   t r y   a g a i n   t o   d i s p l a y :  � o   o p�G�G 0 dbname dbName�H  �J  �N  �M  � ��� r   z ���� I   z ��F��E�F 40 displayfilemakerdatabase displayFileMakerDatabase� ��D� K   { ��� �C���C 0 dbname dbName� o   | }�B�B 0 dbname dbName� �A��@�A 0 	fmapptype 	fmAppType� m   ~ �� ���  A d v�@  �D  �E  � o      �?�? 0 isdisplayed isDisplayed� ��>� L   � ��� o   � ��=�= 0 isdisplayed isDisplayed�>  �V  � k   � ��� ��� l  � ��<���<  � 0 * Was NOT able to open it, so return false.   � ��� T   W a s   N O T   a b l e   t o   o p e n   i t ,   s o   r e t u r n   f a l s e .� ��;� L   � ��� m   � ��:
�: boovfals�;  �W  �f  ^ ��� l     �9�8�7�9  �8  �7  � ��� i   , /��� I      �6��5�6 .0 openfilemakerdatabase openFileMakerDatabase� ��4� o      �3�3 	0 prefs  �4  �5  � k     ��� ��� l     �2���2  �   version 1.3   � ���    v e r s i o n   1 . 3� ��� l     �1�0�/�1  �0  �/  � ��� Q     ����� k    u�� ��� r    ��� b    
��� b    ��� m    �� ��� < h t c l i n k : / / A c c e s s F i l e ? F i l e N a m e =� n    ��� o    �.�. 0 dbname dbName� o    �-�- 	0 prefs  � m    	�� ��� N & C o m m a n d = O p e n & S i l e n t O p e n = 1 & S h o w W i n d o w = 1� o      �,�, 0 	customurl 	customURL� ��� l   �+�*�)�+  �*  �)  � ��� O    p��� k    o��    l   �(�'�&�(  �'  �&    r    / b    - b    $	 b    "

 b     b     b     b     m     �  F M P : / / n     o    �%�% 0 serverip serverIP o    �$�$ 	0 prefs   m     �  / n     o    �#�# 0 
maindbname 
mainDbName o    �"�" 	0 prefs   m     �  ? s c r i p t = n    ! o    !�!�! <0 customlinkreceiverscriptname customLinkReceiverScriptName o    � �  	0 prefs  	 m   " #   �!!  & p a r a m = n  $ ,"#" I   % ,�$�� $0 encodetextforurl encodeTextForURL$ %&% o   % &�� 0 	customurl 	customURL& '(' m   & '�
� boovtrue( )�) m   ' (�
� boovfals�  �  #  f   $ % o      �� 0 fmpurl fmpURL *+* l  0 0����  �  �  + ,-, l  0 0�./�  . [ U we must double-encode equals (%3D) and ampersand (%26) to work-around FileMaker bug:   / �00 �   w e   m u s t   d o u b l e - e n c o d e   e q u a l s   ( % 3 D )   a n d   a m p e r s a n d   ( % 2 6 )   t o   w o r k - a r o u n d   F i l e M a k e r   b u g :- 121 r   0 <343 n  0 :565 I   1 :�7�� 0 replacesimple replaceSimple7 8�8 J   1 699 :;: o   1 2�� 0 fmpurl fmpURL; <=< m   2 3>> �??  % 3 D= @�@ m   3 4AA �BB 
 % 2 5 3 D�  �  �  6  f   0 14 o      �� 0 fmpurl fmpURL2 CDC r   = KEFE n  = IGHG I   > I�I�� 0 replacesimple replaceSimpleI J�J J   > EKK LML o   > ?�� 0 fmpurl fmpURLM NON m   ? @PP �QQ  % 2 6O R�
R m   @ CSS �TT 
 % 2 5 2 6�
  �  �  H  f   = >F o      �	�	 0 fmpurl fmpURLD UVU l  L L����  �  �  V WXW Z  L gYZ��Y o   L Q�� 0 	debugmode 	DebugModeZ n  T c[\[ I   U c�]�� 0 
logconsole 
logConsole] ^_^ o   U Z� �  0 
scriptname 
ScriptName_ `��` b   Z _aba m   Z ]cc �dd < o p e n F i l e M a k e r D a t a b a s e   f m p U R L :  b o   ] ^���� 0 fmpurl fmpURL��  �  \  f   T U�  �  X efe l  h h��������  ��  ��  f ghg I  h m��i��
�� .GURLGURLnull��� ��� TEXTi o   h i���� 0 fmpurl fmpURL��  h j��j l  n n��������  ��  ��  ��  � m    kk�                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  � lml l  q q��������  ��  ��  m non L   q spp m   q r��
�� boovtrueo q��q l  t t��������  ��  ��  ��  � R      ��rs
�� .ascrerr ****      � ****r o      ���� 0 errmsg errMsgs ��t��
�� 
errnt o      ���� 0 errnum errNum��  � k   } �uu vwv l  } }��xy��  x A ; ANY error should return FALSE, as in "could not be opened"   y �zz v   A N Y   e r r o r   s h o u l d   r e t u r n   F A L S E ,   a s   i n   " c o u l d   n o t   b e   o p e n e d "w {|{ l  } }��������  ��  ��  | }~} l  } �� L   } �� o   } ~���� 0 errmsg errMsg�  false   � ��� 
 f a l s e~ ���� l  � ���������  ��  ��  ��  � ��� l  � ���������  ��  ��  � ���� l  � ���������  ��  ��  ��  � ��� l     ��������  ��  ��  � ��� i   0 3��� I      ������� 0 sfr_dictget SFR_DictGet� ��� o      ���� 0 somedict someDict� ���� o      ���� 0 itemname itemName��  ��  � k     X�� ��� l     ������  �   version 1.0   � ���    v e r s i o n   1 . 0� ��� l     ��������  ��  ��  � ��� r     ��� b     
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
ascr��  ��  � ��� l  O O��������  ��  ��  � ��� L   O V�� I   O U������� 0 sfr_unescape SFR_Unescape� ���� o   P Q���� 0 	itemvalue 	itemValue��  ��  � ��� l  W W��������  ��  ��  � ���� l  W W��������  ��  ��  ��  � ��� l     ��������  ��  ��  � ��� i   4 7��� I      ������� 0 sfr_dictitem SFR_DictItem�    o      ���� 0 itemname itemName �� o      ���� 0 	itemvalue 	itemValue��  ��  � k       l     ����     version 1.0    �    v e r s i o n   1 . 0 	
	 l     ��������  ��  ��  
 �� L      b      b      b     
 b      m      �  < : I    ������ 0 
sfr_escape 
SFR_Escape �� o    ���� 0 itemname itemName��  ��   m    	 �  : = I   
 ����� 0 
sfr_escape 
SFR_Escape �~ o    �}�} 0 	itemvalue 	itemValue�~  �   m     �  : >��  �   l     �|�{�z�|  �{  �z    !"! i   8 ;#$# I      �y%�x�y 0 
sfr_escape 
SFR_Escape% &�w& o      �v�v 0 
somestring 
someString�w  �x  $ k     3'' ()( l     �u*+�u  *   version 1.0   + �,,    v e r s i o n   1 . 0) -.- l     �t�s�r�t  �s  �r  . /0/ r     121 J     33 454 m     66 �77  =5 898 m    :: �;;  :9 <=< m    >> �??  <= @�q@ m    AA �BB  >�q  2 o      �p�p  0 escapecharlist escapeCharList0 CDC l  	 	�o�n�m�o  �n  �m  D EFE X   	 .G�lHG k    )II JKJ r    'LML I    %�kN�j�k 0 replacesimple replaceSimpleN O�iO J    !PP QRQ o    �h�h 0 
somestring 
someStringR STS o    �g�g 0 onechar oneCharT U�fU b    VWV m    XX �YY  /W o    �e�e 0 onechar oneChar�f  �i  �j  M o      �d�d 0 
somestring 
someStringK Z�cZ l  ( (�b�a�`�b  �a  �`  �c  �l 0 onechar oneCharH o    �_�_  0 escapecharlist escapeCharListF [\[ l  / /�^�]�\�^  �]  �\  \ ]^] L   / 1__ o   / 0�[�[ 0 
somestring 
someString^ `�Z` l  2 2�Y�X�W�Y  �X  �W  �Z  " aba l     �V�U�T�V  �U  �T  b cdc i   < ?efe I      �Sg�R�S 0 sfr_unescape SFR_Unescapeg h�Qh o      �P�P 0 
somestring 
someString�Q  �R  f k     3ii jkj l     �Olm�O  l   version 1.0   m �nn    v e r s i o n   1 . 0k opo l     �N�M�L�N  �M  �L  p qrq r     sts J     uu vwv m     xx �yy  =w z{z m    || �}}  :{ ~~ m    �� ���  < ��K� m    �� ���  >�K  t o      �J�J  0 escapecharlist escapeCharListr ��� l  	 	�I�H�G�I  �H  �G  � ��� X   	 .��F�� k    )�� ��� r    '��� I    %�E��D�E 0 replacesimple replaceSimple� ��C� J    !�� ��� o    �B�B 0 
somestring 
someString� ��� b    ��� m    �� ���  /� o    �A�A 0 onechar oneChar� ��@� o    �?�? 0 onechar oneChar�@  �C  �D  � o      �>�> 0 
somestring 
someString� ��=� l  ( (�<�;�:�<  �;  �:  �=  �F 0 onechar oneChar� o    �9�9  0 escapecharlist escapeCharList� ��� l  / /�8�7�6�8  �7  �6  � ��� L   / 1�� o   / 0�5�5 0 
somestring 
someString� ��4� l  2 2�3�2�1�3  �2  �1  �4  d ��� l     �0�/�.�0  �/  �.  � ��� i   @ C��� I      �-��,�- 60 fmgui_managedb_field_edit fmGUI_ManageDb_Field_Edit� ��+� o      �*�* 	0 prefs  �+  �,  � k    ��� ��� l     �)���)  �   version 1.2   � ���    v e r s i o n   1 . 2� ��� l     �(�'�&�(  �'  �&  � ��� l     �%���%  � � � any BOOLEAN parameters can be either actually boolean, or 1/0.  This function will change that to match UI scripting interface needs.   � ���   a n y   B O O L E A N   p a r a m e t e r s   c a n   b e   e i t h e r   a c t u a l l y   b o o l e a n ,   o r   1 / 0 .     T h i s   f u n c t i o n   w i l l   c h a n g e   t h a t   t o   m a t c h   U I   s c r i p t i n g   i n t e r f a c e   n e e d s .� ��� l     �$�#�"�$  �#  �"  � ��� r     Z��� K     X�� �!���! 0 editmode editMode� m    �� ���  C O N F O R M� � ���  0 	tablename 	tableName� m    �
� 
null� ���� 0 	fieldname 	fieldName� m    �
� 
null� ���� 0 altpatterns altPatterns� m    �
� 
null� ���� 0 fieldcomment fieldComment� m   	 
�
� 
null� ���� 0 datatype dataType� m    �
� 
null� ���� 0 	fieldtype 	fieldType� m    �
� 
null� ���� 0 calccode calcCode� m    �
� 
null� ���� &0 autoentercalccode autoEnterCalcCode� m    �
� 
null� ���� 20 autoentercalccontexttoc autoEnterCalcContextTOC� m    �
� 
null� ����  0 alwaysevaluate alwaysEvaluate� m    �
� 
null� ����  0 calccontexttoc calcContextTOC� m    �
� 
null� �
���
 0 storageglobal storageGlobal� m    �	
�	 
null� ���� 20 storecalculationresults storeCalculationResults� m    �
� 
null� ���� (0 storageindexchoice storageIndexChoice� m     �
� 
null� ���� 0 	autoindex 	autoIndex� m   # $�
� 
null� ���� 0 maxrepetition maxRepetition� m   ' (�
� 
null� � ���  0 indexlanguage indexLanguage� m   + ,��
�� 
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
null��  � o      ���� 0 defaultprefs defaultPrefs� ��� l  [ [������  � � � editMode: "CONFORM" means make field exactly match the entire specified data structure, while "TWEAK" means only to change which things were specified, leaving the other settings alone.    � ���v   e d i t M o d e :   " C O N F O R M "   m e a n s   m a k e   f i e l d   e x a c t l y   m a t c h   t h e   e n t i r e   s p e c i f i e d   d a t a   s t r u c t u r e ,   w h i l e   " T W E A K "   m e a n s   o n l y   t o   c h a n g e   w h i c h   t h i n g s   w e r e   s p e c i f i e d ,   l e a v i n g   t h e   o t h e r   s e t t i n g s   a l o n e .  � ��� l  [ [��� ��  � � � autoEnterSpecialValue: keywords used in FM-XML: NONE, CreationAccountName, CreationUserName,CreationTimestamp, ModificationAccountName, et al.     �   a u t o E n t e r S p e c i a l V a l u e :   k e y w o r d s   u s e d   i n   F M - X M L :   N O N E ,   C r e a t i o n A c c o u n t N a m e ,   C r e a t i o n U s e r N a m e , C r e a t i o n T i m e s t a m p ,   M o d i f i c a t i o n A c c o u n t N a m e ,   e t   a l .�  l  [ [����   a [ autoSerial:false or autoSerial:{autoNextValue:null, autoIncrement:null, autoGenerate:null}    � �   a u t o S e r i a l : f a l s e   o r   a u t o S e r i a l : { a u t o N e x t V a l u e : n u l l ,   a u t o I n c r e m e n t : n u l l ,   a u t o G e n e r a t e : n u l l }  l  [ [��������  ��  ��   	
	 l  [ [����   a [ autoEnterIsLookup - LOOKUP FUNCTIONS NOT YET SUPPORTED - WOULD NEED TO HANDLE SUB-ELEMENT.    � �   a u t o E n t e r I s L o o k u p   -   L O O K U P   F U N C T I O N S   N O T   Y E T   S U P P O R T E D   -   W O U L D   N E E D   T O   H A N D L E   S U B - E L E M E N T .
  l  [ [��������  ��  ��    l  [ [��������  ��  ��    r   [ ` b   [ ^ o   [ \���� 	0 prefs   o   \ ]���� 0 defaultprefs defaultPrefs o      ���� 	0 prefs    l  a a��������  ��  ��    r   a f n   a d o   b d���� 0 editmode editMode o   a b���� 	0 prefs   o      ���� 0 editmode editMode  !  l  g g��������  ��  ��  ! "#" Z  g z$%����$ >  g l&'& n   g j()( o   h j���� &0 autoentercalccode autoEnterCalcCode) o   g h���� 	0 prefs  ' m   j k��
�� 
null% r   o v*+* m   o p��
�� boovtrue+ n      ,-, o   q u���� 00 autoenteriscalculation autoEnterIsCalculation- o   p q���� 	0 prefs  ��  ��  # ./. l  { {��������  ��  ��  / 010 l   { {��23��  2 � �   DEBUGGING   DEBUGGING   DEBUGGING   DEBUGGING   DEBUGGING   DEBUGGING   
DEBUGGING   DEBUGGING   DEBUGGING   DEBUGGING   DEBUGGING   DEBUGGING   DEBUGGING   	
   3 �44D       D E B U G G I N G       D E B U G G I N G       D E B U G G I N G       D E B U G G I N G       D E B U G G I N G       D E B U G G I N G       
 D E B U G G I N G       D E B U G G I N G       D E B U G G I N G       D E B U G G I N G       D E B U G G I N G       D E B U G G I N G       D E B U G G I N G       	 
1 565 l  { {��������  ��  ��  6 787 Q   {�9:;9 k   ~�<< =>= l  ~ ~��������  ��  ��  > ?@? l  ~ ~��������  ��  ��  @ ABA l  ~ ~��������  ��  ��  B CDC l  ~ ~��������  ��  ��  D EFE l  ~ ~��GH��  G   try to select it first:   H �II 0   t r y   t o   s e l e c t   i t   f i r s t :F JKJ r   ~ �LML I   ~ ���N���� :0 fmgui_managedb_field_select fmGUI_ManageDb_Field_SelectN O��O o    ����� 	0 prefs  ��  ��  M o      ���� $0 fieldnowselected fieldNowSelectedK PQP l  � ���������  ��  ��  Q RSR Z  � �TU����T H   � �VV o   � ����� $0 fieldnowselected fieldNowSelectedU L   � �WW m   � ���
�� boovfals��  ��  S XYX l  � ���������  ��  ��  Y Z[Z O   ��\]\ O   ��^_^ k   ��`` aba n  � �cdc I   � ��������� (0 fmgui_appfrontmost fmGUI_AppFrontMost��  ��  d  f   � �b efe l  � ���������  ��  ��  f ghg l  � ���������  ��  ��  h iji r   � �klk 6  � �mnm n   � �opo 4  � ���q
�� 
butTq m   � ����� p n   � �rsr 4   � ���t
�� 
tabgt m   � ����� s 4   � ���u
�� 
cwinu m   � ����� n =  � �vwv 1   � ���
�� 
titlw m   � �xx �yy  C h a n g el o      ���� 0 changebutton changeButtonj z{z l  � ���������  ��  ��  { |}| l  � ���~��  ~ %  COMMENT is for any field type:    ��� >   C O M M E N T   i s   f o r   a n y   f i e l d   t y p e :} ��� Z   �������� >  � ���� n   � ���� o   � ����� 0 fieldcomment fieldComment� o   � ����� 	0 prefs  � m   � ���
�� 
null� k   ��� ��� Z   � �������� n  � ���� I   � �������� (0 fmgui_textfieldset fmGUI_TextFieldSet� ��� n   � ���� 4   � ����
�� 
txtf� m   � ��� ���  C o m m e n t :� n   � ���� 4   � ����
�� 
tabg� m   � ����� � 4   � ����
�� 
cwin� m   � ����� � ���� n   � ���� o   � ����� 0 fieldcomment fieldComment� o   � ��� 	0 prefs  ��  ��  �  f   � �� I  � ��~��}
�~ .prcsclicnull��� ��� uiel� o   � ��|�| 0 changebutton changeButton�}  ��  ��  � ��� l  � ��{�z�y�{  �z  �y  � ��x� I  ��w��v
�w .sysodelanull��� ��� nmbr� m   � ��� ?�      �v  �x  ��  ��  � ��� l �u�t�s�u  �t  �s  � ��� Z  g���r�q� F  ��� = ��� o  �p�p 0 editmode editMode� m  �� ��� 
 T W E A K� = ��� n  ��� o  �o�o 0 	fieldtype 	fieldType� o  �n�n 	0 prefs  � m  �m
�m 
null� k  c�� ��� l �l���l  � 6 0 just find out what it already is and use that:    � ��� `   j u s t   f i n d   o u t   w h a t   i t   a l r e a d y   i s   a n d   u s e   t h a t :  � ��� r  /��� n  -��� 4  &-�k�
�k 
popB� m  ),�� ��� 
 T y p e :� n  &��� 4  !&�j�
�j 
tabg� m  $%�i�i � 4  !�h�
�h 
cwin� m   �g�g � o      �f�f  0 fieldtypepopup fieldTypePopup� ��e� Z  0c����� = 09��� n  05��� 1  15�d
�d 
valL� o  01�c�c  0 fieldtypepopup fieldTypePopup� m  58�� ���  C a l c u l a t i o n� r  <C��� m  <?�� ���  C a l c u l a t e d� n      ��� o  @B�b�b 0 	fieldtype 	fieldType� o  ?@�a�a 	0 prefs  � ��� = FO��� n  FK��� 1  GK�`
�` 
valL� o  FG�_�_  0 fieldtypepopup fieldTypePopup� m  KN�� ���  S u m m a r y� ��^� r  RY��� m  RU�� ���  S u m m a r y� n      ��� o  VX�]�] 0 	fieldtype 	fieldType� o  UV�\�\ 	0 prefs  �^  � r  \c��� m  \_�� ���  N o r m a l� n      ��� o  `b�[�[ 0 	fieldtype 	fieldType� o  _`�Z�Z 	0 prefs  �e  �r  �q  � ��� l hh�Y�X�W�Y  �X  �W  � ��� l hh�V�U�T�V  �U  �T  � ��� Z  h|����S� = hm��� n  hk��� o  ik�R�R 0 	fieldtype 	fieldType� o  hi�Q�Q 	0 prefs  � m  kl�P
�P 
null� k  p~�� ��� R  p|�O��
�O .ascrerr ****      � ****� m  x{   � 8 P a r a m e t e r   m i s s i n g :   f i e l d T y p e� �N�M
�N 
errn m  tw�L�L �M  � �K l }}�J�I�H�J  �I  �H  �K  �  = �� n  ��	 o  ���G�G 0 	fieldtype 	fieldType	 o  ���F�F 	0 prefs   m  ��

 �  C a l c u l a t e d  k  ��  l ���E�D�C�E  �D  �C    l ���B�B    	 IF CALC:    �    I F   C A L C :  l ���A�A     Field Type = Calculated    � 0   F i e l d   T y p e   =   C a l c u l a t e d  l ���@�@     click "contains Options"    � 2   c l i c k   " c o n t a i n s   O p t i o n s "  !  l ���?"#�?  " / ) Data Type: popup "Calculation result is"   # �$$ R   D a t a   T y p e :   p o p u p   " C a l c u l a t i o n   r e s u l t   i s "! %&% l ���>'(�>  '   Calc Context Table   ( �)) &   C a l c   C o n t e x t   T a b l e& *+* l ���=,-�=  ,   Calculation itself   - �.. &   C a l c u l a t i o n   i t s e l f+ /0/ l ���<12�<  1   Do Not Evaluate�   2 �33 "   D o   N o t   E v a l u a t e &0 454 l ���;67�;  6  	 Storage:   7 �88    S t o r a g e :5 9:9 l ���:;<�:  ; - '	Global, Do Not Store, None/Minimal/All   < �== N 	 G l o b a l ,   D o   N o t   S t o r e ,   N o n e / M i n i m a l / A l l: >?> l ���9�8�7�9  �8  �7  ? @A@ l ���6BC�6  B   FIELD TYPE:   C �DD    F I E L D   T Y P E :A EFE r  ��GHG n  ��IJI 4  ���5K
�5 
popBK m  ��LL �MM 
 T y p e :J n  ��NON 4  ���4P
�4 
tabgP m  ���3�3 O 4  ���2Q
�2 
cwinQ m  ���1�1 H o      �0�0  0 fieldtypepopup fieldTypePopupF RSR Z  �ATU�/VT > ��WXW n  ��YZY 1  ���.
�. 
valLZ o  ���-�-  0 fieldtypepopup fieldTypePopupX m  ��[[ �\\  C a l c u l a t i o nU k  �
]] ^_^ n ��`a` I  ���,b�+�,  0 fmgui_popupset fmGUI_PopupSetb cdc o  ���*�*  0 fieldtypepopup fieldTypePopupd e�)e m  ��ff �gg  C a l c u l a t i o n�)  �+  a  f  ��_ hih l ���(�'�&�(  �'  �&  i jkj l ���%lm�%  l * $ click CHANGE to save the data type.   m �nn H   c l i c k   C H A N G E   t o   s a v e   t h e   d a t a   t y p e .k opo n ��qrq I  ���$s�#�$ B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindows t�"t n  ��uvu 4  ���!w
�! 
butTw m  ��xx �yy  C h a n g ev n  ��z{z 4  ��� |
�  
tabg| m  ���� { 4  ���}
� 
cwin} m  ���� �"  �#  r  f  ��p ~~ l ������  �  �   ��� I �����
� .sysodelanull��� ��� nmbr� m  ���� ?�      �  � ��� l ������  �  �  � ��� l ������  � m g if existing field was NOT ALREADY a calc, will get a warning message. Need to handle that possibility.   � ��� �   i f   e x i s t i n g   f i e l d   w a s   N O T   A L R E A D Y   a   c a l c ,   w i l l   g e t   a   w a r n i n g   m e s s a g e .   N e e d   t o   h a n d l e   t h a t   p o s s i b i l i t y .� ��� Z  ������ H  ���� C  ����� n  ����� 1  ���
� 
pnam� 4  ����
� 
cwin� m  ���� � m  ���� ��� & M a n a g e   D a t a b a s e   F o r� k  ��� ��� l ������  � ' ! click OK to confirm the change:    � ��� B   c l i c k   O K   t o   c o n f i r m   t h e   c h a n g e :  � ��� n ����� I  ������ B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow� ��� n  ����� 4  ���
�
�
 
butT� m  ���� ���  O K� 4  ���	�
�	 
cwin� m  ���� �  �  �  f  ��� ��� l ������  �  �  � ��� I ����
� .sysodelanull��� ��� nmbr� m  ���� ?�      �  � ��� l �� ���  �   ��  �  �  �  � ���� l 		��������  ��  ��  ��  �/  V l A���� k  A�� ��� l ������  �   click Options:    � ���     c l i c k   O p t i o n s :  � ��� n 1��� I  1������� B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow� ���� 6 -��� n  ��� 4 ���
�� 
butT� m  ���� � n  ��� 4  ���
�� 
tabg� m  ���� � 4  ���
�� 
cwin� m  ���� � C  !,��� 1  "&��
�� 
pnam� m  '+�� ���  O p t i o n s��  ��  �  f  � ��� l 22��������  ��  ��  � ��� n 2?��� I  3?������� 20 windowwaituntil_frontis windowWaitUntil_FrontIS� ���� K  3;�� ������� 0 
windowname 
windowName� m  69�� ��� & S p e c i f y   C a l c u l a t i o n��  ��  ��  �  f  23� ���� l @@��������  ��  ��  ��  � B < ALREADY was a Calculation field, so need to click OPTIONS:    � ��� x   A L R E A D Y   w a s   a   C a l c u l a t i o n   f i e l d ,   s o   n e e d   t o   c l i c k   O P T I O N S :  S ��� l BB��������  ��  ��  � ��� l BB��������  ��  ��  � ��� l BB��������  ��  ��  � ��� Z  Bt������� G  BS��� = BG��� o  BC���� 0 editmode editMode� m  CF�� ���  C O N F O R M� > JO��� n  JM��� o  KM���� 0 calccode calcCode� o  JK���� 	0 prefs  � m  MN��
�� 
null� k  Vp�� ��� l VV������  �   CALCULATION CODE:   � ��� $   C A L C U L A T I O N   C O D E :� ���� n Vp��� I  Wp������� (0 fmgui_textfieldset fmGUI_TextFieldSet� ��� n  Wi��� 4  di���
�� 
txta� m  gh���� � n  Wd��� 4  ]d��	 
�� 
scra	  m  `c���� � 4  W]��	
�� 
cwin	 m  [\���� � 	��	 n  il			 o  jl���� 0 calccode calcCode	 o  ij���� 	0 prefs  ��  ��  �  f  VW��  ��  ��  � 			 l uu��������  ��  ��  	 			 l uu��			
��  		 ' ! Calc CONTEXT Table (occurrence):   	
 �		 B   C a l c   C O N T E X T   T a b l e   ( o c c u r r e n c e ) :	 			 Z  u�		����	 > uz			 n  ux			 o  vx����  0 calccontexttoc calcContextTOC	 o  uv���� 	0 prefs  	 m  xy��
�� 
null	 n }�			 I  ~���	����  0 fmgui_popupset fmGUI_PopupSet	 			 6 ~�			 n  ~�			 4 ����	
�� 
popB	 m  ������ 	 4  ~���	
�� 
cwin	 m  ������ 	 E  ��		 	 1  ����
�� 
pnam	  m  ��	!	! �	"	"  c o n t e x t	 	#��	# n  ��	$	%	$ o  ������  0 calccontexttoc calcContextTOC	% o  ������ 	0 prefs  ��  ��  	  f  }~��  ��  	 	&	'	& l ����������  ��  ��  	' 	(	)	( l ����	*	+��  	*   Calc Result TYPE:   	+ �	,	, $   C a l c   R e s u l t   T Y P E :	) 	-	.	- Z  ��	/	0����	/ > ��	1	2	1 n  ��	3	4	3 o  ������ 0 datatype dataType	4 o  ������ 	0 prefs  	2 m  ����
�� 
null	0 n ��	5	6	5 I  ����	7����  0 fmgui_popupset fmGUI_PopupSet	7 	8	9	8 6 ��	:	;	: n  ��	<	=	< 4 ����	>
�� 
popB	> m  ������ 	= 4  ����	?
�� 
cwin	? m  ������ 	; E  ��	@	A	@ 1  ����
�� 
pnam	A m  ��	B	B �	C	C * C a l c u l a t i o n   r e s u l t   i s	9 	D��	D n  ��	E	F	E o  ������ 0 datatype dataType	F o  ������ 	0 prefs  ��  ��  	6  f  ����  ��  	. 	G	H	G l ����������  ��  ��  	H 	I	J	I l ����	K	L��  	K 9 3 Do Not Evaluate if all referenced field are empty:   	L �	M	M f   D o   N o t   E v a l u a t e   i f   a l l   r e f e r e n c e d   f i e l d   a r e   e m p t y :	J 	N	O	N Z  �	P	Q����	P > ��	R	S	R n  ��	T	U	T o  ������  0 alwaysevaluate alwaysEvaluate	U o  ������ 	0 prefs  	S m  ����
�� 
null	Q k  �	V	V 	W	X	W r  ��	Y	Z	Y 6 ��	[	\	[ n  ��	]	^	] 4 ����	_
�� 
chbx	_ m  ������ 	^ 4  ����	`
�� 
cwin	` m  ������ 	\ E  ��	a	b	a 1  ����
�� 
pnam	b m  ��	c	c �	d	d J n o t   e v a l u a t e   i f   a l l   r e f e r e n c e d   f i e l d s	Z o      ���� *0 notevaluatecheckbox notEvaluateCheckbox	X 	e��	e Z  �	f	g��	h	f n  ��	i	j	i o  ������  0 alwaysevaluate alwaysEvaluate	j o  ������ 	0 prefs  	g n �	k	l	k I   ��	m���� &0 fmgui_checkboxset fmGUI_CheckboxSet	m 	n	o	n o   ���� *0 notevaluatecheckbox notEvaluateCheckbox	o 	p��	p m  ����  ��  ��  	l  f  � ��  	h n 		q	r	q I  
��	s���� &0 fmgui_checkboxset fmGUI_CheckboxSet	s 	t	u	t o  
���� *0 notevaluatecheckbox notEvaluateCheckbox	u 	v��	v m  ���� ��  ��  	r  f  	
��  ��  ��  	O 	w	x	w l ��������  ��  ��  	x 	y	z	y l ��	{	|��  	{   Repetitions:    	| �	}	}    R e p e t i t i o n s :  	z 	~		~ Z  S	�	����	� G  (	�	�	� = 	�	�	� o  �~�~ 0 editmode editMode	� m  	�	� �	�	�  C O N F O R M	� > $	�	�	� n  "	�	�	� o  "�}�} 0 maxrepetition maxRepetition	� o  �|�| 	0 prefs  	� m  "#�{
�{ 
null	� n +O	�	�	� I  ,O�z	��y�z (0 fmgui_textfieldset fmGUI_TextFieldSet	� 	�	�	� 6 ,F	�	�	� n  ,7	�	�	� 4 27�x	�
�x 
txtf	� m  56�w�w 	� 4  ,2�v	�
�v 
cwin	� m  01�u�u 	� E  :E	�	�	� 1  ;?�t
�t 
pnam	� m  @D	�	� �	�	�  r e p e t i t i o n s	� 	��s	� n  FK	�	�	� o  GK�r�r 0 maxrepetition maxRepetition	� o  FG�q�q 	0 prefs  �s  �y  	�  f  +,��  �  	 	�	�	� l TT�p�o�n�p  �o  �n  	� 	�	�	� l TT�m�l�k�m  �l  �k  	� 	�	�	� l TT�j�i�h�j  �i  �h  	� 	�	�	� Z  T�	�	��g�f	� G  T�	�	�	� G  T	�	�	� G  Tq	�	�	� G  Te	�	�	� = TY	�	�	� o  TU�e�e 0 editmode editMode	� l 	UX	��d�c	� m  UX	�	� �	�	�  C O N F O R M�d  �c  	� > \a	�	�	� n  \_	�	�	� o  ]_�b�b 0 storageglobal storageGlobal	� o  \]�a�a 	0 prefs  	� l 
_`	��`�_	� m  _`�^
�^ 
null�`  �_  	� > hm	�	�	� n  hk	�	�	� o  ik�]�] 20 storecalculationresults storeCalculationResults	� o  hi�\�\ 	0 prefs  	� l 
kl	��[�Z	� m  kl�Y
�Y 
null�[  �Z  	� > t{	�	�	� n  ty	�	�	� o  uy�X�X 0 indexlanguage indexLanguage	� o  tu�W�W 	0 prefs  	� l 
yz	��V�U	� m  yz�T
�T 
null�V  �U  	� > ��	�	�	� n  ��	�	�	� o  ���S�S 0 	autoindex 	autoIndex	� o  ���R�R 	0 prefs  	� l 
��	��Q�P	� m  ���O
�O 
null�Q  �P  	� k  ��	�	� 	�	�	� l ���N	�	��N  	�   BEGIN: STORAGE OPTIONS   	� �	�	� .   B E G I N :   S T O R A G E   O P T I O N S	� 	�	�	� l ���M�L�K�M  �L  �K  	� 	�	�	� l ���J	�	��J  	�   click Storage Options:    	� �	�	� 0   c l i c k   S t o r a g e   O p t i o n s :  	� 	�	�	� n ��	�	�	� I  ���I	��H�I B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow	� 	��G	� 6 ��	�	�	� n  ��	�	�	� 4 ���F	�
�F 
butT	� m  ���E�E 	� 4  ���D	�
�D 
cwin	� m  ���C�C 	� E  ��	�	�	� 1  ���B
�B 
pnam	� m  ��	�	� �	�	�  S t o r a g e   O p t i o n s�G  �H  	�  f  ��	� 	�	�	� n ��	�	�	� I  ���A	��@�A "0 windowwaituntil windowWaitUntil	� 	��?	� K  ��	�	� �>	�	��> 0 
windowname 
windowName	� m  ��	�	� �	�	� & S t o r a g e   O p t i o n s   f o r	� �=	�	��=  0 windownametest windowNameTest	� m  ��	�	� �	�	�  s t a r t s   w i t h	� �<	��;�< 0 whichwindow whichWindow	� m  ��	�	� �	�	� 
 f r o n t�;  �?  �@  	�  f  ��	� 	�	�	� l ���:�9�8�:  �9  �8  	� 	�	�	� l ���7�6�5�7  �6  �5  	� 	�	�	� r  ��	�	�	� 4  ���4
 
�4 
cwin
  m  ���3�3 	� o      �2�2 0 workingarea workingArea	� 


 l ���1�0�/�1  �0  �/  
 


 r  ��


 6 ��


 n  ��
	


	 4 ���.

�. 
chbx
 m  ���-�- 

 o  ���,�, 0 workingarea workingArea
 E  ��


 1  ���+
�+ 
pnam
 m  ��

 �

  g l o b a l   s t o r a g e
 o      �*�* .0 globalstoragecheckbox globalStorageCheckbox
 


 r  �


 6 �


 n  ��


 4 ���)

�) 
chbx
 m  ���(�( 
 o  ���'�' 0 workingarea workingArea
 E  �


 1  ���&
�& 
pnam
 m  � 

 �

  D o   n o t   s t o r e
 o      �%�% (0 donotstorecheckbox doNotStoreCheckbox
 


 l �$�#�"�$  �#  �"  
 

 
 Z  B
!
"�!� 
! = 

#
$
# o  �� 0 editmode editMode
$ m  	
%
% �
&
&  C O N F O R M
" k  >
'
' 
(
)
( l �
*
+�  
* F @ These two CANNOT BE NULL if you are making this field CONFORM.    
+ �
,
, �   T h e s e   t w o   C A N N O T   B E   N U L L   i f   y o u   a r e   m a k i n g   t h i s   f i e l d   C O N F O R M .  
) 
-
.
- Z %
/
0��
/ = 
1
2
1 n  
3
4
3 o  �� 0 storageglobal storageGlobal
4 o  �� 	0 prefs  
2 m  �
� 
null
0 R  !�
5
6
� .ascrerr ****      � ****
5 m   
7
7 �
8
8 @ s t o r a g e G l o b a l   m u s t   b e   s p e c i f i e d !
6 �
9�
� 
errn
9 m  �� �  �  �  
. 
:�
: Z &>
;
<��
; = &+
=
>
= n  &)
?
@
? o  ')�� 20 storecalculationresults storeCalculationResults
@ o  &'�� 	0 prefs  
> m  )*�
� 
null
< R  .:�
A
B
� .ascrerr ****      � ****
A m  69
C
C �
D
D T s t o r e C a l c u l a t i o n R e s u l t s   m u s t   b e   s p e c i f i e d !
B �
E�
� 
errn
E m  25�� �  �  �  �  �!  �   
  
F
G
F l CC�
�	��
  �	  �  
G 
H
I
H Z  C�
J
K
L
M
J n  CG
N
O
N o  DF�� 0 storageglobal storageGlobal
O o  CD�� 	0 prefs  
K k  JS
P
P 
Q
R
Q n JQ
S
T
S I  KQ�
U�� &0 fmgui_checkboxset fmGUI_CheckboxSet
U 
V
W
V o  KL�� .0 globalstoragecheckbox globalStorageCheckbox
W 
X�
X m  LM�� �  �  
T  f  JK
R 
Y� 
Y l RR��������  ��  ��  �   
L 
Z
[
Z H  VZ
\
\ n  VY
]
^
] o  WY���� 20 storecalculationresults storeCalculationResults
^ o  VW���� 	0 prefs  
[ 
_��
_ k  ]f
`
` 
a
b
a n ]d
c
d
c I  ^d��
e���� &0 fmgui_checkboxset fmGUI_CheckboxSet
e 
f
g
f o  ^_���� (0 donotstorecheckbox doNotStoreCheckbox
g 
h��
h m  _`���� ��  ��  
d  f  ]^
b 
i��
i l ee��������  ��  ��  ��  ��  
M l i�
j
k
l
j k  i�
m
m 
n
o
n n ip
p
q
p I  jp��
r���� &0 fmgui_checkboxset fmGUI_CheckboxSet
r 
s
t
s o  jk���� .0 globalstoragecheckbox globalStorageCheckbox
t 
u��
u m  kl����  ��  ��  
q  f  ij
o 
v
w
v n qx
x
y
x I  rx��
z���� &0 fmgui_checkboxset fmGUI_CheckboxSet
z 
{
|
{ o  rs���� (0 donotstorecheckbox doNotStoreCheckbox
| 
}��
} m  st����  ��  ��  
y  f  qr
w 
~

~ l yy��������  ��  ��  
 
�
�
� l yy��
�
���  
� ; 5 Then see which one of the Indexing choices is needed   
� �
�
� j   T h e n   s e e   w h i c h   o n e   o f   t h e   I n d e x i n g   c h o i c e s   i s   n e e d e d
� 
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
k 2 , NOT EITHER OF THOSE, SO UNCHECK THEM FIRST:   
l �
�
� X   N O T   E I T H E R   O F   T H O S E ,   S O   U N C H E C K   T H E M   F I R S T :
I 
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
� 
� 1  ��
�� 
pnam  m  # �  c r e a t e   i n d e x e s
� o      ���� &0 autoindexcheckbox autoIndexCheckbox
�  Z  (B�� n  (.	 o  )-���� 0 	autoindex 	autoIndex	 o  ()���� 	0 prefs   n 18

 I  28������ &0 fmgui_checkboxset fmGUI_CheckboxSet  o  23���� &0 autoindexcheckbox autoIndexCheckbox �� m  34���� ��  ��    f  12��   n ;B I  <B������ &0 fmgui_checkboxset fmGUI_CheckboxSet  o  <=���� &0 autoindexcheckbox autoIndexCheckbox �� m  =>����  ��  ��    f  ;< �� l CC��������  ��  ��  ��  ��  ��  
�  l II��������  ��  ��    l II����   %  click OK for Storage Options:     � >   c l i c k   O K   f o r   S t o r a g e   O p t i o n s :    n Ic !  I  Jc��"���� B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow" #��# 6 J_$%$ n  JP&'& 4 KP��(
�� 
butT( m  NO���� ' o  JK���� 0 workingarea workingArea% E  S^)*) 1  TX��
�� 
pnam* m  Y]++ �,,  O K��  ��  !  f  IJ -.- l dd�������  ��  �  . /0/ n d121 I  e�~3�}�~ "0 windowwaituntil windowWaitUntil3 4�|4 K  e{55 �{67�{ 0 
windowname 
windowName6 m  hk88 �99 & S t o r a g e   O p t i o n s   f o r7 �z:;�z  0 windownametest windowNameTest: m  nq<< �== & d o e s   n o t   s t a r t   w i t h; �y>�x�y 0 whichwindow whichWindow> m  tw?? �@@ 
 f r o n t�x  �|  �}  2  f  de0 ABA l ���w�v�u�w  �v  �u  B C�tC l ���sDE�s  D   END OF: STORAGE OPTIONS   E �FF 0   E N D   O F :   S T O R A G E   O P T I O N S�t  �g  �f  	� GHG l ���r�q�p�r  �q  �p  H IJI l ��KLMK r  ��NON 4  ���oP
�o 
cwinP m  ���n�n O o      �m�m 0 workingarea workingAreaL + % need reference to NEW first window.    M �QQ J   n e e d   r e f e r e n c e   t o   N E W   f i r s t   w i n d o w .  J RSR l ���l�k�j�l  �k  �j  S TUT l ���iVW�i  V - ' click OK to save Specify Calculation:    W �XX N   c l i c k   O K   t o   s a v e   S p e c i f y   C a l c u l a t i o n :  U YZY n ��[\[ I  ���h]�g�h B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow] ^�f^ 6 ��_`_ n  ��aba 4 ���ec
�e 
butTc m  ���d�d b o  ���c�c 0 workingarea workingArea` E  ��ded 1  ���b
�b 
pname m  ��ff �gg  O K�f  �g  \  f  ��Z hih l ���a�`�_�a  �`  �_  i jkj n ��lml I  ���^n�]�^ "0 windowwaituntil windowWaitUntiln o�\o K  ��pp �[qr�[ 0 
windowname 
windowNameq m  ��ss �tt & S p e c i f y   C a l c u l a t i o nr �Zuv�Z  0 windownametest windowNameTestu m  ��ww �xx   d o e s   n o t   c o n t a i nv �Yy�X�Y 0 whichwindow whichWindowy m  ��zz �{{ 
 f r o n t�X  �\  �]  m  f  ��k |}| l ���W�V�U�W  �V  �U  } ~~ L  ���� m  ���T
�T boovtrue ��� l ���S�R�Q�S  �R  �Q  � ��� l ���P�O�N�P  �O  �N  � ��M� l ���L�K�J�L  �K  �J  �M   ��� = ����� n  ����� o  ���I�I 0 	fieldtype 	fieldType� o  ���H�H 	0 prefs  � m  ���� ���  S u m m a r y� ��� k  ���� ��� l ���G�F�E�G  �F  �E  � ��� l ���D���D  �   IF SUMMARY:   � ���    I F   S U M M A R Y :� ��� l ���C���C  �   Field Type = Summary   � ��� *   F i e l d   T y p e   =   S u m m a r y� ��� l ���B���B  �   click "contains Options"   � ��� 2   c l i c k   " c o n t a i n s   O p t i o n s "� ��� l ���A���A  � / ) Data Type: popup "Calculation result is"   � ��� R   D a t a   T y p e :   p o p u p   " C a l c u l a t i o n   r e s u l t   i s "� ��� l ���@���@  �   Calc Context Table   � ��� &   C a l c   C o n t e x t   T a b l e� ��� l ���?���?  �   Calculation itself   � ��� &   C a l c u l a t i o n   i t s e l f� ��� l ���>���>  �   Do Not Evaluate�   � ��� "   D o   N o t   E v a l u a t e &� ��� l ���=���=  �  	 Storage:   � ���    S t o r a g e :� ��� l ���<���<  � - '	Global, Do Not Store, None/Minimal/All   � ��� N 	 G l o b a l ,   D o   N o t   S t o r e ,   N o n e / M i n i m a l / A l l� ��� l ���;�:�9�;  �:  �9  � ��� l ���8���8  � p j if existing field was NOT ALREADY a summary, will get a warning message. Need to handle that possibility.   � ��� �   i f   e x i s t i n g   f i e l d   w a s   N O T   A L R E A D Y   a   s u m m a r y ,   w i l l   g e t   a   w a r n i n g   m e s s a g e .   N e e d   t o   h a n d l e   t h a t   p o s s i b i l i t y .� ��� l ���7�6�5�7  �6  �5  � ��� l ���4���4  �   NOT YET SUPPORTED ! ! !    � ��� 2   N O T   Y E T   S U P P O R T E D   !   !   !  � ��� l ���3���3  �   NOT YET SUPPORTED ! ! !    � ��� 2   N O T   Y E T   S U P P O R T E D   !   !   !  � ��� l ���2���2  �   NOT YET SUPPORTED ! ! !    � ��� 2   N O T   Y E T   S U P P O R T E D   !   !   !  � ��� l ���1�0�/�1  �0  �/  � ��.� l ���-�,�+�-  �,  �+  �.  � ��� = ����� n  ����� o  ���*�* 0 	fieldtype 	fieldType� o  ���)�) 	0 prefs  � m  ���� ���  N o r m a l� ��(� k  �x�� ��� l ���'���'  � / )ELSE IF NOT CALC (Field Type is Normal):	   � ��� R E L S E   I F   N O T   C A L C   ( F i e l d   T y p e   i s   N o r m a l ) : 	� ��� l ���&���&  �  
 Data Type   � ���    D a t a   T y p e� ��� l ���%���%  �   click "contains Options"   � ��� 2   c l i c k   " c o n t a i n s   O p t i o n s "� ��� l ���$���$  �   TAB: Storage:   � ���    T A B :   S t o r a g e :� ��� l ���#���#  � - '	Global, Do Not Store, None/Minimal/All   � ��� N 	 G l o b a l ,   D o   N o t   S t o r e ,   N o n e / M i n i m a l / A l l� ��� l ���" �"      TAB: Auto-Enter    �     T A B :   A u t o - E n t e r�  l ���!�!   - '	Creation, Modification, Serial, Data,     � N 	 C r e a t i o n ,   M o d i f i c a t i o n ,   S e r i a l ,   D a t a ,   	 l ��� 
�   
  	Calculated Value:     � & 	 C a l c u l a t e d   V a l u e :  	  l ����     		Calc Context Table    � *   	 	 C a l c   C o n t e x t   T a b l e  l ����     		Calculation itself    � *   	 	 C a l c u l a t i o n   i t s e l f  l ����     		Do Not Evaluate�    � &   	 	 D o   N o t   E v a l u a t e &  l ����   % 	Do not replace existing value�    �   > 	 D o   n o t   r e p l a c e   e x i s t i n g   v a l u e & !"! l ���#$�  #   TAB: Validation:   $ �%% "   T A B :   V a l i d a t i o n :" &'& l ���()�  (  	[Skip for now]   ) �**  	 [ S k i p   f o r   n o w ]' +,+ l ���-.�  -   Prohibit modification�   . �// .   P r o h i b i t   m o d i f i c a t i o n &, 010 l ������  �  �  1 232 l ������  �  �  3 454 l ������  �  �  5 676 l ���89�  8   field DATA TYPE:   9 �:: "   f i e l d   D A T A   T Y P E :7 ;<; Z  �|=>��= G  ��?@? = ��ABA o  ���� 0 editmode editModeB m  ��CC �DD  C O N F O R M@ > ��EFE n  ��GHG o  ���� 0 datatype dataTypeH o  ���
�
 	0 prefs  F m  ���	
�	 
null> k  �xII JKJ r  �LML n  �NON 4  �P
� 
popBP m  
QQ �RR 
 T y p e :O n  �STS 4  ��U
� 
tabgU m  �� T 4  ���V
� 
cwinV m  ���� M o      �� 0 datatypepopup dataTypePopupK W�W Z  xXY�� X > Z[Z n  \]\ 1  ��
�� 
valL] o  ���� 0 datatypepopup dataTypePopup[ n  ^_^ o  ���� 0 datatype dataType_ o  ���� 	0 prefs  Y k  t`` aba n #cdc I  #��e����  0 fmgui_popupset fmGUI_PopupSete fgf o  ���� 0 datatypepopup dataTypePopupg h��h n  iji o  ���� 0 datatype dataTypej o  ���� 	0 prefs  ��  ��  d  f  b klk l $$��������  ��  ��  l mnm l $$��op��  o * $ click CHANGE to save the data type.   p �qq H   c l i c k   C H A N G E   t o   s a v e   t h e   d a t a   t y p e .n rsr n $;tut I  %;��v���� B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindowv w��w n  %7xyx 4  07��z
�� 
butTz m  36{{ �||  C h a n g ey n  %0}~} 4  +0��
�� 
tabg m  ./���� ~ 4  %+���
�� 
cwin� m  )*���� ��  ��  u  f  $%s ��� l <<��������  ��  ��  � ��� I <C�����
�� .sysodelanull��� ��� nmbr� m  <?�� ?�      ��  � ��� l DD��������  ��  ��  � ��� l DD������  � 9 3 MIGHT open a dialog warning about type conversion:   � ��� f   M I G H T   o p e n   a   d i a l o g   w a r n i n g   a b o u t   t y p e   c o n v e r s i o n :� ���� Z  Dt������� H  DS�� C  DR��� n  DN��� 1  JN��
�� 
pnam� 4  DJ���
�� 
cwin� m  HI���� � m  NQ�� ��� & M a n a g e   D a t a b a s e   F o r� k  Vp�� ��� l VV������  � ' ! click OK to confirm the change:    � ��� B   c l i c k   O K   t o   c o n f i r m   t h e   c h a n g e :  � ��� n Vh��� I  Wh������� B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow� ���� n  Wd��� 4  ]d���
�� 
butT� m  `c�� ���  O K� 4  W]���
�� 
cwin� m  [\���� ��  ��  �  f  VW� ��� l ii��������  ��  ��  � ���� I ip�����
�� .sysodelanull��� ��� nmbr� m  il�� ?�      ��  ��  ��  ��  ��  �  �   �  �  �  < ��� l }}��������  ��  ��  � ��� l }}��������  ��  ��  � ��� l }}������  �   click Options:    � ���     c l i c k   O p t i o n s :  � ��� n }���� I  ~�������� B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow� ���� 6 ~���� n  ~���� 4 �����
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
cwin� m  ������ � o      ���� 0 workingarea workingArea� ��� l ����������  ��  ��  � ��� l ����������  ��  ��  � ��� l ����� ��  � P J--------------------------------------------------------------------------     � � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -�  l ������     STORAGE TAB:    �    S T O R A G E   T A B :  l ����	
��  	 P J--------------------------------------------------------------------------   
 � � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  l ����������  ��  ��    l ����������  ��  ��    l ����������  ��  ��    Z  �	���� G  � G  �� G  �� G  �� = �� o  ������ 0 editmode editMode l 	�� ����  m  ��!! �""  C O N F O R M��  ��   > ��#$# n  ��%&% o  ������ 0 storageglobal storageGlobal& o  ������ 	0 prefs  $ l 
��'����' m  ����
�� 
null��  ��   > ��()( n  ��*+* o  ������ (0 storageindexchoice storageIndexChoice+ o  ������ 	0 prefs  ) l 
��,����, m  ����
�� 
null��  ��   > ��-.- n  ��/0/ o  ������ 0 indexlanguage indexLanguage0 o  ������ 	0 prefs  . l 
��1����1 m  ����
�� 
null��  ��   > �232 n  �454 o  ����� 0 	autoindex 	autoIndex5 o  ������ 	0 prefs  3 l 
6��~6 m  �}
�} 
null�  �~   k  
	77 898 l 

�|�{�z�|  �{  �z  9 :;: I 
�y<�x
�y .prcsclicnull��� ��� uiel< n  
=>= 4  �w?
�w 
radB? m  @@ �AA  S t o r a g e> o  
�v�v 0 workingarea workingArea�x  ; BCB l �u�t�s�u  �t  �s  C DED l �rFG�r  F   Repetitions:   G �HH    R e p e t i t i o n s :E IJI n 6KLK I  6�qM�p�q (0 fmgui_textfieldset fmGUI_TextFieldSetM NON 6 -PQP n  RSR 4 �oT
�o 
txtfT m  �n�n S o  �m�m 0 workingarea workingAreaQ E  !,UVU 1  "&�l
�l 
pnamV m  '+WW �XX  r e p e t i t i o n sO Y�kY n  -2Z[Z o  .2�j�j 0 maxrepetition maxRepetition[ o  -.�i�i 	0 prefs  �k  �p  L  f  J \]\ l 77�h�g�f�h  �g  �f  ] ^_^ l 77�e`a�e  `   Global:   a �bb    G l o b a l :_ cdc r  7Nefe 6 7Lghg n  7=iji 4 8=�dk
�d 
chbxk m  ;<�c�c j o  78�b�b 0 workingarea workingAreah E  @Klml 1  AE�a
�a 
pnamm m  FJnn �oo  g l o b a l   s t o r a g ef o      �`�` .0 globalstoragecheckbox globalStorageCheckboxd pqp l OO�_�^�]�_  �^  �]  q rsr Z  Ostu�\�[t = OTvwv o  OP�Z�Z 0 editmode editModew m  PSxx �yy  C O N F O R Mu k  Wozz {|{ l WW�Y}~�Y  } D > This CANNOT BE NULL, if we are making field conform!!!!!					   ~ � |   T h i s   C A N N O T   B E   N U L L ,   i f   w e   a r e   m a k i n g   f i e l d   c o n f o r m ! ! ! ! ! 	 	 	 	 	| ��X� Z Wo���W�V� = W\��� n  WZ��� o  XZ�U�U 0 storageglobal storageGlobal� o  WX�T�T 	0 prefs  � m  Z[�S
�S 
null� R  _k�R��
�R .ascrerr ****      � ****� m  gj�� ��� @ s t o r a g e G l o b a l   m u s t   b e   s p e c i f i e d !� �Q��P
�Q 
errn� m  cf�O�O �P  �W  �V  �X  �\  �[  s ��� l tt�N�M�L�N  �M  �L  � ��� l tt�K�J�I�K  �J  �I  � ��� l tt�H�G�F�H  �G  �F  � ��� Z  t����E�� n  tx��� o  uw�D�D 0 storageglobal storageGlobal� o  tu�C�C 	0 prefs  � k  {��� ��� l {{�B�A�@�B  �A  �@  � ��� Z  {����?�>� > {���� n  {���� 1  |��=
�= 
valL� o  {|�<�< .0 globalstoragecheckbox globalStorageCheckbox� m  ���;�; � k  ���� ��� l ���:���:  � ( " should be GLOBAL, but is NOT yet:   � ��� D   s h o u l d   b e   G L O B A L ,   b u t   i s   N O T   y e t :� ��� n ����� I  ���9��8�9 *0 clickobjectbycoords clickObjectByCoords� ��7� o  ���6�6 .0 globalstoragecheckbox globalStorageCheckbox�7  �8  �  f  ��� ��� I ���5��4
�5 .sysodelanull��� ��� nmbr� m  ���� ?�      �4  � ��� l ���3�2�1�3  �2  �1  � ��� l ���0���0  � G A MIGHT open a dialog warning about change to global status:						   � ��� �   M I G H T   o p e n   a   d i a l o g   w a r n i n g   a b o u t   c h a n g e   t o   g l o b a l   s t a t u s : 	 	 	 	 	 	� ��/� Z  �����.�-� H  ���� C  ����� n  ����� 1  ���,
�, 
pnam� 4  ���+�
�+ 
cwin� m  ���*�* � m  ���� ���  O p t i o n s   f o r� k  ���� ��� l ���)���)  � ' ! click OK to confirm the change:    � ��� B   c l i c k   O K   t o   c o n f i r m   t h e   c h a n g e :  � ��� n ����� I  ���(��'�( B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow� ��&� n  ����� 4  ���%�
�% 
butT� m  ���� ���  O K� 4  ���$�
�$ 
cwin� m  ���#�# �&  �'  �  f  ��� ��� l ���"�!� �"  �!  �   � ��� l ������  � < 6 wait until back to normal "Options for Field" window:   � ��� l   w a i t   u n t i l   b a c k   t o   n o r m a l   " O p t i o n s   f o r   F i e l d "   w i n d o w :� ��� n ����� I  ������ "0 windowwaituntil windowWaitUntil� ��� K  ���� ���� 0 
windowname 
windowName� m  ���� ���  O p t i o n s   f o r� ����  0 windownametest windowNameTest� m  ���� ���  s t a r t s   w i t h� ���� 0 whichwindow whichWindow� m  ���� ��� 
 f r o n t�  �  �  �  f  ��� ��� l ������  �  �  �  �.  �-  �/  �?  �>  � ��� l ������  �  �  � ��� l ������  �  �  �  �E  � l ������ k  ���� ��� Z  �H����� > ����� n  ��� � 1  ���

�
 
valL  o  ���	�	 .0 globalstoragecheckbox globalStorageCheckbox� m  ����  � k  �D  l ������  �  �    l ����   $  IS GLOBAL, but should NOT be:    � <   I S   G L O B A L ,   b u t   s h o u l d   N O T   b e : 	
	 n �� I  ����� *0 clickobjectbycoords clickObjectByCoords � o  ��� �  .0 globalstoragecheckbox globalStorageCheckbox�  �    f  ��
  I ������
�� .sysodelanull��� ��� nmbr m  �� ?�      ��    l ����������  ��  ��    l ������   G A MIGHT open a dialog warning about change to global status:						    � �   M I G H T   o p e n   a   d i a l o g   w a r n i n g   a b o u t   c h a n g e   t o   g l o b a l   s t a t u s : 	 	 	 	 	 	  Z  �B���� H  � C  �
  n  �!"! 1  ��
�� 
pnam" 4  ���#
�� 
cwin# m   ����   m  	$$ �%%  O p t i o n s   f o r k  >&& '(' l ��)*��  ) ' ! click OK to confirm the change:    * �++ B   c l i c k   O K   t o   c o n f i r m   t h e   c h a n g e :  ( ,-, n  ./. I   ��0���� B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow0 1��1 n  232 4  ��4
�� 
butT4 m  55 �66  O K3 4  ��7
�� 
cwin7 m  ���� ��  ��  /  f  - 898 l !!��������  ��  ��  9 :;: l !!��<=��  < < 6 wait until back to normal "Options for Field" window:   = �>> l   w a i t   u n t i l   b a c k   t o   n o r m a l   " O p t i o n s   f o r   F i e l d "   w i n d o w :; ?@? n !<ABA I  "<��C���� "0 windowwaituntil windowWaitUntilC D��D K  "8EE ��FG�� 0 
windowname 
windowNameF m  %(HH �II  O p t i o n s   f o rG ��JK��  0 windownametest windowNameTestJ m  +.LL �MM  s t a r t s   w i t hK ��N���� 0 whichwindow whichWindowN m  14OO �PP 
 f r o n t��  ��  ��  B  f  !"@ Q��Q l ==��������  ��  ��  ��  ��  ��   R��R l CC��������  ��  ��  ��  �  �  � STS l II��������  ��  ��  T UVU l II��������  ��  ��  V WXW l II��YZ��  Y ; 5 Then see which one of the Indexing choices is needed   Z �[[ j   T h e n   s e e   w h i c h   o n e   o f   t h e   I n d e x i n g   c h o i c e s   i s   n e e d e dX \��\ Z  I�]^_��] = IR`a` n  INbcb o  JN���� (0 storageindexchoice storageIndexChoicec o  IJ���� 	0 prefs  a m  NQdd �ee  N o n e^ k  Ueff ghg n Uciji I  Vc��k���� &0 fmgui_checkboxset fmGUI_CheckboxSetk lml n  V^non 4  W^��p
�� 
chbxp m  Z]qq �rr  N o n e   1   o f   3o o  VW���� 0 workingarea workingAream s��s m  ^_���� ��  ��  j  f  UVh t��t o  de���� 0 fdsfdsf  ��  _ uvu = hqwxw n  hmyzy o  im���� (0 storageindexchoice storageIndexChoicez o  hi���� 	0 prefs  x m  mp{{ �||  M i n i m a lv }~} k  t� ��� n t���� I  u�������� &0 fmgui_checkboxset fmGUI_CheckboxSet� ��� n  u}��� 4  v}���
�� 
chbx� m  y|�� ���  M i n i m a l   2   o f   3� o  uv���� 0 workingarea workingArea� ���� m  }~���� ��  ��  �  f  tu� ���� l ����������  ��  ��  ��  ~ ��� = ����� n  ����� o  ������ (0 storageindexchoice storageIndexChoice� o  ������ 	0 prefs  � m  ���� ���  A l l� ���� k  ���� ��� n ����� I  ��������� &0 fmgui_checkboxset fmGUI_CheckboxSet� ��� n  ����� 4  �����
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
pnam� m  ���� ���  c r e a t e   i n d e x e s� o      ���� &0 autoindexcheckbox autoIndexCheckbox� ��� Z  �	������ n  ����� o  ������ 0 	autoindex 	autoIndex� o  ������ 	0 prefs  � n 		��� I  		������� &0 fmgui_checkboxset fmGUI_CheckboxSet� ��� o  		���� &0 autoindexcheckbox autoIndexCheckbox� ���� m  		���� ��  ��  �  f  		��  � n 		��� I  		������� &0 fmgui_checkboxset fmGUI_CheckboxSet� ��� o  		���� &0 autoindexcheckbox autoIndexCheckbox� ���� m  		����  ��  ��  �  f  		� ���� l 		����~��  �  �~  ��  ��  ��  � ��� l 		�}�|�{�}  �|  �{  � ��z� l 		�y���y  �   END OF: Storage Tab.   � ��� *   E N D   O F :   S t o r a g e   T a b .�z  ��  ��   ��� l 		�x�w�v�x  �w  �v  �    l 		�u�u   P J--------------------------------------------------------------------------    � � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  l 		�t�t     NORMAL FIELD    �		    N O R M A L   F I E L D 

 l 		�s�s   U O--------------------------------------------------------------------------					    � � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 	 	 	 	 	  l 		�r�r     AUTO-ENTER TAB:    �     A U T O - E N T E R   T A B :  l 		�q�q   U O--------------------------------------------------------------------------					    � � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 	 	 	 	 	  r  		, n  		* 4  	%	*�p
�p 
tabg m  	(	)�o�o  4  		%�n 
�n 
cwin  m  	#	$�m�m  o      �l�l 0 workingarea workingArea !"! I 	-	9�k#�j
�k .prcsclicnull��� ��� uiel# n  	-	5$%$ 4  	.	5�i&
�i 
radB& m  	1	4'' �((  A u t o - E n t e r% o  	-	.�h�h 0 workingarea workingArea�j  " )*) l 	:	:�g�f�e�g  �f  �e  * +,+ l 	:	:�d-.�d  -   Serial Number:   . �//    S e r i a l   N u m b e r :, 010 Z  	:
23�c�b2 > 	:	A454 n  	:	?676 o  	;	?�a�a 0 
autoserial 
autoSerial7 o  	:	;�`�` 	0 prefs  5 m  	?	@�_
�_ 
null3 Z  	D
89�^:8 = 	D	Q;<; n  	D	M=>= m  	I	M�]
�] 
pcls> n  	D	I?@? o  	E	I�\�\ 0 
autoserial 
autoSerial@ o  	D	E�[�[ 	0 prefs  < m  	M	P�Z
�Z 
bool9 n 	T	bABA I  	U	b�YC�X�Y &0 fmgui_checkboxset fmGUI_CheckboxSetC DED n  	U	]FGF 4  	V	]�WH
�W 
chbxH m  	Y	\II �JJ  S e r i a l   n u m b e rG o  	U	V�V�V 0 workingarea workingAreaE K�UK m  	]	^�T�T  �U  �X  B  f  	T	U�^  : k  	e
LL MNM l 	e	e�SOP�S  O * $ autoSerial is a RECORD of settings:   P �QQ H   a u t o S e r i a l   i s   a   R E C O R D   o f   s e t t i n g s :N RSR n 	e	sTUT I  	f	s�RV�Q�R &0 fmgui_checkboxset fmGUI_CheckboxSetV WXW n  	f	nYZY 4  	g	n�P[
�P 
chbx[ m  	j	m\\ �]]  S e r i a l   n u m b e rZ o  	f	g�O�O 0 workingarea workingAreaX ^�N^ m  	n	o�M�M �N  �Q  U  f  	e	fS _`_ l 	t	t�L�K�J�L  �K  �J  ` aba l 	t	t�I�H�G�I  �H  �G  b cdc n 	t	�efe I  	u	��Fg�E�F (0 fmgui_textfieldset fmGUI_TextFieldSetg hih 6 	u	�jkj n  	u	{lml 4 	v	{�Dn
�D 
txtfn m  	y	z�C�C m o  	u	v�B�B 0 workingarea workingAreak E  	~	�opo 1  		��A
�A 
pnamp m  	�	�qq �rr  n e x t   v a l u ei s�@s n  	�	�tut o  	�	��?�? 0 autonextvalue autoNextValueu n  	�	�vwv o  	�	��>�> 0 
autoserial 
autoSerialw o  	�	��=�= 	0 prefs  �@  �E  f  f  	t	ud xyx l 	�	��<�;�:�<  �;  �:  y z{z n 	�	�|}| I  	�	��9~�8�9 (0 fmgui_textfieldset fmGUI_TextFieldSet~ � 6 	�	���� n  	�	���� 4 	�	��7�
�7 
txtf� m  	�	��6�6 � o  	�	��5�5 0 workingarea workingArea� E  	�	���� 1  	�	��4
�4 
pnam� m  	�	��� ���  i n c r e m e n t� ��3� n  	�	���� o  	�	��2�2 0 autoincrement autoIncrement� n  	�	���� o  	�	��1�1 0 
autoserial 
autoSerial� o  	�	��0�0 	0 prefs  �3  �8  }  f  	�	�{ ��� l 	�	��/�.�-�/  �.  �-  � ��� Z  	�	�����,� = 	�	���� n  	�	���� o  	�	��+�+ 0 autogenerate autoGenerate� n  	�	���� o  	�	��*�* 0 
autoserial 
autoSerial� o  	�	��)�) 	0 prefs  � m  	�	��� ���  O n C r e a t i o n� n 	�	���� I  	�	��(��'�( &0 fmgui_checkboxset fmGUI_CheckboxSet� ��� n  	�	���� 4  	�	��&�
�& 
chbx� m  	�	��� ��� $ O n   c r e a t i o n   1   o f   2� o  	�	��%�% 0 workingarea workingArea� ��$� m  	�	��#�# �$  �'  �  f  	�	�� ��� = 	�	���� n  	�	���� o  	�	��"�" 0 autogenerate autoGenerate� n  	�	���� o  	�	��!�! 0 
autoserial 
autoSerial� o  	�	�� �  	0 prefs  � m  	�	��� ���  O n C o m m i t� ��� n 	�	���� I  	�	����� &0 fmgui_checkboxset fmGUI_CheckboxSet� ��� n  	�	���� 4  	�	���
� 
chbx� m  	�	��� ���   O n   c o m m i t   2   o f   2� o  	�	��� 0 workingarea workingArea� ��� m  	�	��� �  �  �  f  	�	��  �,  � ��� l 
 
 ����  �  �  �  �c  �b  1 ��� l 

����  �  �  � ��� l 

����  �  �  � ��� l 

����  � A ; Special Value (creation,modification,last visited record):   � ��� v   S p e c i a l   V a l u e   ( c r e a t i o n , m o d i f i c a t i o n , l a s t   v i s i t e d   r e c o r d ) :� ��� Z  
������ > 

��� n  

��� o  

�� .0 autoenterspecialvalue autoEnterSpecialValue� o  

�
�
 	0 prefs  � m  

�	
�	 
null� k  
��� ��� l 

����  � � � autoEnterSpecialValue: keywords used in FM-XML: PreviousRecord, CreationAccountName, CreationUserName,CreationTimestamp, ModificationAccountName, et al.   � ���2   a u t o E n t e r S p e c i a l V a l u e :   k e y w o r d s   u s e d   i n   F M - X M L :   P r e v i o u s R e c o r d ,   C r e a t i o n A c c o u n t N a m e ,   C r e a t i o n U s e r N a m e , C r e a t i o n T i m e s t a m p ,   M o d i f i c a t i o n A c c o u n t N a m e ,   e t   a l .� ��� Z  
������ = 

��� n  

��� o  

�� .0 autoenterspecialvalue autoEnterSpecialValue� o  

�� 	0 prefs  � m  

�� ���  P r e v i o u s R e c o r d� k  

9�� ��� n 

7��� I  

7���� &0 fmgui_checkboxset fmGUI_CheckboxSet� ��� 6 

2��� n  

#��� 4 

#��
� 
chbx� m  
!
"�� � o  

� �  0 workingarea workingArea� E  
&
1��� 1  
'
+��
�� 
pnam� m  
,
0�� ���  l a s t   v i s i t e d� ���� m  
2
3���� ��  �  �  f  

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
���    Z  
H
��� = 
H
Q n  
H
M o  
I
M���� .0 autoenterspecialvalue autoEnterSpecialValue o  
H
I���� 	0 prefs   m  
M
P		 �

   C r e a t i o n U s e r N a m e r  
T
Y m  
T
W �  N a m e o      ���� 0 
menuchoice 
menuChoice  = 
\
e n  
\
a o  
]
a���� .0 autoenterspecialvalue autoEnterSpecialValue o  
\
]���� 	0 prefs   m  
a
d �  C r e a t i o n N a m e  r  
h
m m  
h
k �  N a m e o      ���� 0 
menuchoice 
menuChoice  = 
p
y  n  
p
u!"! o  
q
u���� .0 autoenterspecialvalue autoEnterSpecialValue" o  
p
q���� 	0 prefs    m  
u
x## �$$ & C r e a t i o n A c c o u n t N a m e %&% r  
|
�'(' m  
|
)) �**  A c c o u n t   N a m e( o      ���� 0 
menuchoice 
menuChoice& +,+ = 
�
�-.- n  
�
�/0/ o  
�
����� .0 autoenterspecialvalue autoEnterSpecialValue0 o  
�
����� 	0 prefs  . m  
�
�11 �22 " C r e a t i o n T i m e s t a m p, 343 r  
�
�565 m  
�
�77 �88 2 T i m e s t a m p   ( D a t e   a n d   T i m e )6 o      ���� 0 
menuchoice 
menuChoice4 9:9 = 
�
�;<; n  
�
�=>= o  
�
����� .0 autoenterspecialvalue autoEnterSpecialValue> o  
�
����� 	0 prefs  < m  
�
�?? �@@  C r e a t i o n T i m e: ABA r  
�
�CDC m  
�
�EE �FF  T i m eD o      ���� 0 
menuchoice 
menuChoiceB GHG = 
�
�IJI n  
�
�KLK o  
�
����� .0 autoenterspecialvalue autoEnterSpecialValueL o  
�
����� 	0 prefs  J m  
�
�MM �NN  C r e a t i o n D a t eH O��O r  
�
�PQP m  
�
�RR �SS  D a t eQ o      ���� 0 
menuchoice 
menuChoice��  ��   TUT n 
�
�VWV I  
�
���X����  0 fmgui_popupset fmGUI_PopupSetX YZY n  
�
�[\[ 4  
�
���]
�� 
popB] m  
�
�^^ �__  C r e a t i o n\ o  
�
����� 0 workingarea workingAreaZ `��` o  
�
����� 0 
menuchoice 
menuChoice��  ��  W  f  
�
�U a��a l 
�
���������  ��  ��  ��  � bcb C  
�
�ded n  
�
�fgf o  
�
����� .0 autoenterspecialvalue autoEnterSpecialValueg o  
�
����� 	0 prefs  e m  
�
�hh �ii  M o d i f i c a t i o nc jkj k  
�kll mnm Z  
�Zopq��o = 
�
�rsr n  
�
�tut o  
�
����� .0 autoenterspecialvalue autoEnterSpecialValueu o  
�
����� 	0 prefs  s m  
�
�vv �ww ( M o d i f i c a t i o n U s e r N a m ep r  
�
�xyx m  
�
�zz �{{  N a m ey o      ���� 0 
menuchoice 
menuChoiceq |}| = 
�
�~~ n  
�
���� o  
�
����� .0 autoenterspecialvalue autoEnterSpecialValue� o  
�
����� 	0 prefs   m  
�
��� ���   M o d i f i c a t i o n N a m e} ��� r  ��� m  �� ���  N a m e� o      ���� 0 
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
menuChoice��  ��  n ��� n [i��� I  \i�������  0 fmgui_popupset fmGUI_PopupSet� ��� n  \d��� 4  ]d���
�� 
popB� m  `c�� ���  M o d i f i c a t i o n� o  \]���� 0 workingarea workingArea� ���� o  de���� 0 
menuchoice 
menuChoice��  ��  �  f  [\� ��� l jj��������  ��  ��  � ���� l jj��������  ��  ��  ��  k ��� = nw��� n  ns��� o  os���� .0 autoenterspecialvalue autoEnterSpecialValue� o  no���� 	0 prefs  � m  sv�� ���  N O N E� ���� k  z��� ��� l zz������  � : 4 need to make sure NO special values are checked on:   � ��� h   n e e d   t o   m a k e   s u r e   N O   s p e c i a l   v a l u e s   a r e   c h e c k e d   o n :� ��� n z���� I  {�������� &0 fmgui_checkboxset fmGUI_CheckboxSet� ��� 6 {���� n  {���� 4 |����
�� 
chbx� m  ����� � o  {|���� 0 workingarea workingArea� = ����� 1  ����
�� 
titl� m  ���� ���  C r e a t i o n� ���� m  ������  ��  ��  �  f  z{� ��� n ����� I  ��������� &0 fmgui_checkboxset fmGUI_CheckboxSet� ��� 6 ����� n  ����� 4 �����
�� 
chbx� m  ������ � o  ������ 0 workingarea workingArea� = ����� 1  ����
�� 
titl� m  ���� �    M o d i f i c a t i o n� �� m  ������  ��  ��  �  f  ���  n �� I  �������� &0 fmgui_checkboxset fmGUI_CheckboxSet  6 ��	
	 n  �� 4 ����
�� 
chbx m  ������  o  ������ 0 workingarea workingArea
 E  �� 1  ����
�� 
pnam m  �� �  l a s t   v i s i t e d �� m  ������  ��  ��    f  �� �� l ����������  ��  ��  ��  ��  �  �  l ����������  ��  ��   �� l ����������  ��  ��  ��  �  �  �  l ����������  ��  ��    l ������     Constant:     �    C o n s t a n t :    Z  �D !����  > ��"#" n  ��$%$ o  ������ *0 autoenterisconstant autoEnterIsConstant% o  ������ 	0 prefs  # m  ����
�� 
null! k  �@&& '(' r  ��)*) 6 ��+,+ n  ��-.- 4 ����/
�� 
chbx/ m  ������ . o  ������ 0 workingarea workingArea, E  ��010 1  ����
�� 
pnam1 m  ��22 �33  D a t a* o      ���� 0 datacheckbox dataCheckbox( 454 Z  �>67��86 n  �9:9 o  ��� *0 autoenterisconstant autoEnterIsConstant: o  ���~�~ 	0 prefs  7 k  4;; <=< n >?> I  �}@�|�} &0 fmgui_checkboxset fmGUI_CheckboxSet@ ABA o  �{�{ 0 datacheckbox dataCheckboxB C�zC m  �y�y �z  �|  ?  f  = D�xD Z  4EF�wGE = HIH n  JKJ o  �v�v .0 autoenterconstantdata autoEnterConstantDataK o  �u�u 	0 prefs  I m  �t
�t 
nullF l �sLM�s  L 7 1 Possibly null if autoEnterIsConstant is false...   M �NN b   P o s s i b l y   n u l l   i f   a u t o E n t e r I s C o n s t a n t   i s   f a l s e . . .�w  G n 4OPO I  4�rQ�q�r (0 fmgui_textfieldset fmGUI_TextFieldSetQ RSR n  +TUT 4  $+�pV
�p 
txtaV m  '*WW �XX 
 D a t a :U n  $YZY 4  $�o[
�o 
scra[ m   #\\ �]] 
 D a t a :Z o  �n�n 0 workingarea workingAreaS ^�m^ n  +0_`_ o  ,0�l�l .0 autoenterconstantdata autoEnterConstantData` o  +,�k�k 	0 prefs  �m  �q  P  f  �x  ��  8 n 7>aba I  8>�jc�i�j &0 fmgui_checkboxset fmGUI_CheckboxSetc ded o  89�h�h 0 datacheckbox dataCheckboxe f�gf m  9:�f�f  �g  �i  b  f  785 ghg l ??�e�d�c�e  �d  �c  h iji l ??�b�a�`�b  �a  �`  j k�_k l ??�^�]�\�^  �]  �\  �_  ��  ��   lml l EE�[�Z�Y�[  �Z  �Y  m non Z  ETpq�X�Wp > ELrsr n  EJtut o  FJ�V�V &0 autoenterislookup autoEnterIsLookupu o  EF�U�U 	0 prefs  s m  JK�T
�T 
nullq k  OOvv wxw l OO�Syz�S  y   NOT YET SUPPORTED!!!!!	   z �{{ 0   N O T   Y E T   S U P P O R T E D ! ! ! ! ! 	x |}| l OO�R~�R  ~   NOT YET SUPPORTED!!!!!	    ��� 0   N O T   Y E T   S U P P O R T E D ! ! ! ! ! 	} ��Q� l OO�P���P  � $  NOT YET SUPPORTED!!!!!							   � ��� <   N O T   Y E T   S U P P O R T E D ! ! ! ! ! 	 	 	 	 	 	 	�Q  �X  �W  o ��� l UU�O�N�M�O  �N  �M  � ��� l UU�L�K�J�L  �K  �J  � ��� l UU�I���I  �   AutoEnter Calculation:    � ��� 0   A u t o E n t e r   C a l c u l a t i o n :  � ��� Z  U����H�G� > U\��� n  UZ��� o  VZ�F�F 00 autoenteriscalculation autoEnterIsCalculation� o  UV�E�E 	0 prefs  � m  Z[�D
�D 
null� k  _��� ��� Z  _����C�� H  _e�� n  _d��� o  `d�B�B 00 autoenteriscalculation autoEnterIsCalculation� o  _`�A�A 	0 prefs  � k  hx�� ��� l hh�@���@  � + % Need to make sure it is NOT checked:   � ��� J   N e e d   t o   m a k e   s u r e   i t   i s   N O T   c h e c k e d :� ��� n hv��� I  iv�?��>�? &0 fmgui_checkboxset fmGUI_CheckboxSet� ��� n  iq��� 4  jq�=�
�= 
chbx� m  mp�� ���   C a l c u l a t e d   v a l u e� o  ij�<�< 0 workingarea workingArea� ��;� m  qr�:�:  �;  �>  �  f  hi� ��9� l ww�8�7�6�8  �7  �6  �9  �C  � l {����� k  {��� ��� r  {���� n  {���� 4  |��5�
�5 
chbx� m  ��� ���   C a l c u l a t e d   v a l u e� o  {|�4�4 0 workingarea workingArea� o      �3�3 .0 autoentercalccheckbox autoEnterCalcCheckbox� ��� l ���2���2  � G A if the checkbox is already checked, need to click Specify button   � ��� �   i f   t h e   c h e c k b o x   i s   a l r e a d y   c h e c k e d ,   n e e d   t o   c l i c k   S p e c i f y   b u t t o n� ��� l ���1���1  � ^ X if not already checked, checking it opens the window, so use special function for click   � ��� �   i f   n o t   a l r e a d y   c h e c k e d ,   c h e c k i n g   i t   o p e n s   t h e   w i n d o w ,   s o   u s e   s p e c i a l   f u n c t i o n   f o r   c l i c k� ��� Z  �����0�� > ����� n  ����� 1  ���/
�/ 
valL� o  ���.�. .0 autoentercalccheckbox autoEnterCalcCheckbox� m  ���-�- � n ����� I  ���,��+�, B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow� ��*� o  ���)�) .0 autoentercalccheckbox autoEnterCalcCheckbox�*  �+  �  f  ���0  � k  ���� ��� l ���(���(  � \ V there are TWO buttons named "Specify�" - the first is for CALC, second is for lookup:   � ��� �   t h e r e   a r e   T W O   b u t t o n s   n a m e d   " S p e c i f y & "   -   t h e   f i r s t   i s   f o r   C A L C ,   s e c o n d   i s   f o r   l o o k u p :� ��'� n ����� I  ���&��%�& B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow� ��$� 6 ����� n  ����� 4 ���#�
�# 
butT� m  ���"�" � o  ���!�! 0 workingarea workingArea� C  ����� 1  ��� 
�  
pnam� m  ���� ���  S p e c i f y�$  �%  �  f  ���'  � ��� l ������  �  �  � ��� l ������  � + % wait for Specify Calculation window:   � ��� J   w a i t   f o r   S p e c i f y   C a l c u l a t i o n   w i n d o w :� ��� n ����� I  ������ 20 windowwaituntil_frontis windowWaitUntil_FrontIS� ��� K  ���� ���� 0 
windowname 
windowName� m  ���� ��� & S p e c i f y   C a l c u l a t i o n�  �  �  �  f  ��� ��� l ������  �  �  � ��� r  ��   4  ���
� 
cwin m  ����  o      �� 0 workingarea workingArea�  l ������  �  �    l ����     CALCULATION CODE:    �		 $   C A L C U L A T I O N   C O D E : 

 l �����
�  �  �
    Z  ���	 = �� n  �� 1  ���
� 
leng n  �� o  ���� &0 autoentercalccode autoEnterCalcCode o  ���� 	0 prefs   m  ����   k  ��  l  ����   � � if for some reason an empty string is specified, we want to force an error in FM's syntax checker for the validation calc box instead of silently allowing an empty string as the validation calc.     ��   i f   f o r   s o m e   r e a s o n   a n   e m p t y   s t r i n g   i s   s p e c i f i e d ,   w e   w a n t   t o   f o r c e   a n   e r r o r   i n   F M ' s   s y n t a x   c h e c k e r   f o r   t h e   v a l i d a t i o n   c a l c   b o x   i n s t e a d   o f   s i l e n t l y   a l l o w i n g   a n   e m p t y   s t r i n g   a s   t h e   v a l i d a t i o n   c a l c .   � r  �� m  ��   �!! i f   (   / *   a u t o - e n t e r   c a l c   w a s   s p e c i f i e d   a s   a n   e m p t y   s t r i n g   r a t h e r   t h a n   a   n u l l   v a l u e   i n d i c a t i n g   a   b u g   i n   t h e   s c r i p t   r u n n i n g   t h e   s e t u p   t o o l .   * /   ) o      �� 20 autoentercalccode_value autoEnterCalcCode_VALUE�  �	   r  ��"#" n  ��$%$ o  ���� &0 autoentercalccode autoEnterCalcCode% o  ��� �  	0 prefs  # o      ���� 20 autoentercalccode_value autoEnterCalcCode_VALUE &'& l ����������  ��  ��  ' ()( n �*+* I  ���,���� (0 fmgui_textfieldset fmGUI_TextFieldSet, -.- n  ��/0/ 4  ����1
�� 
txta1 m  ������ 0 n  ��232 4  ����4
�� 
scra4 m  ������ 3 4  ����5
�� 
cwin5 m  ������ . 6��6 o  ������ 20 autoentercalccode_value autoEnterCalcCode_VALUE��  ��  +  f  ��) 787 l ��������  ��  ��  8 9:9 l ��������  ��  ��  : ;<; l ��=>��  = ' ! Calc CONTEXT Table (occurrence):   > �?? B   C a l c   C O N T E X T   T a b l e   ( o c c u r r e n c e ) :< @A@ Z  -BC����B > 	DED n  FGF o  ���� 20 autoentercalccontexttoc autoEnterCalcContextTOCG o  ���� 	0 prefs  E m  ��
�� 
nullC n )HIH I  )��J����  0 fmgui_popupset fmGUI_PopupSetJ KLK 6 "MNM n  OPO 4 ��Q
�� 
popBQ m  ���� P o  ���� 0 workingarea workingAreaN E  !RSR 1  ��
�� 
pnamS m   TT �UU  c o n t e x tL V��V n  "%WXW o  #%���� 20 autoentercalccontexttoc autoEnterCalcContextTOCX o  "#���� 	0 prefs  ��  ��  I  f  ��  ��  A YZY l ..��������  ��  ��  Z [\[ l ..��]^��  ] 9 3 Do Not Evaluate if all referenced field are empty:   ^ �__ f   D o   N o t   E v a l u a t e   i f   a l l   r e f e r e n c e d   f i e l d   a r e   e m p t y :\ `a` Z  .jbc����b > .3ded n  .1fgf o  /1����  0 alwaysevaluate alwaysEvaluateg o  ./���� 	0 prefs  e m  12��
�� 
nullc k  6fhh iji r  6Mklk 6 6Kmnm n  6<opo 4 7<��q
�� 
chbxq m  :;���� p o  67���� 0 workingarea workingArean E  ?Jrsr 1  @D��
�� 
pnams m  EItt �uu J n o t   e v a l u a t e   i f   a l l   r e f e r e n c e d   f i e l d sl o      ���� *0 notevaluatecheckbox notEvaluateCheckboxj v��v Z  Nfwx��yw n  NRz{z o  OQ����  0 alwaysevaluate alwaysEvaluate{ o  NO���� 	0 prefs  x n U\|}| I  V\��~���� &0 fmgui_checkboxset fmGUI_CheckboxSet~ � o  VW���� *0 notevaluatecheckbox notEvaluateCheckbox� ���� m  WX����  ��  ��  }  f  UV��  y n _f��� I  `f������� &0 fmgui_checkboxset fmGUI_CheckboxSet� ��� o  `a���� *0 notevaluatecheckbox notEvaluateCheckbox� ���� m  ab���� ��  ��  �  f  _`��  ��  ��  a ��� l kk��������  ��  ��  � ��� l kk��������  ��  ��  � ��� l kk������  � - ' click OK to save Specify Calculation:    � ��� N   c l i c k   O K   t o   s a v e   S p e c i f y   C a l c u l a t i o n :  � ��� n k���� I  l�������� B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow� ���� 6 l���� n  lr��� 4 mr���
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
pnam� m  ���� ��� . D o   n o t   r e p l a c e   e x i s t i n g� o      ���� @0 overwriteexistingvaluecheckbox overwriteExistingValueCheckbox� ���� Z  �������� n  ����� o  ������ 00 overwriteexistingvalue overwriteExistingValue� o  ������ 	0 prefs  � n ����� I  ��������� &0 fmgui_checkboxset fmGUI_CheckboxSet� ��� o  ������ @0 overwriteexistingvaluecheckbox overwriteExistingValueCheckbox� ���� m  ������  ��  ��  �  f  ����  � n ����� I  ��������� &0 fmgui_checkboxset fmGUI_CheckboxSet� ��� o  ������ @0 overwriteexistingvaluecheckbox overwriteExistingValueCheckbox� ���� m  ������ ��  ��  �  f  ����  ��  ��  � ��� l ����������  ��  ��  � ���� l ������~��  �  �~  ��  �   there IS a Calc:   � ��� "   t h e r e   I S   a   C a l c :� ��}� l ���|�{�z�|  �{  �z  �}  �H  �G  � ��� l ���y�x�w�y  �x  �w  � ��� l ���v�u�t�v  �u  �t  � ��� l ���s���s  � 8 2 Prohibit modification of value during data entry:   � ��� d   P r o h i b i t   m o d i f i c a t i o n   o f   v a l u e   d u r i n g   d a t a   e n t r y :� ��� Z  �E���r�q� > �� � n  � o   �p�p 0 allowediting allowEditing o  � �o�o 	0 prefs    m  �n
�n 
null� k  	A  r  	" 6 		 n  	

 4 
�m
�m 
chbx m  �l�l  o  	
�k�k 0 workingarea workingArea	 E   1  �j
�j 
pnam m   � * P r o h i b i t   m o d i f i c a t i o n o      �i�i *0 prohibitmodcheckbox prohibitModCheckbox �h Z  #A�g n  #) o  $(�f�f 0 allowediting allowEditing o  #$�e�e 	0 prefs   n ,5 I  -5�d�c�d &0 fmgui_checkboxset fmGUI_CheckboxSet  o  -0�b�b *0 prohibitmodcheckbox prohibitModCheckbox �a m  01�`�`  �a  �c    f  ,-�g   n 8A I  9A�_�^�_ &0 fmgui_checkboxset fmGUI_CheckboxSet  !  o  9<�]�] *0 prohibitmodcheckbox prohibitModCheckbox! "�\" m  <=�[�[ �\  �^    f  89�h  �r  �q  � #$# l FF�Z�Y�X�Z  �Y  �X  $ %&% l FF�W�V�U�W  �V  �U  & '(' l FF�T)*�T  ) P J--------------------------------------------------------------------------   * �++ � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -( ,-, l FF�S./�S  .   NORMAL FIELD   / �00    N O R M A L   F I E L D- 121 l FF�R34�R  3 U O--------------------------------------------------------------------------					   4 �55 � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 	 	 	 	 	2 676 l FF�Q89�Q  8   VALIDATION TAB:   9 �::     V A L I D A T I O N   T A B :7 ;<; l FF�P=>�P  = T N--------------------------------------------------------------------------				   > �?? � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 	 	 	 	< @A@ l FF�O�N�M�O  �N  �M  A BCB l FF�LDE�L  D 8 2 MOST VALIDATION FEATURES NOT YET SUPPORTED ! ! !    E �FF d   M O S T   V A L I D A T I O N   F E A T U R E S   N O T   Y E T   S U P P O R T E D   !   !   !  C GHG l FF�KIJ�K  I 8 2 MOST VALIDATION FEATURES NOT YET SUPPORTED ! ! !    J �KK d   M O S T   V A L I D A T I O N   F E A T U R E S   N O T   Y E T   S U P P O R T E D   !   !   !  H LML l FF�JNO�J  N 8 2 MOST VALIDATION FEATURES NOT YET SUPPORTED ! ! !    O �PP d   M O S T   V A L I D A T I O N   F E A T U R E S   N O T   Y E T   S U P P O R T E D   !   !   !  M QRQ l FF�I�H�G�I  �H  �G  R STS I FR�FU�E
�F .prcsclicnull��� ��� uielU n  FNVWV 4  GN�DX
�D 
radBX m  JMYY �ZZ  V a l i d a t i o nW o  FG�C�C 0 workingarea workingArea�E  T [\[ l SS�B�A�@�B  �A  �@  \ ]^] Z  S7_`�?�>_ > SZaba n  SXcdc o  TX�=�= (0 validationcalccode validationCalcCoded o  ST�<�< 	0 prefs  b m  XY�;
�; 
null` k  ]3ee fgf l ]]�:�9�8�:  �9  �8  g hih n ]jjkj I  ^j�7l�6�7 B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindowl m�5m n  ^fnon 4  _f�4p
�4 
butTp m  beqq �rr  S p e c i f y &o o  ^_�3�3 0 workingarea workingArea�5  �6  k  f  ]^i sts l kk�2�1�0�2  �1  �0  t uvu l kk�/wx�/  w + % wait for Specify Calculation window:   x �yy J   w a i t   f o r   S p e c i f y   C a l c u l a t i o n   w i n d o w :v z{z n kx|}| I  lx�.~�-�. 20 windowwaituntil_frontis windowWaitUntil_FrontIS~ �, K  lt�� �+��*�+ 0 
windowname 
windowName� m  or�� ��� & S p e c i f y   C a l c u l a t i o n�*  �,  �-  }  f  kl{ ��� l yy�)�(�'�)  �(  �'  � ��� r  y���� 4  y�&�
�& 
cwin� m  }~�%�% � o      �$�$ 0 workingarea workingArea� ��� l ���#�"�!�#  �"  �!  � ��� l ��� ���   �   CALCULATION CODE:    � ��� &   C A L C U L A T I O N   C O D E :  � ��� Z  ������� = ����� n  ����� 1  ���
� 
leng� n  ����� o  ���� (0 validationcalccode validationCalcCode� o  ���� 	0 prefs  � m  ����  � k  ���� ��� l  ������  � � � if for some reason an empty string is specified, we want to force an error in FM's syntax checker for the validation calc box instead of silently allowing an empty string as the validation calc.    � ����   i f   f o r   s o m e   r e a s o n   a n   e m p t y   s t r i n g   i s   s p e c i f i e d ,   w e   w a n t   t o   f o r c e   a n   e r r o r   i n   F M ' s   s y n t a x   c h e c k e r   f o r   t h e   v a l i d a t i o n   c a l c   b o x   i n s t e a d   o f   s i l e n t l y   a l l o w i n g   a n   e m p t y   s t r i n g   a s   t h e   v a l i d a t i o n   c a l c .  � ��� r  ����� m  ���� ��� i f   (   / *   v a l i d a t i o n   c a l c   w a s   s p e c i f i e d   a s   a n   e m p t y   s t r i n g   r a t h e r   t h a n   a   n u l l   v a l u e   i n d i c a t i n g   a   b u g   i n   t h e   s c r i p t   r u n n i n g   t h e   s e t u p   t o o l .   * /   )� o      �� 40 validationcalccode_value validationCalcCode_VALUE�  �  � r  ����� n  ����� o  ���� (0 validationcalccode validationCalcCode� o  ���� 	0 prefs  � o      �� 40 validationcalccode_value validationCalcCode_VALUE� ��� l ������  �  �  � ��� n ����� I  ������ (0 fmgui_textfieldset fmGUI_TextFieldSet� ��� n  ����� 4  ����
� 
txta� m  ���� � n  ����� 4  ����
� 
scra� m  ���� � 4  ����
� 
cwin� m  ���
�
 � ��	� o  ���� 40 validationcalccode_value validationCalcCode_VALUE�	  �  �  f  ��� ��� l ������  �  �  � ��� l ������  �  �  � ��� l ������  � ' ! Calc CONTEXT Table (occurrence):   � ��� B   C a l c   C O N T E X T   T a b l e   ( o c c u r r e n c e ) :� ��� Z  ����� ��� > ����� n  ����� o  ������ 40 validationcalccontexttoc validationCalcContextTOC� o  ������ 	0 prefs  � m  ����
�� 
null� n ����� I  ���������  0 fmgui_popupset fmGUI_PopupSet� ��� 6 ����� n  ����� 4 �����
�� 
popB� m  ������ � o  ������ 0 workingarea workingArea� E  ����� 1  ����
�� 
pnam� m  ���� ���  c o n t e x t� ���� n  ����� o  ������ 40 validationcalccontexttoc validationCalcContextTOC� o  ������ 	0 prefs  ��  ��  �  f  ���   ��  � ��� l ����������  ��  ��  � ��� l ��������  � - ' click OK to save Specify Calculation:    � ��� N   c l i c k   O K   t o   s a v e   S p e c i f y   C a l c u l a t i o n :  � ��� n ���� I  �������� B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow� ���� 6 ���� n  ����� 4 �����
�� 
butT� m  ������ � o  ������ 0 workingarea workingArea� E  ���� 1  ����
�� 
pnam� m  ��� ���  O K��  ��  �  f  ��� ��� l ��������  ��  ��  � ��� n #��� I  	#������� "0 windowwaituntil windowWaitUntil� ���� K  	�� ������ 0 
windowname 
windowName� m     � & S p e c i f y   C a l c u l a t i o n� ����  0 windownametest windowNameTest m   �   d o e s   n o t   c o n t a i n ������ 0 whichwindow whichWindow m   � 
 f r o n t��  ��  ��  �  f  	� 	
	 l $$��������  ��  ��  
  r  $1 n  $/ 4  */��
�� 
tabg m  -.����  4  $*��
�� 
cwin m  ()����  o      ���� 0 workingarea workingArea  l 22��������  ��  ��   �� l 22����     END OF: Validation.     � *   E N D   O F :   V a l i d a t i o n .  ��  �?  �>  ^  l 88��������  ��  ��    l 88��������  ��  ��    l 88�� ��   #  SAVE NORMAL FIELD - OPTIONS:     �!! :   S A V E   N O R M A L   F I E L D   -   O P T I O N S : "#" l 88��$%��  $ #  click OK for field Options:    % �&& :   c l i c k   O K   f o r   f i e l d   O p t i o n s :  # '(' n 8W)*) I  9W��+���� B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow+ ,��, 6 9S-.- n  9D/0/ 4 ?D��1
�� 
butT1 m  BC���� 0 4  9?��2
�� 
cwin2 m  =>���� . E  GR343 1  HL��
�� 
pnam4 m  MQ55 �66  O K��  ��  *  f  89( 787 l XX��������  ��  ��  8 9:9 n Xs;<; I  Ys��=���� "0 windowwaituntil windowWaitUntil= >��> K  Yo?? ��@A�� 0 
windowname 
windowName@ m  \_BB �CC  O p t i o n s   f o rA ��DE��  0 windownametest windowNameTestD m  beFF �GG & d o e s   n o t   s t a r t   w i t hE ��H���� 0 whichwindow whichWindowH m  hkII �JJ 
 f r o n t��  ��  ��  <  f  XY: KLK l tt��������  ��  ��  L MNM l tt��������  ��  ��  N OPO L  tvQQ m  tu��
�� boovtrueP RSR l ww��������  ��  ��  S TUT l ww��������  ��  ��  U V��V l ww��������  ��  ��  ��  �(  �S  � WXW l }}��������  ��  ��  X YZY l }}��������  ��  ��  Z [\[ L  }]] m  }~��
�� boovtrue\ ^��^ l ����������  ��  ��  ��  _ 4   � ���_
�� 
pcap_ m   � �`` �aa , F i l e M a k e r   P r o   A d v a n c e d] m   � �bb�                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  [ cdc l ����������  ��  ��  d efe l ����������  ��  ��  f ghg l ����������  ��  ��  h i��i l  ���jk�  j � �   DEBUGGING   DEBUGGING   DEBUGGING   DEBUGGING   DEBUGGING   DEBUGGING   
DEBUGGING   DEBUGGING   DEBUGGING   DEBUGGING   DEBUGGING   DEBUGGING   DEBUGGING   
   k �llB       D E B U G G I N G       D E B U G G I N G       D E B U G G I N G       D E B U G G I N G       D E B U G G I N G       D E B U G G I N G       
 D E B U G G I N G       D E B U G G I N G       D E B U G G I N G       D E B U G G I N G       D E B U G G I N G       D E B U G G I N G       D E B U G G I N G       
��  : R      �mn
� .ascrerr ****      � ****m o      �� 0 errmsg errMsgn �o�
� 
errno o      �� 0 errnum errNum�  ; R  ���pq
� .ascrerr ****      � ****p b  ��rsr b  ��tut b  ��vwv m  ��xx �yy 0 C o u l d n ' t   e d i t   a   F i e l d   -  w I  ���z��  0 coercetostring coerceToStringz {�{ o  ���� 	0 prefs  �  �  u m  ��|| �}}    -  s o  ���� 0 errmsg errMsgq �~�
� 
errn~ o  ���� 0 errnum errNum�  8 � l �����~�  �  �~  � ��}� l ���|�{�z�|  �{  �z  �}  � ��� l     �y�x�w�y  �x  �w  � ��� i   D G��� I      �v��u�v :0 fmgui_managedb_field_select fmGUI_ManageDb_Field_Select� ��t� o      �s�s 	0 prefs  �t  �u  � k    ��� ��� l     �r���r  �   version 1.2   � ���    v e r s i o n   1 . 2� ��� l     �q�p�o�q  �p  �o  � ��� r     
��� K     �� �n���n 0 	fieldname 	fieldName� m    �m
�m 
null� �l���l 0 	tablename 	tableName� m    �k
�k 
null� �j��i�j 0 altpatterns altPatterns� m    �h
�h 
null�i  � o      �g�g 0 defaultprefs defaultPrefs� ��� r    ��� b    ��� o    �f�f 	0 prefs  � o    �e�e 0 defaultprefs defaultPrefs� o      �d�d 	0 prefs  � ��� l   �c�b�a�c  �b  �a  � ��� l   �`���`  �   CONSTANTS:    � ���    C O N S T A N T S :  � ��� r    ��� b    ��� b    ��� b    ��� m    �� ��� @ t e l l   a p p l i c a t i o n   " S y s t e m   E v e n t s "� o    �_
�_ 
ret � l 	  ��^�]� m    �� ��� b t e l l   a p p l i c a t i o n   p r o c e s s   " F i l e M a k e r   P r o   A d v a n c e d "�^  �]  � o    �\
�\ 
ret � o      �[�[  0 testcodeheader testCodeHeader� ��� r    ��� m    �� ���  s e l e c t   (� o      �Z�Z 0 
selectcode 
selectCode� ��� r    "��� m     �� ��� � f i r s t   r o w   o f   ( t a b l e   1   o f   s c r o l l   a r e a   1   o f   t a b   g r o u p   1   o f   w i n d o w   1 )� o      �Y�Y 0 
rowrefcode 
rowRefCode� ��� r   # &��� m   # $�� ���    w h o s e  � o      �X�X 0 	whosecode 	whoseCode� ��� r   ' *��� m   ' (�� ��� , v a l u e   o f   s t a t i c   t e x t   1� o      �W�W *0 fieldnameobjectcode fieldNameObjectCode� ��� l  + +�V���V  � ( " (then some test will be inserted)   � ��� D   ( t h e n   s o m e   t e s t   w i l l   b e   i n s e r t e d )� ��� r   + .��� m   + ,�� ��� 
   a n d  � o      �U�U $0 betweentestscode betweenTestsCode� ��� l  / /�T���T  � 7 1 (then possibly some other test will be inserted)   � ��� b   ( t h e n   p o s s i b l y   s o m e   o t h e r   t e s t   w i l l   b e   i n s e r t e d )� ��� r   / 2��� m   / 0�� ���  )� o      �S�S &0 afteralltestscode afterAllTestsCode� ��� r   3 <��� b   3 :��� b   3 8��� b   3 6��� o   3 4�R
�R 
ret � m   4 5�� ���  e n d   t e l l� o   6 7�Q
�Q 
ret � m   8 9�� ���  e n d   t e l l� o      �P�P  0 testcodefooter testCodeFooter� ��� l  = =�O�N�M�O  �N  �M  � ��� Q   =����� k   @��� ��� l  @ @�L�K�J�L  �K  �J  � ��� I   @ G�I �H�I >0 fmgui_managedb_fieldlistfocus fmGUI_ManageDb_FieldListFocus  �G J   A C�F�F  �G  �H  �  l  H H�E�D�C�E  �D  �C    Z  H \�B�A >  H M	 n   H K

 o   I K�@�@ 0 	tablename 	tableName o   H I�?�? 	0 prefs  	 m   K L�>
�> 
null I   P X�=�<�= @0 fmgui_managedb_fieldspicktable fmGUI_ManageDb_FieldsPickTable �; n   Q T o   R T�:�: 0 	tablename 	tableName o   Q R�9�9 	0 prefs  �;  �<  �B  �A    l  ] ]�8�7�6�8  �7  �6    I   ] b�5�4�3�5 (0 fmgui_appfrontmost fmGUI_AppFrontMost�4  �3    l  c c�2�1�0�2  �1  �0    Q   c� k   f �  O   f � O   l � !  k   w �"" #$# l  w w�/�.�-�/  �.  �-  $ %�,% I  w ��+&�*
�+ .miscslctnull���     uiel& l  w �'�)�(' 6  w �()( n   w �*+* 4  � ��',
�' 
crow, m   � ��&�& + l  w �-�%�$- n   w �./. 4   � ��#0
�# 
tabB0 m   � ��"�" / n   w �121 4   � ��!3
�! 
scra3 m   � �� �  2 n   w �454 4   } ��6
� 
tabg6 m   � ��� 5 4   w }�7
� 
cwin7 m   { |�� �%  �$  ) =  � �898 n   � �:;: 1   � ��
� 
valL; 4   � ��<
� 
sttx< m   � ��� 9 n   � �=>= o   � ��� 0 	fieldname 	fieldName> o   � ��� 	0 prefs  �)  �(  �*  �,  ! 4   l t�?
� 
pcap? m   p s@@ �AA , F i l e M a k e r   P r o   A d v a n c e d m   f iBB�                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��   C�C L   � �DD m   � ��
� boovtrue�   R      �EF
� .ascrerr ****      � ****E o      �� 0 errmsg errMsgF �G�
� 
errnG o      �� 0 errnum errNum�   Z   ��HI�JH >  � �KLK o   � ��� 0 errnum errNumL m   � ����II k   � �MM NON l  � ��PQ�  P / ) some error OTHER than not found in list:   Q �RR R   s o m e   e r r o r   O T H E R   t h a n   n o t   f o u n d   i n   l i s t :O S�
S R   � ��	TU
�	 .ascrerr ****      � ****T o   � ��� 0 errmsg errMsgU �V�
� 
errnV o   � ��� 0 errnum errNum�  �
  �  J k   ��WW XYX l  � ��Z[�  Z * $ NOT FOUND, so try each altPattern:    [ �\\ H   N O T   F O U N D ,   s o   t r y   e a c h   a l t P a t t e r n :  Y ]^] r   � �_`_ m   � ��
� boovfals` o      �� $0 fieldnowselected fieldNowSelected^ aba X   ��c�dc k   ��ee fgf r   � �hih n   � �jkj 1   � �� 
�  
pcntk n   � �lml o   � ����� 0 pattern  m o   � ����� 0 onealtpattern oneAltPatterni o      ���� 0 testlist testListg non l  � ���������  ��  ��  o pqp Q   ��rstr k   �luu vwv l  � ���xy��  x !  BEGIN: try oneAltPattern:    y �zz 6   B E G I N :   t r y   o n e A l t P a t t e r n :  w {|{ l  � ���������  ��  ��  | }~} r   � �� J   � �����  � o      ���� 0 testcode testCode~ ��� X   �/����� s  *��� l '������ b  '��� b  ��� b  ��� m  �� ���  � n  ��� o  ���� 0 testtype testType� o  ���� 0 
onetestrec 
oneTestRec� m  �� ���   � n &��� I  &������� 0 quotestring quoteString� ���� n  "��� o  "���� 0 	testmatch 	testMatch� o  ���� 0 
onetestrec 
oneTestRec��  ��  �  f  ��  ��  � n      ���  ;  ()� o  '(���� 0 testcode testCode�� 0 
onetestrec 
oneTestRec� o   � ����� 0 testlist testList� ��� l 00��������  ��  ��  � ��� r  0?��� n 0=��� I  1=������� 0 unparsechars unParseChars� ��� o  12���� 0 testcode testCode� ���� b  29��� b  25��� o  23���� $0 betweentestscode betweenTestsCode� o  34���� *0 fieldnameobjectcode fieldNameObjectCode� m  58�� ���   ��  ��  �  f  01� o      ���� 0 testcode testCode� ��� l @@��������  ��  ��  � ��� l @@��������  ��  ��  � ��� r  @Q��� b  @O��� b  @M��� b  @K��� b  @G��� b  @E��� b  @C��� o  @A���� 0 
selectcode 
selectCode� o  AB���� 0 
rowrefcode 
rowRefCode� o  CD���� 0 	whosecode 	whoseCode� o  EF���� *0 fieldnameobjectcode fieldNameObjectCode� m  GJ�� ���   � o  KL���� 0 testcode testCode� o  MN���� &0 afteralltestscode afterAllTestsCode� o      ���� 0 testcode testCode� ��� l RR��������  ��  ��  � ��� r  RY��� b  RW��� b  RU��� o  RS����  0 testcodeheader testCodeHeader� o  ST���� 0 testcode testCode� o  UV����  0 testcodefooter testCodeFooter� o      ���� 0 testcode testCode� ��� l ZZ��������  ��  ��  � ��� l ZZ��������  ��  ��  � ��� O Zd��� I ^c�����
�� .sysodsct****        scpt� o  ^_���� 0 testcode testCode��  �  f  Z[� ��� l ee������  �  �  � ��� l eh���� r  eh��� m  ef�
� boovtrue� o      �� $0 fieldnowselected fieldNowSelected� #  no error, so we selected it.   � ��� :   n o   e r r o r ,   s o   w e   s e l e c t e d   i t .� ��� l ij����  S  ij� + % no need to keep checking altPatterns   � ��� J   n o   n e e d   t o   k e e p   c h e c k i n g   a l t P a t t e r n s� ��� l kk����  �  �  � ��� l kk����  � !  ERROR: try oneAltPattern.    � ��� 6   E R R O R :   t r y   o n e A l t P a t t e r n .  �  s R      ���
� .ascrerr ****      � ****� o      �� 0 errmsg errMsg� ���
� 
errn� o      �� 0 errnum errNum�  t k  t��� ��� Z  t������ > ty��� o  tu�� 0 errnum errNum� m  ux���I� k  |��� ��� l ||����  � / ) some error OTHER than not found in list:   � ��� R   s o m e   e r r o r   O T H E R   t h a n   n o t   f o u n d   i n   l i s t :� ��� R  |��� 
� .ascrerr ****      � ****� o  ���� 0 errmsg errMsg  ��
� 
errn o  ���� 0 errnum errNum�  �  �  � l ����   = 7 just try the next altPattern, so continue repeat loop.    � n   j u s t   t r y   t h e   n e x t   a l t P a t t e r n ,   s o   c o n t i n u e   r e p e a t   l o o p .�  l ������  �  �   � l ���	�   "  END OF: try oneAltPattern.    	 �

 8   E N D   O F :   t r y   o n e A l t P a t t e r n .  �  q � l ������  �  �  �  � 0 onealtpattern oneAltPatternd n   � � o   � ��� 0 altpatterns altPatterns o   � ��� 	0 prefs  b  l ������  �  �    L  �� o  ���� $0 fieldnowselected fieldNowSelected � l ������  �  �  �   � l ������  �  �  �  � R      �
� .ascrerr ****      � **** o      �� 0 errmsg errMsg ��
� 
errn o      �� 0 errnum errNum�  � R  ���
� .ascrerr ****      � **** b  �� b  �� b  �� m  ��   �!! 4 C o u l d n ' t   s e l e c t   a   F i e l d   -   I  ���"��  0 coercetostring coerceToString" #�# o  ���� 	0 prefs  �  �   m  ��$$ �%%    -   o  ���� 0 errmsg errMsg �&�
� 
errn& o  ���� 0 errnum errNum�  � '�' l �����~�  �  �~  �  � ()( l     �}�|�{�}  �|  �{  ) *+* i   H K,-, I      �z.�y�z >0 fmgui_managedb_fieldlistfocus fmGUI_ManageDb_FieldListFocus. /�x/ o      �w�w 	0 prefs  �x  �y  - k     F00 121 l     �v34�v  3   version 1.1   4 �55    v e r s i o n   1 . 12 676 l     �u�t�s�u  �t  �s  7 898 Q     D:;<: k    4== >?> I    
�r@�q�r 40 fmgui_managedb_fieldstab fmGUI_ManageDb_FieldsTab@ A�pA J    �o�o  �p  �q  ? BCB l   �n�m�l�n  �m  �l  C DED O    2FGF O    1HIH k    0JJ KLK n   MNM I    �k�j�i�k (0 fmgui_appfrontmost fmGUI_AppFrontMost�j  �i  N  f    L OPO r    -QRQ m    �h
�h boovtrueR n      STS 1   * ,�g
�g 
focuT l   *U�f�eU n    *VWV 4   ' *�dX
�d 
tabBX m   ( )�c�c W n    'YZY 4   $ '�b[
�b 
scra[ m   % &�a�a Z n    $\]\ 4   ! $�`^
�` 
tabg^ m   " #�_�_ ] 4    !�^_
�^ 
cwin_ m     �]�] �f  �e  P `�\` L   . 0aa m   . /�[
�[ boovtrue�\  I 4    �Zb
�Z 
pcapb m    cc �dd , F i l e M a k e r   P r o   A d v a n c e dG m    ee�                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  E f�Yf l  3 3�X�W�V�X  �W  �V  �Y  ; R      �Ugh
�U .ascrerr ****      � ****g o      �T�T 0 errmsg errMsgh �Si�R
�S 
errni o      �Q�Q 0 errnum errNum�R  < R   < D�Pjk
�P .ascrerr ****      � ****j b   @ Clml m   @ Ann �oo > C o u l d n ' t   f o c u s   o n   F i e l d   l i s t   -  m o   A B�O�O 0 errmsg errMsgk �Np�M
�N 
errnp o   > ?�L�L 0 errnum errNum�M  9 q�Kq l  E E�J�I�H�J  �I  �H  �K  + rsr l     �G�F�E�G  �F  �E  s tut i   L Ovwv I      �Dx�C�D @0 fmgui_managedb_fieldspicktable fmGUI_ManageDb_FieldsPickTablex y�By o      �A�A 0 basetablename baseTableName�B  �C  w k     Gzz {|{ l     �@}~�@  }   version 1.3   ~ �    v e r s i o n   1 . 3| ��� l     �?�>�=�?  �>  �=  � ��� Q     E���� k    1�� ��� I    
�<��;�< 40 fmgui_managedb_fieldstab fmGUI_ManageDb_FieldsTab� ��:� J    �9�9  �:  �;  � ��8� O    1��� O    0��� k    /�� ��� n   ��� I    �7�6�5�7 (0 fmgui_appfrontmost fmGUI_AppFrontMost�6  �5  �  f    � ��� n   ,��� I    ,�4��3�4  0 fmgui_popupset fmGUI_PopupSet� ��� n    '��� 4   $ '�2�
�2 
popB� m   % &�� ���  T a b l e :� n    $��� 4   ! $�1�
�1 
tabg� m   " #�0�0 � 4    !�/�
�/ 
cwin� m     �.�. � ��-� o   ' (�,�, 0 basetablename baseTableName�-  �3  �  f    � ��+� L   - /�� m   - .�*
�* boovtrue�+  � 4    �)�
�) 
pcap� m    �� ��� , F i l e M a k e r   P r o   A d v a n c e d� m    ���                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  �8  � R      �(��
�( .ascrerr ****      � ****� o      �'�' 0 errmsg errMsg� �&��%
�& 
errn� o      �$�$ 0 errnum errNum�%  � R   9 E�#��
�# .ascrerr ****      � ****� b   = D��� b   = B��� b   = @��� m   = >�� ��� . C o u l d n ' t   s e l e c t   t a b l e   '� o   > ?�"�" 0 basetablename baseTableName� m   @ A�� ���  '   -  � o   B C�!�! 0 errmsg errMsg� � ��
�  
errn� o   ; <�� 0 errnum errNum�  � ��� l  F F����  �  �  �  u ��� l     ����  �  �  � ��� i   P S��� I      ���� 40 fmgui_managedb_fieldstab fmGUI_ManageDb_FieldsTab� ��� o      �� 	0 prefs  �  �  � k     ]�� ��� l     ����  �   version 1.3   � ���    v e r s i o n   1 . 3� ��� l     ����  �  �  � ��� Q     [���� k    I�� ��� I    
���� *0 fmgui_managedb_open fmGUI_ManageDb_Open� ��� J    ��  �  �  � ��
� O    I��� O    H��� k    G�� ��� n   ��� I    �	���	 (0 fmgui_appfrontmost fmGUI_AppFrontMost�  �  �  f    � ��� r    2��� N    0�� 6   /��� n    &��� 4  # &��
� 
radB� m   $ %�� � n    #��� 4     #��
� 
tabg� m   ! "�� � 4     ��
� 
cwin� m    �� � E   ' .��� 1   ( *� 
�  
titl� m   + -�� ��� 
 F i e l d� o      ���� "0 fieldstabobject fieldsTabObject� ��� Z   3 D������� >  3 8��� n   3 6��� 1   4 6��
�� 
valL� o   3 4���� "0 fieldstabobject fieldsTabObject� m   6 7���� � I  ; @�����
�� .prcsclicnull��� ��� uiel� o   ; <���� "0 fieldstabobject fieldsTabObject��  ��  ��  � ���� L   E G�� m   E F��
�� boovtrue��  � 4    ���
�� 
pcap� m       � , F i l e M a k e r   P r o   A d v a n c e d� m    �                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  �
  � R      ��
�� .ascrerr ****      � **** o      ���� 0 errmsg errMsg ����
�� 
errn o      ���� 0 errnum errNum��  � R   Q [��
�� .ascrerr ****      � **** b   U Z	 m   U X

 � @ C o u l d n ' t   g o   t o   t h e   f i e l d s   t a b   -  	 o   X Y���� 0 errmsg errMsg ����
�� 
errn o   S T���� 0 errnum errNum��  � �� l  \ \��������  ��  ��  ��  �  l     ��������  ��  ��    i   T W I      ������ *0 fmgui_managedb_open fmGUI_ManageDb_Open �� o      ���� 	0 prefs  ��  ��   k    �  l     ����     version 1.2    �    v e r s i o n   1 . 2  l     ��������  ��  ��    Q    � !"  O   �#$# O   �%&% k   �'' ()( l   ��������  ��  ��  ) *+* n   ,-, I    �������� (0 fmgui_appfrontmost fmGUI_AppFrontMost��  ��  -  f    + ./. l   ��������  ��  ��  / 010 l   ��23��  2   try to open Manage DB   3 �44 ,   t r y   t o   o p e n   M a n a g e   D B1 5��5 Z   �67��86 C    9:9 n    ;<; 1    ��
�� 
pnam< 4    ��=
�� 
cwin= m    ���� : m    >> �?? & M a n a g e   D a t a b a s e   f o r7 L    !@@ m     ��
�� boovtrue��  8 k   $�AA BCB I  $ D��D��
�� .prcsclicnull��� ��� uielD l  $ @E����E 6  $ @FGF n   $ 7HIH 4  4 7��J
�� 
menIJ m   5 6���� I n   $ 4KLK 4   1 4��M
�� 
menEM m   2 3���� L n   $ 1NON 4   . 1��P
�� 
menIP m   / 0QQ �RR  M a n a g eO n   $ .STS 4   + .��U
�� 
menEU m   , -���� T n   $ +VWV 4   ( +�X
� 
mbriX m   ) *YY �ZZ  F i l eW 4   $ (�[
� 
mbar[ m   & '�� G C   8 ?\]\ 1   9 ;�
� 
pnam] m   < >^^ �__  D a t a b a s e��  ��  ��  C `a` l  E E����  �  �  a bcb l  E E�de�  d   TO DO   e �ff    T O   D Oc ghg l  E E�ij�  i   TO DO   j �kk    T O   D Oh lml l  E E�no�  n   TO DO   o �pp    T O   D Om qrq l  E E�st�  s v p 2015-06-03 ( eshagdar ): probably going to need to open manageDB via openManageDB script if the menu item fails   t �uu �   2 0 1 5 - 0 6 - 0 3   (   e s h a g d a r   ) :   p r o b a b l y   g o i n g   t o   n e e d   t o   o p e n   m a n a g e D B   v i a   o p e n M a n a g e D B   s c r i p t   i f   t h e   m e n u   i t e m   f a i l sr vwv l  E E����  �  �  w xyx l  E E�z{�  z 3 - do this in case already on relationships tab   { �|| Z   d o   t h i s   i n   c a s e   a l r e a d y   o n   r e l a t i o n s h i p s   t a by }~} l  E J�� I  E J���
� .sysodelanull��� ��� nmbr� m   E F�� �  �   seconds   � ���    s e c o n d s~ ��� r   K N��� m   K L�
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
cwin� m   � ��� � =  � ���� 1   � ��~
�~ 
pnam� m   � ��� ���  C a n c e l�  �  �  � ��}� l  � ����� I  � ��|��{
�| .sysodelanull��� ��� nmbr� m   � ��z�z �{  �   seconds   � ���    s e c o n d s�}  �  � r   � ���� m   � ��y
�y boovfals� o      �x�x *0 lookingforxdbcerror lookingForXDBCError� o   � ��w�w *0 lookingforxdbcerror lookingForXDBCError� ��� l  � ��v�u�t�v  �u  �t  � ��� l  � ��s���s  � M Gzoom out to show all TOs and dismiss any that weren't already dismissed   � ��� � z o o m   o u t   t o   s h o w   a l l   T O s   a n d   d i s m i s s   a n y   t h a t   w e r e n ' t   a l r e a d y   d i s m i s s e d� ��� I  � ��r��
�r .prcskprsnull���     ctxt� m   � ��� ���  i� �q��p
�q 
faal� m   � ��o
�o eMdsKcmd�p  � ��� l  � ����� I  � ��n��m
�n .sysodelanull��� ��� nmbr� m   � ��l�l �m  �   seconds   � ���    s e c o n d s� � � r   � � m   � ��k
�k boovtrue o      �j�j *0 lookingforxdbcerror lookingForXDBCError   V   �& Z   �!�i	 C  �

 n   � � 1   � ��h
�h 
pnam 4   � ��g
�g 
cwin m   � ��f�f  m   � �  C o n n e c t   t o   k    I �e�d
�e .prcsclicnull��� ��� uiel n   4  
�c
�c 
butT m   �  C a n c e l 4  
�b
�b 
cwin m  	�a�a �d   �` l  I �_�^
�_ .sysodelanull��� ��� nmbr m  �]�] �^     seconds    �      s e c o n d s�`  �i  	 r  !!"! m  �\
�\ boovfals" o      �[�[ *0 lookingforxdbcerror lookingForXDBCError o   � ��Z�Z *0 lookingforxdbcerror lookingForXDBCError #$# l ''�Y�X�W�Y  �X  �W  $ %&% l ''�V'(�V  '   zoom back in   ( �))    z o o m   b a c k   i n& *+* r  '7,-, n  '5./. 4  05�U0
�U 
txtf0 m  34�T�T / n  '0121 4  +0�S3
�S 
tabg3 m  ./�R�R 2 4  '+�Q4
�Q 
cwin4 m  )*�P�P - o      �O�O 0 	zoomfield 	zoomField+ 565 r  8?787 m  89�N
�N boovtrue8 n      9:9 1  :>�M
�M 
focu: o  9:�L�L 0 	zoomfield 	zoomField6 ;<; r  @I=>= m  @C?? �@@  1 0 0> n      ABA 1  DH�K
�K 
valLB o  CD�J�J 0 	zoomfield 	zoomField< CDC r  J^EFE m  JK�I
�I boovtrueF n      GHG 1  Y]�H
�H 
focuH n  KYIJI 4  TY�GK
�G 
scraK m  WX�F�F J n  KTLML 4  OT�EN
�E 
tabgN m  RS�D�D M 4  KO�CO
�C 
cwinO m  MN�B�B D PQP r  _xRSR m  _`�A�A  S n      TUT 1  sw�@
�@ 
valLU n  `sVWV 4  ns�?X
�? 
scrbX m  qr�>�> W n  `nYZY 4  in�=[
�= 
scra[ m  lm�<�< Z n  `i\]\ 4  di�;^
�; 
tabg^ m  gh�:�: ] 4  `d�9_
�9 
cwin_ m  bc�8�8 Q `a` r  y�bcb m  yz�7�7  c n      ded 1  ���6
�6 
valLe n  z�fgf 4  ���5h
�5 
scrbh m  ���4�4 g n  z�iji 4  ���3k
�3 
scrak m  ���2�2 j n  z�lml 4  ~��1n
�1 
tabgn m  ���0�0 m 4  z~�/o
�/ 
cwino m  |}�.�. a pqp l ���-�,�+�-  �,  �+  q r�*r L  ��ss m  ���)
�) boovtrue�*  ��  & 4    �(t
�( 
pcapt m   	 
uu �vv , F i l e M a k e r   P r o   A d v a n c e d$ m    ww�                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  ! R      �'xy
�' .ascrerr ****      � ****x o      �&�& 0 errmsg errMsgy �%z�$
�% 
errnz o      �#�# 0 errnum errNum�$  " R  ���"{|
�" .ascrerr ****      � ****{ b  ��}~} m  �� ��� 4 C o u l d n ' t   o p e n   m a n a g e   D B   -  ~ o  ���!�! 0 errmsg errMsg| � ��
�  
errn� o  ���� 0 errnum errNum�   ��� l ������  �  �  �   ��� l     ����  �  �  � ��� i   X [��� I      ���� B0 fmgui_managedb_relationshipstab fmGUI_ManageDb_RelationshipsTab� ��� o      �� 	0 prefs  �  �  � k     S�� ��� l     ����  �   version 1.3   � ���    v e r s i o n   1 . 3� ��� l     ����  �  �  � ��� Q     Q���� k    A�� ��� I    ���� (0 fmgui_appfrontmost fmGUI_AppFrontMost�  �  � ��� l  	 	����  �  fmGUI_ManageDb_Open({})   � ��� . f m G U I _ M a n a g e D b _ O p e n ( { } )� ��
� O   	 A��� O    @��� k    ?�� ��� r    *��� N    (�� l   '��	�� 6   '��� n    ��� 4   ��
� 
radB� m    �� � n    ��� 4    ��
� 
tabg� m    �� � 4    ��
� 
cwin� m    �� � E    &��� 1     "�
� 
titl� m   # %�� ���  R e l a t i o n s h i p�	  �  � o      � �  "0 fieldstabobject fieldsTabObject� ��� Z   + <������� >  + 0��� n   + .��� 1   , .��
�� 
valL� o   + ,���� "0 fieldstabobject fieldsTabObject� m   . /���� � I  3 8�����
�� .prcsclicnull��� ��� uiel� o   3 4���� "0 fieldstabobject fieldsTabObject��  ��  ��  � ���� L   = ?�� m   = >��
�� boovtrue��  � 4    ���
�� 
pcap� m    �� ��� , F i l e M a k e r   P r o   A d v a n c e d� m   	 
���                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  �
  � R      ����
�� .ascrerr ****      � ****� o      ���� 0 errmsg errMsg� �����
�� 
errn� o      ���� 0 errnum errNum��  � R   I Q����
�� .ascrerr ****      � ****� b   M P��� m   M N�� ��� N C o u l d n ' t   g o   t o   t h e   R e l a t i o n s h i p s   t a b   -  � o   N O���� 0 errmsg errMsg� �����
�� 
errn� o   K L���� 0 errnum errNum��  � ���� l  R R��������  ��  ��  ��  � ��� l     ��������  ��  ��  � ��� i   \ _��� I      ������� *0 fmgui_managedb_save fmGUI_ManageDB_Save� ���� o      ���� 	0 prefs  ��  ��  � k     ��� ��� l     ������  �   version 1.4   � ���    v e r s i o n   1 . 4� ��� l     ��������  ��  ��  � ��� r     ��� K     �� ������� ,0 notinmanagedbiserror notInManageDbIsError� m    ��
�� boovtrue��  � o      ���� 0 defaultprefs defaultPrefs� ��� l   ��������  ��  ��  � ��� r    ��� b    
��� o    ���� 	0 prefs  � o    	���� 0 defaultprefs defaultPrefs� o      ���� 	0 prefs  � ��� l   ��������  ��  ��  � ��� l   ��������  ��  ��  � ��� r    ��� m    �� ��� & M a n a g e   D a t a b a s e   f o r� o      ���� 40 managedbwindownameprefix manageDbWindowNamePrefix� ��� l   ���� r       m    ���� 
 o      ���� .0 waitcycledelayseconds waitCycleDelaySeconds�   seconds   � �    s e c o n d s�  l    r    	 ]    

 m    ���� < 1    ��
�� 
min 	 o      ���� ,0 waitsavetotalseconds waitSaveTotalSeconds  seconds    �  s e c o n d s  l   ��������  ��  ��    r    & I   $��
�� .sysorondlong        doub l   ���� ^     o    �� ,0 waitsavetotalseconds waitSaveTotalSeconds o    �� .0 waitcycledelayseconds waitCycleDelaySeconds��  ��   ��
� 
dire m     �
� olierndD�   o      �� 0 waitcyclemax waitCycleMax  l  ' '����  �  �    Q   ' � k   * �   !"! O   * �#$# k   . �%% &'& O   . �()( k   5 �** +,+ l  5 5����  �  �  , -.- n  5 :/0/ I   6 :���� (0 fmgui_appfrontmost fmGUI_AppFrontMost�  �  0  f   5 6. 121 l  ; ;����  �  �  2 343 Z   ; �56�75 C   ; C898 n   ; A:;: 1   ? A�
� 
pnam; 4   ; ?�<
� 
cwin< m   = >�� 9 o   A B�� 40 managedbwindownameprefix manageDbWindowNamePrefix6 Q   F y=>?= k   I e@@ ABA r   I QCDC n   I OEFE 1   M O�
� 
pnamF 4   I M�G
� 
cwinG m   K L�� D o      �� (0 managedbwindowname manageDbWindowNameB HIH I  R ]�J�
� .prcsclicnull��� ��� uielJ l  R YK��K n   R YLML 4   V Y�N
� 
butTN m   W XOO �PP  O KM 4   R V�Q
� 
cwinQ m   T U�� �  �  �  I RSR l  ^ cTUVT I  ^ c�W�
� .sysodelanull��� ��� nmbrW m   ^ _�� �  U   let click register.   V �XX (   l e t   c l i c k   r e g i s t e r .S YZY l  d d�[\�  [ 6 0 will continue below to wait for window to close   \ �]] `   w i l l   c o n t i n u e   b e l o w   t o   w a i t   f o r   w i n d o w   t o   c l o s eZ ^�^ l  d d����  �  �  �  > R      �_`
� .ascrerr ****      � ****_ o      �� 0 errmsg errMsg` �a�
� 
errna o      �� 0 errnum errNum�  ? R   m y�bc
� .ascrerr ****      � ****b b   s xded m   s vff �gg @ C o u l d n ' t   s a v e   M a n a g e   D a t a b a s e   -  e o   v w�� 0 errmsg errMsgc �h�
� 
errnh o   q r�� 0 errnum errNum�  �  7 Z   | �ij�ki n   | �lml o   } �� ,0 notinmanagedbiserror notInManageDbIsErrorm o   | }�� 	0 prefs  j R   � ��no
� .ascrerr ****      � ****n m   � �pp �qq p M a n a g e   D a t a b a s e   w i n d o w   w a s n ' t   o p e n ,   s o   n o t h i n g   t o   c l o s e .o �r�
� 
errnr m   � ��� �  �  k k   � �ss tut l  � ��vw�  v . ( Not in Manage Database, but that is OK.   w �xx P   N o t   i n   M a n a g e   D a t a b a s e ,   b u t   t h a t   i s   O K .u y�y L   � �zz m   � ��
� boovtrue�  4 {�{ l  � ����~�  �  �~  �  ) 4   . 2�}|
�} 
pcap| m   0 1}} �~~ , F i l e M a k e r   P r o   A d v a n c e d' � l  � ��|�{�z�|  �{  �z  � ��� n  � ���� I   � ��y��x�y "0 windowwaituntil windowWaitUntil� ��w� K   � ��� �v���v 0 
windowname 
windowName� o   � ��u�u (0 managedbwindowname manageDbWindowName� �t���t  0 windownametest windowNameTest� m   � ��� ���   d o e s   n o t   c o n t a i n� �s���s 0 whichwindow whichWindow� m   � ��� ���  a n y� �r���r .0 waitcycledelayseconds waitCycleDelaySeconds� o   � ��q�q .0 waitcycledelayseconds waitCycleDelaySeconds� �p��o�p 0 waitcyclemax waitCycleMax� o   � ��n�n 0 waitcyclemax waitCycleMax�o  �w  �x  �  f   � �� ��� l  � ��m�l�k�m  �l  �k  � ��� l  � ����� I  � ��j��i
�j .sysodelanull��� ��� nmbr� m   � ��h�h �i  � ( " let normal window come to front.    � ��� D   l e t   n o r m a l   w i n d o w   c o m e   t o   f r o n t .  � ��� l  � ��g�f�e�g  �f  �e  � ��� L   � ��� m   � ��d
�d boovtrue� ��c� l  � ��b�a�`�b  �a  �`  �c  $ m   * +���                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  " ��� l  � ��_�^�]�_  �^  �]  � ��\� l  � ��[�Z�Y�[  �Z  �Y  �\   R      �X��
�X .ascrerr ****      � ****� o      �W�W 0 errmsg errMsg� �V��U
�V 
errn� o      �T�T 0 errnum errNum�U   R   � ��S��
�S .ascrerr ****      � ****� b   � ���� m   � ��� ��� @ C o u l d n ' t   s a v e   M a n a g e   D a t a b a s e   -  � o   � ��R�R 0 errmsg errMsg� �Q��P
�Q 
errn� o   � ��O�O 0 errnum errNum�P   ��N� l  � ��M�L�K�M  �L  �K  �N  � ��� l     �J�I�H�J  �I  �H  � ��� i   ` c��� I      �G��F�G &0 fmgui_checkboxset fmGUI_CheckboxSet� ��� o      �E�E  0 checkboxobject checkboxObject� ��D� o      �C�C 0 checkboxvalue checkboxValue�D  �F  � k     9�� ��� l     �B���B  �   version 1.0   � ���    v e r s i o n   1 . 0� ��� l     �A�@�?�A  �@  �?  � ��>� w     9��� Q    9���� k    %�� ��� Z     ���=�<� >   ��� o    �;�; 0 checkboxvalue checkboxValue� m    �:
�: 
null� Z    ���9�8� >   ��� n    ��� 1    �7
�7 
valL� o    �6�6  0 checkboxobject checkboxObject� o    �5�5 0 checkboxvalue checkboxValue� I   �4��3
�4 .prcsclicnull��� ��� uiel� o    �2�2  0 checkboxobject checkboxObject�3  �9  �8  �=  �<  � ��� L   ! #�� m   ! "�1
�1 boovtrue� ��0� l  $ $�/�.�-�/  �.  �-  �0  � R      �,��
�, .ascrerr ****      � ****� o      �+�+ 0 errmsg errMsg� �*��)
�* 
errn� o      �(�( 0 errnum errNum�)  � R   - 9�'��
�' .ascrerr ****      � ****� b   1 8��� b   1 6��� b   1 4��� m   1 2�� ��� " C o u l d n ' t   s e l e c t   '� o   2 3�&�& 0 checkboxvalue checkboxValue� m   4 5�� ��� " '   f o r   c h e c k b o x   -  � o   6 7�%�% 0 errmsg errMsg� �$��#
�$ 
errn� o   / 0�"�" 0 errnum errNum�#  ��                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  �>  � ��� l     �!� ��!  �   �  � ��� i   d g��� I      ���� B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow� ��� o      �� 0 	buttonref 	buttonRef�  �  � k     
�� ��� l     ����  �   version 1.0   � ���    v e r s i o n   1 . 0� ��� l     ����  �  �  � ��� w     � � n    I    ��� *0 clickobjectbycoords clickObjectByCoords � o    �� 0 	buttonref 	buttonRef�  �    f     �                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  � � l  	 	����  �  �  �  �  l     ����  �  �   	 i   h k

 I      ��
� :0 fmgui_popup_selectbycommand fmGUI_Popup_SelectByCommand �	 o      �� 	0 prefs  �	  �
   k      l     ��     version 1.0    �    v e r s i o n   1 . 0  l     ����  �  �    r      K     
 �� 0 popupobject popupObject m    �
� 
null �� 0 popupchoice popupChoice m    � 
�  
null �� �� 0 selectcommand selectCommand m    !! �""  i s  ��#���� &0 clickifalreadyset clickIfAlreadySet# m    ��
�� boovfals��   o      ���� 0 defaultprefs defaultPrefs $%$ l   ��������  ��  ��  % &'& Z    ,()����( =   *+* n    ,-, m    ��
�� 
pcls- o    ���� 	0 prefs  + n    ./. m    ��
�� 
pcls/ J    00 121 m    33 �44  a2 5��5 m    ���� ��  ) r    (676 K    &88 ��9:�� 0 popupobject popupObject9 n    ;<; 4    ��=
�� 
cobj= m    ���� < o    ���� 	0 prefs  : ��>���� 0 popupchoice popupChoice> n     $?@? 4   ! $��A
�� 
cobjA m   " #���� @ o     !���� 	0 prefs  ��  7 o      ���� 	0 prefs  ��  ��  ' BCB l  - -��������  ��  ��  C DED l  - -��������  ��  ��  E FGF r   - 2HIH b   - 0JKJ o   - .���� 	0 prefs  K o   . /���� 0 defaultprefs defaultPrefsI o      ���� 	0 prefs  G LML l  3 3��������  ��  ��  M NON r   3 8PQP n   3 6RSR o   4 6���� 0 popupobject popupObjectS o   3 4���� 	0 prefs  Q o      ���� 0 popupobject popupObjectO TUT r   9 >VWV n   9 <XYX o   : <���� 0 selectcommand selectCommandY o   9 :���� 	0 prefs  W o      ���� 0 selectcommand selectCommandU Z[Z r   ? D\]\ n   ? B^_^ o   @ B���� 0 popupchoice popupChoice_ o   ? @���� 	0 prefs  ] o      ���� 0 popupchoice popupChoice[ `a` l  E Jbcdb r   E Jefe n   E Hghg o   F H���� &0 clickifalreadyset clickIfAlreadySeth o   E F���� 	0 prefs  f o      ���� &0 clickifalreadyset clickIfAlreadySetc 6 0 re-select even if popup is the requested value.   d �ii `   r e - s e l e c t   e v e n   i f   p o p u p   i s   t h e   r e q u e s t e d   v a l u e .a jkj l  K K��������  ��  ��  k lml l  K K��������  ��  ��  m n��n w   Kopo Q   Mqrsq Z   P�tu��vt H   P Vww l  P Ux����x I  P U��y��
�� .coredoexnull���     ****y o   P Q���� 0 popupobject popupObject��  ��  ��  u k   Y azz {|{ l  Y Y��}~��  } * $ does NOT exist, so error with that:   ~ � H   d o e s   N O T   e x i s t ,   s o   e r r o r   w i t h   t h a t :| ��� R   Y _����
�� .ascrerr ****      � ****� m   ] ^�� ��� R T h e   s p e c i f i e d   p o p u p O b j e c t   d o e s   n o t   e x i s t .� ���
� 
errn� m   [ \�� �  � ��� l  ` `����  �  �  �  ��  v k   d��� ��� l  d d����  � !  the popupObject DOES exist   � ��� 6   t h e   p o p u p O b j e c t   D O E S   e x i s t� ��� r   d g��� m   d e�
� boovfals� o      �� 0 mustpick mustPick� ��� Z   h$����� H   h r�� l  h q���� I  h q���
� .coredoexnull���     ****� n   h m��� 1   i m�
� 
valL� o   h i�� 0 popupobject popupObject�  �  �  � k   u z�� ��� l  u u����  � i c first check if the value of the popupObject exists - if it doesn't, then we can't test it directly   � ��� �   f i r s t   c h e c k   i f   t h e   v a l u e   o f   t h e   p o p u p O b j e c t   e x i s t s   -   i f   i t   d o e s n ' t ,   t h e n   w e   c a n ' t   t e s t   i t   d i r e c t l y� ��� r   u x��� m   u v�
� boovtrue� o      �� 0 mustpick mustPick� ��� l  y y����  �  �  �  �  � l  }$���� k   }$�� ��� l  } }����  � K E note that our selection might be one of several 'matching' commands:   � ��� �   n o t e   t h a t   o u r   s e l e c t i o n   m i g h t   b e   o n e   o f   s e v e r a l   ' m a t c h i n g '   c o m m a n d s :� ��� Z   }$����� o   } ~�� &0 clickifalreadyset clickIfAlreadySet� k   � ��� ��� l  � �����  � > 8 RE-SELECT even if popup already is the requested value.   � ��� p   R E - S E L E C T   e v e n   i f   p o p u p   a l r e a d y   i s   t h e   r e q u e s t e d   v a l u e .� ��� r   � ���� m   � ��
� boovtrue� o      �� 0 mustpick mustPick� ��� l  � �����  �  �  �  � ��� =  � ���� o   � ��� 0 selectcommand selectCommand� m   � ��� ���  i s� ��� k   � ��� ��� Z   � ������ >  � ���� n   � ���� 1   � ��
� 
valL� o   � ��� 0 popupobject popupObject� o   � ��� 0 popupchoice popupChoice� r   � ���� m   � ��
� boovtrue� o      �� 0 mustpick mustPick�  �  � ��� l  � �����  �  �  �  � ��� =  � ���� o   � ��� 0 selectcommand selectCommand� m   � ��� ���  c o n t a i n s� ��� k   � ��� ��� Z   � �������� H   � ��� E   � ���� n   � ���� 1   � ���
�� 
valL� o   � ����� 0 popupobject popupObject� o   � ����� 0 popupchoice popupChoice� r   � ���� m   � ���
�� boovtrue� o      ���� 0 mustpick mustPick��  ��  � ���� l  � ���������  ��  ��  ��  � ��� =  � ���� o   � ����� 0 selectcommand selectCommand� m   � ��� ���  s t a r t s W i t h� ��� k   � ��� ��� Z   � �������� H   � ��� C   � ���� n   � ���� 1   � ���
�� 
valL� o   � ����� 0 popupobject popupObject� o   � ��� 0 popupchoice popupChoice� r   � ���� m   � ��~
�~ boovtrue� o      �}�} 0 mustpick mustPick��  ��  � ��|� l  � ��{�z�y�{  �z  �y  �|  � ��� =  � �� � o   � ��x�x 0 selectcommand selectCommand  m   � � �  b e g i n s W i t h�  k   �  Z   � �	�w�v H   � �

 C   � � n   � � 1   � ��u
�u 
valL o   � ��t�t 0 popupobject popupObject o   � ��s�s 0 popupchoice popupChoice	 r   � � m   � ��r
�r boovtrue o      �q�q 0 mustpick mustPick�w  �v   �p l   �o�n�m�o  �n  �m  �p    = 	 o  �l�l 0 selectcommand selectCommand m   �  e n d s W i t h �k k     Z  �j�i H   D    n  !"! 1  �h
�h 
valL" o  �g�g 0 popupobject popupObject  o  �f�f 0 popupchoice popupChoice r  #$# m  �e
�e boovtrue$ o      �d�d 0 mustpick mustPick�j  �i   %�c% l �b�a�`�b  �a  �`  �c  �k  �  �  � C = we can see the value without 'picking' the menu, so test it:   � �&& z   w e   c a n   s e e   t h e   v a l u e   w i t h o u t   ' p i c k i n g '   t h e   m e n u ,   s o   t e s t   i t :� '(' l %%�_�^�]�_  �^  �]  ( )*) Z  %�+,�\�[+ o  %&�Z�Z 0 mustpick mustPick, Z  )�-.�Y�X- > ),/0/ o  )*�W�W 0 popupchoice popupChoice0 m  *+�V
�V 
null. k  /�11 232 I /4�U4�T
�U .prcsclicnull��� ��� uiel4 o  /0�S�S 0 popupobject popupObject�T  3 565 Z  5�789�R7 = 5::;: o  56�Q�Q 0 selectcommand selectCommand; m  69<< �==  i s8 I =Y�P>�O
�P .prcsclicnull��� ��� uiel> l =U?�N�M? 6 =U@A@ n  =HBCB 4 CH�LD
�L 
menID m  FG�K�K C n  =CEFE 4  >C�JG
�J 
menEG m  AB�I�I F o  =>�H�H 0 popupobject popupObjectA = KTHIH 1  LP�G
�G 
pnamI o  QS�F�F 0 popupchoice popupChoice�N  �M  �O  9 JKJ = \aLML o  \]�E�E 0 selectcommand selectCommandM m  ]`NN �OO  c o n t a i n sK PQP k  d�RR STS I d��DU�C
�D .prcsclicnull��� ��� uielU l d|V�B�AV 6 d|WXW n  doYZY 4 jo�@[
�@ 
menI[ m  mn�?�? Z n  dj\]\ 4  ej�>^
�> 
menE^ m  hi�=�= ] o  de�<�< 0 popupobject popupObjectX E  r{_`_ 1  sw�;
�; 
pnam` o  xz�:�: 0 popupchoice popupChoice�B  �A  �C  T a�9a l ���8�7�6�8  �7  �6  �9  Q bcb = ��ded o  ���5�5 0 selectcommand selectCommande m  ��ff �gg  b e g i n s W i t hc hih k  ��jj klk I ���4m�3
�4 .prcsclicnull��� ��� uielm l ��n�2�1n 6 ��opo n  ��qrq 4 ���0s
�0 
menIs m  ���/�/ r n  ��tut 4  ���.v
�. 
menEv m  ���-�- u o  ���,�, 0 popupobject popupObjectp C  ��wxw 1  ���+
�+ 
pnamx o  ���*�* 0 popupchoice popupChoice�2  �1  �3  l y�)y l ���(�'�&�(  �'  �&  �)  i z{z = ��|}| o  ���%�% 0 selectcommand selectCommand} m  ��~~ �  e n d s W i t h{ ��$� k  ���� ��� I ���#��"
�# .prcsclicnull��� ��� uiel� l ����!� � 6 ����� n  ����� 4 ����
� 
menI� m  ���� � n  ����� 4  ����
� 
menE� m  ���� � o  ���� 0 popupobject popupObject� D  ����� 1  ���
� 
pnam� o  ���� 0 popupchoice popupChoice�!  �   �"  � ��� l ������  �  �  �  �$  �R  6 ��� l ������  �  �  �  �Y  �X  �\  �[  * ��� l ������  �  �  � ��� L  ���� m  ���
� boovtrue� ��� l ����
�	�  �
  �	  �  r R      ���
� .ascrerr ****      � ****� o      �� 0 errmsg errMsg� ���
� 
errn� o      �� 0 errnum errNum�  s R  ����
� .ascrerr ****      � ****� b  ���� b  ���� b  ����� b  ����� b  ����� m  ���� ��� N C o u l d n ' t   s e l e c t   m e n u   i t e m   w h o s e   v a l u e   _� o  ���� 0 selectcommand selectCommand� m  ���� ���  _   '� o  ���� 0 popupchoice popupChoice� m  ��� ���  '   i n   p o p u p   -  � o  � �  0 errmsg errMsg� �����
�� 
errn� o  ������ 0 errnum errNum��  p�                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  ��  	 ��� l     ��������  ��  ��  � ��� i   l o��� I      �������  0 fmgui_popupset fmGUI_PopupSet� ��� o      ���� 0 popupobject popupObject� ���� o      ���� 0 popupchoice popupChoice��  ��  � k     *�� ��� l     ������  �   version 1.0   � ���    v e r s i o n   1 . 0� ��� l     ��������  ��  ��  � ���� w     *��� Q    *���� k    �� ��� l   ��������  ��  ��  � ��� I    ������� :0 fmgui_popup_selectbycommand fmGUI_Popup_SelectByCommand� ���� K    �� ������ 0 popupobject popupObject� o    ���� 0 popupobject popupObject� ������� 0 popupchoice popupChoice� o   	 
���� 0 popupchoice popupChoice��  ��  ��  � ��� L    �� 1    ��
�� 
rslt� ���� l   ��������  ��  ��  ��  � R      ����
�� .ascrerr ****      � ****� o      ���� 0 errmsg errMsg� �����
�� 
errn� o      ���� 0 errnum errNum��  � R    *����
�� .ascrerr ****      � ****� b   " )��� b   " '��� b   " %��� m   " #�� ��� " C o u l d n ' t   s e l e c t   '� o   # $���� 0 popupchoice popupChoice� m   % &�� ���  '   i n   p o p u p   -  � o   ' (���� 0 errmsg errMsg� �����
�� 
errn� o     !���� 0 errnum errNum��  ��                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  ��  � ��� l     ��������  ��  ��  � ��� i   p s��� I      ������� (0 fmgui_textfieldset fmGUI_TextFieldSet� ��� o      ���� "0 textfieldobject textfieldObject� ���� o      ����  0 textfieldvalue textfieldValue��  ��  � k     @�� ��� l     ������  �   version 1.0   � ���    v e r s i o n   1 . 0� ��� l     ��������  ��  ��  � ���� w     @��� Q    @���� k    ,�� ��� Z    ' ����  >    o    ����  0 textfieldvalue textfieldValue m    ��
�� 
null Z    #�� >    n    	
	 1    ��
�� 
valL
 o    ���� "0 textfieldobject textfieldObject l   ��� o    ��  0 textfieldvalue textfieldValue��  �   k      r     m    �
� boovtrue n       1    �
� 
focu o    �� "0 textfieldobject textfieldObject � r     o    ��  0 textfieldvalue textfieldValue n       1    �
� 
valL o    �� "0 textfieldobject textfieldObject�  ��   l  ! # L   ! # m   ! "�
� boovfals   did not need to change.    � 0   d i d   n o t   n e e d   t o   c h a n g e .��  ��  �  L   ( * m   ( )�
� boovtrue  �  l  + +����  �  �  �  � R      �!"
� .ascrerr ****      � ****! o      �� 0 errmsg errMsg" �#�
� 
errn# o      �� 0 errnum errNum�  � R   4 @�$%
� .ascrerr ****      � ****$ b   8 ?&'& b   8 =()( b   8 ;*+* m   8 9,, �-- " C o u l d n ' t   s e l e c t   '+ o   9 :��  0 textfieldvalue textfieldValue) m   ; <.. �// & '   f o r   t e x t   f i e l d   -  ' o   = >�� 0 errmsg errMsg% �0�
� 
errn0 o   6 7�� 0 errnum errNum�  ��                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  ��  � 121 l     ����  �  �  2 343 i   t w565 I      ���� (0 fmgui_appfrontmost fmGUI_AppFrontMost�  �  6 k     E77 898 l     �:;�  :   version 1.1   ; �<<    v e r s i o n   1 . 19 =>= l     ����  �  �  > ?�? O     E@A@ O    DBCB Z    CDE��D >   FGF 1    �
� 
pisfG m    �
� boovtrueE k    ?HH IJI r    KLK m    �
� boovtrueL 1    �
� 
pisfJ MNM I   �O�
� .sysodelanull��� ��� nmbrO m    �� �  N PQP l   ����  �  �  Q RSR l   �TU�  T ) #close FMEmpower window if it's open   U �VV F c l o s e   F M E m p o w e r   w i n d o w   i f   i t ' s   o p e nS W�W Z    ?XY��X =   'Z[Z n    %\]\ 1   # %�
� 
pnam] 4    #�^
� 
cwin^ m   ! "�� [ m   % &__ �`` $ 2 e m p o w e r F M   T o o l b o xY k   * ;aa bcb I  * 5�d�
� .prcsclicnull��� ��� uield n   * 1efe 4   . 1�g
� 
butTg m   / 0�� f 4   * .�h
� 
cwinh m   , -�� �  c i�i I  6 ;�j�
� .sysodelanull��� ��� nmbrj m   6 7�~�~ �  �  �  �  �  �  �  C 4    �}k
�} 
pcapk m    ll �mm , F i l e M a k e r   P r o   A d v a n c e dA m     nn�                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  �  4 opo l     �|�{�z�|  �{  �z  p qrq i   x {sts I      �y�x�w�y 00 fmgui_dataviewer_close fmGUI_DataViewer_Close�x  �w  t k     3uu vwv l     �vxy�v  x   version 1.0   y �zz    v e r s i o n   1 . 0w {|{ l     �u�t�s�u  �t  �s  | }�r} O     3~~ O    2��� k    1�� ��� n   ��� I    �q�p�o�q (0 fmgui_appfrontmost fmGUI_AppFrontMost�p  �o  �  f    � ��n� Q    1���m� I   (�l��k
�l .prcsclicnull��� ��� uiel� n    $��� 4   ! $�j�
�j 
butT� m   " #�i�i � l   !��h�g� 6   !��� 4   �f�
�f 
cwin� m    �e�e � =    ��� 1    �d
�d 
pnam� m    �� ���  D a t a   V i e w e r�h  �g  �k  � R      �c�b�a
�c .ascrerr ****      � ****�b  �a  �m  �n  � 4    �`�
�` 
pcap� m    �� ��� , F i l e M a k e r   P r o   A d v a n c e d m     ���                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  �r  r ��� l     �_�^�]�_  �^  �]  � ��� i   | ��� I      �\�[�Z�\ .0 fmgui_inspector_close fmGUI_Inspector_Close�[  �Z  � k     r�� ��� l     �Y���Y  �   version 1.0   � ���    v e r s i o n   1 . 0� ��� l     �X�W�V�X  �W  �V  � ��U� O     r��� O    q��� k    p�� ��� n   ��� I    �T�S�R�T (0 fmgui_appfrontmost fmGUI_AppFrontMost�S  �R  �  f    � ��� l   �Q���Q  � I C try the click twice in case the first only brings window to front.   � ��� �   t r y   t h e   c l i c k   t w i c e   i n   c a s e   t h e   f i r s t   o n l y   b r i n g s   w i n d o w   t o   f r o n t .� ��� Q    .���P� r    %��� m    �O�O � n      ��� 1   " $�N
�N 
pidx� l   "��M�L� 6   "��� 4   �K�
�K 
cwin� m    �J�J � =   !��� 1    �I
�I 
pnam� m     �� ���  I n s p e c t o r�M  �L  � R      �H�G�F
�H .ascrerr ****      � ****�G  �F  �P  � ��� Q   / O���E� I  2 F�D��C
�D .prcsclicnull��� ��� uiel� n   2 B��� 4   ? B�B�
�B 
butT� m   @ A�A�A � l  2 ?��@�?� 6  2 ?��� 4  2 6�>�
�> 
cwin� m   4 5�=�= � =  7 >��� 1   8 :�<
�< 
pnam� m   ; =�� ���  I n s p e c t o r�@  �?  �C  � R      �;�:�9
�; .ascrerr ****      � ****�:  �9  �E  � ��8� Q   P p���7� I  S g�6��5
�6 .prcsclicnull��� ��� uiel� n   S c��� 4   ` c�4�
�4 
butT� m   a b�3�3 � l  S `��2�1� 6  S `��� 4  S W�0�
�0 
cwin� m   U V�/�/ � =  X _��� 1   Y [�.
�. 
pnam� m   \ ^�� ���  I n s p e c t o r�2  �1  �5  � R      �-�,�+
�- .ascrerr ****      � ****�,  �+  �7  �8  � 4    �*�
�* 
pcap� m    �� ��� , F i l e M a k e r   P r o   A d v a n c e d� m     ���                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  �U  � ��� l     �)�(�'�)  �(  �'  � ��� i   � ���� I      �&�%�$�& 00 fmgui_inspector_ensure fmGUI_Inspector_Ensure�%  �$  � k     h�� ��� l     �#���#  �   version 1.1   � ���    v e r s i o n   1 . 1� ��� l     �"�!� �"  �!  �   � ��� Q     f���� k    R�� ��� I    ���� 20 fmgui_modeensure_layout fmGUI_ModeEnsure_Layout�  �  �  �  O   	 R O    Q k    P  l   ����  �  �   	 n   

 I    ���� (0 fmgui_appfrontmost fmGUI_AppFrontMost�  �    f    	  l   ����  �  �    Z    M�� H    , l   +�� I   +��
� .coredoexnull���     **** l   '�� 6   ' 4   �

�
 
cwin m    �	�	  E    & 1     "�
� 
pnam m   # % �  I n s p e c t o r�  �  �  �  �   I  / I��
� .prcsclicnull��� ��� uiel l  / E�� 6  / E  n   / <!"! 4  9 <�#
� 
menI# m   : ;�� " n   / 9$%$ 4   6 9�&
� 
menE& m   7 8� �  % n   / 6'(' 4   3 6��)
�� 
mbri) m   4 5** �++  V i e w( 4   / 3��,
�� 
mbar, m   1 2����   =  = D-.- 1   > @��
�� 
pnam. m   A C// �00  I n s p e c t o r�  �  �  �  �   1��1 L   N P22 m   N O��
�� boovtrue��   4    ��3
�� 
pcap3 m    44 �55 , F i l e M a k e r   P r o   A d v a n c e d m   	 
66�                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  �  � R      ��78
�� .ascrerr ****      � ****7 o      ���� 0 errmsg errMsg8 ��9��
�� 
errn9 o      ���� 0 errnum errNum��  � R   Z f��:;
�� .ascrerr ****      � ****: b   ` e<=< m   ` c>> �?? 4 C o u l d n ' t   o p e n   I n s p e c t o r   -  = o   c d���� 0 errmsg errMsg; ��@��
�� 
errn@ o   ^ _���� 0 errnum errNum��  � A��A l  g g��������  ��  ��  ��  � BCB l     ��������  ��  ��  C DED i   � �FGF I      �������� 20 fmgui_modeensure_browse fmGUI_ModeEnsure_Browse��  ��  G k     HH IJI l     ��KL��  K   version 1.0   L �MM    v e r s i o n   1 . 0J NON l     ��������  ��  ��  O PQP Q     RSTR k    UU VWV I    	��X���� $0 fmgui_modeselect fmGUI_ModeSelectX Y��Y m    ZZ �[[  B r o w s e��  ��  W \��\ l  
 
��������  ��  ��  ��  S R      ��]^
�� .ascrerr ****      � ****] o      ���� 0 errmsg errMsg^ ��_��
�� 
errn_ o      ���� 0 errnum errNum��  T R    ��`a
�� .ascrerr ****      � ****` b    bcb m    dd �ee B C o u l d n ' t   e n s u r e   i n   B r o w s e   M o d e   -  c o    ���� 0 errmsg errMsga ��f��
�� 
errnf o    ���� 0 errnum errNum��  Q ghg l   ��������  ��  ��  h i��i l   ��������  ��  ��  ��  E jkj l     ��������  ��  ��  k lml i   � �non I      �������� .0 fmgui_modeensure_find fmGUI_ModeEnsure_Find��  ��  o k     pp qrq l     ��st��  s   version 1.0   t �uu    v e r s i o n   1 . 0r vwv l     �������  ��  �  w xyx Q     z{|z k    }} ~~ I    	���� $0 fmgui_modeselect fmGUI_ModeSelect� ��� m    �� ���  F i n d�  �   ��� l  
 
����  �  �  �  { R      ���
� .ascrerr ****      � ****� o      �� 0 errmsg errMsg� ���
� 
errn� o      �� 0 errnum errNum�  | R    ���
� .ascrerr ****      � ****� b    ��� m    �� ��� B C o u l d n ' t   e n s u r e   i n   B r o w s e   M o d e   -  � o    �� 0 errmsg errMsg� ���
� 
errn� o    �� 0 errnum errNum�  y ��� l   ����  �  �  � ��� l   ����  �  �  �  m ��� l     ����  �  �  � ��� i   � ���� I      ���� 20 fmgui_modeensure_layout fmGUI_ModeEnsure_Layout�  �  � k     �� ��� l     ����  �   version 1.0   � ���    v e r s i o n   1 . 0� ��� l     ����  �  �  � ��� Q     ���� k    �� ��� I    	���� $0 fmgui_modeselect fmGUI_ModeSelect� ��� m    �� ���  L a y o u t�  �  � ��� l  
 
����  �  �  �  � R      ���
� .ascrerr ****      � ****� o      �� 0 errmsg errMsg� ���
� 
errn� o      �� 0 errnum errNum�  � R    ���
� .ascrerr ****      � ****� b    ��� m    �� ��� B C o u l d n ' t   e n s u r e   i n   B r o w s e   M o d e   -  � o    �� 0 errmsg errMsg� ���
� 
errn� o    �� 0 errnum errNum�  � ��� l   ����  �  �  �  � ��� l     ����  �  �  � ��� i   � ���� I      ���� $0 fmgui_modeselect fmGUI_ModeSelect� ��� o      �� 0 modetoselect modeToSelect�  �  � k     ��� ��� l     ����  �   version 1.0   � ���    v e r s i o n   1 . 0� ��� l     ��~�}�  �~  �}  � ��|� Q     ����� O    r��� O    q��� k    p�� ��� n   ��� I    �{�z�y�{ (0 fmgui_appfrontmost fmGUI_AppFrontMost�z  �y  �  f    � ��� n   ��� I    �x�w�v�x .0 fmgui_inspector_close fmGUI_Inspector_Close�w  �v  �  f    � ��� l   �u�t�s�u  �t  �s  � ��� l   �r���r  � @ : Need to click in upper-left corner of area before pasting   � ��� t   N e e d   t o   c l i c k   i n   u p p e r - l e f t   c o r n e r   o f   a r e a   b e f o r e   p a s t i n g� ��� r     ��� 4    �q�
�q 
cwin� m    �p�p � o      �o�o 0 
modewindow 
modeWindow� ��� r   ! 0��� 6  ! .��� n   ! %��� 4  " %�n�
�n 
sgrp� m   # $�m�m � o   ! "�l�l 0 
modewindow 
modeWindow� D   & -��� 1   ' )�k
�k 
desc� m   * ,�� ��� " M o d e   C o n t e n t   A r e a� o      �j�j "0 modecontentarea modeContentArea� ��� r   1 6��� n   1 4��� 1   2 4�i
�i 
desc� o   1 2�h�h "0 modecontentarea modeContentArea� o      �g�g *0 modecontentareadesc modeContentAreaDesc� ��� r   7 =��� n   7 ;��� 4  8 ;�f�
�f 
cwor� m   9 :�e�e � o   7 8�d�d *0 modecontentareadesc modeContentAreaDesc� o      �c�c 0 currentmode currentMode� � � l  > >�b�a�`�b  �a  �`     Z   > k�_�^ >  > A o   > ?�]�] 0 currentmode currentMode o   ? @�\�\ 0 modetoselect modeToSelect k   D g 	 I  D I�[
�Z
�[ .sysodelanull��� ��� nmbr
 m   D E ?�      �Z  	  r   J O b   J M o   J K�Y�Y 0 modetoselect modeToSelect m   K L � 
   M o d e o      �X�X 0 menuitemname menuItemName �W I  P g�V�U
�V .prcsclicnull��� ��� uiel l  P c�T�S n   P c 4   ^ c�R
�R 
menI o   a b�Q�Q 0 menuitemname menuItemName n   P ^ 4   Y ^�P
�P 
menE m   \ ]�O�O  n   P Y 4   T Y�N
�N 
mbri m   U X   �!!  V i e w 4   P T�M"
�M 
mbar" m   R S�L�L �T  �S  �U  �W  �_  �^   #$# l  l l�K�J�I�K  �J  �I  $ %&% L   l n'' m   l m�H
�H boovtrue& (�G( l  o o�F�E�D�F  �E  �D  �G  � 4    �C)
�C 
pcap) m   	 
** �++ , F i l e M a k e r   P r o   A d v a n c e d� m    ,,�                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  � R      �B-.
�B .ascrerr ****      � ****- o      �A�A 0 errmsg errMsg. �@/�?
�@ 
errn/ o      �>�> 0 errnum errNum�?  � R   z ��=01
�= .ascrerr ****      � ****0 b   � �232 b   � �454 b   � �676 m   � �88 �99 2 C o u l d n ' t   s w i t c h   t o   m o d e   '7 o   � ��<�< 0 modetoselect modeToSelect5 m   � �:: �;;  '   -  3 o   � ��;�; 0 errmsg errMsg1 �:<�9
�: 
errn< o   ~ �8�8 0 errnum errNum�9  �|  � =>= l     �7�6�5�7  �6  �5  > ?@? i   � �ABA I      �4C�3�4 (0 fmgui_window_close fmGUI_Window_CloseC D�2D o      �1�1  0 somewindowname someWindowName�2  �3  B k     EE FGF l     �0HI�0  H   version 1.1   I �JJ    v e r s i o n   1 . 1G KLK l     �/�.�-�/  �.  �-  L MNM O     OPO k    QQ RSR l   �,�+�*�,  �+  �*  S TUT I   �)V�(
�) .coreclosnull���    obj V 4    �'W
�' 
cwinW o   
 �&�&  0 somewindowname someWindowName�(  U X�%X l   �$�#�"�$  �#  �"  �%  P 5     �!Y� 
�! 
cappY m    ZZ �[[ > c o m . f i l e m a k e r . c l i e n t . a d v a n c e d 1 2
�  kfrmID  N \]\ l   ����  �  �  ] ^_^ L    `` m    �
� boovtrue_ a�a l   ����  �  �  �  @ bcb l     ����  �  �  c ded i   � �fgf I      �h�� "0 windowwaituntil windowWaitUntilh i�i o      �� 	0 prefs  �  �  g k    Cjj klk l     �mn�  m   version 1.2   n �oo    v e r s i o n   1 . 2l pqp l     ����  �  �  q rsr r     tut K     vv �wx� 0 
windowname 
windowNamew m    �
� 
nullx �
yz�
  0 windownametest windowNameTesty m    {{ �||  c o n t a i n sz �	}~�	 0 whichwindow whichWindow} m     ���  a n y~ ���� .0 waitcycledelayseconds waitCycleDelaySeconds� m    �� ?�      � ���� 0 waitcyclemax waitCycleMax� m   	 
�� �  u o      �� 0 defaultprefs defaultPrefss ��� r    ��� b    ��� o    �� 	0 prefs  � o    �� 0 defaultprefs defaultPrefs� o      �� 	0 prefs  � ��� l   � �����   ��  ��  � ��� r    ��� n    ��� o    ���� 0 
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
windowName��  ��  � o      ���� 0 checkresult checkResult� ���� l  � ���������  ��  ��  ��  � � � =  � � o   � �����  0 windownametest windowNameTest m   � � �   d o e s   n o t   c o n t a i n   k   � � 	 r   � �

 l  � ����� H   � � E   � � o   � ����� "0 windownamecheck windowNameCheck o   � ����� 0 
windowname 
windowName��  ��   o      ���� 0 checkresult checkResult	 �� l  � ���������  ��  ��  ��    =  � � o   � �����  0 windownametest windowNameTest m   � � �  e q u a l s  k   � �  r   � � l  � ����� =  � �  o   � ����� "0 windownamecheck windowNameCheck  o   � ����� 0 
windowname 
windowName��  ��   o      ���� 0 checkresult checkResult !��! l  � ���������  ��  ��  ��   "#" =  � �$%$ o   � �����  0 windownametest windowNameTest% m   � �&& �''  i s# ()( k   � �** +,+ r   � �-.- l  � �/����/ =  � �010 o   � ����� "0 windownamecheck windowNameCheck1 o   � ����� 0 
windowname 
windowName��  ��  . o      ���� 0 checkresult checkResult, 2��2 l  � ���������  ��  ��  ��  ) 343 =  � �565 o   � �����  0 windownametest windowNameTest6 m   � �77 �88  s t a r t s   w i t h4 9:9 k   � �;; <=< r   � �>?> l  � �@����@ C   � �ABA o   � ����� "0 windownamecheck windowNameCheckB o   � ����� 0 
windowname 
windowName��  ��  ? o      ���� 0 checkresult checkResult= C��C l  � ��������  ��  �  ��  : DED =  � �FGF o   � ���  0 windownametest windowNameTestG m   � �HH �II & d o e s   n o t   s t a r t   w i t hE JKJ k   � �LL MNM r   � �OPO l  � �Q��Q H   � �RR C   � �STS o   � ��� "0 windownamecheck windowNameCheckT o   � ��� 0 
windowname 
windowName�  �  P o      �� 0 checkresult checkResultN U�U l  � �����  �  �  �  K VWV =  � �XYX o   � ���  0 windownametest windowNameTestY m   � �ZZ �[[  e n d s   w i t hW \]\ k   � �^^ _`_ r   � �aba l  � �c��c D   � �ded o   � ��� "0 windownamecheck windowNameChecke o   � ��� 0 
windowname 
windowName�  �  b o      �� 0 checkresult checkResult` f�f l  � �����  �  �  �  ] ghg = iji o  ��  0 windownametest windowNameTestj m  kk �ll " d o e s   n o t   e n d   w i t hh mnm r  	opo l 	q��q H  	rr D  	sts o  	
�� "0 windownamecheck windowNameCheckt o  
�� 0 
windowname 
windowName�  �  p o      �� 0 checkresult checkResultn uvu = wxw o  ��  0 windownametest windowNameTestx m  yy �zz  i s   n o tv {�{ k  !|| }~} r  � l ���� > ��� o  �� "0 windownamecheck windowNameCheck� o  �� 0 
windowname 
windowName�  �  � o      �~�~ 0 checkresult checkResult~ ��}� l   �|�{�z�|  �{  �z  �}  �  ��  � ��� l &&�y�x�w�y  �x  �w  � ��� Z &/���v�u� o  &'�t�t 0 checkresult checkResult�  S  *+�v  �u  � ��� l 00�s�r�q�s  �r  �q  � ��� I 07�p��o
�p .sysodelanull��� ��� nmbr� n  03��� o  13�n�n .0 waitcycledelayseconds waitCycleDelaySeconds� o  01�m�m 	0 prefs  �o  � ��� l 88�l�k�j�l  �k  �j  � ��i� l 88�h�g�f�h  �g  �f  �i  � n   . 2��� o   / 1�e�e 0 waitcyclemax waitCycleMax� o   . /�d�d 	0 prefs  � ��� l ??�c�b�a�c  �b  �a  � ��� L  ?A�� o  ?@�`�` 0 checkresult checkResult� ��_� l BB�^�]�\�^  �]  �\  �_  e ��� l     �[�Z�Y�[  �Z  �Y  � ��� i   � ���� I      �X��W�X 20 windowwaituntil_frontis windowWaitUntil_FrontIS� ��V� o      �U�U 	0 prefs  �V  �W  � k     �� ��� l     �T���T  �   version 1.0   � ���    v e r s i o n   1 . 0� ��� l     �S�R�Q�S  �R  �Q  � ��� r     ��� K     �� �P���P 0 
windowname 
windowName� m    �O
�O 
null� �N���N  0 windownametest windowNameTest� m    �� ���  i s� �M���M 0 whichwindow whichWindow� m    �� ��� 
 f r o n t� �L���L .0 waitcycledelayseconds waitCycleDelaySeconds� m    �� ?�������� �K��J�K 0 waitcyclemax waitCycleMax� m   	 
�I�I d�J  � o      �H�H 0 defaultprefs defaultPrefs� ��� r    ��� b    ��� o    �G�G 	0 prefs  � o    �F�F 0 defaultprefs defaultPrefs� o      �E�E 	0 prefs  � ��� l   �D�C�B�D  �C  �B  � ��� L    �� I    �A��@�A "0 windowwaituntil windowWaitUntil� ��?� o    �>�> 	0 prefs  �?  �@  � ��� l   �=�<�;�=  �<  �;  � ��:� l   �9�8�7�9  �8  �7  �:  � ��� l     �6�5�4�6  �5  �4  � ��� i   � ���� I      �3��2�3 0 listcontains listContains� ��� o      �1�1 0 somelist someList� ��0� o      �/�/ "0 somecomplexitem someComplexItem�0  �2  � k     0�� ��� l     �.���.  �   version 1.0   � ���    v e r s i o n   1 . 0� ��� l     �-�,�+�-  �,  �+  � ��� X     +��*�� k    &�� ��� r    ��� n    ��� 1    �)
�) 
pcnt� o    �(�( 0 oneitem oneItem� o      �'�' 0 oneitem oneItem� ��� Z    $���&�%� =   ��� o    �$�$ 0 oneitem oneItem� o    �#�# "0 somecomplexitem someComplexItem� k     �� ��� l   �"�!� �"  �!  �   � ��� L    �� m    �
� boovtrue� ��� l   ����  �  �  �  �&  �%  � ��� l  % %����  �  �  � ��� l  % %����  �  �  �  �* 0 oneitem oneItem� o    �� 0 somelist someList� ��� l  , ,����  �  �  � �  � L   , .   m   , -�
� boovfals    �  l  / /����  �  �  �  �     l     �
�	��
  �	  �        i   � �    I      � 	�� $0 listuniquevalues listUniqueValues 	  
� 
 o      �� 	0 prefs  �  �    k     :       l     �  �      version 1.0     �      v e r s i o n   1 . 0      l     ��� �  �  �         r         n         o    ���� 0 	inputlist 	inputList  o     ���� 	0 prefs    o      ���� 0 	inputlist 	inputList      l   ��������  ��  ��        r    
    J    ����    o      ���� 0 
uniquelist 
uniqueList       l   ��������  ��  ��      ! " ! l   ��������  ��  ��   "  # $ # X    5 %�� & % k    0 ' '  ( ) ( r      * + * n     , - , 1    ��
�� 
pcnt - o    ���� 0 oneitem oneItem + o      ���� 0 oneitem oneItem )  .�� . Z   ! 0 / 0���� / H   ! % 1 1 E   ! $ 2 3 2 o   ! "���� 0 
uniquelist 
uniqueList 3 o   " #���� 0 oneitem oneItem 0 s   ( , 4 5 4 o   ( )���� 0 oneitem oneItem 5 n       6 7 6  ;   * + 7 o   ) *���� 0 
uniquelist 
uniqueList��  ��  ��  �� 0 oneitem oneItem & o    ���� 0 	inputlist 	inputList $  8 9 8 l  6 6��������  ��  ��   9  : ; : L   6 8 < < o   6 7���� 0 
uniquelist 
uniqueList ;  =�� = l  9 9��������  ��  ��  ��     > ? > l     ��������  ��  ��   ?  @ A @ i   � � B C B I      �� D���� 0 sort   D  E�� E o      ���� 0 oldlist oldList��  ��   C k     D F F  G H G l     �� I J��   I   version 1.0    J � K K    v e r s i o n   1 . 0 H  L M L l     ��������  ��  ��   M  N O N r      P Q P J     
 R R  S T S n     U V U 1    ��
�� 
txdl V 1     ��
�� 
ascr T  W�� W I   �� X��
�� .sysontocTEXT       shor X m    ���� 
��  ��   Q J       Y Y  Z [ Z o      ���� 0 od   [  \�� \ n      ] ^ ] 1    ��
�� 
txdl ^ 1    ��
�� 
ascr��   O  _ ` _ r    ! a b a c     c d c o    ���� 0 oldlist oldList d m    ��
�� 
TEXT b o      ���� 0 	textblock 	textBlock `  e f e r   " / g h g I  " -�� i��
�� .sysoexecTEXT���     TEXT i b   " ) j k j b   " ' l m l m   " # n n � o o 
 e c h o   m n   # & p q p 1   $ &��
�� 
strq q o   # $���� 0 	textblock 	textBlock k m   ' ( r r � s s    |   s o r t��   h o      ���� 0 sortedblock sortedBlock f  t u t r   0 5 v w v o   0 1��
�� 
ret  w n      x y x 1   2 4�
� 
txdl y 1   1 2�
� 
ascr u  z { z r   6 ; | } | n   6 9 ~  ~ 2   7 9�
� 
citm  o   6 7�� 0 sortedblock sortedBlock } o      �� 0 
sortedlist 
sortedList {  � � � r   < A � � � o   < =�� 0 od   � n      � � � 1   > @�
� 
txdl � 1   = >�
� 
ascr �  � � � l  B B����  �  �   �  �� � L   B D � � o   B C�� 0 
sortedlist 
sortedList�   A  � � � l     ����  �  �   �  � � � i   � � � � � I      � ��� 0 
logconsole 
logConsole �  � � � o      �� 0 processname processName �  �� � o      �� 0 
consolemsg 
consoleMsg�  �   � k     H � �  � � � l     � � ��   �   version 2.0    � � � �    v e r s i o n   2 . 0 �  � � � l     ����  �  �   �  � � � r      � � � I     � ���  0 coercetostring coerceToString �  �� � o    �� 0 
consolemsg 
consoleMsg�  �   � o      �� 0 
consolemsg 
consoleMsg �  � � � l  	  � � � � r   	  � � � I   	 � ��� 0 replacesimple replaceSimple �  �� � J   
  � �  � � � o   
 �� 0 
consolemsg 
consoleMsg �  � � � I   � ��
� .sysontocTEXT       shor � m    ��  �   �  �� � m     � � � � �  �  �  �   � o      �� 0 
consolemsg 
consoleMsg � %  ASCII 0 breaks shell scripting    � � � � >   A S C I I   0   b r e a k s   s h e l l   s c r i p t i n g �  � � � Z    ) � ��� � =    � � � n     � � � 1    �
� 
leng � o    �� 0 
consolemsg 
consoleMsg � m    ��   � k   " % � �  � � � l  " "� � ��   � H B we still want this function to log that an empty string was sent:    � � � � �   w e   s t i l l   w a n t   t h i s   f u n c t i o n   t o   l o g   t h a t   a n   e m p t y   s t r i n g   w a s   s e n t : �  �� � r   " % � � � m   " # � � � � �  [ E M P T Y   S T R I N G ] � o      �� 0 
consolemsg 
consoleMsg�  �  �   �  � � � r   * = � � � b   * ; � � � b   * 7 � � � b   * 5 � � � b   * 1 � � � b   * / � � � b   * - � � � m   * + � � � � �  l o g g e r � 1   + ,�
� 
spac � m   - . � � � � �  - t � 1   / 0�
� 
spac � n   1 4 � � � 1   2 4�
� 
strq � o   1 2�� 0 processname processName � 1   5 6�
� 
spac � n   7 : � � � 1   8 :�
� 
strq � o   7 8�� 0 
consolemsg 
consoleMsg � o      �� 0 shellcommand shellCommand �  � � � l  > >����  �  �   �  � � � I  > C� ��
� .sysoexecTEXT���     TEXT � o   > ?�� 0 shellcommand shellCommand�   �  � � � L   D F � � o   D E�� 0 shellcommand shellCommand �  �� � l  G G���~�  �  �~  �   �  � � � l     �}�|�{�}  �|  �{   �  � � � i   � � � � � I      �z ��y�z 0 loglevel logLEVEL �  � � � o      �x�x 	0 level   �  ��w � o      �v�v 0 somemsg someMsg�w  �y   � k     4 � �  � � � l     �u � ��u   �   version 1.0    � � � �    v e r s i o n   1 . 0 �  � � � l     �t�s�r�t  �s  �r   �  � � � r      � � � m     �q�q  � o      �p�p 0 	maxxcount 	maxXcount �  �!  � r    !!! b    !!! o    	�o�o 0 
scriptname 
ScriptName! m   	 
!! �!!  _! o      �n�n 0 logname logName!  !!! r    !	!
!	 [    !!! \    !!! o    �m�m 0 	maxxcount 	maxXcount! o    �l�l 	0 level  ! m    �k�k !
 o      �j�j 0 xcount xCount! !!! l   �i�h�g�i  �h  �g  ! !!! Y    *!�f!!�e! r     %!!! b     #!!! o     !�d�d 0 logname logName! m   ! "!! �!!  X! o      �c�c 0 logname logName�f 0 i  ! m    �b�b ! o    �a�a 0 xcount xCount�e  ! !!! l  + +�`�_�^�`  �_  �^  ! !!! I   + 2�]! �\�] 0 
logconsole 
logConsole!  !!!"!! o   , -�[�[ 0 logname logName!" !#�Z!# o   - .�Y�Y 0 somemsg someMsg�Z  �\  ! !$�X!$ l  3 3�W�V�U�W  �V  �U  �X   � !%!&!% l     �T�S�R�T  �S  �R  !& !'!(!' i   � �!)!*!) I      �Q!+�P�Q 0 logmain logMAIN!+ !,�O!, o      �N�N 0 somemsg someMsg�O  �P  !* k     !-!- !.!/!. l     �M!0!1�M  !0   version 1.0   !1 �!2!2    v e r s i o n   1 . 0!/ !3!4!3 l     �L�K�J�L  �K  �J  !4 !5�I!5 l    !6!7!8!6 I     �H!9�G�H 0 loglevel logLEVEL!9 !:!;!: m    �F�F  !; !<�E!< o    �D�D 0 somemsg someMsg�E  �G  !7    log at highest importance   !8 �!=!= 4   l o g   a t   h i g h e s t   i m p o r t a n c e�I  !( !>!?!> l     �C�B�A�C  �B  �A  !? !@!A!@ i   � �!B!C!B I      �@!D�?�@ 0 clickatcoords clickAtCoords!D !E!F!E o      �>�> 0 xclick xClick!F !G�=!G o      �<�< 0 yclick yClick�=  �?  !C k     0!H!H !I!J!I l     �;!K!L�;  !K   version 1.0   !L �!M!M    v e r s i o n   1 . 0!J !N!O!N l     �:�9�8�:  �9  �8  !O !P!Q!P r     	!R!S!R I    �7!T!U
�7 .sysorondlong        doub!T o     �6�6 0 xclick xClick!U �5!V�4
�5 
dire!V m    �3
�3 olierndD�4  !S o      �2�2 0 xclick xClick!Q !W!X!W r   
 !Y!Z!Y I  
 �1![!\
�1 .sysorondlong        doub![ o   
 �0�0 0 yclick yClick!\ �/!]�.
�/ 
dire!] m    �-
�- olierndD�.  !Z o      �,�, 0 yclick yClick!X !^!_!^ I   '�+!`�*
�+ .sysoexecTEXT���     TEXT!` b    #!a!b!a b    !!c!d!c b    !e!f!e b    !g!h!g n    !i!j!i 1    �)
�) 
strq!j o    �(�( &0 clickcommandposix clickCommandPosix!h m    !k!k �!l!l    - r  !f o    �'�' 0 xclick xClick!d 1     �&
�& 
spac!b o   ! "�%�% 0 yclick yClick�*  !_ !m�$!m L   ( 0!n!n l  ( /!o�#�"!o b   ( /!p!q!p b   ( -!r!s!r l  ( +!t�!� !t c   ( +!u!v!u o   ( )�� 0 xclick xClick!v m   ) *�
� 
TEXT�!  �   !s m   + ,!w!w �!x!x  ,!q o   - .�� 0 yclick yClick�#  �"  �$  !A !y!z!y l     ����  �  �  !z !{!|!{ i   � �!}!~!} I      �!�� *0 clickobjectbycoords clickObjectByCoords! !��!� o      �� 0 
someobject 
someObject�  �  !~ k     M!�!� !�!�!� l     �!�!��  !�   version 1.0   !� �!�!�    v e r s i o n   1 . 0!� !�!�!� l     ����  �  �  !� !�!�!� w     '!�!�!� k    '!�!� !�!�!� r    !�!�!� n    !�!�!� 1    �
� 
posn!� o    �� 0 
someobject 
someObject!� J      !�!� !�!�!� o      �� 0 xcoord xCoord!� !��!� o      �� 0 ycoord yCoord�  !� !��!� r    '!�!�!� n    !�!�!� 1    �
� 
ptsz!� o    �
�
 0 
someobject 
someObject!� J      !�!� !�!�!� o      �	�	 0 xsize xSize!� !��!� o      �� 0 ysize ySize�  �  !��                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  !� !�!�!� l  ( (����  �  �  !� !�!�!� l  ( 5!�!�!�!� r   ( 5!�!�!� I  ( 3�!�!�
� .sysorondlong        doub!� l  ( -!���!� [   ( -!�!�!� o   ( )� �  0 xcoord xCoord!� ^   ) ,!�!�!� o   ) *���� 0 xsize xSize!� m   * +���� �  �  !� ��!���
�� 
dire!� m   . /��
�� olierndD��  !� o      ���� 0 xclick xClick!�   middle   !� �!�!�    m i d d l e!� !�!�!� l  6 C!�!�!�!� r   6 C!�!�!� I  6 A��!�!�
�� .sysorondlong        doub!� l  6 ;!�����!� [   6 ;!�!�!� o   6 7���� 0 ycoord yCoord!� ^   7 :!�!�!� o   7 8���� 0 ysize ySize!� m   8 9���� ��  ��  !� ��!���
�� 
dire!� m   < =��
�� olierndD��  !� o      ���� 0 yclick yClick!�   middle   !� �!�!�    m i d d l e!� !�!�!� l  D D��������  ��  ��  !� !�!�!� I   D K��!����� 0 clickatcoords clickAtCoords!� !�!�!� o   E F���� 0 xclick xClick!� !���!� o   F G���� 0 yclick yClick��  ��  !� !���!� l  L L��������  ��  ��  ��  !| !�!�!� l     ��������  ��  ��  !� !�!�!� i   � �!�!�!� I      ��!�����  0 coercetostring coerceToString!� !���!� o      ����  0 incomingobject incomingObject��  ��  !� k    �!�!� !�!�!� l     ��!�!���  !�   version 2.2   !� �!�!�    v e r s i o n   2 . 2!� !�!�!� l     ��������  ��  ��  !� !���!� Z    �!�!�!�!�!� =    !�!�!� n     !�!�!� m    ��
�� 
pcls!� o     ����  0 incomingobject incomingObject!� m    ��
�� 
TEXT!� k    !�!� !�!�!� r    !�!�!� l   !�����!� c    !�!�!� o    	����  0 incomingobject incomingObject!� m   	 
��
�� 
TEXT��  ��  !� K      !�!� ��!���
�� 
ctxt!� o      ����  0 incomingobject incomingObject��  !� !���!� L    !�!� o    ����  0 incomingobject incomingObject��  !� !�!�!� =   !�!�!� n    !�!�!� m    ��
�� 
pcls!� o    ����  0 incomingobject incomingObject!� m    ��
�� 
long!� !�!�!� k     /!�!� !�!�!� r     *!�!�!� l    #!�����!� c     #!�" !� o     !����  0 incomingobject incomingObject"  m   ! "��
�� 
TEXT��  ��  !� K      "" ��"��
�� 
ctxt" o      ����  0 incomingobject incomingObject��  !� "��" L   + /"" c   + .""" o   + ,����  0 incomingobject incomingObject" m   , -�
� 
TEXT��  !� """ =  2 7"	"
"	 n   2 5""" m   3 5�
� 
pcls" o   2 3��  0 incomingobject incomingObject"
 m   5 6�
� 
doub" """ k   : I"" """ r   : D""" l  : ="��" c   : =""" o   : ;��  0 incomingobject incomingObject" m   ; <�
� 
TEXT�  �  " K      "" �"�
� 
ctxt" o      ��  0 incomingobject incomingObject�  " "�" L   E I"" c   E H""" o   E F��  0 incomingobject incomingObject" m   F G�
� 
TEXT�  " """ =  L Q"" " n   L O"!"""! m   M O�
� 
pcls"" o   L M��  0 incomingobject incomingObject"  m   O P�
� 
utxt" "#�"# k   T c"$"$ "%"&"% r   T ^"'"("' l  T W")��") c   T W"*"+"* o   T U��  0 incomingobject incomingObject"+ m   U V�
� 
TEXT�  �  "( K      ",", �"-�
� 
ctxt"- o      ��  0 incomingobject incomingObject�  "& ".�". L   _ c"/"/ c   _ b"0"1"0 o   _ `��  0 incomingobject incomingObject"1 m   ` a�
� 
TEXT�  �  !� k   f�"2"2 "3"4"3 l  f f�"5"6�  "5 , & LIST, RECORD, styled text, or unknown   "6 �"7"7 L   L I S T ,   R E C O R D ,   s t y l e d   t e x t ,   o r   u n k n o w n"4 "8"9"8 Q   f~":";"<": k   i �"="= ">"?"> Q   i �"@"A"B"@ k   l s"C"C "D"E"D r   l q"F"G"F m   l m"H"H �"I"I ` s o m e _ U U I D _ V a l u e _ 5 4 F 8 2 7 C 7 3 7 9 E 4 0 7 3 B 5 A 2 1 6 B B 9 C D E 5 7 5 D"G n      "J"K"J o   n p�� j0 3some_uuid_property_54f827c7379e4073b5a216bb9cde575d 3some_UUID_Property_54F827C7379E4073B5A216BB9CDE575D"K m   m n"L"L �"M"M  X X X X"E "N"O"N l  r r����  �  �  "O "P"Q"P l  r r�"R"S�  "R V P GENERATE the error message for a known 'object' (here, a string) so we can get    "S �"T"T �   G E N E R A T E   t h e   e r r o r   m e s s a g e   f o r   a   k n o w n   ' o b j e c t '   ( h e r e ,   a   s t r i n g )   s o   w e   c a n   g e t  "Q "U�"U l  r r�"V"W�  "V 7 1 the 'lead' and 'trail' part of the error message   "W �"X"X b   t h e   ' l e a d '   a n d   ' t r a i l '   p a r t   o f   t h e   e r r o r   m e s s a g e�  "A R      �"Y"Z
� .ascrerr ****      � ****"Y o      �� 0 errmsg errMsg"Z �"[�
� 
errn"[ o      �� 0 errnum errNum�  "B k   { �"\"\ "]"^"] r   { �"_"`"_ J   { �"a"a "b"c"b n  { ~"d"e"d 1   | ~�
� 
txdl"e 1   { |�
� 
ascr"c "f�"f J   ~ �"g"g "h�"h m   ~ "i"i �"j"j  " X X X X "�  �  "` J      "k"k "l"m"l o      �� 0 	olddelims 	oldDelims"m "n�"n n     "o"p"o 1   � ��
� 
txdl"p 1   � ��
� 
ascr�  "^ "q"r"q r   � �"s"t"s n   � �"u"v"u 2  � ��
� 
citm"v o   � ��� 0 errmsg errMsg"t J      "w"w "x"y"x o      �� 0 
errmsglead 
errMsgLead"y "z�"z o      �� 0 errmsgtrail errMsgTrail�  "r "{�"{ r   � �"|"}"| o   � ��� 0 	olddelims 	oldDelims"} n     "~""~ 1   � ��
� 
txdl" 1   � ��
� 
ascr�  "? "�"�"� l  � �����  �  �  "� "�"�"� l  � ��"�"��  "� = 7 now, generate error message for the SPECIFIED object:    "� �"�"� n   n o w ,   g e n e r a t e   e r r o r   m e s s a g e   f o r   t h e   S P E C I F I E D   o b j e c t :  "� "�"�"� r   � �"�"�"� m   � �"�"� �"�"� ` s o m e _ U U I D _ V a l u e _ 5 4 F 8 2 7 C 7 3 7 9 E 4 0 7 3 B 5 A 2 1 6 B B 9 C D E 5 7 5 D"� n      "�"�"� o   � ��� j0 3some_uuid_property_54f827c7379e4073b5a216bb9cde575d 3some_UUID_Property_54F827C7379E4073B5A216BB9CDE575D"� o   � ���  0 incomingobject incomingObject"� "�"�"� l  � ���~�}�  �~  �}  "� "��|"� l  � ��{�z�y�{  �z  �y  �|  "; R      �x"��w
�x .ascrerr ****      � ****"� o      �v�v 0 errmsg errMsg�w  "< Z   �~"�"��u"�"� F   � �"�"�"� C   � �"�"�"� o   � ��t�t 0 errmsg errMsg"� m   � �"�"� �"�"� � S y s t e m   E v e n t s   g o t   a n   e r r o r :   C a n  t   m a k e   s o m e _ U U I D _ P r o p e r t y _ 5 4 F 8 2 7 C 7 3 7 9 E 4 0 7 3 B 5 A 2 1 6 B B 9 C D E 5 7 5 D   o f  "� D   � �"�"�"� o   � ��s�s 0 errmsg errMsg"� m   � �"�"� �"�"� ( i n t o   t y p e   s p e c i f i e r ."� k   �"�"� "�"�"� r   � �"�"�"� m   � �"�"� �"�"� � S y s t e m   E v e n t s   g o t   a n   e r r o r :   C a n  t   m a k e   s o m e _ U U I D _ P r o p e r t y _ 5 4 F 8 2 7 C 7 3 7 9 E 4 0 7 3 B 5 A 2 1 6 B B 9 C D E 5 7 5 D   o f  "� o      �r�r 0 
errmsglead 
errMsgLead"� "�"�"� r   � �"�"�"� m   � �"�"� �"�"� *   i n t o   t y p e   s p e c i f i e r ."� o      �q�q 0 errmsgtrail errMsgTrail"� "�"�"� l  � ��p�o�n�p  �o  �n  "� "�"�"� r   � �"�"�"� J   � �"�"� "�"�"� n  � �"�"�"� 1   � ��m
�m 
txdl"� 1   � ��l
�l 
ascr"� "��k"� o   � ��j�j 0 
errmsglead 
errMsgLead�k  "� J      "�"� "�"�"� o      �i�i 0 od  "� "��h"� n     "�"�"� 1   � ��g
�g 
txdl"� 1   � ��f
�f 
ascr�h  "� "�"�"� l  � ��e�d�c�e  �d  �c  "� "�"�"� r   � �"�"�"� n   � �"�"�"� 4   � ��b"�
�b 
citm"� m   � ��a�a "� o   � ��`�` 0 errmsg errMsg"� o      �_�_ 0 objectstring objectString"� "�"�"� r   �"�"�"� o   � ��^�^ 0 errmsgtrail errMsgTrail"� n     "�"�"� 1   �]
�] 
txdl"� 1   � �\
�\ 
ascr"� "�"�"� l �[�Z�Y�[  �Z  �Y  "� "�"�"� r  
"�"�"� n  "�"�"� 4  �X"�
�X 
citm"� m  �W�W "� o  �V�V 0 objectstring objectString"� o      �U�U 0 objectstring objectString"� "�"�"� r  "�"�"� o  �T�T 0 od  "� n     "�"�"� 1  �S
�S 
txdl"� 1  �R
�R 
ascr"� "�"�"� l �Q�P�O�Q  �P  �O  "� "�"�"� l �N�M�L�N  �M  �L  "� "��K"� l �J�I�H�J  �I  �H  �K  �u  "� k  ~"�"� "�"�"� l �G"�"��G  "�  tell me to log errMsg   "� �"�"� * t e l l   m e   t o   l o g   e r r M s g"� "�"�"� r  "�"�"� o  �F�F 0 errmsg errMsg"� o      �E�E 0 objectstring objectString"� "�"�"� l �D�C�B�D  �C  �B  "� "�"�"� Z  G"�"��A�@"� E  "�"�"� o  �?�? 0 objectstring objectString"� o  �>�> 0 
errmsglead 
errMsgLead"� k  C"�"� "�"�"� r  6"�"�"� J  %"�"� "�"�"� n ""�"�"� 1   "�=
�= 
txdl"� 1   �<
�< 
ascr"� "��;"� o  "#�:�: 0 
errmsglead 
errMsgLead�;  "� J      "�"� # ##  o      �9�9 0 od  # #�8# n     ### 1  24�7
�7 
txdl# 1  12�6
�6 
ascr�8  "� ### r  7=### n  7;#	#
#	 4  8;�5#
�5 
citm# m  9:�4�4 #
 o  78�3�3 0 objectstring objectString# o      �2�2 0 objectstring objectString# #�1# r  >C### o  >?�0�0 0 od  # n     ### 1  @B�/
�/ 
txdl# 1  ?@�.
�. 
ascr�1  �A  �@  "� ### l HH�-�,�+�-  �,  �+  # ### Z  H|##�*�)# E  HK### o  HI�(�( 0 objectstring objectString# o  IJ�'�' 0 errmsgtrail errMsgTrail# k  Nx## ### r  Ne### J  NT## ## # n NQ#!#"#! 1  OQ�&
�& 
txdl#" 1  NO�%
�% 
ascr#  ##�$## o  QR�#�# 0 errmsgtrail errMsgTrail�$  # J      #$#$ #%#&#% o      �"�" 0 od  #& #'�!#' n     #(#)#( 1  ac� 
�  
txdl#) 1  `a�
� 
ascr�!  # #*#+#* r  fk#,#-#, o  fg�� 0 errmsgtrail errMsgTrail#- n     #.#/#. 1  hj�
� 
txdl#/ 1  gh�
� 
ascr#+ #0#1#0 r  lr#2#3#2 n  lp#4#5#4 4  mp�#6
� 
citm#6 m  no�� #5 o  lm�� 0 objectstring objectString#3 o      �� 0 objectstring objectString#1 #7�#7 r  sx#8#9#8 o  st�� 0 od  #9 n     #:#;#: 1  uw�
� 
txdl#; 1  tu�
� 
ascr�  �*  �)  # #<#=#< l }}����  �  �  #= #>�#> l }}�#?#@�  #? O Iset {text:objectString} to (objectString as string) -- what does THIS do?   #@ �#A#A � s e t   { t e x t : o b j e c t S t r i n g }   t o   ( o b j e c t S t r i n g   a s   s t r i n g )   - -   w h a t   d o e s   T H I S   d o ?�  "9 #B#C#B l ����  �  �  #C #D�#D L  �#E#E o  ��
�
 0 objectstring objectString�  ��  !� #F#G#F l     �	���	  �  �  #G #H#I#H i   � �#J#K#J I      �#L�� 0 gettextbefore getTextBefore#L #M#N#M o      �� 0 
sourcetext 
sourceTEXT#N #O�#O o      �� 0 stophere stopHere�  �  #K k     Q#P#P #Q#R#Q l     �#S#T�  #S   version 1.1   #T �#U#U    v e r s i o n   1 . 1#R #V#W#V l     � �����   ��  ��  #W #X��#X Q     Q#Y#Z#[#Y k    A#\#\ #]#^#] r    #_#`#_ J    	#a#a #b#c#b n   #d#e#d 1    ��
�� 
txdl#e 1    ��
�� 
ascr#c #f��#f o    ���� 0 stophere stopHere��  #` J      #g#g #h#i#h o      ���� 0 	olddelims 	oldDelims#i #j��#j n     #k#l#k 1    ��
�� 
txdl#l 1    ��
�� 
ascr��  #^ #m#n#m Z    8#o#p��#q#o =   $#r#s#r l   "#t����#t I   "��#u��
�� .corecnte****       ****#u n    #v#w#v 2   ��
�� 
citm#w o    ���� 0 
sourcetext 
sourceTEXT��  ��  ��  #s m   " #���� #p k   ' /#x#x #y#z#y r   ' ,#{#|#{ o   ' (���� 0 	olddelims 	oldDelims#| n     #}#~#} 1   ) +��
�� 
txdl#~ 1   ( )��
�� 
ascr#z #��# L   - /#�#� m   - .#�#� �#�#�  ��  ��  #q r   2 8#�#�#� n   2 6#�#�#� 4   3 6��#�
�� 
citm#� m   4 5���� #� o   2 3���� 0 
sourcetext 
sourceTEXT#� l     #�����#� o      ���� 0 finalresult finalResult��  ��  #n #�#�#� r   9 >#�#�#� o   9 :���� 0 	olddelims 	oldDelims#� n     #�#�#� 1   ; =��
�� 
txdl#� 1   : ;��
�� 
ascr#� #���#� L   ? A#�#� o   ? @���� 0 finalresult finalResult��  #Z R      ��#�#�
�� .ascrerr ****      � ****#� o      ���� 0 errmsg errMsg#� ��#���
�� 
errn#� o      ���� 0 errnum errNum��  #[ k   I Q#�#� #�#�#� r   I N#�#�#� o   I J���� 0 	olddelims 	oldDelims#� n     #�#�#� 1   K M��
�� 
txdl#� 1   J K��
�� 
ascr#� #���#� l  O Q#�#�#�#� L   O Q#�#� m   O P#�#� �#�#�  #� 3 - return nothing if the stop text is not found   #� �#�#� Z   r e t u r n   n o t h i n g   i f   t h e   s t o p   t e x t   i s   n o t   f o u n d��  ��  #I #�#�#� l     ��������  ��  ��  #� #�#�#� i   � �#�#�#� I      ��#�����  0 gettextbetween getTextBetween#� #���#� o      ���� 	0 prefs  ��  ��  #� k     �#�#� #�#�#� l     ��#�#���  #�   version 1.6   #� �#�#�    v e r s i o n   1 . 6#� #�#�#� l     ��������  ��  ��  #� #�#�#� r     #�#�#� K     #�#� ��#�#��� 0 textitemnum textItemNum#� m    ���� #� ��#�����  0 includemarkers includeMarkers#� m    ��
�� boovfals��  #� o      ���� 0 defaultprefs defaultPrefs#� #�#�#� l  	 	��������  ��  ��  #� #�#�#� Z   	 '#�#����#� F   	 #�#�#� l  	 #���#� >  	 #�#�#� n   	 #�#�#� m   
 �
� 
pcls#� o   	 
�� 	0 prefs  #� m    �
� 
list�  �  #� l   #���#� >   #�#�#� c    #�#�#� l   #���#� n    #�#�#� m    �
� 
pcls#� o    �� 	0 prefs  �  �  #� m    �
� 
TEXT#� m    #�#� �#�#�  r e c o r d�  �  #� R    #�#�#�
� .ascrerr ****      � ****#� m   ! "#�#� �#�#� g e t T e x t B e t w e e n   F A I L E D :   p a r a m e t e r   s h o u l d   b e   a   r e c o r d   o r   l i s t .   I f   i t   i s   m u l t i p l e   i t e m s ,   j u s t   m a k e   i t   i n t o   a   l i s t   t o   u p g r a d e   t o   t h i s   h a n d l e r .#� �#��
� 
errn#� m     �� �  ��  �  #� #�#�#� Z   ( `#�#���#� =  ( -#�#�#� n   ( +#�#�#� m   ) +�
� 
pcls#� o   ( )�� 	0 prefs  #� m   + ,�
� 
list#� k   0 \#�#� #�#�#� Z   0 F#�#���#� =  0 7#�#�#� l  0 5#���#� I  0 5�#��
� .corecnte****       ****#� o   0 1�� 	0 prefs  �  �  �  #� m   5 6�� #� r   : B#�#�#� n   : >#�#�#� 4   ; >�#�
� 
cobj#� m   < =�� #� o   : ;�� 	0 prefs  #� n      #�#�#� o   ? A�� 0 textitemnum textItemNum#� o   > ?�� 0 defaultprefs defaultPrefs�  �  #� #��#� r   G \#�#�#� K   G Z#�#� �#�#�� 0 
sourcetext 
sourceTEXT#� n   H L#�#�#� 4   I L�#�
� 
cobj#� m   J K�� #� o   H I�� 	0 prefs  #� �#�#�� 0 
beforetext 
beforeText#� n   M Q#�#�#� 4   N Q�#�
� 
cobj#� m   O P�� #� o   M N�� 	0 prefs  #� �#��� 0 	aftertext 	afterText#� n   R V#�#�#� 4   S V�$ 
� 
cobj$  m   T U�� #� o   R S�� 	0 prefs  �  #� o      �� 	0 prefs  �  �  �  #� $$$ l  a f$$$$ r   a f$$$ b   a d$$	$ o   a b�� 	0 prefs  $	 o   b c�� 0 defaultprefs defaultPrefs$ o      �� 	0 prefs  $ , & add on default preferences, if needed   $ �$
$
 L   a d d   o n   d e f a u l t   p r e f e r e n c e s ,   i f   n e e d e d$ $$$ r   g l$$$ n   g j$$$ o   h j�� 0 
sourcetext 
sourceTEXT$ o   g h�� 	0 prefs  $ o      �� 0 
sourcetext 
sourceTEXT$ $$$ r   m r$$$ n   m p$$$ o   n p�� 0 
beforetext 
beforeText$ o   m n�� 	0 prefs  $ o      �� 0 
beforetext 
beforeText$ $$$ r   s x$$$ n   s v$$$ o   t v�� 0 	aftertext 	afterText$ o   s t�� 	0 prefs  $ o      �� 0 	aftertext 	afterText$ $$$ r   y ~$$ $ n   y |$!$"$! o   z |�� 0 textitemnum textItemNum$" o   y z�� 	0 prefs  $  o      �� 0 textitemnum textItemNum$ $#$$$# r    �$%$&$% n    �$'$($' o   � ��~�~  0 includemarkers includeMarkers$( o    ��}�} 	0 prefs  $& o      �|�|  0 includemarkers includeMarkers$$ $)$*$) l  � ��{�z�y�{  �z  �y  $* $+$,$+ Q   � �$-$.$/$- k   � �$0$0 $1$2$1 r   � �$3$4$3 J   � �$5$5 $6$7$6 n  � �$8$9$8 1   � ��x
�x 
txdl$9 1   � ��w
�w 
ascr$7 $:�v$: o   � ��u�u 0 
beforetext 
beforeText�v  $4 J      $;$; $<$=$< o      �t�t 0 	olddelims 	oldDelims$= $>�s$> n     $?$@$? 1   � ��r
�r 
txdl$@ 1   � ��q
�q 
ascr�s  $2 $A$B$A r   � �$C$D$C n   � �$E$F$E 4   � ��p$G
�p 
citm$G o   � ��o�o 0 textitemnum textItemNum$F o   � ��n�n 0 
sourcetext 
sourceTEXT$D l     $H�m�l$H o      �k�k 0 prefixremoved prefixRemoved�m  �l  $B $I$J$I r   � �$K$L$K o   � ��j�j 0 	aftertext 	afterText$L n     $M$N$M 1   � ��i
�i 
txdl$N 1   � ��h
�h 
ascr$J $O$P$O r   � �$Q$R$Q n   � �$S$T$S 4   � ��g$U
�g 
citm$U m   � ��f�f $T o   � ��e�e 0 prefixremoved prefixRemoved$R l     $V�d�c$V o      �b�b 0 finalresult finalResult�d  �c  $P $W$X$W r   � �$Y$Z$Y o   � ��a�a 0 	olddelims 	oldDelims$Z n     $[$\$[ 1   � ��`
�` 
txdl$\ 1   � ��_
�_ 
ascr$X $]$^$] l  � ��^�]�\�^  �]  �\  $^ $_$`$_ Z  � �$a$b�[�Z$a o   � ��Y�Y  0 includemarkers includeMarkers$b r   � �$c$d$c b   � �$e$f$e b   � �$g$h$g o   � ��X�X 0 
beforetext 
beforeText$h o   � ��W�W 0 finalresult finalResult$f o   � ��V�V 0 	aftertext 	afterText$d o      �U�U 0 finalresult finalResult�[  �Z  $` $i�T$i l  � ��S�R�Q�S  �R  �Q  �T  $. R      �P$j$k
�P .ascrerr ****      � ****$j o      �O�O 0 errmsg errMsg$k �N$l�M
�N 
errn$l o      �L�L 0 errnum errNum�M  $/ k   � �$m$m $n$o$n r   � �$p$q$p o   � ��K�K 0 	olddelims 	oldDelims$q n     $r$s$r 1   � ��J
�J 
txdl$s 1   � ��I
�I 
ascr$o $t$u$t l  � ��H$v$w�H  $v > 8 	tell me to log "Error in getTextBetween() : " & errMsg   $w �$x$x p   	 t e l l   m e   t o   l o g   " E r r o r   i n   g e t T e x t B e t w e e n ( )   :   "   &   e r r M s g$u $y�G$y l  � �$z${$|$z r   � �$}$~$} m   � �$$ �$�$�  $~ l     $��F�E$� o      �D�D 0 finalresult finalResult�F  �E  ${ : 4 return nothing if the surrounding text is not found   $| �$�$� h   r e t u r n   n o t h i n g   i f   t h e   s u r r o u n d i n g   t e x t   i s   n o t   f o u n d�G  $, $�$�$� l  � ��C�B�A�C  �B  �A  $� $�$�$� l  � ��@�?�>�@  �?  �>  $� $�$�$� L   � �$�$� o   � ��=�= 0 finalresult finalResult$� $��<$� l  � ��;�:�9�;  �:  �9  �<  #� $�$�$� l     �8�7�6�8  �7  �6  $� $�$�$� i   � �$�$�$� I      �5$��4�5 0 
parsechars 
parseChars$� $��3$� o      �2�2 	0 prefs  �3  �4  $� k     �$�$� $�$�$� l     �1$�$��1  $�   version 1.3   $� �$�$�    v e r s i o n   1 . 3$� $�$�$� l     �0�/�.�0  �/  �.  $� $�$�$� r     $�$�$� K     $�$� �-$��,�- 0 considercase considerCase$� m    �+
�+ boovtrue�,  $� o      �*�* 0 defaultprefs defaultPrefs$� $�$�$� l   �)�(�'�)  �(  �'  $� $�$�$� l   �&�%�$�&  �%  �$  $� $�$�$� Z    [$�$�$��#$� =   $�$�$� n    
$�$�$� m    
�"
�" 
pcls$� o    �!�! 	0 prefs  $� m   
 � 
�  
list$� k    ?$�$� $�$�$� Z    =$�$��$�$� ?   $�$�$� l   $���$� I   �$��
� .corecnte****       ****$� o    �� 	0 prefs  �  �  �  $� m    �� $� k    ,$�$� $�$�$� l   �$�$��  $� - ' get any parameters after the initial 3   $� �$�$� N   g e t   a n y   p a r a m e t e r s   a f t e r   t h e   i n i t i a l   3$� $��$� r    ,$�$�$� K    *$�$� �$�$�� 0 
sourcetext 
sourceTEXT$� n    $�$�$� 4    �$�
� 
cobj$� m    �� $� o    �� 	0 prefs  $� �$�$�� 0 parsestring parseString$� n    #$�$�$� 4     #�$�
� 
cobj$� m   ! "�� $� o     �� 	0 prefs  $� �$��� 0 considercase considerCase$� n   $ ($�$�$� 4   % (�$�
� 
cobj$� m   & '�� $� o   $ %�
�
 	0 prefs  �  $� o      �	�	 	0 prefs  �  �  $� r   / =$�$�$� K   / ;$�$� �$�$�� 0 
sourcetext 
sourceTEXT$� n   0 4$�$�$� 4   1 4�$�
� 
cobj$� m   2 3�� $� o   0 1�� 	0 prefs  $� �$��� 0 parsestring parseString$� n   5 9$�$�$� 4   6 9�$�
� 
cobj$� m   7 8�� $� o   5 6� �  	0 prefs  �  $� o      ���� 	0 prefs  $� $���$� l  > >��������  ��  ��  ��  $� $�$�$� >  B L$�$�$� n   B E$�$�$� m   C E��
�� 
pcls$� o   B C���� 	0 prefs  $� l  E K$�����$� n   E K$�$�$� m   I K��
�� 
pcls$� K   E I$�$� ��$����� 0 somekey someKey$� m   F G���� ��  ��  ��  $� $���$� k   O W$�$� $�$�$� l  O O��$�$���  $� x r Test by matching class to something that IS a record to avoid FileMaker namespace conflict with the term "record"   $� �$�$� �   T e s t   b y   m a t c h i n g   c l a s s   t o   s o m e t h i n g   t h a t   I S   a   r e c o r d   t o   a v o i d   F i l e M a k e r   n a m e s p a c e   c o n f l i c t   w i t h   t h e   t e r m   " r e c o r d "$� $�$�$� l  O O��������  ��  ��  $� $�$�$� R   O U��$�$�
�� .ascrerr ****      � ****$� m   S T$�$� �$�$�> T h e   p a r a m e t e r   f o r   ' p a r s e C h a r s ( ) '   s h o u l d   b e   a   r e c o r d   o r   a t   l e a s t   a   l i s t .   W r a p   t h e   p a r a m e t e r ( s )   i n   c u r l y   b r a c k e t s   f o r   e a s y   u p g r a d e   t o   ' p a r s e C h a r s ( )   v e r s i o n   1 . 3 .  $� ��$���
�� 
errn$� m   Q R���� ��  $� $���$� l  V V��������  ��  ��  ��  ��  �#  $� $�$�$� l  \ \��������  ��  ��  $� $�$�$� l  \ \��������  ��  ��  $� $�$�$� r   \ a$�% $� b   \ _%%% o   \ ]���� 	0 prefs  % o   ] ^���� 0 defaultprefs defaultPrefs%  o      ���� 	0 prefs  $� %%% l  b b��������  ��  ��  % %%% l  b b��������  ��  ��  % %%% r   b g%	%
%	 n   b e%%% o   c e���� 0 
sourcetext 
sourceTEXT% o   b c���� 	0 prefs  %
 o      ���� 0 
sourcetext 
sourceTEXT% %%% r   h m%%% n   h k%%% o   i k���� 0 parsestring parseString% o   h i���� 	0 prefs  % o      ���� 0 parsestring parseString% %%% r   n s%%% n   n q%%% o   o q���� 0 considercase considerCase% o   n o���� 	0 prefs  % o      ���� 0 considercase considerCase% %%% l  t t��������  ��  ��  % %%% l  t t��������  ��  ��  % %%% r   t y%% % n  t w%!%"%! 1   u w��
�� 
txdl%" 1   t u��
�� 
ascr%  o      ���� 0 	olddelims 	oldDelims% %#��%# Q   z �%$%%%&%$ k   } �%'%' %(%)%( r   } �%*%+%* l  } �%,����%, J   } �%-%- %.��%. c   } �%/%0%/ o   } ~���� 0 parsestring parseString%0 m   ~ �
� 
TEXT��  ��  ��  %+ n     %1%2%1 1   � ��
� 
txdl%2 1   � ��
� 
ascr%) %3%4%3 l  � �����  �  �  %4 %5%6%5 Z   � �%7%8�%9%7 o   � ��� 0 considercase considerCase%8 P   � �%:%;�%: r   � �%<%=%< n   � �%>%?%> 2   � ��
� 
citm%? o   � ��� 0 
sourcetext 
sourceTEXT%= l     %@��%@ o      �� 0 
parsedlist 
parsedList�  �  %; ��
� conscase�  �  �  %9 P   � �%A�%B%A r   � �%C%D%C n   � �%E%F%E 2   � ��
� 
citm%F o   � ��� 0 
sourcetext 
sourceTEXT%D l     %G��%G o      �� 0 
parsedlist 
parsedList�  �  �  %B ��
� conscase�  %6 %H%I%H l  � �����  �  �  %I %J%K%J r   � �%L%M%L o   � ��� 0 	olddelims 	oldDelims%M n     %N%O%N 1   � ��
� 
txdl%O 1   � ��
� 
ascr%K %P�%P L   � �%Q%Q o   � ��� 0 
parsedlist 
parsedList�  %% R      �%R%S
� .ascrerr ****      � ****%R o      �� 0 errmsg errMsg%S �%T�
� 
errn%T o      �� 0 errnum errNum�  %& k   � �%U%U %V%W%V Q   � �%X%Y�%X r   � �%Z%[%Z o   � ��� 0 	olddelims 	oldDelims%[ n     %\%]%\ 1   � ��
� 
txdl%] 1   � ��
� 
ascr%Y R      ���
� .ascrerr ****      � ****�  �  �  %W %^�%^ R   � ��%_%`
� .ascrerr ****      � ****%_ b   � �%a%b%a m   � �%c%c �%d%d : E R R O R :   p a r s e C h a r s ( )   h a n d l e r :  %b o   � ��� 0 errmsg errMsg%` �%e�
� 
errn%e o   � ��� 0 errnum errNum�  �  ��  $� %f%g%f l     ����  �  �  %g %h%i%h i   � �%j%k%j I      �%l�� 0 replacesimple replaceSimple%l %m�%m o      �� 	0 prefs  �  �  %k k     �%n%n %o%p%o l     �%q%r�  %q   version 1.4   %r �%s%s    v e r s i o n   1 . 4%p %t%u%t l     ����  �  �  %u %v%w%v r     %x%y%x K     %z%z �%{�� 0 considercase considerCase%{ m    �
� boovtrue�  %y o      �� 0 defaultprefs defaultPrefs%w %|%}%| l   �~�}�|�~  �}  �|  %} %~%%~ Z    e%�%�%��{%� =   %�%�%� n    
%�%�%� m    
�z
�z 
pcls%� o    �y�y 	0 prefs  %� m   
 �x
�x 
list%� k    I%�%� %�%�%� Z    G%�%��w%�%� ?   %�%�%� l   %��v�u%� I   �t%��s
�t .corecnte****       ****%� o    �r�r 	0 prefs  �s  �v  �u  %� m    �q�q %� k    1%�%� %�%�%� l   �p%�%��p  %� - ' get any parameters after the initial 3   %� �%�%� N   g e t   a n y   p a r a m e t e r s   a f t e r   t h e   i n i t i a l   3%� %��o%� r    1%�%�%� K    /%�%� �n%�%��n 0 
sourcetext 
sourceTEXT%� n    %�%�%� 4    �m%�
�m 
cobj%� m    �l�l %� o    �k�k 	0 prefs  %� �j%�%��j 0 oldchars oldChars%� n    #%�%�%� 4     #�i%�
�i 
cobj%� m   ! "�h�h %� o     �g�g 	0 prefs  %� �f%�%��f 0 newchars newChars%� n   $ (%�%�%� 4   % (�e%�
�e 
cobj%� m   & '�d�d %� o   $ %�c�c 	0 prefs  %� �b%��a�b 0 considercase considerCase%� n   ) -%�%�%� 4   * -�`%�
�` 
cobj%� m   + ,�_�_ %� o   ) *�^�^ 	0 prefs  �a  %� o      �]�] 	0 prefs  �o  �w  %� r   4 G%�%�%� K   4 E%�%� �\%�%��\ 0 
sourcetext 
sourceTEXT%� n   5 9%�%�%� 4   6 9�[%�
�[ 
cobj%� m   7 8�Z�Z %� o   5 6�Y�Y 	0 prefs  %� �X%�%��X 0 oldchars oldChars%� n   : >%�%�%� 4   ; >�W%�
�W 
cobj%� m   < =�V�V %� o   : ;�U�U 	0 prefs  %� �T%��S�T 0 newchars newChars%� n   ? C%�%�%� 4   @ C�R%�
�R 
cobj%� m   A B�Q�Q %� o   ? @�P�P 	0 prefs  �S  %� o      �O�O 	0 prefs  %� %��N%� l  H H�M�L�K�M  �L  �K  �N  %� %�%�%� >  L V%�%�%� n   L O%�%�%� m   M O�J
�J 
pcls%� o   L M�I�I 	0 prefs  %� l  O U%��H�G%� n   O U%�%�%� m   S U�F
�F 
pcls%� K   O S%�%� �E%��D�E 0 somekey someKey%� m   P Q�C�C �D  �H  �G  %� %��B%� k   Y a%�%� %�%�%� l  Y Y�A%�%��A  %� x r Test by matching class to something that IS a record to avoid FileMaker namespace conflict with the term "record"   %� �%�%� �   T e s t   b y   m a t c h i n g   c l a s s   t o   s o m e t h i n g   t h a t   I S   a   r e c o r d   t o   a v o i d   F i l e M a k e r   n a m e s p a c e   c o n f l i c t   w i t h   t h e   t e r m   " r e c o r d "%� %�%�%� l  Y Y�@�?�>�@  �?  �>  %� %�%�%� R   Y _�=%�%�
�= .ascrerr ****      � ****%� m   ] ^%�%� �%�%�J T h e   p a r a m e t e r   f o r   ' r e p l a c e S i m p l e ( ) '   s h o u l d   b e   a   r e c o r d   o r   a t   l e a s t   a   l i s t .   W r a p   t h e   p a r a m e t e r ( s )   i n   c u r l y   b r a c k e t s   f o r   e a s y   u p g r a d e   t o   ' r e p l a c e S i m p l e ( )   v e r s i o n   1 . 3 .  %� �<%��;
�< 
errn%� m   [ \�:�: �;  %� %��9%� l  ` `�8�7�6�8  �7  �6  �9  �B  �{  % %�%�%� l  f f�5�4�3�5  �4  �3  %� %�%�%� l  f f�2�1�0�2  �1  �0  %� %�%�%� r   f k%�%�%� b   f i%�%�%� o   f g�/�/ 	0 prefs  %� o   g h�.�. 0 defaultprefs defaultPrefs%� o      �-�- 	0 prefs  %� %�%�%� l  l l�,�+�*�,  �+  �*  %� %�%�%� l  l l�)�(�'�)  �(  �'  %� %�%�%� r   l q%�%�%� n   l o%�%�%� o   m o�&�& 0 considercase considerCase%� o   l m�%�% 	0 prefs  %� o      �$�$ 0 considercase considerCase%� %�%�%� r   r w%�%�%� n   r u%�%�%� o   s u�#�# 0 
sourcetext 
sourceTEXT%� o   r s�"�" 	0 prefs  %� o      �!�! 0 
sourcetext 
sourceTEXT%� %�%�%� r   x }%�%�%� n   x {%�%�%� o   y {� �  0 oldchars oldChars%� o   x y�� 	0 prefs  %� o      �� 0 oldchars oldChars%� %�%�%� r   ~ �%�%�%� n   ~ �& &&  o    ��� 0 newchars newChars& o   ~ �� 	0 prefs  %� o      �� 0 newchars newChars%� &&& l  � �����  �  �  & &&& r   � �&&& c   � �&&	& o   � ��� 0 
sourcetext 
sourceTEXT&	 m   � ��
� 
TEXT& o      �� 0 
sourcetext 
sourceTEXT& &
&&
 l  � �����  �  �  & &&& r   � �&&& n  � �&&& 1   � ��
� 
txdl& 1   � ��
� 
ascr& o      �� 0 	olddelims 	oldDelims& &&& r   � �&&& l  � �&��& o   � ��� 0 oldchars oldChars�  �  & n     &&& 1   � ��
� 
txdl& 1   � ��

�
 
ascr& &&& Z   � �&&�	&& o   � ��� 0 considercase considerCase& P   � �&&�& k   � �& &  &!&"&! r   � �&#&$&# n   � �&%&&&% 2   � ��
� 
citm&& o   � ��� 0 
sourcetext 
sourceTEXT&$ l     &'��&' o      �� 0 
parsedlist 
parsedList�  �  &" &(&)&( r   � �&*&+&* l  � �&,�� &, J   � �&-&- &.��&. l  � �&/����&/ c   � �&0&1&0 o   � ����� 0 newchars newChars&1 m   � ���
�� 
TEXT��  ��  ��  �  �   &+ n     &2&3&2 1   � ���
�� 
txdl&3 1   � ���
�� 
ascr&) &4��&4 r   � �&5&6&5 c   � �&7&8&7 l  � �&9����&9 o   � ����� 0 
parsedlist 
parsedList��  ��  &8 m   � ���
�� 
TEXT&6 l     &:����&: o      ���� 0 newtext newText��  ��  ��  & ����
�� conscase��  �  �	  & P   � �&;��&<&; k   � �&=&= &>&?&> r   � �&@&A&@ n   � �&B&C&B 2   � ���
�� 
citm&C o   � ����� 0 
sourcetext 
sourceTEXT&A l     &D����&D o      ���� 0 
parsedlist 
parsedList��  ��  &? &E&F&E r   � �&G&H&G l  � �&I����&I J   � �&J&J &K��&K l  � �&L����&L c   � �&M&N&M o   � ����� 0 newchars newChars&N m   � ���
�� 
TEXT��  ��  ��  ��  ��  &H n     &O&P&O 1   � ���
�� 
txdl&P 1   � ���
�� 
ascr&F &Q��&Q r   � �&R&S&R c   � �&T&U&T l  � �&V����&V o   � ����� 0 
parsedlist 
parsedList��  ��  &U m   � ���
�� 
TEXT&S l     &W����&W o      ���� 0 newtext newText��  ��  ��  ��  &< ����
�� conscase��  & &X&Y&X r   � �&Z&[&Z o   � ����� 0 	olddelims 	oldDelims&[ n     &\&]&\ 1   � ���
�� 
txdl&] 1   � ���
�� 
ascr&Y &^&_&^ L   � �&`&` o   � ����� 0 newtext newText&_ &a��&a l  � ���������  ��  ��  ��  %i &b&c&b l     ��������  ��  ��  &c &d&e&d i   � �&f&g&f I      ��&h���� 0 unparsechars unParseChars&h &i&j&i o      ���� 0 thislist thisList&j &k��&k o      ���� 0 newdelim newDelim��  ��  &g k     C&l&l &m&n&m l     ��&o&p��  &o   version 1.2   &p �&q&q    v e r s i o n   1 . 2&n &r&s&r l     ��������  ��  ��  &s &t&u&t r     &v&w&v n    &x&y&x 1    ��
�� 
txdl&y 1     ��
�� 
ascr&w o      �� 0 	olddelims 	oldDelims&u &z�&z Q    C&{&|&}&{ k   	 !&~&~ &&�& r   	 &�&�&� l  	 &���&� J   	 &�&� &��&� c   	 &�&�&� o   	 
�� 0 newdelim newDelim&� m   
 �
� 
TEXT�  �  �  &� n     &�&�&� 1    �
� 
txdl&� 1    �
� 
ascr&� &�&�&� r    &�&�&� c    &�&�&� o    �� 0 thislist thisList&� m    �
� 
TEXT&� l     &���&� o      �� 0 unparsedtext unparsedText�  �  &� &�&�&� r    &�&�&� o    �� 0 	olddelims 	oldDelims&� n     &�&�&� 1    �
� 
txdl&� 1    �
� 
ascr&� &��&� L    !&�&� o     �� 0 unparsedtext unparsedText�  &| R      �&�&�
� .ascrerr ****      � ****&� o      �� 0 errmsg errMsg&� �&��
� 
errn&� o      �� 0 errnum errNum�  &} k   ) C&�&� &�&�&� Q   ) :&�&��&� r   , 1&�&�&� o   , -�� 0 	olddelims 	oldDelims&� n     &�&�&� 1   . 0�
� 
txdl&� 1   - .�
� 
ascr&� R      ���
� .ascrerr ****      � ****�  �  �  &� &��&� R   ; C�&�&�
� .ascrerr ****      � ****&� b   ? B&�&�&� m   ? @&�&� �&�&� > E R R O R :   u n P a r s e C h a r s ( )   h a n d l e r :  &� o   @ A�� 0 errmsg errMsg&� �&��
� 
errn&� o   = >�� 0 errnum errNum�  �  �  &e &��&� l     ����  �  �  �       6�&�� (&�&�&�&�&�&�&�&�&�&�&�&�&�&�&�&�&�&�&�&�&�&�&�&�&�&�&�&�&�&�&�&�&�&�&�&�&�&�&�&�&�&�&�&�&�&�&�&�&�&��  &� 4�����������������������~�}�|�{�z�y�x�w�v�u�t�s�r�q�p�o�n�m�l�k�j�i�h�g�f�e�d�c�b�a� 0 	debugmode 	DebugMode� 0 
scriptname 
ScriptName� &0 clickcommandposix clickCommandPosix� $0 encodecharforurl encodeCharForURL� $0 encodetextforurl encodeTextForURL� 0 
getfromfmp 
getFromFMP� 0 	sendtofmp 	sendToFMP� 40 displayfilemakerdatabase displayFileMakerDatabase� 20 ensurefilemakerdatabase ensureFileMakerDatabase� .0 openfilemakerdatabase openFileMakerDatabase� 0 sfr_dictget SFR_DictGet� 0 sfr_dictitem SFR_DictItem� 0 
sfr_escape 
SFR_Escape� 0 sfr_unescape SFR_Unescape� 60 fmgui_managedb_field_edit fmGUI_ManageDb_Field_Edit� :0 fmgui_managedb_field_select fmGUI_ManageDb_Field_Select� >0 fmgui_managedb_fieldlistfocus fmGUI_ManageDb_FieldListFocus� @0 fmgui_managedb_fieldspicktable fmGUI_ManageDb_FieldsPickTable� 40 fmgui_managedb_fieldstab fmGUI_ManageDb_FieldsTab� *0 fmgui_managedb_open fmGUI_ManageDb_Open� B0 fmgui_managedb_relationshipstab fmGUI_ManageDb_RelationshipsTab� *0 fmgui_managedb_save fmGUI_ManageDB_Save�~ &0 fmgui_checkboxset fmGUI_CheckboxSet�} B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow�| :0 fmgui_popup_selectbycommand fmGUI_Popup_SelectByCommand�{  0 fmgui_popupset fmGUI_PopupSet�z (0 fmgui_textfieldset fmGUI_TextFieldSet�y (0 fmgui_appfrontmost fmGUI_AppFrontMost�x 00 fmgui_dataviewer_close fmGUI_DataViewer_Close�w .0 fmgui_inspector_close fmGUI_Inspector_Close�v 00 fmgui_inspector_ensure fmGUI_Inspector_Ensure�u 20 fmgui_modeensure_browse fmGUI_ModeEnsure_Browse�t .0 fmgui_modeensure_find fmGUI_ModeEnsure_Find�s 20 fmgui_modeensure_layout fmGUI_ModeEnsure_Layout�r $0 fmgui_modeselect fmGUI_ModeSelect�q (0 fmgui_window_close fmGUI_Window_Close�p "0 windowwaituntil windowWaitUntil�o 20 windowwaituntil_frontis windowWaitUntil_FrontIS�n 0 listcontains listContains�m $0 listuniquevalues listUniqueValues�l 0 sort  �k 0 
logconsole 
logConsole�j 0 loglevel logLEVEL�i 0 logmain logMAIN�h 0 clickatcoords clickAtCoords�g *0 clickobjectbycoords clickObjectByCoords�f  0 coercetostring coerceToString�e 0 gettextbefore getTextBefore�d  0 gettextbetween getTextBetween�c 0 
parsechars 
parseChars�b 0 replacesimple replaceSimple�a 0 unparsechars unParseChars
� boovfals&� �&�&� � / U s e r s / e s h a g d a r / C o d e : a p p l e s c r i p t - f m - h e l p e r : v e n d o r : c l i c l i c k : c l i c l i c k&� �` @�_�^&�&��]�` $0 encodecharforurl encodeCharForURL�_ �\&��\ &�  �[�[ 0 	this_char  �^  &� �Z�Y�X�W�V�Z 0 	this_char  �Y 0 	ascii_num 	ASCII_num�X 0 hex_list  �W 0 x  �V 0 y  &� �U Z ^ b f j n r v z ~ � � � � � ��T�S ��R
�U .sysoctonshor       TEXT�T 
�S 
cobj
�R 
TEXT�] L�j  E�O���������������a a vE�O�a �a "k/E�O�a �a #k/E�Oa �%�%a &&� �Q ��P�O&�&��N�Q $0 encodetextforurl encodeTextForURL�P �M&��M &�  �L�K�J�L 0 	this_text  �K 0 encode_url_a encode_URL_A�J 0 encode_url_b encode_URL_B�O  &� 	�I�H�G�F�E�D�C�B�A�I 0 	this_text  �H 0 encode_url_a encode_URL_A�G 0 encode_url_b encode_URL_B�F 0 standard_characters  �E 0 url_a_chars URL_A_chars�D 0 url_b_chars URL_B_chars�C 0 acceptable_characters  �B 0 encoded_text  �A 0 	this_char  &� 	 � � ��@�?�>�=�<
�@ 
kocl
�? 
cobj
�> .corecnte****       ****�= $0 encodecharforurl encodeCharForURL
�< 
TEXT�N g�E�O�E�O�E�O�E�O�f  
��%E�Y hO�f  
��%E�Y hO�E�O .�[��l kh �� 
��%E�Y �*�k+ %�&E�[OY��O�&� �;<�:�9&�&��8�; 0 
getfromfmp 
getFromFMP�: �7&��7 &�  �6�6 	0 prefs  �9  &� 
�5�4�3�2�1�0�/�.�-�,�5 	0 prefs  �4 0 fmtype fmType�3 0 
astransfer 
asTransfer�2 0 fmpname fmpName�1 0 fmpactivename fmpActiveName�0 0 begintellfm beginTellFM�/ 0 	endtellfm 	endTellFM�. 0 	codetoget 	codeToGet�- 0 
sendsource 
sendSource�, 0 	inputdata 	inputData&� �+�*�)Yag�(��'&��&����%����������$�+ 0 fmtype fmType�*  �)  
�( .earsffdralis        afdr
�' 
pcap&�  
�& 
dnam
�% 
ret 
�$ .sysodsct****        scpt�8 � 
��,E�W 
X  �E�O�E�O�E�O)j � Y� *�k/�[�,\Z�>1�,E�UO��  �%�%�%E�Y %��  a �%E�Y �a   a �%E�Y hO�a %E�Y a E�Oa E�Oa �%a %E�O��%�%E�O�j E�O�&� �#��"�!&�&�� �# 0 	sendtofmp 	sendToFMP�" �&�� &�  �� 0 somedata someData�!  &� ������������� 0 somedata someData� 0 fmtype fmType� 0 
astransfer 
asTransfer� 0 fmpname fmpName� 0 fmpactivename fmpActiveName� 0 begintellfm beginTellFM� 0 	endtellfm 	endTellFM� "0 somedatacleaned someDataCleaned� 0 	olddelims 	oldDelims� 0 	backslash  � 0 	codetoset 	codeToSet� 0 
sendsource 
sendSource&� #�����8�&��@JL�
RZ`gpw|�	������������ 0 fmtype fmType� 0 somedata someData�  �  
� .earsffdralis        afdr
� 
pcap
� 
dnam
�
 
ret 
�	 
TEXT
� 
ascr
� 
txdl� \
� .sysontocTEXT       shor
� 
citm
� .sysodsct****        scpt� * ��,E�O��,E�W 
X  �E�O�E�O�E�O)j � [� *�k/�[�,\Z�>1�,E�UO��  ��%�%�%E�Y '�a   a �%E�Y �a   a �%E�Y hO�a %E�Y a E�Oa E�O�a &E�O_ a ,E�Oa j E�O�_ a ,FO�a -E�O��%_ a ,FO�a &E�Oa _ a ,FO�a -E�O�a %_ a ,FO�a &E�O�_ a ,FOa �%a  %�%a !%E�O��%�%E�O�j "OP&� ��� &�&���� 40 displayfilemakerdatabase displayFileMakerDatabase� ��&��� &�  ���� 	0 prefs  �   &� �������������������������� 	0 prefs  �� 0 defaultprefs defaultPrefs�� 0 dbname dbName�� ,0 waitsavetotalseconds waitSaveTotalSeconds�� .0 waitcycledelayseconds waitCycleDelaySeconds�� 0 waitcyclemax waitCycleMax�� 0 fmappbundleid fmAppBundleID�� 0 doclist docList�� 0 errmsg errMsg�� 0 errnum errNum�� 0 onedoc oneDoc�� 0 docname docName&� 0��&����������?������������ptx�����������&����������������������������������������6UW�� 0 	fmapptype 	fmAppType�� .0 waitcycledelayseconds waitCycleDelaySeconds�� �� ,0 waitsavetotalseconds waitSaveTotalSeconds
�� 
min �� ��  0 coercetostring coerceToString�� 0 
logconsole 
logConsole�� 0 dbname dbName
�� 
dire
�� olierndD
�� .sysorondlong        doub
�� 
null
�� 
capp
�� kfrmID  
�� 
docu�� 0 errmsg errMsg&� ������
�� 
errn�� 0 errnum errNum��  ����
�� 
errn
�� .sysodelanull��� ��� nmbr
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
pnam
�� 
cha 
�� 
rvse
�� 
TEXT
�� 
rslt
�� 
ctxt
�� 
psof
�� 
psin�� 
�� .sysooffslong    ��� null
�� .ascrcmnt****      � ****
�� .miscmvisnull���    obj ���������l� �E�O��%E�Ob    *b  �*�k+ %l+ 	Y hO��,E�O��,E�O��,E�O��!��l E�O��,�  �E�Y a E�O b�kha E�O -a Z*a �a 0 	*a -E�UO�a  Y hOPW X  �a   hY )a �la �%O�j [OY��O ߧ[a a l kh 
�a ,E�O�a  -a !,a "&O_ #[a $\[Z*a %a &a '_ #a ( )k\Zi2EO_ #a  -a !,a "&E�Ob    
�j *Y hOb    
�j *Y hOga + Q�a "&�a "&  Aa Z*a �a 0 *�j ,Ob    )b  a -)�k+ %l+ 	Y hOPUOeY hV[OY�3OfOPW X  )a �la .�%a /%�%OP&� ��`����&�&����� 20 ensurefilemakerdatabase ensureFileMakerDatabase�� ��&��� &�  ���� 	0 prefs  ��  &� �������� 	0 prefs  �� 0 dbname dbName�� 0 isdisplayed isDisplayed&� ����������������� 0 dbname dbName�� 0 	fmapptype 	fmAppType� � 40 displayfilemakerdatabase displayFileMakerDatabase� 0 
logconsole 
logConsole� .0 openfilemakerdatabase openFileMakerDatabase
� .sysodelanull��� ��� nmbr�� ���,E�O*����k+ E�Ob    *b  �%l+ Y hO� eY Zb    *b  �%l+ Y hO*�k+  5�j 
Ob    *b  �%l+ Y hO*����k+ E�O�Y f&� ����&�&��� .0 openfilemakerdatabase openFileMakerDatabase� �&�� &�  �� 	0 prefs  �  &� ������ 	0 prefs  � 0 	customurl 	customURL� 0 fmpurl fmpURL� 0 errmsg errMsg� 0 errnum errNum&� ���k��� �>A�PSc���&�� 0 dbname dbName� 0 serverip serverIP� 0 
maindbname 
mainDbName� <0 customlinkreceiverscriptname customLinkReceiverScriptName� $0 encodetextforurl encodeTextForURL� 0 replacesimple replaceSimple� 0 
logconsole 
logConsole
� .GURLGURLnull��� ��� TEXT� 0 errmsg errMsg&� ���
� 
errn� 0 errnum errNum�  � � w��,%�%E�O� `��,%�%��,%�%��,%�%)�efm+ %E�O)���mvk+ E�O)��a mvk+ E�Ob    )b  a �%l+ Y hO�j OPUOeOPW X  �OPOP&� ����&�&��� 0 sfr_dictget SFR_DictGet� �&�� &�  ��� 0 somedict someDict� 0 itemname itemName�  &� �������� 0 somedict someDict� 0 itemname itemName� 0 	keystring 	keyString� 0 	endstring 	endString� 0 	olddelims 	oldDelims� 0 
keyremoved 
keyRemoved� 0 	itemvalue 	itemValue&� 
����������� 0 
sfr_escape 
SFR_Escape
� 
ascr
� 
txdl
� 
citm� 0 sfr_unescape SFR_Unescape� Y�*�k+ %�%E�O�E�O�� �Y 3��,E�O���,FO��l/E�O�� �Y ���,FO��k/E�O���,FO*�k+ 	OP&� ����&�&��� 0 sfr_dictitem SFR_DictItem� �&�� &�  ��� 0 itemname itemName� 0 	itemvalue 	itemValue�  &� ��� 0 itemname itemName� 0 	itemvalue 	itemValue&� �� 0 
sfr_escape 
SFR_Escape� �*�k+ %�%*�k+ %�%&� �$��' '�� 0 
sfr_escape 
SFR_Escape� �'� '  �� 0 
somestring 
someString�  '  ���~� 0 
somestring 
someString�  0 escapecharlist escapeCharList�~ 0 onechar oneChar' 
6:>A�}�|�{�zX�y�} 
�| 
kocl
�{ 
cobj
�z .corecnte****       ****�y 0 replacesimple replaceSimple� 4�����vE�O $�[��l kh *���%mvk+ 	E�OP[OY��O�OP&� �xf�w�v''�u�x 0 sfr_unescape SFR_Unescape�w �t'�t '  �s�s 0 
somestring 
someString�v  ' �r�q�p�r 0 
somestring 
someString�q  0 escapecharlist escapeCharList�p 0 onechar oneChar' 
x|���o�n�m�l��k�o 
�n 
kocl
�m 
cobj
�l .corecnte****       ****�k 0 replacesimple replaceSimple�u 4�����vE�O $�[��l kh *��%�mvk+ 	E�OP[OY��O�OP&� �j��i�h''�g�j 60 fmgui_managedb_field_edit fmGUI_ManageDb_Field_Edit�i �f'�f '  �e�e 	0 prefs  �h  ' �d�c�b�a�`�_�^�]�\�[�Z�Y�X�W�V�U�T�S�R�Q�P�O�d 	0 prefs  �c 0 defaultprefs defaultPrefs�b 0 editmode editMode�a $0 fieldnowselected fieldNowSelected�` 0 changebutton changeButton�_  0 fieldtypepopup fieldTypePopup�^ *0 notevaluatecheckbox notEvaluateCheckbox�] 0 workingarea workingArea�\ .0 globalstoragecheckbox globalStorageCheckbox�[ (0 donotstorecheckbox doNotStoreCheckbox�Z &0 autoindexcheckbox autoIndexCheckbox�Y 0 datatypepopup dataTypePopup�X 0 fdsfdsf  �W 0 
menuchoice 
menuChoice�V 0 datacheckbox dataCheckbox�U .0 autoentercalccheckbox autoEnterCalcCheckbox�T 20 autoentercalccode_value autoEnterCalcCode_VALUE�S @0 overwriteexistingvaluecheckbox overwriteExistingValueCheckbox�R *0 prohibitmodcheckbox prohibitModCheckbox�Q 40 validationcalccode_value validationCalcCode_VALUE�P 0 errmsg errMsg�O 0 errnum errNum' ��N��M�L�K�J�I�H�G�F�E�D�C�B�A�@�?�>�=�<�;�:�9�8�7�6�5�4�3�2�1�0b�/`�.�-�,�+&��*x�)��(�'��&��%�$��#������"�! 
L[f� x������������	!	B�	c�	�	�	�	�	��	��	���


%
7
C
�
�
�
�
�
�
�+8<?fswz��CQ{������!�@Wnx�������$5HLOdq{�����'�I\q�����������	#)17?EMR^hvz��������������2\W����� Tt�����Yq���� 5BFI�'	x�
|�N 0 editmode editMode�M 0 	tablename 	tableName
�L 
null�K 0 	fieldname 	fieldName�J 0 altpatterns altPatterns�I 0 fieldcomment fieldComment�H 0 datatype dataType�G 0 	fieldtype 	fieldType�F 0 calccode calcCode�E &0 autoentercalccode autoEnterCalcCode�D 20 autoentercalccontexttoc autoEnterCalcContextTOC�C  0 alwaysevaluate alwaysEvaluate�B  0 calccontexttoc calcContextTOC�A 0 storageglobal storageGlobal�@ 20 storecalculationresults storeCalculationResults�? (0 storageindexchoice storageIndexChoice�> 0 	autoindex 	autoIndex�= 0 maxrepetition maxRepetition�< 0 indexlanguage indexLanguage�; 0 allowediting allowEditing�: 00 overwriteexistingvalue overwriteExistingValue�9 *0 autoenterisconstant autoEnterIsConstant�8 00 autoenteriscalculation autoEnterIsCalculation�7 &0 autoenterislookup autoEnterIsLookup�6 .0 autoenterspecialvalue autoEnterSpecialValue�5 0 
autoserial 
autoSerial�4 .0 autoenterconstantdata autoEnterConstantData�3 (0 validationcalccode validationCalcCode�2 40 validationcalccontexttoc validationCalcContextTOC�1 8�0 :0 fmgui_managedb_field_select fmGUI_ManageDb_Field_Select
�/ 
pcap�. (0 fmgui_appfrontmost fmGUI_AppFrontMost
�- 
cwin
�, 
tabg
�+ 
butT
�* 
titl
�) 
txtf�( (0 fmgui_textfieldset fmGUI_TextFieldSet
�' .prcsclicnull��� ��� uiel
�& .sysodelanull��� ��� nmbr
�% 
bool
�$ 
popB
�# 
valL
�" 
errn�! �   0 fmgui_popupset fmGUI_PopupSet� B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow
� 
pnam� 0 
windowname 
windowName� 20 windowwaituntil_frontis windowWaitUntil_FrontIS
� 
scra� 
� 
txta
� 
chbx� &0 fmgui_checkboxset fmGUI_CheckboxSet�  0 windownametest windowNameTest� 0 whichwindow whichWindow� � "0 windowwaituntil windowWaitUntil
� 
radB� *0 clickobjectbycoords clickObjectByCoords
� 
pcls� 0 autonextvalue autoNextValue� 0 autoincrement autoIncrement� 0 autogenerate autoGenerate
� 
leng� 0 errmsg errMsg'	 �	��
�	 
errn� 0 errnum errNum�  �
  0 coercetostring coerceToString�g�����������������������������a �a �a �a �a �a �a �a �a �a �a �a �a �a �a E�O��%E�O��,E�O��,� e�a ,FY hO*�k+ E�O� fY hOa  �*a !a "/�)j+ #O*a $k/a %k/a &k/a '[a (,\Za )81E�O��,� 3)*a $k/a %k/a *a +/��,l+ , 
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
a �E�Y hO)�a 2a �/�l+ AOPY g�a ,a �  Z)�a Qk/a '[a (,\Za �81jl+ SO)�a Qk/a '[a (,\Za �81jl+ SO)�a Qk/a '[a D,\Za �@1jl+ SOPY hOPY hO�a ,� a�a Qk/a '[a D,\Za �@1E�O�a ,E 4)�kl+ SO�a ,�  hY )�a La �/a Na �/�a ,l+ ,Y 	)�jl+ SOPY hO�a ,� hY hO�a ,���a , )�a Qa �/jl+ SOPY�a Qa �/E�O�a 4,k )�k+ CY )�a &k/a '[a D,\Za �>1k+ CO)a Ha �lk+ JO*a $k/E�O��,a �,j  a �E^ Y 	��,E^ O)*a $k/a La M/a Nk/] l+ ,O��,� ")�a 2k/a '[a D,\Za �@1��,l+ AY hO��,� 5�a Qk/a '[a D,\Za �@1E�O��,E )�jl+ SY 	)�kl+ SY hO)�a &k/a '[a D,\Za �@1k+ CO)a Ha �a Ya �a [a �a ]k+ ^O*a $k/a %k/E�O�a ,� =�a Qk/a '[a D,\Za �@1E^ O�a ,E )] jl+ SY )] kl+ SY hOPOPY hO�a ,� =�a Qk/a '[a D,\Za �@1E^ O�a ,E )] jl+ SY )] kl+ SY hO�a �a �/j -O�a ,� �)�a &a �/k+ CO)a Ha �lk+ JO*a $k/E�O�a ,a �,j  a �E^ Y �a ,E^ O)*a $k/a La M/a Nk/] l+ ,O�a ,� $)�a 2k/a '[a D,\Za �@1�a ,l+ AY hO)�a &k/a '[a D,\Za �@1k+ CO)a Ha �a Ya �a [a �a ]k+ ^O*a $k/a %k/E�OPY hO)*a $k/a &k/a '[a D,\Za �@1k+ CO)a Ha �a Ya �a [a �a ]k+ ^OeOPY hOeOPUUOPW "X � �)a :] la �*�k+ �%a �%] %OP&� ����'
'�� :0 fmgui_managedb_field_select fmGUI_ManageDb_Field_Select� �'� '  �� 	0 prefs  �  '
 � ���������������������������������  	0 prefs  �� 0 defaultprefs defaultPrefs��  0 testcodeheader testCodeHeader�� 0 
selectcode 
selectCode�� 0 
rowrefcode 
rowRefCode�� 0 	whosecode 	whoseCode�� *0 fieldnameobjectcode fieldNameObjectCode�� $0 betweentestscode betweenTestsCode�� &0 afteralltestscode afterAllTestsCode��  0 testcodefooter testCodeFooter�� 0 errmsg errMsg�� 0 errnum errNum�� $0 fieldnowselected fieldNowSelected�� 0 onealtpattern oneAltPattern�� 0 testlist testList�� 0 testcode testCode�� 0 
onetestrec 
oneTestRec' 4����������������������������B��@����������&���������'���������������������������� ��$�� 0 	fieldname 	fieldName
�� 
null�� 0 	tablename 	tableName�� 0 altpatterns altPatterns�� 
�� 
ret �� >0 fmgui_managedb_fieldlistfocus fmGUI_ManageDb_FieldListFocus�� @0 fmgui_managedb_fieldspicktable fmGUI_ManageDb_FieldsPickTable�� (0 fmgui_appfrontmost fmGUI_AppFrontMost
�� 
pcap
�� 
cwin
�� 
tabg
�� 
scra
�� 
tabB
�� 
crow
�� 
sttx
�� 
valL
�� .miscslctnull���     uiel�� 0 errmsg errMsg' ������
�� 
errn�� 0 errnum errNum��  ���I
�� 
errn
�� 
kocl
�� 
cobj
�� .corecnte****       ****�� 0 pattern  
�� 
pcnt�� 0 testtype testType�� 0 	testmatch 	testMatch�� 0 quotestring quoteString�� 0 unparsechars unParseChars
�� .sysodsct****        scpt��  0 coercetostring coerceToString���������E�O��%E�O��%�%�%E�O�E�O�E�O�E�O�E�O�E�O�E�O��%�%�%E�O]*jvk+ O��,� *��,k+ Y hO*j+ O Ma  @*a a / 4*a k/a k/a k/a k/a k/a [a k/a ,\Z��,81j UUOeW �X   �a ! )a "�l�Y �fE�O à�,[a #a $l %kh �a &,a ',E�O jvE�O 7�[a #a $l %kh a (] a ),%a *%)] a +,k+ ,%�6G[OY��O)���%a -%l+ .E�O��%�%�%a /%�%�%E�O��%�%E�O) �j 0UOeE�OOPW X   �a ! )a "�l�Y hOPOP[OY�QO�OPOPW X   )a "�la 1*�k+ 2%a 3%�%OP&� ��-����''���� >0 fmgui_managedb_fieldlistfocus fmGUI_ManageDb_FieldListFocus�� ��'�� '  ���� 	0 prefs  ��  ' �������� 	0 prefs  �� 0 errmsg errMsg�� 0 errnum errNum' ��e��c���������'�n�� 40 fmgui_managedb_fieldstab fmGUI_ManageDb_FieldsTab
�� 
pcap�� (0 fmgui_appfrontmost fmGUI_AppFrontMost
�� 
cwin
� 
tabg
� 
scra
� 
tabB
� 
focu� 0 errmsg errMsg' ���
� 
errn� 0 errnum errNum�  
� 
errn�� G 6*jvk+  O� $*��/ )j+ Oe*�k/�k/�k/�k/�,FOeUUOPW X 
 )�l��%OP&� �w��''�� @0 fmgui_managedb_fieldspicktable fmGUI_ManageDb_FieldsPickTable� �'� '  �� 0 basetablename baseTableName�  ' ���� 0 basetablename baseTableName� 0 errmsg errMsg� 0 errnum errNum' �����������'���� 40 fmgui_managedb_fieldstab fmGUI_ManageDb_FieldsTab
� 
pcap� (0 fmgui_appfrontmost fmGUI_AppFrontMost
� 
cwin
� 
tabg
� 
popB�  0 fmgui_popupset fmGUI_PopupSet� 0 errmsg errMsg' ���
� 
errn� 0 errnum errNum�  
� 
errn� H 3*jvk+  O� #*��/ )j+ O)*�k/�k/��/�l+ 	OeUUW X 
 )�l��%�%�%OP&� ����''�� 40 fmgui_managedb_fieldstab fmGUI_ManageDb_FieldsTab� �'� '  �� 	0 prefs  �  ' ����� 	0 prefs  � "0 fieldstabobject fieldsTabObject� 0 errmsg errMsg� 0 errnum errNum' �� ����&������'�
� *0 fmgui_managedb_open fmGUI_ManageDb_Open
� 
pcap� (0 fmgui_appfrontmost fmGUI_AppFrontMost
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
� .prcsclicnull��� ��� uiel� 0 errmsg errMsg' ���
� 
errn� 0 errnum errNum�  
� 
errn� ^ K*jvk+  O� ;*��/ 3)j+ O*�k/�k/�k/�[�,\Z�@1E�O��,k 
�j Y hOeUUW X  )�la �%OP&� ���''�� *0 fmgui_managedb_open fmGUI_ManageDb_Open� �'� '  �� 	0 prefs  �  ' ������ 	0 prefs  � *0 lookingforxdbcerror lookingForXDBCError� 0 	zoomfield 	zoomField� 0 errmsg errMsg� 0 errnum errNum' (w�~u�}�|�{>�z�yY�x�wQ&�^�v�u��t��s����r�q�p�o�n�m?�l�k�j�i'�h
�~ 
pcap�} (0 fmgui_appfrontmost fmGUI_AppFrontMost
�| 
cwin
�{ 
pnam
�z 
mbar
�y 
mbri
�x 
menE
�w 
menI
�v .prcsclicnull��� ��� uiel
�u .sysodelanull��� ��� nmbr
�t 
butT�s B0 fmgui_managedb_relationshipstab fmGUI_ManageDb_RelationshipsTab
�r 
faal
�q eMdsKcmd
�p .prcskprsnull���     ctxt
�o 
tabg
�n 
txtf
�m 
focu
�l 
valL
�k 
scra
�j 
scrb�i 0 errmsg errMsg' �g�f�e
�g 
errn�f 0 errnum errNum�e  
�h 
errn�����*��/�)j+ O*�k/�,� eYs*�k/��/�k/��/�k/�k/�[�,\Z�>1j Okj OeE�O ;h�*�k/�,a  #*�k/a k/�[�,\Za 81j Okj Y fE�[OY��O)jvk+ Okj OeE�O ;h�*�k/�,a  #*�k/a k/�[�,\Za 81j Okj Y fE�[OY��Oa a a l Okj OeE�O 2h�*�k/�,a  *�k/a a /j Okj Y fE�[OY��O*�k/a k/a k/E�Oe�a ,FOa  �a !,FOe*�k/a k/a "k/a ,FOj*�k/a k/a "k/a #k/a !,FOj*�k/a k/a "k/a #l/a !,FOeUUW X $ %)a &�la '�%OP&� �d��c�b''�a�d B0 fmgui_managedb_relationshipstab fmGUI_ManageDb_RelationshipsTab�c �`' �` '   �_�_ 	0 prefs  �b  ' �^�]�\�[�^ 	0 prefs  �] "0 fieldstabobject fieldsTabObject�\ 0 errmsg errMsg�[ 0 errnum errNum' �Z��Y��X�W�V&��U��T�S�R'!�Q��Z (0 fmgui_appfrontmost fmGUI_AppFrontMost
�Y 
pcap
�X 
cwin
�W 
tabg
�V 
radB
�U 
titl
�T 
valL
�S .prcsclicnull��� ��� uiel�R 0 errmsg errMsg'! �P�O�N
�P 
errn�O 0 errnum errNum�N  
�Q 
errn�a T C*j+  O� 5*��/ -*�k/�k/�k/�[�,\Z�@1E�O��,k 
�j Y hOeUUW X  )�l�%OP&� �M��L�K'"'#�J�M *0 fmgui_managedb_save fmGUI_ManageDB_Save�L �I'$�I '$  �H�H 	0 prefs  �K  '" 	�G�F�E�D�C�B�A�@�?�G 	0 prefs  �F 0 defaultprefs defaultPrefs�E 40 managedbwindownameprefix manageDbWindowNamePrefix�D .0 waitcycledelayseconds waitCycleDelaySeconds�C ,0 waitsavetotalseconds waitSaveTotalSeconds�B 0 waitcyclemax waitCycleMax�A (0 managedbwindowname manageDbWindowName�@ 0 errmsg errMsg�? 0 errnum errNum'# !�>��=�<�;�:�9�8��7}�6�5�4�3O�2�1�0'%�/f�.p�-�,��+��*�)�(��> ,0 notinmanagedbiserror notInManageDbIsError�= 
�< <
�; 
min 
�: 
dire
�9 olierndD
�8 .sysorondlong        doub
�7 
pcap�6 (0 fmgui_appfrontmost fmGUI_AppFrontMost
�5 
cwin
�4 
pnam
�3 
butT
�2 .prcsclicnull��� ��� uiel
�1 .sysodelanull��� ��� nmbr�0 0 errmsg errMsg'% �'�&�%
�' 
errn�& 0 errnum errNum�%  
�/ 
errn�. �- 0 
windowname 
windowName�,  0 windownametest windowNameTest�+ 0 whichwindow whichWindow�* .0 waitcycledelayseconds waitCycleDelaySeconds�) 0 waitcyclemax waitCycleMax�( "0 windowwaituntil windowWaitUntil�J ��elE�O��%E�O�E�O�E�O�� E�O��!��l E�O �� �*��/ c)j+ O*�k/�,� 8 !*�k/�,E�O*�k/��/j Okj OPW X  )a �la �%Y ��,E )a a la Y eOPUO)a �a a a a a �a ��k+ Okj OeOPUOPW X  )a �la  �%OP&� �$��#�"'&''�!�$ &0 fmgui_checkboxset fmGUI_CheckboxSet�# � '(�  '(  ���  0 checkboxobject checkboxObject� 0 checkboxvalue checkboxValue�"  '& �����  0 checkboxobject checkboxObject� 0 checkboxvalue checkboxValue� 0 errmsg errMsg� 0 errnum errNum'' 	�����')���
� 
null
� 
valL
� .prcsclicnull��� ��� uiel� 0 errmsg errMsg') ���
� 
errn� 0 errnum errNum�  
� 
errn�! :�Z %�� ��,� 
�j Y hY hOeOPW X  )�l�%�%�%&� ����'*'+�� B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow� �',� ',  �� 0 	buttonref 	buttonRef�  '* �� 0 	buttonref 	buttonRef'+  �
�
 *0 clickobjectbycoords clickObjectByCoords� �Z)�k+ OP&� �	��'-'.��	 :0 fmgui_popup_selectbycommand fmGUI_Popup_SelectByCommand� �'/� '/  �� 	0 prefs  �  '- 	���� ����������� 	0 prefs  � 0 defaultprefs defaultPrefs� 0 popupobject popupObject�  0 selectcommand selectCommand�� 0 popupchoice popupChoice�� &0 clickifalreadyset clickIfAlreadySet�� 0 mustpick mustPick�� 0 errmsg errMsg�� 0 errnum errNum'. $��������!������3����p��������������<����&���Nf~��'0����� 0 popupobject popupObject
�� 
null�� 0 popupchoice popupChoice�� 0 selectcommand selectCommand�� &0 clickifalreadyset clickIfAlreadySet�� 
�� 
pcls
�� 
cobj�� 
�� .coredoexnull���     ****
�� 
errn�� 
�� 
valL
�� .prcsclicnull��� ��� uiel
�� 
menE
�� 
menI
�� 
pnam�� 0 errmsg errMsg'0 ������
�� 
errn�� 0 errnum errNum��  ��������f�E�O��,�llv�,  ��k/��l/�E�Y hO��%E�O��,E�O��,E�O��,E�O��,E�O�Z��j  )��l�OPY�fE�O�a ,j  
eE�OPY �� 
eE�OPY ��a   �a ,� eE�Y hOPY �a   �a ,� eE�Y hOPY `�a   �a ,� eE�Y hOPY A�a   �a ,� eE�Y hOPY "�a   �a ,� eE�Y hOPY hO� ��� ��j O�a   !�a k/a k/a [a ,\Z�81j Y ~�a   #�a k/a k/a [a ,\Z�@1j OPY U�a   #�a k/a k/a [a ,\Z�>1j OPY ,�a   #�a k/a k/a [a ,\Z�?1j OPY hOPY hY hOeOPW X   )��la !�%a "%�%a #%�%&� �������'1'2����  0 fmgui_popupset fmGUI_PopupSet�� ��'3�� '3  ������ 0 popupobject popupObject�� 0 popupchoice popupChoice��  '1 ���������� 0 popupobject popupObject�� 0 popupchoice popupChoice�� 0 errmsg errMsg�� 0 errnum errNum'2 �������������'4������ 0 popupobject popupObject�� 0 popupchoice popupChoice�� �� :0 fmgui_popup_selectbycommand fmGUI_Popup_SelectByCommand
�� 
rslt�� 0 errmsg errMsg'4 ������
�� 
errn�� 0 errnum errNum��  
�� 
errn�� +�Z *���k+ O�EOPW X  )�l�%�%�%&� �������'5'6���� (0 fmgui_textfieldset fmGUI_TextFieldSet�� ��'7�� '7  ������ "0 textfieldobject textfieldObject��  0 textfieldvalue textfieldValue��  '5 ���������� "0 textfieldobject textfieldObject��  0 textfieldvalue textfieldValue�� 0 errmsg errMsg�� 0 errnum errNum'6 	���������'8��,.
�� 
null
�� 
valL
�� 
focu�� 0 errmsg errMsg'8 ����
�� 
errn� 0 errnum errNum�  
�� 
errn�� A�Z ,�� ��,� e��,FO���,FY fY hOeOPW X  )�l�%�%�%&� �6��'9':�� (0 fmgui_appfrontmost fmGUI_AppFrontMost�  �  '9  ': 
n�l����_��
� 
pcap
� 
pisf
� .sysodelanull��� ��� nmbr
� 
cwin
� 
pnam
� 
butT
� .prcsclicnull��� ��� uiel� F� B*��/ :*�,e 1e*�,FOkj O*�k/�,�  *�k/�k/j 	Okj Y hY hUU&� �t��';'<�� 00 fmgui_dataviewer_close fmGUI_DataViewer_Close�  �  ';  '< �����&�������
� 
pcap� (0 fmgui_appfrontmost fmGUI_AppFrontMost
� 
cwin
� 
pnam
� 
butT
� .prcsclicnull��� ��� uiel�  �  � 4� 0*��/ ()j+ O *�k/�[�,\Z�81�k/j 	W X 
 hUU&� ����'='>�� .0 fmgui_inspector_close fmGUI_Inspector_Close�  �  '=  '> �����&����������
� 
pcap� (0 fmgui_appfrontmost fmGUI_AppFrontMost
� 
cwin
� 
pnam
� 
pidx�  �  
� 
butT
� .prcsclicnull��� ��� uiel� s� o*��/ g)j+ O k*�k/�[�,\Z�81�,FW X 	 
hO *�k/�[�,\Z�81�k/j W X 	 
hO *�k/�[�,\Z�81�k/j W X 	 
hUU&� ����'?'@�� 00 fmgui_inspector_ensure fmGUI_Inspector_Ensure�  �  '? ��� 0 errmsg errMsg� 0 errnum errNum'@ �6�4��&�����*��/��'A�>� 20 fmgui_modeensure_layout fmGUI_ModeEnsure_Layout
� 
pcap� (0 fmgui_appfrontmost fmGUI_AppFrontMost
� 
cwin
� 
pnam
� .coredoexnull���     ****
� 
mbar
� 
mbri
� 
menE
� 
menI
� .prcsclicnull��� ��� uiel� 0 errmsg errMsg'A ���
� 
errn� 0 errnum errNum�  
� 
errn� i T*j+  O� F*��/ >)j+ O*�k/�[�,\Z�@1j 	 *�k/��/�k/�k/�[�,\Z�81j Y hOeUUW X  )a �la �%OP&� �G��'B'C�� 20 fmgui_modeensure_browse fmGUI_ModeEnsure_Browse�  �  'B ��~� 0 errmsg errMsg�~ 0 errnum errNum'C Z�}�|'D�{d�} $0 fmgui_modeselect fmGUI_ModeSelect�| 0 errmsg errMsg'D �z�y�x
�z 
errn�y 0 errnum errNum�x  
�{ 
errn�  *�k+ OPW X  )�l�%OP&� �wo�v�u'E'F�t�w .0 fmgui_modeensure_find fmGUI_ModeEnsure_Find�v  �u  'E �s�r�s 0 errmsg errMsg�r 0 errnum errNum'F ��q�p'G�o��q $0 fmgui_modeselect fmGUI_ModeSelect�p 0 errmsg errMsg'G �n�m�l
�n 
errn�m 0 errnum errNum�l  
�o 
errn�t  *�k+ OPW X  )�l�%OP&� �k��j�i'H'I�h�k 20 fmgui_modeensure_layout fmGUI_ModeEnsure_Layout�j  �i  'H �g�f�g 0 errmsg errMsg�f 0 errnum errNum'I ��e�d'J�c��e $0 fmgui_modeselect fmGUI_ModeSelect�d 0 errmsg errMsg'J �b�a�`
�b 
errn�a 0 errnum errNum�`  
�c 
errn�h  *�k+ OPW X  )�l�%OP&� �_��^�]'K'L�\�_ $0 fmgui_modeselect fmGUI_ModeSelect�^ �['M�[ 'M  �Z�Z 0 modetoselect modeToSelect�]  'K �Y�X�W�V�U�T�S�R�Y 0 modetoselect modeToSelect�X 0 
modewindow 
modeWindow�W "0 modecontentarea modeContentArea�V *0 modecontentareadesc modeContentAreaDesc�U 0 currentmode currentMode�T 0 menuitemname menuItemName�S 0 errmsg errMsg�R 0 errnum errNum'L ,�Q*�P�O�N�M&��L��K�J�I�H �G�F�E�D'N�C8:
�Q 
pcap�P (0 fmgui_appfrontmost fmGUI_AppFrontMost�O .0 fmgui_inspector_close fmGUI_Inspector_Close
�N 
cwin
�M 
sgrp
�L 
desc
�K 
cwor
�J .sysodelanull��� ��� nmbr
�I 
mbar
�H 
mbri
�G 
menE
�F 
menI
�E .prcsclicnull��� ��� uiel�D 0 errmsg errMsg'N �B�A�@
�B 
errn�A 0 errnum errNum�@  
�C 
errn�\ � t� l*��/ d)j+ O)j+ O*�k/E�O��k/�[�,\Z�?1E�O��,E�O��k/E�O�� (�j O��%E�O*�k/�a /a k/a �/j Y hOeOPUUW X  )a �la �%a %�%&� �?B�>�='O'P�<�? (0 fmgui_window_close fmGUI_Window_Close�> �;'Q�; 'Q  �:�:  0 somewindowname someWindowName�=  'O �9�9  0 somewindowname someWindowName'P �8Z�7�6�5
�8 
capp
�7 kfrmID  
�6 
cwin
�5 .coreclosnull���    obj �< )���0 *�/j OPUOeOP&� �4g�3�2'R'S�1�4 "0 windowwaituntil windowWaitUntil�3 �0'T�0 'T  �/�/ 	0 prefs  �2  'R �.�-�,�+�*�)�(�'�. 	0 prefs  �- 0 defaultprefs defaultPrefs�, 0 
windowname 
windowName�+  0 windownametest windowNameTest�* 0 whichwindow whichWindow�) 0 checkresult checkResult�( "0 windownamecheck windowNameCheck�' 0 windowindex windowIndex'S �&�%�${�#�"��!� ������������&7HZky��& 0 
windowname 
windowName
�% 
null�$  0 windownametest windowNameTest�# 0 whichwindow whichWindow�" .0 waitcycledelayseconds waitCycleDelaySeconds�! 0 waitcyclemax waitCycleMax�  � 

� 
pcap
� 
cwin
� 
pnam
� 
nmbr
� .sysodelanull��� ��� nmbr�1D�����������E�O��%E�O��,E�O��,E�O��,E�OfE�O��,Ekh� H��  *��/�-a ,E�Y 3�a   *�a /�k/a ,E�Y �a &E�O*�a /�/a ,E�UO�a   ��E�OPY ��a   ��E�OPY ��a   �� E�OPY o�a   �� E�OPY ]�a   ��E�OPY K�a   ��E�OPY 8�a   ��E�OPY &�a   ��E�Y �a   ��E�OPY hO� Y hO��,j OP[OY��O�OP&� ����'U'V�� 20 windowwaituntil_frontis windowWaitUntil_FrontIS� �'W� 'W  �� 	0 prefs  �  'U ��� 	0 prefs  � 0 defaultprefs defaultPrefs'V �����������
�	� 0 
windowname 
windowName
� 
null�  0 windownametest windowNameTest� 0 whichwindow whichWindow� .0 waitcycledelayseconds waitCycleDelaySeconds� 0 waitcyclemax waitCycleMax� d�
 
�	 "0 windowwaituntil windowWaitUntil� �����������E�O��%E�O*�k+ OP&� ����'X'Y�� 0 listcontains listContains� �'Z� 'Z  ��� 0 somelist someList� "0 somecomplexitem someComplexItem�  'X �� ��� 0 somelist someList�  "0 somecomplexitem someComplexItem�� 0 oneitem oneItem'Y ��������
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
pcnt� 1 *�[��l kh ��,E�O��  	eOPY hOP[OY��OfOP&� �� ����'['\���� $0 listuniquevalues listUniqueValues�� ��']�� ']  ���� 	0 prefs  ��  '[ ���������� 	0 prefs  �� 0 	inputlist 	inputList�� 0 
uniquelist 
uniqueList�� 0 oneitem oneItem'\ ������������ 0 	inputlist 	inputList
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
pcnt�� ;��,E�OjvE�O )�[��l kh ��,E�O�� 	��6GY h[OY��O�OP&� �� C����'^'_���� 0 sort  �� ��'`�� '`  ���� 0 oldlist oldList��  '^ ������������ 0 oldlist oldList�� 0 od  �� 0 	textblock 	textBlock�� 0 sortedblock sortedBlock�� 0 
sortedlist 
sortedList'_ ������������ n�� r������
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
citm�� E��,�j lvE[�k/E�Z[�l/��,FZO��&E�O��,%�%j 	E�O���,FO��-E�O���,FO�&� �� �����'a'b���� 0 
logconsole 
logConsole�� ��'c�� 'c  ������ 0 processname processName�� 0 
consolemsg 
consoleMsg��  'a �������� 0 processname processName�� 0 
consolemsg 
consoleMsg�� 0 shellcommand shellCommand'b ���� ����� � ��� �������  0 coercetostring coerceToString
�� .sysontocTEXT       shor�� 0 replacesimple replaceSimple
�� 
leng
�� 
spac
�� 
strq
�� .sysoexecTEXT���     TEXT�� I*�k+  E�O*�jj �mvk+ E�O��,j  �E�Y hO��%�%�%��,%�%��,%E�O�j 
O�OP&� �� �����'d'e���� 0 loglevel logLEVEL�� ��'f�� 'f  ����� 	0 level  � 0 somemsg someMsg��  'd ������� 	0 level  � 0 somemsg someMsg� 0 	maxxcount 	maxXcount� 0 logname logName� 0 xcount xCount� 0 i  'e �!!�� � 0 
logconsole 
logConsole�� 5�E�Ob  �%E�O��kE�O k�kh ��%E�[OY��O*��l+ OP&� �!*��'g'h�� 0 logmain logMAIN� �'i� 'i  �� 0 somemsg someMsg�  'g �� 0 somemsg someMsg'h �� 0 loglevel logLEVEL� *j�l+  &� �!C��'j'k�� 0 clickatcoords clickAtCoords� �'l� 'l  ��� 0 xclick xClick� 0 yclick yClick�  'j ��� 0 xclick xClick� 0 yclick yClick'k 	����!k���!w
� 
dire
� olierndD
� .sysorondlong        doub
� 
strq
� 
spac
� .sysoexecTEXT���     TEXT
� 
TEXT� 1���l E�O���l E�Ob  �,�%�%�%�%j O��&�%�%&� �!~��'m'n�� *0 clickobjectbycoords clickObjectByCoords� �'o� 'o  �� 0 
someobject 
someObject�  'm �������� 0 
someobject 
someObject� 0 xcoord xCoord� 0 ycoord yCoord� 0 xsize xSize� 0 ysize ySize� 0 xclick xClick� 0 yclick yClick'n !��������
� 
posn
� 
cobj
� 
ptsz
� 
dire
� olierndD
� .sysorondlong        doub� 0 clickatcoords clickAtCoords� N�Z��,E[�k/E�Z[�l/E�ZO��,E[�k/E�Z[�l/E�ZO��l!��l E�O��l!��l E�O*��l+ OP&� �!���'p'q��  0 coercetostring coerceToString� �'r� 'r  ��  0 incomingobject incomingObject�  'p �������~�}�  0 incomingobject incomingObject� 0 errmsg errMsg� 0 errnum errNum� 0 	olddelims 	oldDelims� 0 
errmsglead 
errMsgLead� 0 errmsgtrail errMsgTrail�~ 0 od  �} 0 objectstring objectString'q �|�{�z�y�x�w"H"L�v�u's�t�s"i�r�q"��p"�"��o"�"�
�| 
pcls
�{ 
TEXT
�z 
ctxt
�y 
long
�x 
doub
�w 
utxt�v j0 3some_uuid_property_54f827c7379e4073b5a216bb9cde575d 3some_UUID_Property_54F827C7379E4073B5A216BB9CDE575D�u 0 errmsg errMsg's �n�m�l
�n 
errn�m 0 errnum errNum�l  
�t 
ascr
�s 
txdl
�r 
cobj
�q 
citm�p  
�o 
bool����,�  ��&E[�,E�ZO�Yk��,�  ��&E[�,E�ZO��&YQ��,�  ��&E[�,E�ZO��&Y7��,�  ��&E[�,E�ZO��&Y S ���,FOPW 9X 	 
��,�kvlvE[�k/E�Z[�l/��,FZO��-E[�k/E�Z[�l/E�ZO���,FOa ��,FOPW �X 	 �a 	 �a a & Da E�Oa E�O��,�lvE[�k/E�Z[�l/��,FZO��l/E�O���,FO��k/E�O���,FOPY k�E�O�� )��,�lvE[�k/E�Z[�l/��,FZO��l/E�O���,FY hO�� /��,�lvE[�k/E�Z[�l/��,FZO���,FO��k/E�O���,FY hOPO�&� �k#K�j�i't'u�h�k 0 gettextbefore getTextBefore�j �g'v�g 'v  �f�e�f 0 
sourcetext 
sourceTEXT�e 0 stophere stopHere�i  't �d�c�b�a�`�_�d 0 
sourcetext 
sourceTEXT�c 0 stophere stopHere�b 0 	olddelims 	oldDelims�a 0 finalresult finalResult�` 0 errmsg errMsg�_ 0 errnum errNum'u 	�^�]�\�[�Z#��Y'w#�
�^ 
ascr
�] 
txdl
�\ 
cobj
�[ 
citm
�Z .corecnte****       ****�Y 0 errmsg errMsg'w �X�W�V
�X 
errn�W 0 errnum errNum�V  �h R C��,�lvE[�k/E�Z[�l/��,FZO��-j k  ���,FO�Y ��k/E�O���,FO�W X  ���,FO�&� �U#��T�S'x'y�R�U  0 gettextbetween getTextBetween�T �Q'z�Q 'z  �P�P 	0 prefs  �S  'x �O�N�M�L�K�J�I�H�G�F�E�D�O 	0 prefs  �N 0 defaultprefs defaultPrefs�M 0 
sourcetext 
sourceTEXT�L 0 
beforetext 
beforeText�K 0 	aftertext 	afterText�J 0 textitemnum textItemNum�I  0 includemarkers includeMarkers�H 0 	olddelims 	oldDelims�G 0 prefixremoved prefixRemoved�F 0 finalresult finalResult�E 0 errmsg errMsg�D 0 errnum errNum'y �C�B�A�@�?�>#��=�<�;#��:�9�8�7�6�5�4�3�2�1'{$�C 0 textitemnum textItemNum�B  0 includemarkers includeMarkers�A 
�@ 
pcls
�? 
list
�> 
TEXT
�= 
bool
�< 
errn�; 
�: .corecnte****       ****
�9 
cobj�8 0 
sourcetext 
sourceTEXT�7 0 
beforetext 
beforeText�6 0 	aftertext 	afterText�5 
�4 
ascr
�3 
txdl
�2 
citm�1 0 errmsg errMsg'{ �0�/�.
�0 
errn�/ 0 errnum errNum�.  �R ��l�f�E�O��,�	 ��,�&��& )��l�Y hO��,�  1�j �  ���/��,FY hO���k/��l/��m/a E�Y hO��%E�O��,E�O��,E�O��,E�O��,E�O��,E�O \_ a ,�lvE[�k/E�Z[�l/_ a ,FZO�a �/E�O�_ a ,FO�a k/E�O�_ a ,FO� ��%�%E�Y hOPW X  �_ a ,FOa E�O�OP&� �-$��,�+'|'}�*�- 0 
parsechars 
parseChars�, �)'~�) '~  �(�( 	0 prefs  �+  '| 	�'�&�%�$�#�"�!� ��' 	0 prefs  �& 0 defaultprefs defaultPrefs�% 0 
sourcetext 
sourceTEXT�$ 0 parsestring parseString�# 0 considercase considerCase�" 0 	olddelims 	oldDelims�! 0 
parsedlist 
parsedList�  0 errmsg errMsg� 0 errnum errNum'} ������������$����%;��'��%c� 0 considercase considerCase
� 
pcls
� 
list
� .corecnte****       ****� 0 
sourcetext 
sourceTEXT
� 
cobj� 0 parsestring parseString� � � 0 somekey someKey
� 
errn� 
� 
ascr
� 
txdl
� 
TEXT
� 
citm� 0 errmsg errMsg' ��
�	
� 
errn�
 0 errnum errNum�	  �  �  �* ��elE�O��,�  5�j l ��k/��l/��m/�E�Y ��k/��l/�E�OPY ��,�ml�, )��l�OPY hO��%E�O��,E�O��,E�O��,E�O��,E�O =��&kv��,FO� a g 
�a -E�VY ga  
�a -E�VO���,FO�W #X   
���,FW X  hO)�la �%&� �%k��'�'��� 0 replacesimple replaceSimple� �'�� '�  �� 	0 prefs  �  '� 	��� ������������� 	0 prefs  � 0 defaultprefs defaultPrefs�  0 considercase considerCase�� 0 
sourcetext 
sourceTEXT�� 0 oldchars oldChars�� 0 newchars newChars�� 0 	olddelims 	oldDelims�� 0 
parsedlist 
parsedList�� 0 newtext newText'� ����������������������������%�������&���� 0 considercase considerCase
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
citm� ��elE�O��,�  ?�j m ��k/��l/��m/���/�E�Y ��k/��l/��m/�E�OPY ��,�ml�, )��l�OPY hO��%E�O��,E�O��,E�O��,E�O��,E�O��&E�O_ a ,E�O�_ a ,FO� (a g �a -E�O��&kv_ a ,FO��&E�VY %ga  �a -E�O��&kv_ a ,FO��&E�VO�_ a ,FO�OP&� ��&g����'�'����� 0 unparsechars unParseChars�� ��'��� '�  ������ 0 thislist thisList�� 0 newdelim newDelim��  '� �������������� 0 thislist thisList�� 0 newdelim newDelim�� 0 	olddelims 	oldDelims�� 0 unparsedtext unparsedText�� 0 errmsg errMsg�� 0 errnum errNum'� 	��������'�������&�
�� 
ascr
�� 
txdl
�� 
TEXT�� 0 errmsg errMsg'� ������
�� 
errn�� 0 errnum errNum��  ��  ��  
�� 
errn�� D��,E�O ��&kv��,FO��&E�O���,FO�W !X   
���,FW X  hO)�l�% ascr  ��ޭ