FasdUAS 1.101.10   ��   ��    k             l     ��  ��      main script     � 	 	    m a i n   s c r i p t   
  
 l     ��  ��      Erik Shagdar, NYHTC     �   (   E r i k   S h a g d a r ,   N Y H T C      l     ��������  ��  ��        l     ��  ��    %  Generated: 2016-03-18 12:23:14     �   >   G e n e r a t e d :   2 0 1 6 - 0 3 - 1 8   1 2 : 2 3 : 1 4      l     ��  ��    n h Run 'main_helper.applescript' to after making changes in any .applescript file and after each git pull.     �   �   R u n   ' m a i n _ h e l p e r . a p p l e s c r i p t '   t o   a f t e r   m a k i n g   c h a n g e s   i n   a n y   . a p p l e s c r i p t   f i l e   a n d   a f t e r   e a c h   g i t   p u l l .      l     ��������  ��  ��        j     �� �� 0 	debugmode 	DebugMode  m     ��
�� boovfals     !   j    �� "�� 0 
scriptname 
ScriptName " m     # # � $ $  m a i n . s c p t !  % & % j    �� '�� &0 clickcommandposix clickCommandPosix ' n     ( ) ( 1    ��
�� 
psxp ) l    *���� * b     + , + l    -���� - c     . / . l    0���� 0 I   �� 1��
�� .earsffdralis        afdr 1 m    ��
�� afdrcusr��  ��  ��   / m    ��
�� 
TEXT��  ��   , m     2 2 � 3 3 F C o d e : a p p l e s c r i p t - f m - h e l p e r : c l i c l i c k��  ��   &  4 5 4 l     ��������  ��  ��   5  6 7 6 l     ��������  ��  ��   7  8 9 8 i     : ; : I      �� <���� $0 encodecharforurl encodeCharForURL <  =�� = o      ���� 0 	this_char  ��  ��   ; k     K > >  ? @ ? r      A B A l     C���� C l     D���� D I    �� E��
�� .sysoctonshor       TEXT E o     ���� 0 	this_char  ��  ��  ��  ��  ��   B l      F���� F o      ���� 0 	ascii_num 	ASCII_num��  ��   @  G H G r      I J I J     K K  L M L m    	 N N � O O  0 M  P Q P m   	 
 R R � S S  1 Q  T U T m   
  V V � W W  2 U  X Y X m     Z Z � [ [  3 Y  \ ] \ m     ^ ^ � _ _  4 ]  ` a ` m     b b � c c  5 a  d e d m     f f � g g  6 e  h i h m     j j � k k  7 i  l m l m     n n � o o  8 m  p q p m     r r � s s  9 q  t u t m     v v � w w  A u  x y x m     z z � { {  B y  | } | m     ~ ~ �    C }  � � � m     � � � � �  D �  � � � m     � � � � �  E �  ��� � m     � � � � �  F��   J l      ����� � o      ���� 0 hex_list  ��  ��   H  � � � r   ! / � � � n   ! - � � � 4   " -�� �
�� 
cobj � l  % , ����� � [   % , � � � l  % * ����� � _   % * � � � o   % &���� 0 	ascii_num 	ASCII_num � m   & )���� ��  ��   � m   * +���� ��  ��   � l  ! " ����� � o   ! "���� 0 hex_list  ��  ��   � o      ���� 0 x   �  � � � r   0 > � � � n   0 < � � � 4   1 <�� �
�� 
cobj � l  4 ; ����� � [   4 ; � � � l  4 9 ����� � `   4 9 � � � o   4 5���� 0 	ascii_num 	ASCII_num � m   5 8���� ��  ��   � m   9 :���� ��  ��   � l  0 1 ����� � o   0 1���� 0 hex_list  ��  ��   � o      ���� 0 y   �  ��� � L   ? K � � c   ? J � � � l  ? F ����� � b   ? F � � � b   ? D � � � m   ? B � � � � �  % � o   B C���� 0 x   � o   D E���� 0 y  ��  ��   � m   F I��
�� 
TEXT��   9  � � � l     ��������  ��  ��   �  � � � i     � � � I      �� ����� $0 encodetextforurl encodeTextForURL �  � � � o      ���� 0 	this_text   �  � � � o      ���� 0 encode_url_a encode_URL_A �  ��� � o      ���� 0 encode_url_b encode_URL_B��  ��   � k     f � �  � � � l     �� � ���   � &   version 1.0, Daniel A. Shockley    � � � � @   v e r s i o n   1 . 0 ,   D a n i e l   A .   S h o c k l e y �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � / ) this sub-routine is used to encode text     � � � � R   t h i s   s u b - r o u t i n e   i s   u s e d   t o   e n c o d e   t e x t   �  � � � r      � � � m      � � � � � H a b c d e f g h i j k l m n o p q r s t u v w x y z 0 1 2 3 4 5 6 7 8 9 � l      ����� � o      ���� 0 standard_characters  ��  ��   �  � � � l    � � � � r     � � � m     � � � � � 2 $ + ! ' / ? ; & @ = # % > < { } [ ] " ~ ` ^ \ | * � l      ����� � o      ���� 0 url_a_chars URL_A_chars��  ��   � 6 0 double excape this since the code gets compiled    � � � � `   d o u b l e   e x c a p e   t h i s   s i n c e   t h e   c o d e   g e t s   c o m p i l e d �  � � � r     � � � m    	 � � � � �  . - _ : � l      ����� � o      ���� 0 url_b_chars URL_B_chars��  ��   �  � � � r     � � � l    ����� � o    ���� 0 standard_characters  ��  ��   � l      ����� � o      ���� 0 acceptable_characters  ��  ��   �  � � � Z    � ����� � =    � � � o    ���� 0 encode_url_a encode_URL_A � m    ��
�� boovfals � r     � � � b     � � � l    ����� � o    ���� 0 acceptable_characters  ��  ��   � l    ����� � o    ���� 0 url_a_chars URL_A_chars��  ��   � l      ����� � o      ���� 0 acceptable_characters  ��  ��  ��  ��   �  � � � Z    / � ����� � =    # � � � o     !���� 0 encode_url_b encode_URL_B � m   ! "��
�� boovfals � r   & + � � � b   & )   l  & '���� o   & '�� 0 acceptable_characters  ��  ��   l  ' (�~�} o   ' (�|�| 0 url_b_chars URL_B_chars�~  �}   � l     �{�z o      �y�y 0 acceptable_characters  �{  �z  ��  ��   �  r   0 3 m   0 1		 �

   l     �x�w o      �v�v 0 encoded_text  �x  �w    X   4 c�u Z   D ^�t E  D G l  D E�s�r o   D E�q�q 0 acceptable_characters  �s  �r   o   E F�p�p 0 	this_char   r   J O l  J M�o�n b   J M l  J K�m�l o   J K�k�k 0 encoded_text  �m  �l   o   K L�j�j 0 	this_char  �o  �n   l     �i�h o      �g�g 0 encoded_text  �i  �h  �t   r   R ^ c   R \  l  R Z!�f�e! b   R Z"#" l  R S$�d�c$ o   R S�b�b 0 encoded_text  �d  �c  # I   S Y�a%�`�a $0 encodecharforurl encodeCharForURL% &�_& o   T U�^�^ 0 	this_char  �_  �`  �f  �e    m   Z [�]
�] 
TEXT l     '�\�[' o      �Z�Z 0 encoded_text  �\  �[  �u 0 	this_char   o   7 8�Y�Y 0 	this_text   (�X( L   d f)) l  d e*�W�V* o   d e�U�U 0 encoded_text  �W  �V  �X   � +,+ l     �T�S�R�T  �S  �R  , -.- i    /0/ I      �Q1�P�Q 0 
getfromfmp 
getFromFMP1 2�O2 o      �N�N 	0 prefs  �O  �P  0 k     �33 454 l     �M67�M  6 ' ! version 1.8, Daniel A. Shockley    7 �88 B   v e r s i o n   1 . 8 ,   D a n i e l   A .   S h o c k l e y  5 9:9 l     �L�K�J�L  �K  �J  : ;<; Q     =>?= k    @@ ABA l   �ICD�I  C D > prefs MIGHT be a record that looks like this: {fmType:"Adv"}    D �EE |   p r e f s   M I G H T   b e   a   r e c o r d   t h a t   l o o k s   l i k e   t h i s :   { f m T y p e : " A d v " }  B F�HF r    GHG n    IJI o    �G�G 0 fmtype fmTypeJ o    �F�F 	0 prefs  H o      �E�E 0 fmtype fmType�H  > R      �D�C�B
�D .ascrerr ****      � ****�C  �B  ? r    KLK m    MM �NN  U n kL o      �A�A 0 fmtype fmType< OPO l   �@�?�>�@  �?  �>  P QRQ r    STS m    UU �VV D A p p l e S c r i p t _ T r a n s f e r - D O _ N O T _ R E N A M ET o      �=�= 0 
astransfer 
asTransferR WXW r    YZY m    [[ �\\  F i l e M a k e r   P r oZ o      �<�< 0 fmpname fmpNameX ]^] l   �;�:�9�;  �:  �9  ^ _`_ Z    �ab�8ca H    $dd E    #efe l   !g�7�6g I   !�5h�4
�5 .earsffdralis        afdrh  f    �4  �7  �6  f o   ! "�3�3 0 fmpname fmpNameb k   ' {ii jkj O   ' =lml r   + <non n   + :pqp 1   8 :�2
�2 
dnamq l  + 8r�1�0r 6  + 8sts 4  + /�/u
�/ 
pcapu m   - .�.�. t C  0 7vwv 1   1 3�-
�- 
dnamw o   4 6�,�, 0 fmpname fmpName�1  �0  o o      �+�+ 0 fmpactivename fmpActiveNamem m   ' (xx�                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  k yzy Z   > s{|}�*{ =  > A~~ o   > ?�)�) 0 fmtype fmType m   ? @�� ���  U n k| r   D M��� b   D K��� b   D I��� b   D G��� m   D E�� ���  t e l l   a p p   "� o   E F�(�( 0 fmpactivename fmpActiveName� m   G H�� ���  "� o   I J�'
�' 
ret � o      �&�& 0 begintellfm beginTellFM} ��� =  P S��� o   P Q�%�% 0 fmtype fmType� m   Q R�� ���  A d v� ��� r   V ]��� b   V [��� m   V Y�� ��� Z t e l l   a p p   i d   " c o m . f i l e m a k e r . c l i e n t . a d v a n c e d 1 2 "� o   Y Z�$
�$ 
ret � o      �#�# 0 begintellfm beginTellFM� ��� =  ` e��� o   ` a�"�" 0 fmtype fmType� m   a d�� ���  P r o� ��!� r   h o��� b   h m��� m   h k�� ��� P t e l l   a p p   i d   " c o m . f i l e m a k e r . c l i e n t . p r o 1 2 "� o   k l� 
�  
ret � o      �� 0 begintellfm beginTellFM�!  �*  z ��� r   t {��� b   t y��� o   t u�
� 
ret � m   u x�� ���  e n d   t e l l� o      �� 0 	endtellfm 	endTellFM�  �8  c k   ~ ��� ��� r   ~ ���� m   ~ ��� ���  � o      �� 0 begintellfm beginTellFM� ��� r   � ���� m   � ��� ���  � o      �� 0 	endtellfm 	endTellFM�  ` ��� l  � �����  �  �  � ��� r   � ���� b   � ���� b   � ���� m   � ��� ��� $ c e l l   1   o f   l a y o u t   "� o   � ��� 0 
astransfer 
asTransfer� m   � ��� ���  "   o f   w i n d o w   1� o      �� 0 	codetoget 	codeToGet� ��� r   � ���� b   � ���� b   � ���� o   � ��� 0 begintellfm beginTellFM� o   � ��� 0 	codetoget 	codeToGet� o   � ��� 0 	endtellfm 	endTellFM� o      �� 0 
sendsource 
sendSource� ��� r   � ���� I  � ����
� .sysodsct****        scpt� o   � ��� 0 
sendsource 
sendSource�  � o      �� 0 	inputdata 	inputData� ��� l  � ���
�	�  �
  �	  � ��� L   � ��� o   � ��� 0 	inputdata 	inputData�  . ��� l     ����  �  �  � ��� i     #��� I      ���� 0 	sendtofmp 	sendToFMP� ��� o      � �  0 somedata someData�  �  � k    )�� ��� l     ������  � ' ! version 1.6, Daniel A. Shockley    � ��� B   v e r s i o n   1 . 6 ,   D a n i e l   A .   S h o c k l e y  � ��� l     ��������  ��  ��  � ��� Q     ���� k    �� ��� l   ������  � b \ someData MIGHT be a record that looks like this: {fmType:"Adv", someData:"BLAH BLAH BLAH"}    � ��� �   s o m e D a t a   M I G H T   b e   a   r e c o r d   t h a t   l o o k s   l i k e   t h i s :   { f m T y p e : " A d v " ,   s o m e D a t a : " B L A H   B L A H   B L A H " }  � ��� r    ��� n    ��� o    ���� 0 fmtype fmType� o    ���� 0 somedata someData� o      ���� 0 fmtype fmType� ���� r   	 ��� n   	 � � o   
 ���� 0 somedata someData  o   	 
���� 0 somedata someData� o      ���� 0 somedata someData��  � R      ������
�� .ascrerr ****      � ****��  ��  � r     m     �  U n k o      ���� 0 fmtype fmType�  l   ��������  ��  ��    r    	
	 m     � D A p p l e S c r i p t _ T r a n s f e r - D O _ N O T _ R E N A M E
 o      ���� 0 
astransfer 
asTransfer  r    ! m     �  F i l e M a k e r   P r o o      ���� 0 fmpname fmpName  Z   " ��� H   " * E   " ) l  " '���� I  " '����
�� .earsffdralis        afdr  f   " #��  ��  ��   o   ' (���� 0 fmpname fmpName k   - �  O   - C !  r   1 B"#" n   1 @$%$ 1   > @��
�� 
dnam% l  1 >&����& 6  1 >'(' 4  1 5��)
�� 
pcap) m   3 4���� ( C  6 =*+* 1   7 9��
�� 
dnam+ o   : <���� 0 fmpname fmpName��  ��  # o      ���� 0 fmpactivename fmpActiveName! m   - .,,�                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��   -.- Z   D {/01��/ =  D G232 o   D E���� 0 fmtype fmType3 m   E F44 �55  U n k0 r   J S676 b   J Q898 b   J O:;: b   J M<=< m   J K>> �??  t e l l   a p p   "= o   K L���� 0 fmpactivename fmpActiveName; m   M N@@ �AA  "9 o   O P��
�� 
ret 7 o      ���� 0 begintellfm beginTellFM1 BCB =  V [DED o   V W���� 0 fmtype fmTypeE m   W ZFF �GG  A d vC HIH r   ^ eJKJ b   ^ cLML m   ^ aNN �OO Z t e l l   a p p   i d   " c o m . f i l e m a k e r . c l i e n t . a d v a n c e d 1 2 "M o   a b��
�� 
ret K o      ���� 0 begintellfm beginTellFMI PQP =  h mRSR o   h i���� 0 fmtype fmTypeS m   i lTT �UU  P r oQ V��V r   p wWXW b   p uYZY m   p s[[ �\\ P t e l l   a p p   i d   " c o m . f i l e m a k e r . c l i e n t . p r o 1 2 "Z o   s t��
�� 
ret X o      ���� 0 begintellfm beginTellFM��  ��  . ]^] l  | |��������  ��  ��  ^ _��_ r   | �`a` b   | �bcb o   | }��
�� 
ret c m   } �dd �ee  e n d   t e l la o      ���� 0 	endtellfm 	endTellFM��  ��   k   � �ff ghg r   � �iji m   � �kk �ll  j o      ���� 0 begintellfm beginTellFMh m��m r   � �non m   � �pp �qq  o o      ���� 0 	endtellfm 	endTellFM��   rsr l  � ���������  ��  ��  s tut r   � �vwv c   � �xyx o   � ����� 0 somedata someDatay m   � ���
�� 
TEXTw o      ���� "0 somedatacleaned someDataCleanedu z{z r   � �|}| n  � �~~ 1   � ���
�� 
txdl 1   � ���
�� 
ascr} o      ���� 0 	olddelims 	oldDelims{ ��� l  � �������  �   escape backslashes    � ��� (   e s c a p e   b a c k s l a s h e s  � ��� r   � ���� I  � ������
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
asTransfer� m  �� ��� & "   o f   w i n d o w   1   t o   ( "� o  ���� "0 somedatacleaned someDataCleaned� m  �� ���  "   a s   s t r i n g )� o      ���� 0 	codetoset 	codeToSet� ��� r  !��� b  ��� b  ��� o  ���� 0 begintellfm beginTellFM� o  ���� 0 	codetoset 	codeToSet� o  ���� 0 	endtellfm 	endTellFM� o      ���� 0 
sendsource 
sendSource� ��� l ""����~��  �  �~  � ��� I "'�}��|
�} .sysodsct****        scpt� o  "#�{�{ 0 
sendsource 
sendSource�|  � ��z� l ((�y�x�w�y  �x  �w  �z  � ��� l     �v�u�t�v  �u  �t  � � � i   $ ' I      �s�r�s 0 sfr_dictget SFR_DictGet  o      �q�q 0 somedict someDict �p o      �o�o 0 itemname itemName�p  �r   k     X 	 l     �n
�n  
 ' ! version 1.0, Daniel A. Shockley	    � B   v e r s i o n   1 . 0 ,   D a n i e l   A .   S h o c k l e y 		  l     �m�l�k�m  �l  �k    r      b     
 b      m      �  < : I    �j�i�j 0 
sfr_escape 
SFR_Escape �h o    �g�g 0 itemname itemName�h  �i   m    	 �  : = o      �f�f 0 	keystring 	keyString  r      m    !! �""  : >  o      �e�e 0 	endstring 	endString #$# l   �d�c�b�d  �c  �b  $ %&% Z    N'(�a)' H    ** E    +,+ o    �`�` 0 somedict someDict, o    �_�_ 0 	keystring 	keyString( L    -- m    .. �//  �a  ) k    N00 121 r    "343 n    565 1     �^
�^ 
txdl6 1    �]
�] 
ascr4 o      �\�\ 0 	olddelims 	oldDelims2 787 r   # (9:9 l  # $;�[�Z; o   # $�Y�Y 0 	keystring 	keyString�[  �Z  : n     <=< 1   % '�X
�X 
txdl= 1   $ %�W
�W 
ascr8 >?> r   ) /@A@ n   ) -BCB 4   * -�VD
�V 
citmD m   + ,�U�U C o   ) *�T�T 0 somedict someDictA l     E�S�RE o      �Q�Q 0 
keyremoved 
keyRemoved�S  �R  ? F�PF Z   0 NGH�OIG H   0 4JJ E   0 3KLK o   0 1�N�N 0 
keyremoved 
keyRemovedL o   1 2�M�M 0 	endstring 	endStringH L   7 9MM m   7 8NN �OO  �O  I k   < NPP QRQ r   < ASTS o   < =�L�L 0 	endstring 	endStringT n     UVU 1   > @�K
�K 
txdlV 1   = >�J
�J 
ascrR WXW r   B HYZY n   B F[\[ 4   C F�I]
�I 
citm] m   D E�H�H \ o   B C�G�G 0 
keyremoved 
keyRemovedZ l     ^�F�E^ o      �D�D 0 	itemvalue 	itemValue�F  �E  X _�C_ r   I N`a` o   I J�B�B 0 	olddelims 	oldDelimsa n     bcb 1   K M�A
�A 
txdlc 1   J K�@
�@ 
ascr�C  �P  & ded l  O O�?�>�=�?  �>  �=  e fgf L   O Vhh I   O U�<i�;�< 0 sfr_unescape SFR_Unescapei j�:j o   P Q�9�9 0 	itemvalue 	itemValue�:  �;  g klk l  W W�8�7�6�8  �7  �6  l m�5m l  W W�4�3�2�4  �3  �2  �5    non l     �1�0�/�1  �0  �/  o pqp i   ( +rsr I      �.t�-�. 0 sfr_dictitem SFR_DictItemt uvu o      �,�, 0 itemname itemNamev w�+w o      �*�* 0 	itemvalue 	itemValue�+  �-  s k     xx yzy l     �){|�)  { ' ! version 1.0, Daniel A. Shockley	   | �}} B   v e r s i o n   1 . 0 ,   D a n i e l   A .   S h o c k l e y 	z ~~ l     �(�'�&�(  �'  �&   ��%� L     �� b     ��� b     ��� b     
��� b     ��� m     �� ���  < :� I    �$��#�$ 0 
sfr_escape 
SFR_Escape� ��"� o    �!�! 0 itemname itemName�"  �#  � m    	�� ���  : =� I   
 � ���  0 
sfr_escape 
SFR_Escape� ��� o    �� 0 	itemvalue 	itemValue�  �  � m    �� ���  : >�%  q ��� l     ����  �  �  � ��� i   , /��� I      ���� 0 
sfr_escape 
SFR_Escape� ��� o      �� 0 
somestring 
someString�  �  � k     3�� ��� l     ����  � &   version 1.0, Daniel A. Shockley   � ��� @   v e r s i o n   1 . 0 ,   D a n i e l   A .   S h o c k l e y� ��� l     ����  �  �  � ��� r     ��� J     �� ��� m     �� ���  =� ��� m    �� ���  :� ��� m    �� ���  <� ��� m    �� ���  >�  � o      ��  0 escapecharlist escapeCharList� ��� l  	 	����  �  �  � ��� X   	 .���� k    )�� ��� r    '��� I    %���
� 0 replacesimple replaceSimple� ��	� J    !�� ��� o    �� 0 
somestring 
someString� ��� o    �� 0 onechar oneChar� ��� b    ��� m    �� ���  /� o    �� 0 onechar oneChar�  �	  �
  � o      �� 0 
somestring 
someString� ��� l  ( (��� �  �  �   �  � 0 onechar oneChar� o    ����  0 escapecharlist escapeCharList� ��� l  / /��������  ��  ��  � ��� L   / 1�� o   / 0���� 0 
somestring 
someString� ���� l  2 2��������  ��  ��  ��  � ��� l     ��������  ��  ��  � ��� i   0 3��� I      ������� 0 sfr_unescape SFR_Unescape� ���� o      ���� 0 
somestring 
someString��  ��  � k     3�� ��� l     ������  � &   version 1.0, Daniel A. Shockley   � ��� @   v e r s i o n   1 . 0 ,   D a n i e l   A .   S h o c k l e y� ��� l     ��������  ��  ��  � ��� r     ��� J     �� ��� m     �� ���  =� ��� m    �� ���  :� ��� m    �� ���  <� ���� m    �� ���  >��  � o      ����  0 escapecharlist escapeCharList� ��� l  	 	��������  ��  ��  � ��� X   	 .����� k    )    r    ' I    %������ 0 replacesimple replaceSimple �� J    ! 	 o    ���� 0 
somestring 
someString	 

 b     m     �  / o    ���� 0 onechar oneChar �� o    ���� 0 onechar oneChar��  ��  ��   o      ���� 0 
somestring 
someString �� l  ( (��������  ��  ��  ��  �� 0 onechar oneChar� o    ����  0 escapecharlist escapeCharList�  l  / /��������  ��  ��    L   / 1 o   / 0���� 0 
somestring 
someString �� l  2 2��������  ��  ��  ��  �  l     ��������  ��  ��    i   4 7 I      ������ 40 displayfilemakerdatabase displayFileMakerDatabase �� o      ���� 	0 prefs  ��  ��   k    �   !"! l     ��#$��  # &   version 1.5, Daniel A. Shockley   $ �%% @   v e r s i o n   1 . 5 ,   D a n i e l   A .   S h o c k l e y" &'& l     ��������  ��  ��  ' ()( Q    �*+,* k   f-- ./. r    010 K    22 ��34�� 0 	fmapptype 	fmAppType3 m    55 �66  P r o4 ��78�� .0 waitcycledelayseconds waitCycleDelaySeconds7 m    ���� 8 ��9���� ,0 waitsavetotalseconds waitSaveTotalSeconds9 ]    :;: m    	���� ; 1   	 
��
�� 
min ��  1 o      ���� 0 defaultprefs defaultPrefs/ <=< r    >?> b    @A@ o    ���� 	0 prefs  A o    ���� 0 defaultprefs defaultPrefs? o      ���� 	0 prefs  = BCB l   ��������  ��  ��  C DED r    FGF n    HIH o    ���� 0 dbname dbNameI o    ���� 	0 prefs  G o      ���� 0 dbname dbNameE JKJ l   ��������  ��  ��  K LML r    !NON n    PQP o    ���� ,0 waitsavetotalseconds waitSaveTotalSecondsQ o    ���� 	0 prefs  O o      ���� ,0 waitsavetotalseconds waitSaveTotalSecondsM RSR r   " 'TUT n   " %VWV o   # %���� .0 waitcycledelayseconds waitCycleDelaySecondsW o   " #���� 	0 prefs  U o      ���� .0 waitcycledelayseconds waitCycleDelaySecondsS XYX l  ( (��������  ��  ��  Y Z[Z r   ( 3\]\ I  ( 1��^_
�� .sysorondlong        doub^ l  ( +`����` ^   ( +aba o   ( )���� ,0 waitsavetotalseconds waitSaveTotalSecondsb o   ) *���� .0 waitcycledelayseconds waitCycleDelaySeconds��  ��  _ ��c��
�� 
direc m   , -��
�� olierndD��  ] o      ���� 0 waitcyclemax waitCycleMax[ ded l  4 4��������  ��  ��  e fgf Z   4 Ehi��jh =  4 9klk n   4 7mnm o   5 7���� 0 	fmapptype 	fmAppTypen o   4 5���� 	0 prefs  l m   7 8oo �pp  A d vi r   < ?qrq m   < =ss �tt > c o m . f i l e m a k e r . c l i e n t . a d v a n c e d 1 2r o      ���� 0 fmappbundleid fmAppBundleID��  j r   B Euvu m   B Cww �xx 4 c o m . f i l e m a k e r . c l i e n t . p r o 1 2v o      ���� 0 fmappbundleid fmAppBundleIDg yzy l  F F��������  ��  ��  z {|{ l  F F��������  ��  ��  | }~} U   F �� k   M ��� ��� l  M M��������  ��  ��  � ��� r   M P��� m   M N��
�� 
null� o      ���� 0 doclist docList� ��� Q   Q ����� k   T x�� ��� w   T j��� O   V j��� r   b i��� 2   b g��
�� 
docu� o      ���� 0 doclist docList� 5   V _�����
�� 
capp� o   Z [���� 0 fmappbundleid fmAppBundleID
�� kfrmID  �2                                                                                  FM12  alis    �  MacintoshSSD               �u8\H+   3�FileMaker Pro Advanced.app                                      4�̙�Q        ����  	                FileMaker Pro 12 Advanced     �u~�      ̚"�     3�   �  PMacintoshSSD:Applications: FileMaker Pro 12 Advanced: FileMaker Pro Advanced.app  6  F i l e M a k e r   P r o   A d v a n c e d . a p p    M a c i n t o s h S S D  AApplications/FileMaker Pro 12 Advanced/FileMaker Pro Advanced.app   / ��  � ��� l  k k��������  ��  ��  � ��� Z  k v������� >  k n��� o   k l���� 0 doclist docList� m   l m��
�� 
null�  S   q r��  ��  � ���� l  w w��~�}�  �~  �}  ��  � R      �|��
�| .ascrerr ****      � ****� o      �{�{ 0 errmsg errMsg� �z��y
�z 
errn� o      �x�x 0 errnum errNum�y  � Z   � ����w�� =  � ���� o   � ��v�v 0 errnum errNum� m   � ��u�u��� l  � ��t���t  � � � just keep trying - this error can be caused when a database is opening and the open script takes a bit too long to finish, or something in the FM interface is slow to respond.    � ���b   j u s t   k e e p   t r y i n g   -   t h i s   e r r o r   c a n   b e   c a u s e d   w h e n   a   d a t a b a s e   i s   o p e n i n g   a n d   t h e   o p e n   s c r i p t   t a k e s   a   b i t   t o o   l o n g   t o   f i n i s h ,   o r   s o m e t h i n g   i n   t h e   F M   i n t e r f a c e   i s   s l o w   t o   r e s p o n d .  �w  � R   � ��s��
�s .ascrerr ****      � ****� b   � ���� m   � ��� ��� \ E r r o r   g e t t i n g   l i s t   o f   d a t a b a s e s   a l r e a d y   o p e n :  � o   � ��r�r 0 errmsg errMsg� �q��p
�q 
errn� o   � ��o�o 0 errnum errNum�p  � ��� l  � ��n�m�l�n  �m  �l  � ��k� I  � ��j��i
�j .sysodelanull��� ��� nmbr� o   � ��h�h .0 waitcycledelayseconds waitCycleDelaySeconds�i  �k  � o   I J�g�g 0 waitcyclemax waitCycleMax~ ��� l  � ��f�e�d�f  �e  �d  � ��� X   �a��c�� k   �\�� ��� r   � ���� n   � ���� 1   � ��b
�b 
pnam� o   � ��a�a 0 onedoc oneDoc� o      �`�` 0 docname docName� ��� l  � ��_���_  � 0 * get the name WITHOUT the file extension:    � ��� T   g e t   t h e   n a m e   W I T H O U T   t h e   f i l e   e x t e n s i o n :  � ��� c   � ���� l  � ���^�]� n   � ���� 1   � ��\
�\ 
rvse� n   � ���� 2  � ��[
�[ 
cha � o   � ��Z�Z 0 docname docName�^  �]  � m   � ��Y
�Y 
TEXT� ��� n   � ���� 7  � ��X��
�X 
ctxt� l  � ���W�V� [   � ���� l  � ���U�T� I  � ��S�R�
�S .sysooffslong    ��� null�R  � �Q��
�Q 
psof� m   � ��� ���  .� �P��O
�P 
psin� 1   � ��N
�N 
rslt�O  �U  �T  � m   � ��M�M �W  �V  � m   � ��L�L��� 1   � ��K
�K 
rslt� ��� r   ���� c   ���� l  � ���J�I� n   � ���� 1   � ��H
�H 
rvse� n   � ���� 2  � ��G
�G 
cha � 1   � ��F
�F 
rslt�J  �I  � m   ��E
�E 
TEXT� o      �D�D 0 docname docName� ��� Z ���C�B� o  
�A�A 0 	debugmode 	DebugMode� I �@��?
�@ .ascrcmnt****      � ****� o  �>�> 0 dbname dbName�?  �C  �B  � ��� Z (���=�<� o  �;�; 0 	debugmode 	DebugMode� I $�:��9
�: .ascrcmnt****      � ****� o   �8�8 0 docname docName�9  �=  �<  � ��7� P  )\��6�� k  0[�� ��� l 00�5���5  � / )			if debugMode then log class of docName   � ��� R 	 	 	 i f   d e b u g M o d e   t h e n   l o g   c l a s s   o f   d o c N a m e� � � l 00�4�4   . (			if debugMode then log class of dbName    � P 	 	 	 i f   d e b u g M o d e   t h e n   l o g   c l a s s   o f   d b N a m e   l 00�3�2�1�3  �2  �1    l 00�0	�0   s m apparently these two TEXT variables have some difference (formatting?) even when they are identical STRINGS:   	 �

 �   a p p a r e n t l y   t h e s e   t w o   T E X T   v a r i a b l e s   h a v e   s o m e   d i f f e r e n c e   ( f o r m a t t i n g ? )   e v e n   w h e n   t h e y   a r e   i d e n t i c a l   S T R I N G S : �/ Z  0[�. = 0; l 05�-�, c  05 o  01�+�+ 0 docname docName m  14�*
�* 
TEXT�-  �,   l 5:�)�( c  5: o  56�'�' 0 dbname dbName m  69�&
�& 
TEXT�)  �(   k  >W  l >>�%�%   &  				if debugMode then log "SAME"    � @ 	 	 	 	 i f   d e b u g M o d e   t h e n   l o g   " S A M E "  w  >T  O  @T!"! k  LS## $%$ I LQ�$&�#
�$ .miscmvisnull���    obj & o  LM�"�" 0 onedoc oneDoc�#  % '�!' l RR� ()�   ( . (						if debugMode then log (path to it)   ) �** P 	 	 	 	 	 	 i f   d e b u g M o d e   t h e n   l o g   ( p a t h   t o   i t )�!  " 5  @I�+�
� 
capp+ o  DE�� 0 fmappbundleid fmAppBundleID
� kfrmID   2                                                                                  FM12  alis    �  MacintoshSSD               �u8\H+   3�FileMaker Pro Advanced.app                                      4�̙�Q        ����  	                FileMaker Pro 12 Advanced     �u~�      ̚"�     3�   �  PMacintoshSSD:Applications: FileMaker Pro 12 Advanced: FileMaker Pro Advanced.app  6  F i l e M a k e r   P r o   A d v a n c e d . a p p    M a c i n t o s h S S D  AApplications/FileMaker Pro 12 Advanced/FileMaker Pro Advanced.app   / ��   ,�, L  UW-- m  UV�
� boovtrue�  �.   l ZZ�./�  . &  				if debugMode then log "DIFF"   / �00 @ 	 	 	 	 i f   d e b u g M o d e   t h e n   l o g   " D I F F "�/  �6  � ��
� conscase�  �7  �c 0 onedoc oneDoc� o   � ��� 0 doclist docList� 121 L  bd33 m  bc�
� boovfals2 4�4 l ee����  �  �  �  + R      �56
� .ascrerr ****      � ****5 o      �� 0 errmsg errMsg6 �7�
� 
errn7 o      �� 0 errnum errNum�  , R  n��89
� .ascrerr ****      � ****8 b  t:;: b  t}<=< b  ty>?> m  tw@@ �AA @ d i s p l a y F i l e M a k e r D a t a b a s e   e r r o r :  ? o  wx�� 0 errmsg errMsg= m  y|BB �CC "   -   e r r o r   n u m b e r :  ; o  }~�
�
 0 errnum errNum9 �	D�
�	 
errnD o  rs�� 0 errnum errNum�  ) E�E l ������  �  �  �   FGF l     ��� �  �  �   G HIH i   8 ;JKJ I      ��L���� 20 ensurefilemakerdatabase ensureFileMakerDatabaseL M��M o      ���� 	0 prefs  ��  ��  K k     �NN OPO l     ��QR��  Q &   version 1.3, Daniel A. Shockley   R �SS @   v e r s i o n   1 . 3 ,   D a n i e l   A .   S h o c k l e yP TUT l     ��������  ��  ��  U VWV r     XYX n     Z[Z o    ���� 0 dbname dbName[ o     ���� 	0 prefs  Y o      ���� 0 dbname dbNameW \]\ l   ��������  ��  ��  ] ^_^ l   `ab` r    cdc I    ��e���� 40 displayfilemakerdatabase displayFileMakerDatabasee f��f K    gg ��hi�� 0 dbname dbNameh o    	���� 0 dbname dbNamei ��j���� 0 	fmapptype 	fmAppTypej m   
 kk �ll  A d v��  ��  ��  d o      ���� 0 isdisplayed isDisplayeda + % first, just see if one is available.   b �mm J   f i r s t ,   j u s t   s e e   i f   o n e   i s   a v a i l a b l e ._ non Z   -pq����p o    ���� 0 	debugmode 	DebugModeq I    )��r���� 0 
logconsole 
logConsoler sts o    "���� 0 
scriptname 
ScriptNamet u��u b   " %vwv m   " #xx �yy $ T r i e d   t o   d i s p l a y :  w o   # $���� 0 dbname dbName��  ��  ��  ��  o z��z Z   . �{|��}{ o   . /���� 0 isdisplayed isDisplayed| L   2 4~~ m   2 3��
�� boovtrue��  } k   7 � ��� Z  7 P������� o   7 <���� 0 	debugmode 	DebugMode� I   ? L������� 0 
logconsole 
logConsole� ��� o   @ E���� 0 
scriptname 
ScriptName� ���� b   E H��� m   E F�� ��� , A b o u t   t o   t r y   t o   o p e n :  � o   F G���� 0 dbname dbName��  ��  ��  ��  � ��� l  Q Q��������  ��  ��  � ���� Z   Q ������� I   Q W������� .0 openfilemakerdatabase openFileMakerDatabase� ���� o   R S���� 	0 prefs  ��  ��  � k   Z ��� ��� l  Z Z������  � 2 , was able to open it, so NOW display window.   � ��� X   w a s   a b l e   t o   o p e n   i t ,   s o   N O W   d i s p l a y   w i n d o w .� ��� I  Z _�����
�� .sysodelanull��� ��� nmbr� m   Z [�� ?�      ��  � ��� Z  ` y������� o   ` e���� 0 	debugmode 	DebugMode� I   h u������� 0 
logconsole 
logConsole� ��� o   i n���� 0 
scriptname 
ScriptName� ���� b   n q��� m   n o�� ��� R T r i e d   t o   o p e n ,   n o w   t r y   a g a i n   t o   d i s p l a y :  � o   o p���� 0 dbname dbName��  ��  ��  ��  � ��� r   z ���� I   z �������� 40 displayfilemakerdatabase displayFileMakerDatabase� ���� K   { ��� ������ 0 dbname dbName� o   | }���� 0 dbname dbName� ������� 0 	fmapptype 	fmAppType� m   ~ �� ���  A d v��  ��  ��  � o      ���� 0 isdisplayed isDisplayed� ���� L   � ��� o   � ����� 0 isdisplayed isDisplayed��  ��  � k   � ��� ��� l  � �������  � 0 * Was NOT able to open it, so return false.   � ��� T   W a s   N O T   a b l e   t o   o p e n   i t ,   s o   r e t u r n   f a l s e .� ���� L   � ��� m   � ���
�� boovfals��  ��  ��  I ��� l     ��������  ��  ��  � ��� i   < ?��� I      �������� (0 fmgui_appfrontmost fmGUI_AppFrontMost��  ��  � k     E�� ��� l     ������  �    1.1 - Erik Shagdar, NYHTC   � ��� 4   1 . 1   -   E r i k   S h a g d a r ,   N Y H T C� ��� l     ��������  ��  ��  � ���� O     E��� O    D��� Z    C������� >   ��� 1    ��
�� 
pisf� m    ��
�� boovtrue� k    ?�� ��� r    ��� m    ��
�� boovtrue� 1    ��
�� 
pisf� ��� I   �����
�� .sysodelanull��� ��� nmbr� m    ���� ��  � ��� l   ��������  ��  ��  � ��� l   ������  � ) #close FMEmpower window if it's open   � ��� F c l o s e   F M E m p o w e r   w i n d o w   i f   i t ' s   o p e n� ���� Z    ?������� =   '��� n    %��� 1   # %��
�� 
pnam� 4    #���
�� 
cwin� m   ! "���� � m   % &�� ��� $ 2 e m p o w e r F M   T o o l b o x� k   * ;�� ��� I  * 5�����
�� .prcsclicnull��� ��� uiel� n   * 1��� 4   . 1���
�� 
butT� m   / 0���� � 4   * .���
�� 
cwin� m   , -���� ��  � ���� I  6 ;�����
�� .sysodelanull��� ��� nmbr� m   6 7���� ��  ��  ��  ��  ��  ��  ��  � 4    ���
�� 
pcap� m    �� ��� , F i l e M a k e r   P r o   A d v a n c e d� m     ���                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  ��  � ��� l     ��������  ��  ��  �    i   @ C I      ������ &0 fmgui_checkboxset fmGUI_CheckboxSet  o      ����  0 checkboxobject checkboxObject �� o      ���� 0 checkboxvalue checkboxValue��  ��   k     9 	
	 l     ����      version 1.0, Dan Shockley    � 4   v e r s i o n   1 . 0 ,   D a n   S h o c k l e y
  l     ��������  ��  ��   � w     9 Q    9 k    %  Z     �~�} >    o    �|�| 0 checkboxvalue checkboxValue m    �{
�{ 
null Z    �z�y >     n    !"! 1    �x
�x 
valL" o    �w�w  0 checkboxobject checkboxObject  o    �v�v 0 checkboxvalue checkboxValue I   �u#�t
�u .prcsclicnull��� ��� uiel# o    �s�s  0 checkboxobject checkboxObject�t  �z  �y  �~  �}   $%$ L   ! #&& m   ! "�r
�r boovtrue% '�q' l  $ $�p�o�n�p  �o  �n  �q   R      �m()
�m .ascrerr ****      � ****( o      �l�l 0 errmsg errMsg) �k*�j
�k 
errn* o      �i�i 0 errnum errNum�j   R   - 9�h+,
�h .ascrerr ****      � ****+ b   1 8-.- b   1 6/0/ b   1 4121 m   1 233 �44 " C o u l d n ' t   s e l e c t   '2 o   2 3�g�g 0 checkboxvalue checkboxValue0 m   4 555 �66 " '   f o r   c h e c k b o x   -  . o   6 7�f�f 0 errmsg errMsg, �e7�d
�e 
errn7 o   / 0�c�c 0 errnum errNum�d  �                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  �   898 l     �b�a�`�b  �a  �`  9 :;: i   D G<=< I      �_�^�]�_ 00 fmgui_dataviewer_close fmGUI_DataViewer_Close�^  �]  = k     3>> ?@? l     �\AB�\  A    version 1.0, Dan Shockley   B �CC 4   v e r s i o n   1 . 0 ,   D a n   S h o c k l e y@ DED l     �[�Z�Y�[  �Z  �Y  E F�XF O     3GHG O    2IJI k    1KK LML n   NON I    �W�V�U�W (0 fmgui_appfrontmost fmGUI_AppFrontMost�V  �U  O  f    M P�TP Q    1QR�SQ I   (�RS�Q
�R .prcsclicnull��� ��� uielS n    $TUT 4   ! $�PV
�P 
butTV m   " #�O�O U l   !W�N�MW 6   !XYX 4   �LZ
�L 
cwinZ m    �K�K Y =    [\[ 1    �J
�J 
pnam\ m    ]] �^^  D a t a   V i e w e r�N  �M  �Q  R R      �I�H�G
�I .ascrerr ****      � ****�H  �G  �S  �T  J 4    �F_
�F 
pcap_ m    `` �aa , F i l e M a k e r   P r o   A d v a n c e dH m     bb�                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  �X  ; cdc l     �E�D�C�E  �D  �C  d efe i   H Kghg I      �B�A�@�B .0 fmgui_inspector_close fmGUI_Inspector_Close�A  �@  h k     rii jkj l     �?lm�?  l    version 1.0, Dan Shockley   m �nn 4   v e r s i o n   1 . 0 ,   D a n   S h o c k l e yk opo l     �>�=�<�>  �=  �<  p q�;q O     rrsr O    qtut k    pvv wxw n   yzy I    �:�9�8�: (0 fmgui_appfrontmost fmGUI_AppFrontMost�9  �8  z  f    x {|{ l   �7}~�7  } I C try the click twice in case the first only brings window to front.   ~ � �   t r y   t h e   c l i c k   t w i c e   i n   c a s e   t h e   f i r s t   o n l y   b r i n g s   w i n d o w   t o   f r o n t .| ��� Q    .���6� r    %��� m    �5�5 � n      ��� 1   " $�4
�4 
pidx� l   "��3�2� 6   "��� 4   �1�
�1 
cwin� m    �0�0 � =   !��� 1    �/
�/ 
pnam� m     �� ���  I n s p e c t o r�3  �2  � R      �.�-�,
�. .ascrerr ****      � ****�-  �,  �6  � ��� Q   / O���+� I  2 F�*��)
�* .prcsclicnull��� ��� uiel� n   2 B��� 4   ? B�(�
�( 
butT� m   @ A�'�' � l  2 ?��&�%� 6  2 ?��� 4  2 6�$�
�$ 
cwin� m   4 5�#�# � =  7 >��� 1   8 :�"
�" 
pnam� m   ; =�� ���  I n s p e c t o r�&  �%  �)  � R      �!� �
�! .ascrerr ****      � ****�   �  �+  � ��� Q   P p���� I  S g���
� .prcsclicnull��� ��� uiel� n   S c��� 4   ` c��
� 
butT� m   a b�� � l  S `���� 6  S `��� 4  S W��
� 
cwin� m   U V�� � =  X _��� 1   Y [�
� 
pnam� m   \ ^�� ���  I n s p e c t o r�  �  �  � R      ���
� .ascrerr ****      � ****�  �  �  �  u 4    ��
� 
pcap� m    �� ��� , F i l e M a k e r   P r o   A d v a n c e ds m     ���                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  �;  f ��� l     ����  �  �  � ��� i   L O��� I      ���
� 00 fmgui_inspector_ensure fmGUI_Inspector_Ensure�  �
  � k     h�� ��� l     �	���	  �   version 1.1   � ���    v e r s i o n   1 . 1� ��� l     ����  �  �  � ��� Q     f���� k    R�� ��� I    ���� 20 fmgui_modeensure_layout fmGUI_ModeEnsure_Layout�  �  � ��� O   	 R��� O    Q��� k    P�� ��� l   �� ���  �   ��  � ��� n   ��� I    �������� (0 fmgui_appfrontmost fmGUI_AppFrontMost��  ��  �  f    � ��� l   ��������  ��  ��  � ��� Z    M������� H    ,�� l   +������ I   +�����
�� .coredoexnull���     ****� l   '������ 6   '��� 4   ���
�� 
cwin� m    ���� � E    &��� 1     "��
�� 
pnam� m   # %�� ���  I n s p e c t o r��  ��  ��  ��  ��  � I  / I�����
�� .prcsclicnull��� ��� uiel� l  / E������ 6  / E��� n   / <��� 4  9 <���
�� 
menI� m   : ;���� � n   / 9��� 4   6 9���
�� 
menE� m   7 8���� � n   / 6��� 4   3 6���
�� 
mbri� m   4 5�� ���  V i e w� 4   / 3���
�� 
mbar� m   1 2���� � =  = D��� 1   > @��
�� 
pnam� m   A C�� ���  I n s p e c t o r��  ��  ��  ��  ��  � ���� L   N P�� m   N O��
�� boovtrue��  � 4    ���
�� 
pcap� m    �� ��� , F i l e M a k e r   P r o   A d v a n c e d� m   	 
���                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  �  � R      �� 
�� .ascrerr ****      � ****  o      ���� 0 errmsg errMsg ����
�� 
errn o      ���� 0 errnum errNum��  � R   Z f��
�� .ascrerr ****      � **** b   ` e m   ` c � 4 C o u l d n ' t   o p e n   I n s p e c t o r   -   o   c d���� 0 errmsg errMsg ��	��
�� 
errn	 o   ^ _���� 0 errnum errNum��  � 
��
 l  g g��������  ��  ��  ��  �  l     ��������  ��  ��    i   P S I      ������ 60 fmgui_managedb_field_edit fmGUI_ManageDb_Field_Edit �� o      ���� 	0 prefs  ��  ��   k    �  l     ����     version 1.2    �    v e r s i o n   1 . 2  l     ��������  ��  ��    l     ����   � � any BOOLEAN parameters can be either actually boolean, or 1/0.  This function will change that to match UI scripting interface needs.    �   a n y   B O O L E A N   p a r a m e t e r s   c a n   b e   e i t h e r   a c t u a l l y   b o o l e a n ,   o r   1 / 0 .     T h i s   f u n c t i o n   w i l l   c h a n g e   t h a t   t o   m a t c h   U I   s c r i p t i n g   i n t e r f a c e   n e e d s .  !  l     ��������  ��  ��  ! "#" r     Z$%$ K     X&& ��'(�� 0 editmode editMode' m    )) �**  C O N F O R M( ��+,�� 0 	tablename 	tableName+ m    ��
�� 
null, ��-.�� 0 	fieldname 	fieldName- m    ��
�� 
null. ��/0�� 0 altpatterns altPatterns/ m    ��
�� 
null0 ��12�� 0 fieldcomment fieldComment1 m   	 
��
�� 
null2 ��34�� 0 datatype dataType3 m    ��
�� 
null4 ��56�� 0 	fieldtype 	fieldType5 m    ��
�� 
null6 ��78�� 0 calccode calcCode7 m    ��
�� 
null8 ��9:�� &0 autoentercalccode autoEnterCalcCode9 m    ��
�� 
null: ��;<�� 20 autoentercalccontexttoc autoEnterCalcContextTOC; m    ��
�� 
null< ��=>��  0 alwaysevaluate alwaysEvaluate= m    ��
�� 
null> ��?@��  0 calccontexttoc calcContextTOC? m    ��
�� 
null@ ��AB�� 0 storageglobal storageGlobalA m    ��
�� 
nullB ��CD�� 20 storecalculationresults storeCalculationResultsC m    ��
�� 
nullD ��EF�� (0 storageindexchoice storageIndexChoiceE m     ��
�� 
nullF ��GH�� 0 	autoindex 	autoIndexG m   # $��
�� 
nullH ��IJ�� 0 maxrepetition maxRepetitionI m   ' (��
�� 
nullJ ��KL�� 0 indexlanguage indexLanguageK m   + ,��
�� 
nullL ��MN�� 0 allowediting allowEditingM m   / 0��
�� 
nullN ��OP�� 00 overwriteexistingvalue overwriteExistingValueO m   3 4��
�� 
nullP ��QR�� *0 autoenterisconstant autoEnterIsConstantQ m   7 8��
�� 
nullR ��ST�� 00 autoenteriscalculation autoEnterIsCalculationS m   ; <��
�� 
nullT ��UV�� &0 autoenterislookup autoEnterIsLookupU m   ? @��
�� 
nullV ��WX�� .0 autoenterspecialvalue autoEnterSpecialValueW m   C D��
�� 
nullX ��YZ�� 0 
autoserial 
autoSerialY m   G H��
�� 
nullZ ��[\�� .0 autoenterconstantdata autoEnterConstantData[ m   K L��
�� 
null\ ��]^�� (0 validationcalccode validationCalcCode] m   O P��
�� 
null^ ��_���� 40 validationcalccontexttoc validationCalcContextTOC_ m   S T��
�� 
null��  % o      ���� 0 defaultprefs defaultPrefs# `a` l  [ [��bc��  b � � editMode: "CONFORM" means make field exactly match the entire specified data structure, while "TWEAK" means only to change which things were specified, leaving the other settings alone.    c �ddv   e d i t M o d e :   " C O N F O R M "   m e a n s   m a k e   f i e l d   e x a c t l y   m a t c h   t h e   e n t i r e   s p e c i f i e d   d a t a   s t r u c t u r e ,   w h i l e   " T W E A K "   m e a n s   o n l y   t o   c h a n g e   w h i c h   t h i n g s   w e r e   s p e c i f i e d ,   l e a v i n g   t h e   o t h e r   s e t t i n g s   a l o n e .  a efe l  [ [��gh��  g � � autoEnterSpecialValue: keywords used in FM-XML: NONE, CreationAccountName, CreationUserName,CreationTimestamp, ModificationAccountName, et al.   h �ii   a u t o E n t e r S p e c i a l V a l u e :   k e y w o r d s   u s e d   i n   F M - X M L :   N O N E ,   C r e a t i o n A c c o u n t N a m e ,   C r e a t i o n U s e r N a m e , C r e a t i o n T i m e s t a m p ,   M o d i f i c a t i o n A c c o u n t N a m e ,   e t   a l .f jkj l  [ [��lm��  l a [ autoSerial:false or autoSerial:{autoNextValue:null, autoIncrement:null, autoGenerate:null}   m �nn �   a u t o S e r i a l : f a l s e   o r   a u t o S e r i a l : { a u t o N e x t V a l u e : n u l l ,   a u t o I n c r e m e n t : n u l l ,   a u t o G e n e r a t e : n u l l }k opo l  [ [��������  ��  ��  p qrq l  [ [��st��  s a [ autoEnterIsLookup - LOOKUP FUNCTIONS NOT YET SUPPORTED - WOULD NEED TO HANDLE SUB-ELEMENT.   t �uu �   a u t o E n t e r I s L o o k u p   -   L O O K U P   F U N C T I O N S   N O T   Y E T   S U P P O R T E D   -   W O U L D   N E E D   T O   H A N D L E   S U B - E L E M E N T .r vwv l  [ [�������  ��  �  w xyx l  [ [�~�}�|�~  �}  �|  y z{z r   [ `|}| b   [ ^~~ o   [ \�{�{ 	0 prefs   o   \ ]�z�z 0 defaultprefs defaultPrefs} o      �y�y 	0 prefs  { ��� l  a a�x�w�v�x  �w  �v  � ��� r   a f��� n   a d��� o   b d�u�u 0 editmode editMode� o   a b�t�t 	0 prefs  � o      �s�s 0 editmode editMode� ��� l  g g�r�q�p�r  �q  �p  � ��� Z  g z���o�n� >  g l��� n   g j��� o   h j�m�m &0 autoentercalccode autoEnterCalcCode� o   g h�l�l 	0 prefs  � m   j k�k
�k 
null� r   o v��� m   o p�j
�j boovtrue� n      ��� o   q u�i�i 00 autoenteriscalculation autoEnterIsCalculation� o   p q�h�h 	0 prefs  �o  �n  � ��� l  { {�g�f�e�g  �f  �e  � ��� l   { {�d���d  � � �   DEBUGGING   DEBUGGING   DEBUGGING   DEBUGGING   DEBUGGING   DEBUGGING   
DEBUGGING   DEBUGGING   DEBUGGING   DEBUGGING   DEBUGGING   DEBUGGING   DEBUGGING   	
   � ���D       D E B U G G I N G       D E B U G G I N G       D E B U G G I N G       D E B U G G I N G       D E B U G G I N G       D E B U G G I N G       
 D E B U G G I N G       D E B U G G I N G       D E B U G G I N G       D E B U G G I N G       D E B U G G I N G       D E B U G G I N G       D E B U G G I N G       	 
� ��� l  { {�c�b�a�c  �b  �a  � ��� Q   {����� k   ~��� ��� l  ~ ~�`�_�^�`  �_  �^  � ��� l  ~ ~�]�\�[�]  �\  �[  � ��� l  ~ ~�Z�Y�X�Z  �Y  �X  � ��� l  ~ ~�W�V�U�W  �V  �U  � ��� l  ~ ~�T���T  �   try to select it first:   � ��� 0   t r y   t o   s e l e c t   i t   f i r s t :� ��� r   ~ ���� I   ~ ��S��R�S :0 fmgui_managedb_field_select fmGUI_ManageDb_Field_Select� ��Q� o    ��P�P 	0 prefs  �Q  �R  � o      �O�O $0 fieldnowselected fieldNowSelected� ��� l  � ��N�M�L�N  �M  �L  � ��� Z  � ����K�J� H   � ��� o   � ��I�I $0 fieldnowselected fieldNowSelected� L   � ��� m   � ��H
�H boovfals�K  �J  � ��� l  � ��G�F�E�G  �F  �E  � ��� O   ����� O   ����� k   ���� ��� n  � ���� I   � ��D�C�B�D (0 fmgui_appfrontmost fmGUI_AppFrontMost�C  �B  �  f   � �� ��� l  � ��A�@�?�A  �@  �?  � ��� l  � ��>�=�<�>  �=  �<  � ��� r   � ���� 6  � ���� n   � ���� 4  � ��;�
�; 
butT� m   � ��:�: � n   � ���� 4   � ��9�
�9 
tabg� m   � ��8�8 � 4   � ��7�
�7 
cwin� m   � ��6�6 � =  � ���� 1   � ��5
�5 
titl� m   � ��� ���  C h a n g e� o      �4�4 0 changebutton changeButton� ��� l  � ��3�2�1�3  �2  �1  � ��� l  � ��0���0  � %  COMMENT is for any field type:   � ��� >   C O M M E N T   i s   f o r   a n y   f i e l d   t y p e :� ��� Z   ����/�.� >  � ���� n   � ���� o   � ��-�- 0 fieldcomment fieldComment� o   � ��,�, 	0 prefs  � m   � ��+
�+ 
null� k   ��� ��� Z   � ����*�)� n  � ���� I   � ��(��'�( (0 fmgui_textfieldset fmGUI_TextFieldSet� ��� n   � ���� 4   � ��&�
�& 
txtf� m   � ��� ���  C o m m e n t :� n   � �   4   � ��%
�% 
tabg m   � ��$�$  4   � ��#
�# 
cwin m   � ��"�" � �! n   � � o   � �� �  0 fieldcomment fieldComment o   � ��� 	0 prefs  �!  �'  �  f   � �� I  � ���
� .prcsclicnull��� ��� uiel o   � ��� 0 changebutton changeButton�  �*  �)  � 	 l  � �����  �  �  	 
�
 I  ���
� .sysodelanull��� ��� nmbr m   � � ?�      �  �  �/  �.  �  l ����  �  �    Z  g�� F   =  o  �� 0 editmode editMode m   � 
 T W E A K =  n   o  �� 0 	fieldtype 	fieldType o  �� 	0 prefs   m  �
� 
null k  c  l � !�    6 0 just find out what it already is and use that:    ! �"" `   j u s t   f i n d   o u t   w h a t   i t   a l r e a d y   i s   a n d   u s e   t h a t :   #$# r  /%&% n  -'(' 4  &-�)
� 
popB) m  ),** �++ 
 T y p e :( n  &,-, 4  !&�
.
�
 
tabg. m  $%�	�	 - 4  !�/
� 
cwin/ m   �� & o      ��  0 fieldtypepopup fieldTypePopup$ 0�0 Z  0c12341 = 09565 n  05787 1  15�
� 
valL8 o  01��  0 fieldtypepopup fieldTypePopup6 m  5899 �::  C a l c u l a t i o n2 r  <C;<; m  <?== �>>  C a l c u l a t e d< n      ?@? o  @B�� 0 	fieldtype 	fieldType@ o  ?@�� 	0 prefs  3 ABA = FOCDC n  FKEFE 1  GK� 
�  
valLF o  FG����  0 fieldtypepopup fieldTypePopupD m  KNGG �HH  S u m m a r yB I��I r  RYJKJ m  RULL �MM  S u m m a r yK n      NON o  VX���� 0 	fieldtype 	fieldTypeO o  UV���� 	0 prefs  ��  4 r  \cPQP m  \_RR �SS  N o r m a lQ n      TUT o  `b���� 0 	fieldtype 	fieldTypeU o  _`���� 	0 prefs  �  �  �   VWV l hh��������  ��  ��  W XYX l hh��������  ��  ��  Y Z[Z Z  h|\]^��\ = hm_`_ n  hkaba o  ik���� 0 	fieldtype 	fieldTypeb o  hi���� 	0 prefs  ` m  kl��
�� 
null] k  p~cc ded R  p|��fg
�� .ascrerr ****      � ****f m  x{hh �ii 8 P a r a m e t e r   m i s s i n g :   f i e l d T y p eg ��j��
�� 
errnj m  tw���� ��  e k��k l }}��������  ��  ��  ��  ^ lml = ��non n  ��pqp o  ������ 0 	fieldtype 	fieldTypeq o  ������ 	0 prefs  o m  ��rr �ss  C a l c u l a t e dm tut k  ��vv wxw l ����������  ��  ��  x yzy l ����{|��  {  	 IF CALC:   | �}}    I F   C A L C :z ~~ l ��������  �   Field Type = Calculated   � ��� 0   F i e l d   T y p e   =   C a l c u l a t e d ��� l ��������  �   click "contains Options"   � ��� 2   c l i c k   " c o n t a i n s   O p t i o n s "� ��� l ��������  � / ) Data Type: popup "Calculation result is"   � ��� R   D a t a   T y p e :   p o p u p   " C a l c u l a t i o n   r e s u l t   i s "� ��� l ��������  �   Calc Context Table   � ��� &   C a l c   C o n t e x t   T a b l e� ��� l ��������  �   Calculation itself   � ��� &   C a l c u l a t i o n   i t s e l f� ��� l ��������  �   Do Not Evaluate�   � ��� "   D o   N o t   E v a l u a t e &� ��� l ��������  �  	 Storage:   � ���    S t o r a g e :� ��� l ��������  � - '	Global, Do Not Store, None/Minimal/All   � ��� N 	 G l o b a l ,   D o   N o t   S t o r e ,   N o n e / M i n i m a l / A l l� ��� l ����������  ��  ��  � ��� l ��������  �   FIELD TYPE:   � ���    F I E L D   T Y P E :� ��� r  ����� n  ����� 4  �����
�� 
popB� m  ���� ��� 
 T y p e :� n  ����� 4  �����
�� 
tabg� m  ������ � 4  �����
�� 
cwin� m  ������ � o      ����  0 fieldtypepopup fieldTypePopup� ��� Z  �A������ > ����� n  ����� 1  ����
�� 
valL� o  ������  0 fieldtypepopup fieldTypePopup� m  ���� ���  C a l c u l a t i o n� k  �
�� ��� n ����� I  ���������  0 fmgui_popupset fmGUI_PopupSet� ��� o  ������  0 fieldtypepopup fieldTypePopup� ���� m  ���� ���  C a l c u l a t i o n��  ��  �  f  ��� ��� l ����������  ��  ��  � ��� l ��������  � * $ click CHANGE to save the data type.   � ��� H   c l i c k   C H A N G E   t o   s a v e   t h e   d a t a   t y p e .� ��� n ����� I  ��������� B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow� ���� n  ����� 4  �����
�� 
butT� m  ���� ���  C h a n g e� n  ����� 4  �����
�� 
tabg� m  ������ � 4  �����
�� 
cwin� m  ������ ��  ��  �  f  ��� ��� l ����������  ��  ��  � ��� I �������
�� .sysodelanull��� ��� nmbr� m  ���� ?�      ��  � ��� l ����������  ��  ��  � ��� l ��������  � m g if existing field was NOT ALREADY a calc, will get a warning message. Need to handle that possibility.   � ��� �   i f   e x i s t i n g   f i e l d   w a s   N O T   A L R E A D Y   a   c a l c ,   w i l l   g e t   a   w a r n i n g   m e s s a g e .   N e e d   t o   h a n d l e   t h a t   p o s s i b i l i t y .� ��� Z  �������� H  ���� C  ����� n  ����� 1  ����
�� 
pnam� 4  �����
�� 
cwin� m  ������ � m  ���� ��� & M a n a g e   D a t a b a s e   F o r� k  ��� 	 		  l ����		��  	 ' ! click OK to confirm the change:    	 �		 B   c l i c k   O K   t o   c o n f i r m   t h e   c h a n g e :  	 			 n ��			 I  ����		���� B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow		 	
��	
 n  ��			 4  ����	
�� 
butT	 m  ��		 �		  O K	 4  ����	
�� 
cwin	 m  ������ ��  ��  	  f  ��	 			 l ����������  ��  ��  	 			 I ���	��
�� .sysodelanull��� ��� nmbr	 m  ��		 ?�      ��  	 	��	 l ��������  ��  ��  ��  ��  ��  � 	��	 l 		��������  ��  ��  ��  ��  � l A				 k  A		 			 l ��		 ��  	   click Options:    	  �	!	!     c l i c k   O p t i o n s :  	 	"	#	" n 1	$	%	$ I  1��	&���� B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow	& 	'��	' 6 -	(	)	( n  	*	+	* 4 ��	,
�� 
butT	, m  ���� 	+ n  	-	.	- 4  ��	/
�� 
tabg	/ m  ���� 	. 4  ��	0
�� 
cwin	0 m  ���� 	) C  !,	1	2	1 1  "&��
�� 
pnam	2 m  '+	3	3 �	4	4  O p t i o n s��  ��  	%  f  	# 	5	6	5 l 22��������  ��  ��  	6 	7	8	7 n 2?	9	:	9 I  3?��	;���� 20 windowwaituntil_frontis windowWaitUntil_FrontIS	; 	<��	< K  3;	=	= ��	>���� 0 
windowname 
windowName	> m  69	?	? �	@	@ & S p e c i f y   C a l c u l a t i o n��  ��  ��  	:  f  23	8 	A��	A l @@��������  ��  ��  ��  	 B < ALREADY was a Calculation field, so need to click OPTIONS:    	 �	B	B x   A L R E A D Y   w a s   a   C a l c u l a t i o n   f i e l d ,   s o   n e e d   t o   c l i c k   O P T I O N S :  � 	C	D	C l BB��������  ��  ��  	D 	E	F	E l BB����~��  �  �~  	F 	G	H	G l BB�}�|�{�}  �|  �{  	H 	I	J	I Z  Bt	K	L�z�y	K G  BS	M	N	M = BG	O	P	O o  BC�x�x 0 editmode editMode	P m  CF	Q	Q �	R	R  C O N F O R M	N > JO	S	T	S n  JM	U	V	U o  KM�w�w 0 calccode calcCode	V o  JK�v�v 	0 prefs  	T m  MN�u
�u 
null	L k  Vp	W	W 	X	Y	X l VV�t	Z	[�t  	Z   CALCULATION CODE:   	[ �	\	\ $   C A L C U L A T I O N   C O D E :	Y 	]�s	] n Vp	^	_	^ I  Wp�r	`�q�r (0 fmgui_textfieldset fmGUI_TextFieldSet	` 	a	b	a n  Wi	c	d	c 4  di�p	e
�p 
txta	e m  gh�o�o 	d n  Wd	f	g	f 4  ]d�n	h
�n 
scra	h m  `c�m�m 	g 4  W]�l	i
�l 
cwin	i m  [\�k�k 	b 	j�j	j n  il	k	l	k o  jl�i�i 0 calccode calcCode	l o  ij�h�h 	0 prefs  �j  �q  	_  f  VW�s  �z  �y  	J 	m	n	m l uu�g�f�e�g  �f  �e  	n 	o	p	o l uu�d	q	r�d  	q ' ! Calc CONTEXT Table (occurrence):   	r �	s	s B   C a l c   C O N T E X T   T a b l e   ( o c c u r r e n c e ) :	p 	t	u	t Z  u�	v	w�c�b	v > uz	x	y	x n  ux	z	{	z o  vx�a�a  0 calccontexttoc calcContextTOC	{ o  uv�`�` 	0 prefs  	y m  xy�_
�_ 
null	w n }�	|	}	| I  ~��^	~�]�^  0 fmgui_popupset fmGUI_PopupSet	~ 		�	 6 ~�	�	�	� n  ~�	�	�	� 4 ���\	�
�\ 
popB	� m  ���[�[ 	� 4  ~��Z	�
�Z 
cwin	� m  ���Y�Y 	� E  ��	�	�	� 1  ���X
�X 
pnam	� m  ��	�	� �	�	�  c o n t e x t	� 	��W	� n  ��	�	�	� o  ���V�V  0 calccontexttoc calcContextTOC	� o  ���U�U 	0 prefs  �W  �]  	}  f  }~�c  �b  	u 	�	�	� l ���T�S�R�T  �S  �R  	� 	�	�	� l ���Q	�	��Q  	�   Calc Result TYPE:   	� �	�	� $   C a l c   R e s u l t   T Y P E :	� 	�	�	� Z  ��	�	��P�O	� > ��	�	�	� n  ��	�	�	� o  ���N�N 0 datatype dataType	� o  ���M�M 	0 prefs  	� m  ���L
�L 
null	� n ��	�	�	� I  ���K	��J�K  0 fmgui_popupset fmGUI_PopupSet	� 	�	�	� 6 ��	�	�	� n  ��	�	�	� 4 ���I	�
�I 
popB	� m  ���H�H 	� 4  ���G	�
�G 
cwin	� m  ���F�F 	� E  ��	�	�	� 1  ���E
�E 
pnam	� m  ��	�	� �	�	� * C a l c u l a t i o n   r e s u l t   i s	� 	��D	� n  ��	�	�	� o  ���C�C 0 datatype dataType	� o  ���B�B 	0 prefs  �D  �J  	�  f  ���P  �O  	� 	�	�	� l ���A�@�?�A  �@  �?  	� 	�	�	� l ���>	�	��>  	� 9 3 Do Not Evaluate if all referenced field are empty:   	� �	�	� f   D o   N o t   E v a l u a t e   i f   a l l   r e f e r e n c e d   f i e l d   a r e   e m p t y :	� 	�	�	� Z  �	�	��=�<	� > ��	�	�	� n  ��	�	�	� o  ���;�;  0 alwaysevaluate alwaysEvaluate	� o  ���:�: 	0 prefs  	� m  ���9
�9 
null	� k  �	�	� 	�	�	� r  ��	�	�	� 6 ��	�	�	� n  ��	�	�	� 4 ���8	�
�8 
chbx	� m  ���7�7 	� 4  ���6	�
�6 
cwin	� m  ���5�5 	� E  ��	�	�	� 1  ���4
�4 
pnam	� m  ��	�	� �	�	� J n o t   e v a l u a t e   i f   a l l   r e f e r e n c e d   f i e l d s	� o      �3�3 *0 notevaluatecheckbox notEvaluateCheckbox	� 	��2	� Z  �	�	��1	�	� n  ��	�	�	� o  ���0�0  0 alwaysevaluate alwaysEvaluate	� o  ���/�/ 	0 prefs  	� n �	�	�	� I   �.	��-�. &0 fmgui_checkboxset fmGUI_CheckboxSet	� 	�	�	� o   �,�, *0 notevaluatecheckbox notEvaluateCheckbox	� 	��+	� m  �*�*  �+  �-  	�  f  � �1  	� n 		�	�	� I  
�)	��(�) &0 fmgui_checkboxset fmGUI_CheckboxSet	� 	�	�	� o  
�'�' *0 notevaluatecheckbox notEvaluateCheckbox	� 	��&	� m  �%�% �&  �(  	�  f  	
�2  �=  �<  	� 	�	�	� l �$�#�"�$  �#  �"  	� 	�	�	� l �!	�	��!  	�   Repetitions:    	� �	�	�    R e p e t i t i o n s :  	� 	�	�	� Z  S	�	�� �	� G  (	�	�	� = 	�	�	� o  �� 0 editmode editMode	� m  	�	� �	�	�  C O N F O R M	� > $	�	�	� n  "	�	�	� o  "�� 0 maxrepetition maxRepetition	� o  �� 	0 prefs  	� m  "#�
� 
null	� n +O	�	�	� I  ,O�	��� (0 fmgui_textfieldset fmGUI_TextFieldSet	� 	�	�	� 6 ,F	�	�	� n  ,7	�	�	� 4 27�	�
� 
txtf	� m  56�� 	� 4  ,2�	�
� 
cwin	� m  01�� 	� E  :E	�
 	� 1  ;?�
� 
pnam
  m  @D

 �

  r e p e t i t i o n s	� 
�
 n  FK


 o  GK�� 0 maxrepetition maxRepetition
 o  FG�� 	0 prefs  �  �  	�  f  +,�   �  	� 


 l TT����  �  �  
 

	
 l TT����  �  �  
	 




 l TT�
�	��
  �	  �  
 


 Z  T�

��
 G  T�


 G  T


 G  Tq


 G  Te


 = TY


 o  TU�� 0 editmode editMode
 l 	UX
��
 m  UX

 �

  C O N F O R M�  �  
 > \a


 n  \_

 
 o  ]_�� 0 storageglobal storageGlobal
  o  \]�� 	0 prefs  
 l 
_`
!� ��
! m  _`��
�� 
null�   ��  
 > hm
"
#
" n  hk
$
%
$ o  ik���� 20 storecalculationresults storeCalculationResults
% o  hi���� 	0 prefs  
# l 
kl
&����
& m  kl��
�� 
null��  ��  
 > t{
'
(
' n  ty
)
*
) o  uy���� 0 indexlanguage indexLanguage
* o  tu���� 	0 prefs  
( l 
yz
+����
+ m  yz��
�� 
null��  ��  
 > ��
,
-
, n  ��
.
/
. o  ������ 0 	autoindex 	autoIndex
/ o  ������ 	0 prefs  
- l 
��
0����
0 m  ����
�� 
null��  ��  
 k  ��
1
1 
2
3
2 l ����
4
5��  
4   BEGIN: STORAGE OPTIONS   
5 �
6
6 .   B E G I N :   S T O R A G E   O P T I O N S
3 
7
8
7 l ����������  ��  ��  
8 
9
:
9 l ����
;
<��  
;   click Storage Options:    
< �
=
= 0   c l i c k   S t o r a g e   O p t i o n s :  
: 
>
?
> n ��
@
A
@ I  ����
B���� B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow
B 
C��
C 6 ��
D
E
D n  ��
F
G
F 4 ����
H
�� 
butT
H m  ������ 
G 4  ����
I
�� 
cwin
I m  ������ 
E E  ��
J
K
J 1  ����
�� 
pnam
K m  ��
L
L �
M
M  S t o r a g e   O p t i o n s��  ��  
A  f  ��
? 
N
O
N n ��
P
Q
P I  ����
R���� "0 windowwaituntil windowWaitUntil
R 
S��
S K  ��
T
T ��
U
V�� 0 
windowname 
windowName
U m  ��
W
W �
X
X & S t o r a g e   O p t i o n s   f o r
V ��
Y
Z��  0 windownametest windowNameTest
Y m  ��
[
[ �
\
\  s t a r t s   w i t h
Z ��
]���� 0 whichwindow whichWindow
] m  ��
^
^ �
_
_ 
 f r o n t��  ��  ��  
Q  f  ��
O 
`
a
` l ����������  ��  ��  
a 
b
c
b l ����������  ��  ��  
c 
d
e
d r  ��
f
g
f 4  ����
h
�� 
cwin
h m  ������ 
g o      ���� 0 workingarea workingArea
e 
i
j
i l ����������  ��  ��  
j 
k
l
k r  ��
m
n
m 6 ��
o
p
o n  ��
q
r
q 4 ����
s
�� 
chbx
s m  ������ 
r o  ������ 0 workingarea workingArea
p E  ��
t
u
t 1  ����
�� 
pnam
u m  ��
v
v �
w
w  g l o b a l   s t o r a g e
n o      ���� .0 globalstoragecheckbox globalStorageCheckbox
l 
x
y
x r  �
z
{
z 6 �
|
}
| n  ��
~

~ 4 ����
�
�� 
chbx
� m  ������ 
 o  ������ 0 workingarea workingArea
} E  �
�
�
� 1  ����
�� 
pnam
� m  � 
�
� �
�
�  D o   n o t   s t o r e
{ o      ���� (0 donotstorecheckbox doNotStoreCheckbox
y 
�
�
� l ��������  ��  ��  
� 
�
�
� Z  B
�
�����
� = 

�
�
� o  ���� 0 editmode editMode
� m  	
�
� �
�
�  C O N F O R M
� k  >
�
� 
�
�
� l ��
�
���  
� F @ These two CANNOT BE NULL if you are making this field CONFORM.    
� �
�
� �   T h e s e   t w o   C A N N O T   B E   N U L L   i f   y o u   a r e   m a k i n g   t h i s   f i e l d   C O N F O R M .  
� 
�
�
� Z %
�
�����
� = 
�
�
� n  
�
�
� o  ���� 0 storageglobal storageGlobal
� o  ���� 	0 prefs  
� m  ��
�� 
null
� R  !��
�
�
�� .ascrerr ****      � ****
� m   
�
� �
�
� @ s t o r a g e G l o b a l   m u s t   b e   s p e c i f i e d !
� ��
���
�� 
errn
� m  ���� ��  ��  ��  
� 
���
� Z &>
�
�����
� = &+
�
�
� n  &)
�
�
� o  ')���� 20 storecalculationresults storeCalculationResults
� o  &'���� 	0 prefs  
� m  )*��
�� 
null
� R  .:��
�
�
�� .ascrerr ****      � ****
� m  69
�
� �
�
� T s t o r e C a l c u l a t i o n R e s u l t s   m u s t   b e   s p e c i f i e d !
� ��
���
�� 
errn
� m  25���� ��  ��  ��  ��  ��  ��  
� 
�
�
� l CC��������  ��  ��  
� 
�
�
� Z  C�
�
�
�
�
� n  CG
�
�
� o  DF���� 0 storageglobal storageGlobal
� o  CD���� 	0 prefs  
� k  JS
�
� 
�
�
� n JQ
�
�
� I  KQ��
����� &0 fmgui_checkboxset fmGUI_CheckboxSet
� 
�
�
� o  KL���� .0 globalstoragecheckbox globalStorageCheckbox
� 
���
� m  LM���� ��  ��  
�  f  JK
� 
���
� l RR��������  ��  ��  ��  
� 
�
�
� H  VZ
�
� n  VY
�
�
� o  WY���� 20 storecalculationresults storeCalculationResults
� o  VW���� 	0 prefs  
� 
���
� k  ]f
�
� 
�
�
� n ]d
�
�
� I  ^d��
����� &0 fmgui_checkboxset fmGUI_CheckboxSet
� 
�
�
� o  ^_���� (0 donotstorecheckbox doNotStoreCheckbox
� 
���
� m  _`���� ��  ��  
�  f  ]^
� 
���
� l ee��������  ��  ��  ��  ��  
� l i�
�
�
�
� k  i�
�
� 
�
�
� n ip
�
�
� I  jp��
����� &0 fmgui_checkboxset fmGUI_CheckboxSet
� 
�
�
� o  jk���� .0 globalstoragecheckbox globalStorageCheckbox
� 
���
� m  kl����  ��  ��  
�  f  ij
� 
�
�
� n qx
�
�
� I  rx��
����� &0 fmgui_checkboxset fmGUI_CheckboxSet
� 
�
�
� o  rs���� (0 donotstorecheckbox doNotStoreCheckbox
� 
���
� m  st����  ��  ��  
�  f  qr
� 
�
�
� l yy��������  ��  ��  
� 
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
� o  yz�� 	0 prefs  
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
� I  ���~
��}�~ &0 fmgui_checkboxset fmGUI_CheckboxSet
� 
�
�
� n  ��
� 
� 4  ���|
�| 
chbx m  �� �  N o n e   1   o f   3  o  ���{�{ 0 workingarea workingArea
� �z m  ���y�y �z  �}  
�  f  ��
� �x l ���w�v�u�w  �v  �u  �x  
�  = ��	 n  ��

 o  ���t�t (0 storageindexchoice storageIndexChoice o  ���s�s 	0 prefs  	 m  �� �  M i n i m a l  k  ��  n �� I  ���r�q�r &0 fmgui_checkboxset fmGUI_CheckboxSet  n  �� 4  ���p
�p 
chbx m  �� �  M i n i m a l   2   o f   3 o  ���o�o 0 workingarea workingArea �n m  ���m�m �n  �q    f  �� �l l ���k�j�i�k  �j  �i  �l     = ��!"! n  ��#$# o  ���h�h (0 storageindexchoice storageIndexChoice$ o  ���g�g 	0 prefs  " m  ��%% �&&  A l l  '�f' k  ��(( )*) n ��+,+ I  ���e-�d�e &0 fmgui_checkboxset fmGUI_CheckboxSet- ./. n  ��010 4  ���c2
�c 
chbx2 m  ��33 �44  A l l   3   o f   31 o  ���b�b 0 workingarea workingArea/ 5�a5 m  ���`�` �a  �d  ,  f  ��* 6�_6 l ���^�]�\�^  �]  �\  �_  �f  ��  ��  
� 2 , NOT EITHER OF THOSE, SO UNCHECK THEM FIRST:   
� �77 X   N O T   E I T H E R   O F   T H O S E ,   S O   U N C H E C K   T H E M   F I R S T :
� 898 l ���[�Z�Y�[  �Z  �Y  9 :;: Z  �<=�X�W< > ��>?> n  ��@A@ o  ���V�V 0 indexlanguage indexLanguageA o  ���U�U 	0 prefs  ? m  ���T
�T 
null= n �BCB I  ��SD�R�S  0 fmgui_popupset fmGUI_PopupSetD EFE 6 ��GHG n  ��IJI 4 ���QK
�Q 
popBK m  ���P�P J o  ���O�O 0 workingarea workingAreaH E  ��LML 1  ���N
�N 
pnamM m  ��NN �OO   D e f a u l t   l a n g u a g eF P�MP n  ��QRQ o  ���L�L 0 indexlanguage indexLanguageR o  ���K�K 	0 prefs  �M  �R  C  f  ���X  �W  ; STS l �J�I�H�J  �I  �H  T UVU Z  HWX�G�FW > YZY n  [\[ o  �E�E 0 	autoindex 	autoIndex\ o  �D�D 	0 prefs  Z m  �C
�C 
nullX k  D]] ^_^ r  '`a` 6 %bcb n  ded 4 �Bf
�B 
chbxf m  �A�A e o  �@�@ 0 workingarea workingAreac E  $ghg 1  �?
�? 
pnamh m  #ii �jj  c r e a t e   i n d e x e sa o      �>�> &0 autoindexcheckbox autoIndexCheckbox_ klk Z  (Bmn�=om n  (.pqp o  )-�<�< 0 	autoindex 	autoIndexq o  ()�;�; 	0 prefs  n n 18rsr I  28�:t�9�: &0 fmgui_checkboxset fmGUI_CheckboxSett uvu o  23�8�8 &0 autoindexcheckbox autoIndexCheckboxv w�7w m  34�6�6 �7  �9  s  f  12�=  o n ;Bxyx I  <B�5z�4�5 &0 fmgui_checkboxset fmGUI_CheckboxSetz {|{ o  <=�3�3 &0 autoindexcheckbox autoIndexCheckbox| }�2} m  =>�1�1  �2  �4  y  f  ;<l ~�0~ l CC�/�.�-�/  �.  �-  �0  �G  �F  V � l II�,�+�*�,  �+  �*  � ��� l II�)���)  � %  click OK for Storage Options:    � ��� >   c l i c k   O K   f o r   S t o r a g e   O p t i o n s :  � ��� n Ic��� I  Jc�(��'�( B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow� ��&� 6 J_��� n  JP��� 4 KP�%�
�% 
butT� m  NO�$�$ � o  JK�#�# 0 workingarea workingArea� E  S^��� 1  TX�"
�" 
pnam� m  Y]�� ���  O K�&  �'  �  f  IJ� ��� l dd�!� ��!  �   �  � ��� n d��� I  e���� "0 windowwaituntil windowWaitUntil� ��� K  e{�� ���� 0 
windowname 
windowName� m  hk�� ��� & S t o r a g e   O p t i o n s   f o r� ����  0 windownametest windowNameTest� m  nq�� ��� & d o e s   n o t   s t a r t   w i t h� ���� 0 whichwindow whichWindow� m  tw�� ��� 
 f r o n t�  �  �  �  f  de� ��� l ������  �  �  � ��� l ������  �   END OF: STORAGE OPTIONS   � ��� 0   E N D   O F :   S T O R A G E   O P T I O N S�  �  �  
 ��� l ������  �  �  � ��� l ������ r  ����� 4  ����
� 
cwin� m  ���� � o      �� 0 workingarea workingArea� + % need reference to NEW first window.    � ��� J   n e e d   r e f e r e n c e   t o   N E W   f i r s t   w i n d o w .  � ��� l �����
�  �  �
  � ��� l ���	���	  � - ' click OK to save Specify Calculation:    � ��� N   c l i c k   O K   t o   s a v e   S p e c i f y   C a l c u l a t i o n :  � ��� n ����� I  ������ B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow� ��� 6 ����� n  ����� 4 ����
� 
butT� m  ���� � o  ���� 0 workingarea workingArea� E  ����� 1  ���
� 
pnam� m  ���� ���  O K�  �  �  f  ��� ��� l ���� ���  �   ��  � ��� n ����� I  ��������� "0 windowwaituntil windowWaitUntil� ���� K  ���� ������ 0 
windowname 
windowName� m  ���� ��� & S p e c i f y   C a l c u l a t i o n� ������  0 windownametest windowNameTest� m  ���� ���   d o e s   n o t   c o n t a i n� ������� 0 whichwindow whichWindow� m  ���� ��� 
 f r o n t��  ��  ��  �  f  ��� ��� l ����������  ��  ��  � ��� L  ���� m  ����
�� boovtrue� ��� l ����������  ��  ��  � ��� l ����������  ��  ��  � ���� l ����������  ��  ��  ��  u ��� = ����� n  ����� o  ������ 0 	fieldtype 	fieldType� o  ������ 	0 prefs  � m  ���� ���  S u m m a r y� ��� k  ���� ��� l ����������  ��  ��  � ��� l ��������  �   IF SUMMARY:   � ���    I F   S U M M A R Y :�    l ������     Field Type = Summary    � *   F i e l d   T y p e   =   S u m m a r y  l ������     click "contains Options"    �		 2   c l i c k   " c o n t a i n s   O p t i o n s " 

 l ������   / ) Data Type: popup "Calculation result is"    � R   D a t a   T y p e :   p o p u p   " C a l c u l a t i o n   r e s u l t   i s "  l ������     Calc Context Table    � &   C a l c   C o n t e x t   T a b l e  l ������     Calculation itself    � &   C a l c u l a t i o n   i t s e l f  l ������     Do Not Evaluate�    � "   D o   N o t   E v a l u a t e &  l ���� !��     	 Storage:   ! �""    S t o r a g e : #$# l ����%&��  % - '	Global, Do Not Store, None/Minimal/All   & �'' N 	 G l o b a l ,   D o   N o t   S t o r e ,   N o n e / M i n i m a l / A l l$ ()( l ����������  ��  ��  ) *+* l ����,-��  , p j if existing field was NOT ALREADY a summary, will get a warning message. Need to handle that possibility.   - �.. �   i f   e x i s t i n g   f i e l d   w a s   N O T   A L R E A D Y   a   s u m m a r y ,   w i l l   g e t   a   w a r n i n g   m e s s a g e .   N e e d   t o   h a n d l e   t h a t   p o s s i b i l i t y .+ /0/ l ����������  ��  ��  0 121 l ����34��  3   NOT YET SUPPORTED ! ! !    4 �55 2   N O T   Y E T   S U P P O R T E D   !   !   !  2 676 l ����89��  8   NOT YET SUPPORTED ! ! !    9 �:: 2   N O T   Y E T   S U P P O R T E D   !   !   !  7 ;<; l ����=>��  =   NOT YET SUPPORTED ! ! !    > �?? 2   N O T   Y E T   S U P P O R T E D   !   !   !  < @A@ l ����������  ��  ��  A B��B l ����������  ��  ��  ��  � CDC = ��EFE n  ��GHG o  ������ 0 	fieldtype 	fieldTypeH o  ������ 	0 prefs  F m  ��II �JJ  N o r m a lD K��K k  �xLL MNM l ����OP��  O / )ELSE IF NOT CALC (Field Type is Normal):	   P �QQ R E L S E   I F   N O T   C A L C   ( F i e l d   T y p e   i s   N o r m a l ) : 	N RSR l ����TU��  T  
 Data Type   U �VV    D a t a   T y p eS WXW l ����YZ��  Y   click "contains Options"   Z �[[ 2   c l i c k   " c o n t a i n s   O p t i o n s "X \]\ l ����^_��  ^   TAB: Storage:   _ �``    T A B :   S t o r a g e :] aba l ����cd��  c - '	Global, Do Not Store, None/Minimal/All   d �ee N 	 G l o b a l ,   D o   N o t   S t o r e ,   N o n e / M i n i m a l / A l lb fgf l ����hi��  h   TAB: Auto-Enter   i �jj     T A B :   A u t o - E n t e rg klk l ����mn��  m - '	Creation, Modification, Serial, Data,    n �oo N 	 C r e a t i o n ,   M o d i f i c a t i o n ,   S e r i a l ,   D a t a ,  l pqp l ����rs��  r  	Calculated Value:    s �tt & 	 C a l c u l a t e d   V a l u e :  q uvu l ����wx��  w   		Calc Context Table   x �yy *   	 	 C a l c   C o n t e x t   T a b l ev z{z l ����|}��  |   		Calculation itself   } �~~ *   	 	 C a l c u l a t i o n   i t s e l f{ � l ��������  �   		Do Not Evaluate�   � ��� &   	 	 D o   N o t   E v a l u a t e &� ��� l ��������  � % 	Do not replace existing value�   � ��� > 	 D o   n o t   r e p l a c e   e x i s t i n g   v a l u e &� ��� l ��������  �   TAB: Validation:   � ��� "   T A B :   V a l i d a t i o n :� ��� l ��������  �  	[Skip for now]   � ���  	 [ S k i p   f o r   n o w ]� ��� l ��������  �   Prohibit modification�   � ��� .   P r o h i b i t   m o d i f i c a t i o n &� ��� l ����������  ��  ��  � ��� l ����������  ��  ��  � ��� l ����������  ��  ��  � ��� l ��������  �   field DATA TYPE:   � ��� "   f i e l d   D A T A   T Y P E :� ��� Z  �|������� G  ����� = ����� o  ������ 0 editmode editMode� m  ���� ���  C O N F O R M� > ����� n  ����� o  ������ 0 datatype dataType� o  ������ 	0 prefs  � m  ����
�� 
null� k  �x�� ��� r  ���� n  ���� 4  ���
�� 
popB� m  
�� ��� 
 T y p e :� n  ���� 4  ����
�� 
tabg� m  ���� � 4  �����
�� 
cwin� m  ������ � o      ���� 0 datatypepopup dataTypePopup� ���� Z  x������� > ��� n  ��� 1  ��
�� 
valL� o  ���� 0 datatypepopup dataTypePopup� n  ��� o  ���� 0 datatype dataType� o  ���� 	0 prefs  � k  t�� ��� n #��� I  #�������  0 fmgui_popupset fmGUI_PopupSet� ��� o  ���� 0 datatypepopup dataTypePopup� ���� n  ��� o  ���� 0 datatype dataType� o  ���� 	0 prefs  ��  ��  �  f  � ��� l $$��������  ��  ��  � ��� l $$������  � * $ click CHANGE to save the data type.   � ��� H   c l i c k   C H A N G E   t o   s a v e   t h e   d a t a   t y p e .� ��� n $;��� I  %;������� B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow� ���� n  %7��� 4  07���
�� 
butT� m  36�� ���  C h a n g e� n  %0��� 4  +0���
�� 
tabg� m  ./���� � 4  %+���
�� 
cwin� m  )*���� ��  ��  �  f  $%� ��� l <<��������  ��  ��  � ��� I <C�����
�� .sysodelanull��� ��� nmbr� m  <?�� ?�      ��  � ��� l DD��������  ��  ��  � ��� l DD������  � 9 3 MIGHT open a dialog warning about type conversion:   � ��� f   M I G H T   o p e n   a   d i a l o g   w a r n i n g   a b o u t   t y p e   c o n v e r s i o n :� ���� Z  Dt����~� H  DS�� C  DR��� n  DN��� 1  JN�}
�} 
pnam� 4  DJ�|�
�| 
cwin� m  HI�{�{ � m  NQ�� �   & M a n a g e   D a t a b a s e   F o r� k  Vp  l VV�z�z   ' ! click OK to confirm the change:     � B   c l i c k   O K   t o   c o n f i r m   t h e   c h a n g e :    n Vh	
	 I  Wh�y�x�y B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow �w n  Wd 4  ]d�v
�v 
butT m  `c �  O K 4  W]�u
�u 
cwin m  [\�t�t �w  �x  
  f  VW  l ii�s�r�q�s  �r  �q   �p I ip�o�n
�o .sysodelanull��� ��� nmbr m  il ?�      �n  �p  �  �~  ��  ��  ��  ��  ��  ��  �  l }}�m�l�k�m  �l  �k    l }}�j�i�h�j  �i  �h    l }}�g�g     click Options:     �       c l i c k   O p t i o n s :   !"! n }�#$# I  ~��f%�e�f B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow% &�d& 6 ~�'(' n  ~�)*) 4 ���c+
�c 
butT+ m  ���b�b * n  ~�,-, 4  ���a.
�a 
tabg. m  ���`�` - 4  ~��_/
�_ 
cwin/ m  ���^�^ ( C  ��010 1  ���]
�] 
pnam1 m  ��22 �33  O p t i o n s�d  �e  $  f  }~" 454 n ��676 I  ���\8�[�\ "0 windowwaituntil windowWaitUntil8 9�Z9 K  ��:: �Y;<�Y 0 
windowname 
windowName; m  ��== �>>  O p t i o n s   f o r< �X?@�X  0 windownametest windowNameTest? m  ��AA �BB  s t a r t s   w i t h@ �WC�V�W 0 whichwindow whichWindowC m  ��DD �EE 
 f r o n t�V  �Z  �[  7  f  ��5 FGF l ���U�T�S�U  �T  �S  G HIH l ���R�Q�P�R  �Q  �P  I JKJ l ���OLM�O  L P J--------------------------------------------------------------------------   M �NN � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -K OPO l ���NQR�N  Q   NORMAL FIELD   R �SS    N O R M A L   F I E L DP TUT l ���MVW�M  V P J--------------------------------------------------------------------------   W �XX � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -U YZY r  ��[\[ n  ��]^] 4  ���L_
�L 
tabg_ m  ���K�K ^ 4  ���J`
�J 
cwin` m  ���I�I \ o      �H�H 0 workingarea workingAreaZ aba l ���G�F�E�G  �F  �E  b cdc l ���D�C�B�D  �C  �B  d efe l ���Agh�A  g P J--------------------------------------------------------------------------   h �ii � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -f jkj l ���@lm�@  l   STORAGE TAB:   m �nn    S T O R A G E   T A B :k opo l ���?qr�?  q P J--------------------------------------------------------------------------   r �ss � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -p tut l ���>�=�<�>  �=  �<  u vwv l ���;�:�9�;  �:  �9  w xyx l ���8�7�6�8  �7  �6  y z{z Z  �	|}�5�4| G  �~~ G  ����� G  ����� G  ����� = ����� o  ���3�3 0 editmode editMode� l 	����2�1� m  ���� ���  C O N F O R M�2  �1  � > ����� n  ����� o  ���0�0 0 storageglobal storageGlobal� o  ���/�/ 	0 prefs  � l 
����.�-� m  ���,
�, 
null�.  �-  � > ����� n  ����� o  ���+�+ (0 storageindexchoice storageIndexChoice� o  ���*�* 	0 prefs  � l 
����)�(� m  ���'
�' 
null�)  �(  � > ����� n  ����� o  ���&�& 0 indexlanguage indexLanguage� o  ���%�% 	0 prefs  � l 
����$�#� m  ���"
�" 
null�$  �#   > ���� n  ���� o  ��!�! 0 	autoindex 	autoIndex� o  ��� �  	0 prefs  � l 
���� m  �
� 
null�  �  } k  
	�� ��� l 

����  �  �  � ��� I 
���
� .prcsclicnull��� ��� uiel� n  
��� 4  ��
� 
radB� m  �� ���  S t o r a g e� o  
�� 0 workingarea workingArea�  � ��� l ����  �  �  � ��� l ����  �   Repetitions:   � ���    R e p e t i t i o n s :� ��� n 6��� I  6���� (0 fmgui_textfieldset fmGUI_TextFieldSet� ��� 6 -��� n  ��� 4 ��
� 
txtf� m  �� � o  �� 0 workingarea workingArea� E  !,��� 1  "&�
� 
pnam� m  '+�� ���  r e p e t i t i o n s� ��� n  -2��� o  .2�
�
 0 maxrepetition maxRepetition� o  -.�	�	 	0 prefs  �  �  �  f  � ��� l 77����  �  �  � ��� l 77����  �   Global:   � ���    G l o b a l :� ��� r  7N��� 6 7L��� n  7=��� 4 8=��
� 
chbx� m  ;<�� � o  78�� 0 workingarea workingArea� E  @K��� 1  AE�
� 
pnam� m  FJ�� ���  g l o b a l   s t o r a g e� o      � �  .0 globalstoragecheckbox globalStorageCheckbox� ��� l OO��������  ��  ��  � ��� Z  Os������� = OT��� o  OP���� 0 editmode editMode� m  PS�� ���  C O N F O R M� k  Wo�� ��� l WW������  � D > This CANNOT BE NULL, if we are making field conform!!!!!					   � ��� |   T h i s   C A N N O T   B E   N U L L ,   i f   w e   a r e   m a k i n g   f i e l d   c o n f o r m ! ! ! ! ! 	 	 	 	 	� ���� Z Wo������� = W\��� n  WZ��� o  XZ���� 0 storageglobal storageGlobal� o  WX���� 	0 prefs  � m  Z[��
�� 
null� R  _k����
�� .ascrerr ****      � ****� m  gj�� ��� @ s t o r a g e G l o b a l   m u s t   b e   s p e c i f i e d !� �����
�� 
errn� m  cf���� ��  ��  ��  ��  ��  ��  � ��� l tt��������  ��  ��  � ��� l tt��������  ��  ��  � ��� l tt��������  ��  ��  � ��� Z  t������� n  tx� � o  uw���� 0 storageglobal storageGlobal  o  tu���� 	0 prefs  � k  {�  l {{��������  ��  ��    Z  {����� > {�	 n  {�

 1  |���
�� 
valL o  {|���� .0 globalstoragecheckbox globalStorageCheckbox	 m  ������  k  ��  l ������   ( " should be GLOBAL, but is NOT yet:    � D   s h o u l d   b e   G L O B A L ,   b u t   i s   N O T   y e t :  n �� I  �������� *0 clickobjectbycoords clickObjectByCoords �� o  ������ .0 globalstoragecheckbox globalStorageCheckbox��  ��    f  ��  I ������
�� .sysodelanull��� ��� nmbr m  �� ?�      ��    l ����������  ��  ��    l ���� !��    G A MIGHT open a dialog warning about change to global status:						   ! �"" �   M I G H T   o p e n   a   d i a l o g   w a r n i n g   a b o u t   c h a n g e   t o   g l o b a l   s t a t u s : 	 	 	 	 	 	 #��# Z  ��$%����$ H  ��&& C  ��'(' n  ��)*) 1  ����
�� 
pnam* 4  ����+
�� 
cwin+ m  ������ ( m  ��,, �--  O p t i o n s   f o r% k  ��.. /0/ l ����12��  1 ' ! click OK to confirm the change:    2 �33 B   c l i c k   O K   t o   c o n f i r m   t h e   c h a n g e :  0 454 n ��676 I  ����8���� B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow8 9��9 n  ��:;: 4  ����<
�� 
butT< m  ��== �>>  O K; 4  ����?
�� 
cwin? m  ������ ��  ��  7  f  ��5 @A@ l ����������  ��  ��  A BCB l ����DE��  D < 6 wait until back to normal "Options for Field" window:   E �FF l   w a i t   u n t i l   b a c k   t o   n o r m a l   " O p t i o n s   f o r   F i e l d "   w i n d o w :C GHG n ��IJI I  ����K���� "0 windowwaituntil windowWaitUntilK L��L K  ��MM ��NO�� 0 
windowname 
windowNameN m  ��PP �QQ  O p t i o n s   f o rO ��RS��  0 windownametest windowNameTestR m  ��TT �UU  s t a r t s   w i t hS ��V���� 0 whichwindow whichWindowV m  ��WW �XX 
 f r o n t��  ��  ��  J  f  ��H Y��Y l ����������  ��  ��  ��  ��  ��  ��  ��  ��   Z[Z l ����������  ��  ��  [ \��\ l ����������  ��  ��  ��  ��  � l ��]^_] k  ��`` aba Z  �Hcd����c > ��efe n  ��ghg 1  ����
�� 
valLh o  ������ .0 globalstoragecheckbox globalStorageCheckboxf m  ������  d k  �Dii jkj l ����������  ��  ��  k lml l ����no��  n $  IS GLOBAL, but should NOT be:   o �pp <   I S   G L O B A L ,   b u t   s h o u l d   N O T   b e :m qrq n ��sts I  ����u���� *0 clickobjectbycoords clickObjectByCoordsu v��v o  ������ .0 globalstoragecheckbox globalStorageCheckbox��  ��  t  f  ��r wxw I ����y��
�� .sysodelanull��� ��� nmbry m  ��zz ?�      ��  x {|{ l ����������  ��  ��  | }~} l �������   G A MIGHT open a dialog warning about change to global status:						   � ��� �   M I G H T   o p e n   a   d i a l o g   w a r n i n g   a b o u t   c h a n g e   t o   g l o b a l   s t a t u s : 	 	 	 	 	 	~ ��� Z  �B������� H  ��� C  �
��� n  ���� 1  ��
�� 
pnam� 4  ����
�� 
cwin� m   ���� � m  	�� ���  O p t i o n s   f o r� k  >�� ��� l ������  � ' ! click OK to confirm the change:    � ��� B   c l i c k   O K   t o   c o n f i r m   t h e   c h a n g e :  � ��� n  ��� I   ������� B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow� ���� n  ��� 4  ���
�� 
butT� m  �� ���  O K� 4  ���
�� 
cwin� m  ���� ��  ��  �  f  � ��� l !!��������  ��  ��  � ��� l !!������  � < 6 wait until back to normal "Options for Field" window:   � ��� l   w a i t   u n t i l   b a c k   t o   n o r m a l   " O p t i o n s   f o r   F i e l d "   w i n d o w :� ��� n !<��� I  "<������� "0 windowwaituntil windowWaitUntil� ���� K  "8�� ������ 0 
windowname 
windowName� m  %(�� ���  O p t i o n s   f o r� ������  0 windownametest windowNameTest� m  +.�� ���  s t a r t s   w i t h� ������� 0 whichwindow whichWindow� m  14�� ��� 
 f r o n t��  ��  ��  �  f  !"� ���� l ==�������  ��  �  ��  ��  ��  � ��~� l CC�}�|�{�}  �|  �{  �~  ��  ��  b ��� l II�z�y�x�z  �y  �x  � ��� l II�w�v�u�w  �v  �u  � ��� l II�t���t  � ; 5 Then see which one of the Indexing choices is needed   � ��� j   T h e n   s e e   w h i c h   o n e   o f   t h e   I n d e x i n g   c h o i c e s   i s   n e e d e d� ��s� Z  I�����r� = IR��� n  IN��� o  JN�q�q (0 storageindexchoice storageIndexChoice� o  IJ�p�p 	0 prefs  � m  NQ�� ���  N o n e� k  Ue�� ��� n Uc��� I  Vc�o��n�o &0 fmgui_checkboxset fmGUI_CheckboxSet� ��� n  V^��� 4  W^�m�
�m 
chbx� m  Z]�� ���  N o n e   1   o f   3� o  VW�l�l 0 workingarea workingArea� ��k� m  ^_�j�j �k  �n  �  f  UV� ��i� o  de�h�h 0 fdsfdsf  �i  � ��� = hq��� n  hm��� o  im�g�g (0 storageindexchoice storageIndexChoice� o  hi�f�f 	0 prefs  � m  mp�� ���  M i n i m a l� ��� k  t��� ��� n t���� I  u��e��d�e &0 fmgui_checkboxset fmGUI_CheckboxSet� ��� n  u}��� 4  v}�c�
�c 
chbx� m  y|�� ���  M i n i m a l   2   o f   3� o  uv�b�b 0 workingarea workingArea� ��a� m  }~�`�` �a  �d  �  f  tu� ��_� l ���^�]�\�^  �]  �\  �_  � ��� = ����� n  ����� o  ���[�[ (0 storageindexchoice storageIndexChoice� o  ���Z�Z 	0 prefs  � m  ���� ���  A l l� ��Y� k  ����    n �� I  ���X�W�X &0 fmgui_checkboxset fmGUI_CheckboxSet  n  �� 4  ���V	
�V 
chbx	 m  ��

 �  A l l   3   o f   3 o  ���U�U 0 workingarea workingArea �T m  ���S�S �T  �W    f  �� �R l ���Q�P�O�Q  �P  �O  �R  �Y  �r  �s  ^ ' ! NOT global, SO UNCHECK it FIRST:   _ � B   N O T   g l o b a l ,   S O   U N C H E C K   i t   F I R S T :�  l ���N�M�L�N  �M  �L    l ���K�K     Index Language:     � "   I n d e x   L a n g u a g e :    Z  ���J�I > �� n  �� o  ���H�H 0 indexlanguage indexLanguage o  ���G�G 	0 prefs   m  ���F
�F 
null n �� I  ���E �D�E  0 fmgui_popupset fmGUI_PopupSet  !"! 6 ��#$# n  ��%&% 4 ���C'
�C 
popB' m  ���B�B & o  ���A�A 0 workingarea workingArea$ E  ��()( 1  ���@
�@ 
pnam) m  ��** �++   D e f a u l t   l a n g u a g e" ,�?, n  ��-.- o  ���>�> 0 indexlanguage indexLanguage. o  ���=�= 	0 prefs  �?  �D    f  ���J  �I   /0/ l ���<�;�:�<  �;  �:  0 121 l ���934�9  3 %  Create indexes automatically:    4 �55 >   C r e a t e   i n d e x e s   a u t o m a t i c a l l y :  2 676 Z  �	89�8�78 > ��:;: n  ��<=< o  ���6�6 0 	autoindex 	autoIndex= o  ���5�5 	0 prefs  ; m  ���4
�4 
null9 k  �	>> ?@? r  ��ABA 6 ��CDC n  ��EFE 4 ���3G
�3 
chbxG m  ���2�2 F o  ���1�1 0 workingarea workingAreaD E  ��HIH 1  ���0
�0 
pnamI m  ��JJ �KK  c r e a t e   i n d e x e sB o      �/�/ &0 autoindexcheckbox autoIndexCheckbox@ LML Z  �	NO�.PN n  ��QRQ o  ���-�- 0 	autoindex 	autoIndexR o  ���,�, 	0 prefs  O n 		STS I  		�+U�*�+ &0 fmgui_checkboxset fmGUI_CheckboxSetU VWV o  		�)�) &0 autoindexcheckbox autoIndexCheckboxW X�(X m  		�'�' �(  �*  T  f  		�.  P n 		YZY I  		�&[�%�& &0 fmgui_checkboxset fmGUI_CheckboxSet[ \]\ o  		�$�$ &0 autoindexcheckbox autoIndexCheckbox] ^�#^ m  		�"�"  �#  �%  Z  f  		M _�!_ l 		� ���   �  �  �!  �8  �7  7 `a` l 		����  �  �  a b�b l 		�cd�  c   END OF: Storage Tab.   d �ee *   E N D   O F :   S t o r a g e   T a b .�  �5  �4  { fgf l 		����  �  �  g hih l 		�jk�  j P J--------------------------------------------------------------------------   k �ll � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -i mnm l 		�op�  o   NORMAL FIELD   p �qq    N O R M A L   F I E L Dn rsr l 		�tu�  t U O--------------------------------------------------------------------------					   u �vv � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 	 	 	 	 	s wxw l 		�yz�  y   AUTO-ENTER TAB:   z �{{     A U T O - E N T E R   T A B :x |}| l 		�~�  ~ U O--------------------------------------------------------------------------					    ��� � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 	 	 	 	 	} ��� r  		,��� n  		*��� 4  	%	*��
� 
tabg� m  	(	)�� � 4  		%��
� 
cwin� m  	#	$�� � o      �� 0 workingarea workingArea� ��� I 	-	9���

� .prcsclicnull��� ��� uiel� n  	-	5��� 4  	.	5�	�
�	 
radB� m  	1	4�� ���  A u t o - E n t e r� o  	-	.�� 0 workingarea workingArea�
  � ��� l 	:	:����  �  �  � ��� l 	:	:����  �   Serial Number:   � ���    S e r i a l   N u m b e r :� ��� Z  	:
����� > 	:	A��� n  	:	?��� o  	;	?�� 0 
autoserial 
autoSerial� o  	:	;� �  	0 prefs  � m  	?	@��
�� 
null� Z  	D
������ = 	D	Q��� n  	D	M��� m  	I	M��
�� 
pcls� n  	D	I��� o  	E	I���� 0 
autoserial 
autoSerial� o  	D	E���� 	0 prefs  � m  	M	P��
�� 
bool� n 	T	b��� I  	U	b������� &0 fmgui_checkboxset fmGUI_CheckboxSet� ��� n  	U	]��� 4  	V	]���
�� 
chbx� m  	Y	\�� ���  S e r i a l   n u m b e r� o  	U	V���� 0 workingarea workingArea� ���� m  	]	^����  ��  ��  �  f  	T	U��  � k  	e
�� ��� l 	e	e������  � * $ autoSerial is a RECORD of settings:   � ��� H   a u t o S e r i a l   i s   a   R E C O R D   o f   s e t t i n g s :� ��� n 	e	s��� I  	f	s������� &0 fmgui_checkboxset fmGUI_CheckboxSet� ��� n  	f	n��� 4  	g	n���
�� 
chbx� m  	j	m�� ���  S e r i a l   n u m b e r� o  	f	g���� 0 workingarea workingArea� ���� m  	n	o���� ��  ��  �  f  	e	f� ��� l 	t	t��������  ��  ��  � ��� l 	t	t��������  ��  ��  � ��� n 	t	���� I  	u	�������� (0 fmgui_textfieldset fmGUI_TextFieldSet� ��� 6 	u	���� n  	u	{��� 4 	v	{���
�� 
txtf� m  	y	z���� � o  	u	v���� 0 workingarea workingArea� E  	~	���� 1  		���
�� 
pnam� m  	�	��� ���  n e x t   v a l u e� ���� n  	�	���� o  	�	����� 0 autonextvalue autoNextValue� n  	�	���� o  	�	����� 0 
autoserial 
autoSerial� o  	�	����� 	0 prefs  ��  ��  �  f  	t	u� ��� l 	�	���������  ��  ��  � ��� n 	�	���� I  	�	�������� (0 fmgui_textfieldset fmGUI_TextFieldSet� ��� 6 	�	���� n  	�	���� 4 	�	����
�� 
txtf� m  	�	����� � o  	�	����� 0 workingarea workingArea� E  	�	���� 1  	�	���
�� 
pnam� m  	�	��� ���  i n c r e m e n t� ���� n  	�	���� o  	�	����� 0 autoincrement autoIncrement� n  	�	���� o  	�	����� 0 
autoserial 
autoSerial� o  	�	����� 	0 prefs  ��  ��  �  f  	�	�� ��� l 	�	���������  ��  ��  � ��� Z  	�	������� = 	�	���� n  	�	�   o  	�	����� 0 autogenerate autoGenerate n  	�	� o  	�	����� 0 
autoserial 
autoSerial o  	�	����� 	0 prefs  � m  	�	� �  O n C r e a t i o n� n 	�	� I  	�	������� &0 fmgui_checkboxset fmGUI_CheckboxSet 	
	 n  	�	� 4  	�	���
�� 
chbx m  	�	� � $ O n   c r e a t i o n   1   o f   2 o  	�	����� 0 workingarea workingArea
 �� m  	�	����� ��  ��    f  	�	��  = 	�	� n  	�	� o  	�	����� 0 autogenerate autoGenerate n  	�	� o  	�	����� 0 
autoserial 
autoSerial o  	�	����� 	0 prefs   m  	�	� �  O n C o m m i t �� n 	�	� I  	�	������� &0 fmgui_checkboxset fmGUI_CheckboxSet   n  	�	�!"! 4  	�	���#
�� 
chbx# m  	�	�$$ �%%   O n   c o m m i t   2   o f   2" o  	�	����� 0 workingarea workingArea  &��& m  	�	����� ��  ��    f  	�	���  ��  � '��' l 
 
 ��������  ��  ��  ��  �  �  � ()( l 

��������  ��  ��  ) *+* l 

��������  ��  ��  + ,-, l 

��./��  . A ; Special Value (creation,modification,last visited record):   / �00 v   S p e c i a l   V a l u e   ( c r e a t i o n , m o d i f i c a t i o n , l a s t   v i s i t e d   r e c o r d ) :- 121 Z  
�34����3 > 

565 n  

787 o  

���� .0 autoenterspecialvalue autoEnterSpecialValue8 o  

���� 	0 prefs  6 m  

��
�� 
null4 k  
�99 :;: l 

��<=��  < � � autoEnterSpecialValue: keywords used in FM-XML: PreviousRecord, CreationAccountName, CreationUserName,CreationTimestamp, ModificationAccountName, et al.   = �>>2   a u t o E n t e r S p e c i a l V a l u e :   k e y w o r d s   u s e d   i n   F M - X M L :   P r e v i o u s R e c o r d ,   C r e a t i o n A c c o u n t N a m e ,   C r e a t i o n U s e r N a m e , C r e a t i o n T i m e s t a m p ,   M o d i f i c a t i o n A c c o u n t N a m e ,   e t   a l .; ?@? Z  
�ABC��A = 

DED n  

FGF o  

���� .0 autoenterspecialvalue autoEnterSpecialValueG o  

���� 	0 prefs  E m  

HH �II  P r e v i o u s R e c o r dB k  

9JJ KLK n 

7MNM I  

7��O���� &0 fmgui_checkboxset fmGUI_CheckboxSetO PQP 6 

2RSR n  

#TUT 4 

#��V
�� 
chbxV m  
!
"���� U o  

���� 0 workingarea workingAreaS E  
&
1WXW 1  
'
+��
�� 
pnamX m  
,
0YY �ZZ  l a s t   v i s i t e dQ [��[ m  
2
3���� ��  ��  N  f  

L \��\ l 
8
8��������  ��  ��  ��  C ]^] C  
<
E_`_ n  
<
Aaba o  
=
A���� .0 autoenterspecialvalue autoEnterSpecialValueb o  
<
=���� 	0 prefs  ` m  
A
Dcc �dd  C r e a t i o n^ efe k  
H
�gg hih Z  
H
�jkl��j = 
H
Qmnm n  
H
Mopo o  
I
M���� .0 autoenterspecialvalue autoEnterSpecialValuep o  
H
I���� 	0 prefs  n m  
M
Pqq �rr   C r e a t i o n U s e r N a m ek r  
T
Ysts m  
T
Wuu �vv  N a m et o      ���� 0 
menuchoice 
menuChoicel wxw = 
\
eyzy n  
\
a{|{ o  
]
a���� .0 autoenterspecialvalue autoEnterSpecialValue| o  
\
]���� 	0 prefs  z m  
a
d}} �~~  C r e a t i o n N a m ex � r  
h
m��� m  
h
k�� ���  N a m e� o      ���� 0 
menuchoice 
menuChoice� ��� = 
p
y��� n  
p
u��� o  
q
u���� .0 autoenterspecialvalue autoEnterSpecialValue� o  
p
q���� 	0 prefs  � m  
u
x�� ��� & C r e a t i o n A c c o u n t N a m e� ��� r  
|
���� m  
|
�� ���  A c c o u n t   N a m e� o      ���� 0 
menuchoice 
menuChoice� ��� = 
�
���� n  
�
���� o  
�
����� .0 autoenterspecialvalue autoEnterSpecialValue� o  
�
����� 	0 prefs  � m  
�
��� ��� " C r e a t i o n T i m e s t a m p� ��� r  
�
���� m  
�
��� ��� 2 T i m e s t a m p   ( D a t e   a n d   T i m e )� o      ���� 0 
menuchoice 
menuChoice� ��� = 
�
���� n  
�
���� o  
�
����� .0 autoenterspecialvalue autoEnterSpecialValue� o  
�
����� 	0 prefs  � m  
�
��� ���  C r e a t i o n T i m e� ��� r  
�
���� m  
�
��� ���  T i m e� o      ���� 0 
menuchoice 
menuChoice� ��� = 
�
���� n  
�
���� o  
�
����� .0 autoenterspecialvalue autoEnterSpecialValue� o  
�
����� 	0 prefs  � m  
�
��� ���  C r e a t i o n D a t e� ���� r  
�
���� m  
�
��� ���  D a t e� o      ���� 0 
menuchoice 
menuChoice��  ��  i ��� n 
�
���� I  
�
��������  0 fmgui_popupset fmGUI_PopupSet� ��� n  
�
���� 4  
�
����
�� 
popB� m  
�
��� ���  C r e a t i o n� o  
�
��� 0 workingarea workingArea� ��~� o  
�
��}�} 0 
menuchoice 
menuChoice�~  ��  �  f  
�
�� ��|� l 
�
��{�z�y�{  �z  �y  �|  f ��� C  
�
���� n  
�
���� o  
�
��x�x .0 autoenterspecialvalue autoEnterSpecialValue� o  
�
��w�w 	0 prefs  � m  
�
��� ���  M o d i f i c a t i o n� ��� k  
�k�� ��� Z  
�Z����v� = 
�
���� n  
�
���� o  
�
��u�u .0 autoenterspecialvalue autoEnterSpecialValue� o  
�
��t�t 	0 prefs  � m  
�
��� ��� ( M o d i f i c a t i o n U s e r N a m e� r  
�
���� m  
�
��� ���  N a m e� o      �s�s 0 
menuchoice 
menuChoice� ��� = 
�
���� n  
�
���� o  
�
��r�r .0 autoenterspecialvalue autoEnterSpecialValue� o  
�
��q�q 	0 prefs  � m  
�
��� ���   M o d i f i c a t i o n N a m e� ��� r  ��� m  �� ���  N a m e� o      �p�p 0 
menuchoice 
menuChoice� ��� = 	��� n  	��� o  
�o�o .0 autoenterspecialvalue autoEnterSpecialValue� o  	
�n�n 	0 prefs  � m  �� ��� . M o d i f i c a t i o n A c c o u n t N a m e� ��� r  ��� m  �� ���  A c c o u n t   N a m e� o      �m�m 0 
menuchoice 
menuChoice�    = & n  " o  "�l�l .0 autoenterspecialvalue autoEnterSpecialValue o  �k�k 	0 prefs   m  "% � * M o d i f i c a t i o n T i m e s t a m p 	 r  ).

 m  ), � 2 T i m e s t a m p   ( D a t e   a n d   T i m e ) o      �j�j 0 
menuchoice 
menuChoice	  = 1: n  16 o  26�i�i .0 autoenterspecialvalue autoEnterSpecialValue o  12�h�h 	0 prefs   m  69 �   M o d i f i c a t i o n T i m e  r  =B m  =@ �  T i m e o      �g�g 0 
menuchoice 
menuChoice  = EN n  EJ !  o  FJ�f�f .0 autoenterspecialvalue autoEnterSpecialValue! o  EF�e�e 	0 prefs   m  JM"" �##   M o d i f i c a t i o n D a t e $�d$ r  QV%&% m  QT'' �((  D a t e& o      �c�c 0 
menuchoice 
menuChoice�d  �v  � )*) n [i+,+ I  \i�b-�a�b  0 fmgui_popupset fmGUI_PopupSet- ./. n  \d010 4  ]d�`2
�` 
popB2 m  `c33 �44  M o d i f i c a t i o n1 o  \]�_�_ 0 workingarea workingArea/ 5�^5 o  de�]�] 0 
menuchoice 
menuChoice�^  �a  ,  f  [\* 676 l jj�\�[�Z�\  �[  �Z  7 8�Y8 l jj�X�W�V�X  �W  �V  �Y  � 9:9 = nw;<; n  ns=>= o  os�U�U .0 autoenterspecialvalue autoEnterSpecialValue> o  no�T�T 	0 prefs  < m  sv?? �@@  N O N E: A�SA k  z�BB CDC l zz�REF�R  E : 4 need to make sure NO special values are checked on:   F �GG h   n e e d   t o   m a k e   s u r e   N O   s p e c i a l   v a l u e s   a r e   c h e c k e d   o n :D HIH n z�JKJ I  {��QL�P�Q &0 fmgui_checkboxset fmGUI_CheckboxSetL MNM 6 {�OPO n  {�QRQ 4 |��OS
�O 
chbxS m  ��N�N R o  {|�M�M 0 workingarea workingAreaP = ��TUT 1  ���L
�L 
titlU m  ��VV �WW  C r e a t i o nN X�KX m  ���J�J  �K  �P  K  f  z{I YZY n ��[\[ I  ���I]�H�I &0 fmgui_checkboxset fmGUI_CheckboxSet] ^_^ 6 ��`a` n  ��bcb 4 ���Gd
�G 
chbxd m  ���F�F c o  ���E�E 0 workingarea workingAreaa = ��efe 1  ���D
�D 
titlf m  ��gg �hh  M o d i f i c a t i o n_ i�Ci m  ���B�B  �C  �H  \  f  ��Z jkj n ��lml I  ���An�@�A &0 fmgui_checkboxset fmGUI_CheckboxSetn opo 6 ��qrq n  ��sts 4 ���?u
�? 
chbxu m  ���>�> t o  ���=�= 0 workingarea workingArear E  ��vwv 1  ���<
�< 
pnamw m  ��xx �yy  l a s t   v i s i t e dp z�;z m  ���:�:  �;  �@  m  f  ��k {�9{ l ���8�7�6�8  �7  �6  �9  �S  ��  @ |}| l ���5�4�3�5  �4  �3  } ~�2~ l ���1�0�/�1  �0  �/  �2  ��  ��  2 � l ���.�-�,�.  �-  �,  � ��� l ���+���+  �   Constant:    � ���    C o n s t a n t :  � ��� Z  �D���*�)� > ����� n  ����� o  ���(�( *0 autoenterisconstant autoEnterIsConstant� o  ���'�' 	0 prefs  � m  ���&
�& 
null� k  �@�� ��� r  ����� 6 ����� n  ����� 4 ���%�
�% 
chbx� m  ���$�$ � o  ���#�# 0 workingarea workingArea� E  ����� 1  ���"
�" 
pnam� m  ���� ���  D a t a� o      �!�! 0 datacheckbox dataCheckbox� ��� Z  �>��� �� n  ���� o  ��� *0 autoenterisconstant autoEnterIsConstant� o  ���� 	0 prefs  � k  4�� ��� n ��� I  ���� &0 fmgui_checkboxset fmGUI_CheckboxSet� ��� o  �� 0 datacheckbox dataCheckbox� ��� m  �� �  �  �  f  � ��� Z  4����� = ��� n  ��� o  �� .0 autoenterconstantdata autoEnterConstantData� o  �� 	0 prefs  � m  �
� 
null� l ����  � 7 1 Possibly null if autoEnterIsConstant is false...   � ��� b   P o s s i b l y   n u l l   i f   a u t o E n t e r I s C o n s t a n t   i s   f a l s e . . .�  � n 4��� I  4���� (0 fmgui_textfieldset fmGUI_TextFieldSet� ��� n  +��� 4  $+��
� 
txta� m  '*�� ��� 
 D a t a :� n  $��� 4  $��
� 
scra� m   #�� ��� 
 D a t a :� o  �� 0 workingarea workingArea� ��� n  +0��� o  ,0�� .0 autoenterconstantdata autoEnterConstantData� o  +,�� 	0 prefs  �  �  �  f  �  �   � n 7>��� I  8>�
��	�
 &0 fmgui_checkboxset fmGUI_CheckboxSet� ��� o  89�� 0 datacheckbox dataCheckbox� ��� m  9:��  �  �	  �  f  78� ��� l ??����  �  �  � ��� l ??��� �  �  �   � ���� l ??��������  ��  ��  ��  �*  �)  � ��� l EE��������  ��  ��  � ��� Z  ET������� > EL��� n  EJ��� o  FJ���� &0 autoenterislookup autoEnterIsLookup� o  EF���� 	0 prefs  � m  JK��
�� 
null� k  OO�� ��� l OO������  �   NOT YET SUPPORTED!!!!!	   � ��� 0   N O T   Y E T   S U P P O R T E D ! ! ! ! ! 	� ��� l OO������  �   NOT YET SUPPORTED!!!!!	   � ��� 0   N O T   Y E T   S U P P O R T E D ! ! ! ! ! 	� ���� l OO������  � $  NOT YET SUPPORTED!!!!!							   � ��� <   N O T   Y E T   S U P P O R T E D ! ! ! ! ! 	 	 	 	 	 	 	��  ��  ��  � ��� l UU��������  ��  ��  � ��� l UU��������  ��  ��  � ��� l UU������  �   AutoEnter Calculation:    � ��� 0   A u t o E n t e r   C a l c u l a t i o n :  � ��� Z  U�������� > U\��� n  UZ��� o  VZ���� 00 autoenteriscalculation autoEnterIsCalculation� o  UV���� 	0 prefs  � m  Z[��
�� 
null� k  _��� � � Z  _��� H  _e n  _d o  `d���� 00 autoenteriscalculation autoEnterIsCalculation o  _`���� 	0 prefs   k  hx 	 l hh��
��  
 + % Need to make sure it is NOT checked:    � J   N e e d   t o   m a k e   s u r e   i t   i s   N O T   c h e c k e d :	  n hv I  iv������ &0 fmgui_checkboxset fmGUI_CheckboxSet  n  iq 4  jq��
�� 
chbx m  mp �   C a l c u l a t e d   v a l u e o  ij���� 0 workingarea workingArea �� m  qr����  ��  ��    f  hi �� l ww��������  ��  ��  ��  ��   l {� k  {�   r  {�!"! n  {�#$# 4  |���%
�� 
chbx% m  �&& �''   C a l c u l a t e d   v a l u e$ o  {|���� 0 workingarea workingArea" o      ���� .0 autoentercalccheckbox autoEnterCalcCheckbox  ()( l ����*+��  * G A if the checkbox is already checked, need to click Specify button   + �,, �   i f   t h e   c h e c k b o x   i s   a l r e a d y   c h e c k e d ,   n e e d   t o   c l i c k   S p e c i f y   b u t t o n) -.- l ����/0��  / ^ X if not already checked, checking it opens the window, so use special function for click   0 �11 �   i f   n o t   a l r e a d y   c h e c k e d ,   c h e c k i n g   i t   o p e n s   t h e   w i n d o w ,   s o   u s e   s p e c i a l   f u n c t i o n   f o r   c l i c k. 232 Z  ��45��64 > ��787 n  ��9:9 1  ����
�� 
valL: o  ������ .0 autoentercalccheckbox autoEnterCalcCheckbox8 m  ������ 5 n ��;<; I  ����=���� B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow= >��> o  ������ .0 autoentercalccheckbox autoEnterCalcCheckbox��  ��  <  f  ����  6 k  ��?? @A@ l ����BC��  B \ V there are TWO buttons named "Specify�" - the first is for CALC, second is for lookup:   C �DD �   t h e r e   a r e   T W O   b u t t o n s   n a m e d   " S p e c i f y & "   -   t h e   f i r s t   i s   f o r   C A L C ,   s e c o n d   i s   f o r   l o o k u p :A E��E n ��FGF I  ����H���� B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindowH I��I 6 ��JKJ n  ��LML 4 ����N
�� 
butTN m  ������ M o  ������ 0 workingarea workingAreaK C  ��OPO 1  ����
�� 
pnamP m  ��QQ �RR  S p e c i f y��  ��  G  f  ����  3 STS l ����������  ��  ��  T UVU l ����WX��  W + % wait for Specify Calculation window:   X �YY J   w a i t   f o r   S p e c i f y   C a l c u l a t i o n   w i n d o w :V Z[Z n ��\]\ I  ����^���� 20 windowwaituntil_frontis windowWaitUntil_FrontIS^ _��_ K  ��`` ��a���� 0 
windowname 
windowNamea m  ��bb �cc & S p e c i f y   C a l c u l a t i o n��  ��  ��  ]  f  ��[ ded l ����������  ��  ��  e fgf r  ��hih 4  ����j
�� 
cwinj m  ������ i o      ���� 0 workingarea workingAreag klk l ����������  ��  ��  l mnm l ����op��  o   CALCULATION CODE:   p �qq $   C A L C U L A T I O N   C O D E :n rsr l ����������  ��  ��  s tut Z  ��vw��xv = ��yzy n  ��{|{ 1  ����
�� 
leng| n  ��}~} o  ������ &0 autoentercalccode autoEnterCalcCode~ o  ������ 	0 prefs  z m  ������  w k  �� ��� l  ��������  � � � if for some reason an empty string is specified, we want to force an error in FM's syntax checker for the validation calc box instead of silently allowing an empty string as the validation calc.    � ����   i f   f o r   s o m e   r e a s o n   a n   e m p t y   s t r i n g   i s   s p e c i f i e d ,   w e   w a n t   t o   f o r c e   a n   e r r o r   i n   F M ' s   s y n t a x   c h e c k e r   f o r   t h e   v a l i d a t i o n   c a l c   b o x   i n s t e a d   o f   s i l e n t l y   a l l o w i n g   a n   e m p t y   s t r i n g   a s   t h e   v a l i d a t i o n   c a l c .  � ���� r  ����� m  ���� ��� i f   (   / *   a u t o - e n t e r   c a l c   w a s   s p e c i f i e d   a s   a n   e m p t y   s t r i n g   r a t h e r   t h a n   a   n u l l   v a l u e   i n d i c a t i n g   a   b u g   i n   t h e   s c r i p t   r u n n i n g   t h e   s e t u p   t o o l .   * /   )� o      ���� 20 autoentercalccode_value autoEnterCalcCode_VALUE��  ��  x r  ����� n  ����� o  ������ &0 autoentercalccode autoEnterCalcCode� o  ������ 	0 prefs  � o      ���� 20 autoentercalccode_value autoEnterCalcCode_VALUEu ��� l ����������  ��  ��  � ��� n ���� I  �������� (0 fmgui_textfieldset fmGUI_TextFieldSet� ��� n  ����� 4  �����
�� 
txta� m  ������ � n  ����� 4  �����
�� 
scra� m  ������ � 4  �����
�� 
cwin� m  ������ � ���� o  ������ 20 autoentercalccode_value autoEnterCalcCode_VALUE��  ��  �  f  ��� ��� l ��������  ��  ��  � ��� l ��������  ��  ��  � ��� l ������  � ' ! Calc CONTEXT Table (occurrence):   � ��� B   C a l c   C O N T E X T   T a b l e   ( o c c u r r e n c e ) :� ��� Z  -������� > 	��� n  ��� o  ���� 20 autoentercalccontexttoc autoEnterCalcContextTOC� o  ���� 	0 prefs  � m  ��
�� 
null� n )��� I  )�������  0 fmgui_popupset fmGUI_PopupSet� ��� 6 "��� n  ��� 4 ���
�� 
popB� m  ���� � o  ���� 0 workingarea workingArea� E  !��� 1  ��
�� 
pnam� m   �� ���  c o n t e x t� ��� n  "%��� o  #%�~�~ 20 autoentercalccontexttoc autoEnterCalcContextTOC� o  "#�}�} 	0 prefs  �  ��  �  f  ��  ��  � ��� l ..�|�{�z�|  �{  �z  � ��� l ..�y���y  � 9 3 Do Not Evaluate if all referenced field are empty:   � ��� f   D o   N o t   E v a l u a t e   i f   a l l   r e f e r e n c e d   f i e l d   a r e   e m p t y :� ��� Z  .j���x�w� > .3��� n  .1��� o  /1�v�v  0 alwaysevaluate alwaysEvaluate� o  ./�u�u 	0 prefs  � m  12�t
�t 
null� k  6f�� ��� r  6M��� 6 6K��� n  6<��� 4 7<�s�
�s 
chbx� m  :;�r�r � o  67�q�q 0 workingarea workingArea� E  ?J��� 1  @D�p
�p 
pnam� m  EI�� ��� J n o t   e v a l u a t e   i f   a l l   r e f e r e n c e d   f i e l d s� o      �o�o *0 notevaluatecheckbox notEvaluateCheckbox� ��n� Z  Nf���m�� n  NR��� o  OQ�l�l  0 alwaysevaluate alwaysEvaluate� o  NO�k�k 	0 prefs  � n U\��� I  V\�j��i�j &0 fmgui_checkboxset fmGUI_CheckboxSet� ��� o  VW�h�h *0 notevaluatecheckbox notEvaluateCheckbox� ��g� m  WX�f�f  �g  �i  �  f  UV�m  � n _f��� I  `f�e��d�e &0 fmgui_checkboxset fmGUI_CheckboxSet� ��� o  `a�c�c *0 notevaluatecheckbox notEvaluateCheckbox� ��b� m  ab�a�a �b  �d  �  f  _`�n  �x  �w  � ��� l kk�`�_�^�`  �_  �^  � ��� l kk�]�\�[�]  �\  �[  � ��� l kk�Z���Z  � - ' click OK to save Specify Calculation:    � ��� N   c l i c k   O K   t o   s a v e   S p e c i f y   C a l c u l a t i o n :  � ��� n k���� I  l��Y��X�Y B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow� ��W� 6 l�� � n  lr 4 mr�V
�V 
butT m  pq�U�U  o  lm�T�T 0 workingarea workingArea  E  u� 1  vz�S
�S 
pnam m  { �  O K�W  �X  �  f  kl� 	 l ���R�Q�P�R  �Q  �P  	 

 n �� I  ���O�N�O "0 windowwaituntil windowWaitUntil �M K  �� �L�L 0 
windowname 
windowName m  �� � & S p e c i f y   C a l c u l a t i o n �K�K  0 windownametest windowNameTest m  �� �   d o e s   n o t   c o n t a i n �J�I�J 0 whichwindow whichWindow m  �� � 
 f r o n t�I  �M  �N    f  ��  l ���H�G�F�H  �G  �F    r  �� !  n  ��"#" 4  ���E$
�E 
tabg$ m  ���D�D # 4  ���C%
�C 
cwin% m  ���B�B ! o      �A�A 0 workingarea workingArea &'& l ���@�?�>�@  �?  �>  ' ()( l ���=*+�=  * 7 1 Do not replace existing value of field (if any):   + �,, b   D o   n o t   r e p l a c e   e x i s t i n g   v a l u e   o f   f i e l d   ( i f   a n y ) :) -.- Z  ��/0�<�;/ > ��121 n  ��343 o  ���:�: 00 overwriteexistingvalue overwriteExistingValue4 o  ���9�9 	0 prefs  2 m  ���8
�8 
null0 k  ��55 676 r  ��898 6 ��:;: n  ��<=< 4 ���7>
�7 
chbx> m  ���6�6 = o  ���5�5 0 workingarea workingArea; E  ��?@? 1  ���4
�4 
pnam@ m  ��AA �BB . D o   n o t   r e p l a c e   e x i s t i n g9 o      �3�3 @0 overwriteexistingvaluecheckbox overwriteExistingValueCheckbox7 C�2C Z  ��DE�1FD n  ��GHG o  ���0�0 00 overwriteexistingvalue overwriteExistingValueH o  ���/�/ 	0 prefs  E n ��IJI I  ���.K�-�. &0 fmgui_checkboxset fmGUI_CheckboxSetK LML o  ���,�, @0 overwriteexistingvaluecheckbox overwriteExistingValueCheckboxM N�+N m  ���*�*  �+  �-  J  f  ���1  F n ��OPO I  ���)Q�(�) &0 fmgui_checkboxset fmGUI_CheckboxSetQ RSR o  ���'�' @0 overwriteexistingvaluecheckbox overwriteExistingValueCheckboxS T�&T m  ���%�% �&  �(  P  f  ���2  �<  �;  . UVU l ���$�#�"�$  �#  �"  V W�!W l ��� ���   �  �  �!     there IS a Calc:    �XX "   t h e r e   I S   a   C a l c :  Y�Y l ������  �  �  �  ��  ��  � Z[Z l ������  �  �  [ \]\ l ������  �  �  ] ^_^ l ���`a�  ` 8 2 Prohibit modification of value during data entry:   a �bb d   P r o h i b i t   m o d i f i c a t i o n   o f   v a l u e   d u r i n g   d a t a   e n t r y :_ cdc Z  �Eef��e > �ghg n  �iji o   �� 0 allowediting allowEditingj o  � �� 	0 prefs  h m  �
� 
nullf k  	Akk lml r  	"non 6 	pqp n  	rsr 4 
�t
� 
chbxt m  �� s o  	
�� 0 workingarea workingAreaq E  uvu 1  �

�
 
pnamv m  ww �xx * P r o h i b i t   m o d i f i c a t i o no o      �	�	 *0 prohibitmodcheckbox prohibitModCheckboxm y�y Z  #Az{�|z n  #)}~} o  $(�� 0 allowediting allowEditing~ o  #$�� 	0 prefs  { n ,5� I  -5���� &0 fmgui_checkboxset fmGUI_CheckboxSet� ��� o  -0�� *0 prohibitmodcheckbox prohibitModCheckbox� ��� m  01� �   �  �  �  f  ,-�  | n 8A��� I  9A������� &0 fmgui_checkboxset fmGUI_CheckboxSet� ��� o  9<���� *0 prohibitmodcheckbox prohibitModCheckbox� ���� m  <=���� ��  ��  �  f  89�  �  �  d ��� l FF��������  ��  ��  � ��� l FF��������  ��  ��  � ��� l FF������  � P J--------------------------------------------------------------------------   � ��� � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -� ��� l FF������  �   NORMAL FIELD   � ���    N O R M A L   F I E L D� ��� l FF������  � U O--------------------------------------------------------------------------					   � ��� � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 	 	 	 	 	� ��� l FF������  �   VALIDATION TAB:   � ���     V A L I D A T I O N   T A B :� ��� l FF������  � T N--------------------------------------------------------------------------				   � ��� � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 	 	 	 	� ��� l FF��������  ��  ��  � ��� l FF������  � 8 2 MOST VALIDATION FEATURES NOT YET SUPPORTED ! ! !    � ��� d   M O S T   V A L I D A T I O N   F E A T U R E S   N O T   Y E T   S U P P O R T E D   !   !   !  � ��� l FF������  � 8 2 MOST VALIDATION FEATURES NOT YET SUPPORTED ! ! !    � ��� d   M O S T   V A L I D A T I O N   F E A T U R E S   N O T   Y E T   S U P P O R T E D   !   !   !  � ��� l FF������  � 8 2 MOST VALIDATION FEATURES NOT YET SUPPORTED ! ! !    � ��� d   M O S T   V A L I D A T I O N   F E A T U R E S   N O T   Y E T   S U P P O R T E D   !   !   !  � ��� l FF��������  ��  ��  � ��� I FR�����
�� .prcsclicnull��� ��� uiel� n  FN��� 4  GN���
�� 
radB� m  JM�� ���  V a l i d a t i o n� o  FG���� 0 workingarea workingArea��  � ��� l SS��������  ��  ��  � ��� Z  S7������� > SZ��� n  SX��� o  TX���� (0 validationcalccode validationCalcCode� o  ST���� 	0 prefs  � m  XY��
�� 
null� k  ]3�� ��� l ]]��������  ��  ��  � ��� n ]j��� I  ^j������� B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow� ���� n  ^f��� 4  _f���
�� 
butT� m  be�� ���  S p e c i f y &� o  ^_���� 0 workingarea workingArea��  ��  �  f  ]^� ��� l kk��������  ��  ��  � ��� l kk������  � + % wait for Specify Calculation window:   � ��� J   w a i t   f o r   S p e c i f y   C a l c u l a t i o n   w i n d o w :� ��� n kx��� I  lx������� 20 windowwaituntil_frontis windowWaitUntil_FrontIS� ���� K  lt�� ������� 0 
windowname 
windowName� m  or�� ��� & S p e c i f y   C a l c u l a t i o n��  ��  ��  �  f  kl� ��� l yy��������  ��  ��  � ��� r  y���� 4  y���
�� 
cwin� m  }~���� � o      ���� 0 workingarea workingArea� ��� l ����������  ��  ��  � ��� l ��������  �   CALCULATION CODE:    � ��� &   C A L C U L A T I O N   C O D E :  � ��� Z  �������� = ��� � n  �� 1  ����
�� 
leng n  �� o  ������ (0 validationcalccode validationCalcCode o  ������ 	0 prefs    m  ������  � k  ��  l  ����	��   � � if for some reason an empty string is specified, we want to force an error in FM's syntax checker for the validation calc box instead of silently allowing an empty string as the validation calc.    	 �

�   i f   f o r   s o m e   r e a s o n   a n   e m p t y   s t r i n g   i s   s p e c i f i e d ,   w e   w a n t   t o   f o r c e   a n   e r r o r   i n   F M ' s   s y n t a x   c h e c k e r   f o r   t h e   v a l i d a t i o n   c a l c   b o x   i n s t e a d   o f   s i l e n t l y   a l l o w i n g   a n   e m p t y   s t r i n g   a s   t h e   v a l i d a t i o n   c a l c .   �� r  �� m  �� � i f   (   / *   v a l i d a t i o n   c a l c   w a s   s p e c i f i e d   a s   a n   e m p t y   s t r i n g   r a t h e r   t h a n   a   n u l l   v a l u e   i n d i c a t i n g   a   b u g   i n   t h e   s c r i p t   r u n n i n g   t h e   s e t u p   t o o l .   * /   ) o      ���� 40 validationcalccode_value validationCalcCode_VALUE��  ��  � r  �� n  �� o  ������ (0 validationcalccode validationCalcCode o  ������ 	0 prefs   o      ���� 40 validationcalccode_value validationCalcCode_VALUE�  l ����������  ��  ��    n �� I  �������� (0 fmgui_textfieldset fmGUI_TextFieldSet  n  �� 4  ����
�� 
txta m  ������  n  �� !  4  ����"
�� 
scra" m  ������ ! 4  ����#
�� 
cwin# m  ������  $��$ o  ������ 40 validationcalccode_value validationCalcCode_VALUE��  ��    f  �� %&% l ����������  ��  ��  & '(' l ����������  ��  ��  ( )*) l ����+,��  + ' ! Calc CONTEXT Table (occurrence):   , �-- B   C a l c   C O N T E X T   T a b l e   ( o c c u r r e n c e ) :* ./. Z  ��01����0 > ��232 n  ��454 o  ������ 40 validationcalccontexttoc validationCalcContextTOC5 o  ������ 	0 prefs  3 m  ����
�� 
null1 n ��676 I  ����8����  0 fmgui_popupset fmGUI_PopupSet8 9:9 6 ��;<; n  ��=>= 4 ����?
�� 
popB? m  ������ > o  ������ 0 workingarea workingArea< E  ��@A@ 1  ����
�� 
pnamA m  ��BB �CC  c o n t e x t: D��D n  ��EFE o  ������ 40 validationcalccontexttoc validationCalcContextTOCF o  ������ 	0 prefs  ��  ��  7  f  ����  ��  / GHG l ����������  ��  ��  H IJI l ���KL�  K - ' click OK to save Specify Calculation:    L �MM N   c l i c k   O K   t o   s a v e   S p e c i f y   C a l c u l a t i o n :  J NON n �PQP I  ��R�� B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindowR S�S 6 �TUT n  ��VWV 4 ���X
� 
butTX m  ���� W o  ���� 0 workingarea workingAreaU E  �YZY 1  ���
� 
pnamZ m  �[[ �\\  O K�  �  Q  f  ��O ]^] l ����  �  �  ^ _`_ n #aba I  	#�c�� "0 windowwaituntil windowWaitUntilc d�d K  	ee �fg� 0 
windowname 
windowNamef m  hh �ii & S p e c i f y   C a l c u l a t i o ng �jk�  0 windownametest windowNameTestj m  ll �mm   d o e s   n o t   c o n t a i nk �n�~� 0 whichwindow whichWindown m  oo �pp 
 f r o n t�~  �  �  b  f  	` qrq l $$�}�|�{�}  �|  �{  r sts r  $1uvu n  $/wxw 4  */�zy
�z 
tabgy m  -.�y�y x 4  $*�xz
�x 
cwinz m  ()�w�w v o      �v�v 0 workingarea workingAreat {|{ l 22�u�t�s�u  �t  �s  | }�r} l 22�q~�q  ~   END OF: Validation.     ��� *   E N D   O F :   V a l i d a t i o n .  �r  ��  ��  � ��� l 88�p�o�n�p  �o  �n  � ��� l 88�m�l�k�m  �l  �k  � ��� l 88�j���j  � #  SAVE NORMAL FIELD - OPTIONS:   � ��� :   S A V E   N O R M A L   F I E L D   -   O P T I O N S :� ��� l 88�i���i  � #  click OK for field Options:    � ��� :   c l i c k   O K   f o r   f i e l d   O p t i o n s :  � ��� n 8W��� I  9W�h��g�h B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow� ��f� 6 9S��� n  9D��� 4 ?D�e�
�e 
butT� m  BC�d�d � 4  9?�c�
�c 
cwin� m  =>�b�b � E  GR��� 1  HL�a
�a 
pnam� m  MQ�� ���  O K�f  �g  �  f  89� ��� l XX�`�_�^�`  �_  �^  � ��� n Xs��� I  Ys�]��\�] "0 windowwaituntil windowWaitUntil� ��[� K  Yo�� �Z���Z 0 
windowname 
windowName� m  \_�� ���  O p t i o n s   f o r� �Y���Y  0 windownametest windowNameTest� m  be�� ��� & d o e s   n o t   s t a r t   w i t h� �X��W�X 0 whichwindow whichWindow� m  hk�� ��� 
 f r o n t�W  �[  �\  �  f  XY� ��� l tt�V�U�T�V  �U  �T  � ��� l tt�S�R�Q�S  �R  �Q  � ��� L  tv�� m  tu�P
�P boovtrue� ��� l ww�O�N�M�O  �N  �M  � ��� l ww�L�K�J�L  �K  �J  � ��I� l ww�H�G�F�H  �G  �F  �I  ��  ��  [ ��� l }}�E�D�C�E  �D  �C  � ��� l }}�B�A�@�B  �A  �@  � ��� L  }�� m  }~�?
�? boovtrue� ��>� l ���=�<�;�=  �<  �;  �>  � 4   � ��:�
�: 
pcap� m   � ��� ��� , F i l e M a k e r   P r o   A d v a n c e d� m   � ����                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  � ��� l ���9�8�7�9  �8  �7  � ��� l ���6�5�4�6  �5  �4  � ��� l ���3�2�1�3  �2  �1  � ��0� l  ���/���/  � � �   DEBUGGING   DEBUGGING   DEBUGGING   DEBUGGING   DEBUGGING   DEBUGGING   
DEBUGGING   DEBUGGING   DEBUGGING   DEBUGGING   DEBUGGING   DEBUGGING   DEBUGGING   
   � ���B       D E B U G G I N G       D E B U G G I N G       D E B U G G I N G       D E B U G G I N G       D E B U G G I N G       D E B U G G I N G       
 D E B U G G I N G       D E B U G G I N G       D E B U G G I N G       D E B U G G I N G       D E B U G G I N G       D E B U G G I N G       D E B U G G I N G       
�0  � R      �.��
�. .ascrerr ****      � ****� o      �-�- 0 errmsg errMsg� �,��+
�, 
errn� o      �*�* 0 errnum errNum�+  � R  ���)��
�) .ascrerr ****      � ****� b  ����� b  ����� b  ����� m  ���� ��� 0 C o u l d n ' t   e d i t   a   F i e l d   -  � I  ���(��'�(  0 coercetostring coerceToString� ��&� o  ���%�% 	0 prefs  �&  �'  � m  ���� ���    -  � o  ���$�$ 0 errmsg errMsg� �#��"
�# 
errn� o  ���!�! 0 errnum errNum�"  � ��� l ��� ���   �  �  � ��� l ������  �  �  �   ��� l     ����  �  �  � ��� i   T W��� I      ���� :0 fmgui_managedb_field_select fmGUI_ManageDb_Field_Select� ��� o      �� 	0 prefs  �  �  � k    ��� ��� l     ����  �   version 1.2   � ���    v e r s i o n   1 . 2� ��� l     ����  �  �  � ��� r     
��� K     �� �� � 0 	fieldname 	fieldName� m    �
� 
null  �� 0 	tablename 	tableName m    �
� 
null �
�	�
 0 altpatterns altPatterns m    �
� 
null�	  � o      �� 0 defaultprefs defaultPrefs�  r     b    	 o    �� 	0 prefs  	 o    �� 0 defaultprefs defaultPrefs o      �� 	0 prefs   

 l   ����  �  �    l   � �      CONSTANTS:     �    C O N S T A N T S :    r     b     b     b     m     � @ t e l l   a p p l i c a t i o n   " S y s t e m   E v e n t s " o    ��
�� 
ret  l 	  ���� m     � b t e l l   a p p l i c a t i o n   p r o c e s s   " F i l e M a k e r   P r o   A d v a n c e d "��  ��   o    ��
�� 
ret  o      ����  0 testcodeheader testCodeHeader  !  r    "#" m    $$ �%%  s e l e c t   (# o      ���� 0 
selectcode 
selectCode! &'& r    "()( m     ** �++ � f i r s t   r o w   o f   ( t a b l e   1   o f   s c r o l l   a r e a   1   o f   t a b   g r o u p   1   o f   w i n d o w   1 )) o      ���� 0 
rowrefcode 
rowRefCode' ,-, r   # &./. m   # $00 �11    w h o s e  / o      ���� 0 	whosecode 	whoseCode- 232 r   ' *454 m   ' (66 �77 , v a l u e   o f   s t a t i c   t e x t   15 o      ���� *0 fieldnameobjectcode fieldNameObjectCode3 898 l  + +��:;��  : ( " (then some test will be inserted)   ; �<< D   ( t h e n   s o m e   t e s t   w i l l   b e   i n s e r t e d )9 =>= r   + .?@? m   + ,AA �BB 
   a n d  @ o      ���� $0 betweentestscode betweenTestsCode> CDC l  / /��EF��  E 7 1 (then possibly some other test will be inserted)   F �GG b   ( t h e n   p o s s i b l y   s o m e   o t h e r   t e s t   w i l l   b e   i n s e r t e d )D HIH r   / 2JKJ m   / 0LL �MM  )K o      ���� &0 afteralltestscode afterAllTestsCodeI NON r   3 <PQP b   3 :RSR b   3 8TUT b   3 6VWV o   3 4��
�� 
ret W m   4 5XX �YY  e n d   t e l lU o   6 7��
�� 
ret S m   8 9ZZ �[[  e n d   t e l lQ o      ����  0 testcodefooter testCodeFooterO \]\ l  = =��������  ��  ��  ] ^_^ Q   =�`ab` k   @�cc ded l  @ @��������  ��  ��  e fgf I   @ G��h���� >0 fmgui_managedb_fieldlistfocus fmGUI_ManageDb_FieldListFocush i��i J   A C����  ��  ��  g jkj l  H H��������  ��  ��  k lml Z  H \no����n >  H Mpqp n   H Krsr o   I K���� 0 	tablename 	tableNames o   H I���� 	0 prefs  q m   K L��
�� 
nullo I   P X��t���� @0 fmgui_managedb_fieldspicktable fmGUI_ManageDb_FieldsPickTablet u��u n   Q Tvwv o   R T���� 0 	tablename 	tableNamew o   Q R���� 	0 prefs  ��  ��  ��  ��  m xyx l  ] ]��������  ��  ��  y z{z I   ] b�������� (0 fmgui_appfrontmost fmGUI_AppFrontMost��  ��  { |}| l  c c��������  ��  ��  } ~~ Q   c����� k   f ��� ��� O   f ���� O   l ���� k   w ��� ��� l  w w��������  ��  ��  � ���� I  w ������
�� .miscslctnull���     uiel� l  w ������� 6  w ���� n   w ���� 4  � ����
�� 
crow� m   � ����� � l  w ������� n   w ���� 4   � ����
�� 
tabB� m   � ����� � n   w ���� 4   � ����
�� 
scra� m   � ����� � n   w ���� 4   } ���
� 
tabg� m   � ��� � 4   w }��
� 
cwin� m   { |�� ��  ��  � =  � ���� n   � ���� 1   � ��
� 
valL� 4   � ���
� 
sttx� m   � ��� � n   � ���� o   � ��� 0 	fieldname 	fieldName� o   � ��� 	0 prefs  ��  ��  ��  ��  � 4   l t��
� 
pcap� m   p s�� ��� , F i l e M a k e r   P r o   A d v a n c e d� m   f i���                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  � ��� L   � ��� m   � ��
� boovtrue�  � R      ���
� .ascrerr ****      � ****� o      �� 0 errmsg errMsg� ���
� 
errn� o      �� 0 errnum errNum�  � Z   ������� >  � ���� o   � ��� 0 errnum errNum� m   � ����I� k   � ��� ��� l  � �����  � / ) some error OTHER than not found in list:   � ��� R   s o m e   e r r o r   O T H E R   t h a n   n o t   f o u n d   i n   l i s t :� ��� R   � ����
� .ascrerr ****      � ****� o   � ��� 0 errmsg errMsg� ���
� 
errn� o   � ��� 0 errnum errNum�  �  �  � k   ���� ��� l  � �����  � * $ NOT FOUND, so try each altPattern:    � ��� H   N O T   F O U N D ,   s o   t r y   e a c h   a l t P a t t e r n :  � ��� r   � ���� m   � ��
� boovfals� o      �� $0 fieldnowselected fieldNowSelected� ��� X   ������ k   ���� ��� r   � ���� n   � ���� 1   � ��
� 
pcnt� n   � ���� o   � ��� 0 pattern  � o   � ��� 0 onealtpattern oneAltPattern� o      �� 0 testlist testList� ��� l  � �����  �  �  � ��� Q   ������ k   �l�� ��� l  � �����  � !  BEGIN: try oneAltPattern:    � ��� 6   B E G I N :   t r y   o n e A l t P a t t e r n :  � ��� l  � �����  �  �  � ��� r   � ���� J   � ���  � o      �� 0 testcode testCode� ��� X   �/���� s  *��� l '���� b  '��� b  ��� b  ��� m  �� ���  � n  ��� o  �� 0 testtype testType� o  �� 0 
onetestrec 
oneTestRec� m  �� ���   � n &��� I  &���� 0 quotestring quoteString� ��� n  "   o  "�� 0 	testmatch 	testMatch o  �� 0 
onetestrec 
oneTestRec�  �  �  f  �  �  � n        ;  () o  '(�� 0 testcode testCode� 0 
onetestrec 
oneTestRec� o   � ��� 0 testlist testList�  l 00����  �  �    r  0?	 n 0=

 I  1=��� 0 unparsechars unParseChars  o  12�� 0 testcode testCode � b  29 b  25 o  23�� $0 betweentestscode betweenTestsCode o  34�� *0 fieldnameobjectcode fieldNameObjectCode m  58 �   �  �    f  01	 o      �~�~ 0 testcode testCode  l @@�}�|�{�}  �|  �{    l @@�z�y�x�z  �y  �x    r  @Q b  @O b  @M !  b  @K"#" b  @G$%$ b  @E&'& b  @C()( o  @A�w�w 0 
selectcode 
selectCode) o  AB�v�v 0 
rowrefcode 
rowRefCode' o  CD�u�u 0 	whosecode 	whoseCode% o  EF�t�t *0 fieldnameobjectcode fieldNameObjectCode# m  GJ** �++   ! o  KL�s�s 0 testcode testCode o  MN�r�r &0 afteralltestscode afterAllTestsCode o      �q�q 0 testcode testCode ,-, l RR�p�o�n�p  �o  �n  - ./. r  RY010 b  RW232 b  RU454 o  RS�m�m  0 testcodeheader testCodeHeader5 o  ST�l�l 0 testcode testCode3 o  UV�k�k  0 testcodefooter testCodeFooter1 o      �j�j 0 testcode testCode/ 676 l ZZ�i�h�g�i  �h  �g  7 898 l ZZ�f�e�d�f  �e  �d  9 :;: O Zd<=< I ^c�c>�b
�c .sysodsct****        scpt> o  ^_�a�a 0 testcode testCode�b  =  f  Z[; ?@? l ee�`�_�^�`  �_  �^  @ ABA l ehCDEC r  ehFGF m  ef�]
�] boovtrueG o      �\�\ $0 fieldnowselected fieldNowSelectedD #  no error, so we selected it.   E �HH :   n o   e r r o r ,   s o   w e   s e l e c t e d   i t .B IJI l ijKLMK  S  ijL + % no need to keep checking altPatterns   M �NN J   n o   n e e d   t o   k e e p   c h e c k i n g   a l t P a t t e r n sJ OPO l kk�[�Z�Y�[  �Z  �Y  P Q�XQ l kk�WRS�W  R !  ERROR: try oneAltPattern.    S �TT 6   E R R O R :   t r y   o n e A l t P a t t e r n .  �X  � R      �VUV
�V .ascrerr ****      � ****U o      �U�U 0 errmsg errMsgV �TW�S
�T 
errnW o      �R�R 0 errnum errNum�S  � k  t�XX YZY Z  t�[\�Q][ > ty^_^ o  tu�P�P 0 errnum errNum_ m  ux�O�O�I\ k  |�`` aba l ||�Ncd�N  c / ) some error OTHER than not found in list:   d �ee R   s o m e   e r r o r   O T H E R   t h a n   n o t   f o u n d   i n   l i s t :b f�Mf R  |��Lgh
�L .ascrerr ****      � ****g o  ���K�K 0 errmsg errMsgh �Ji�I
�J 
errni o  ���H�H 0 errnum errNum�I  �M  �Q  ] l ���Gjk�G  j = 7 just try the next altPattern, so continue repeat loop.   k �ll n   j u s t   t r y   t h e   n e x t   a l t P a t t e r n ,   s o   c o n t i n u e   r e p e a t   l o o p .Z mnm l ���F�E�D�F  �E  �D  n o�Co l ���Bpq�B  p "  END OF: try oneAltPattern.    q �rr 8   E N D   O F :   t r y   o n e A l t P a t t e r n .  �C  � s�As l ���@�?�>�@  �?  �>  �A  � 0 onealtpattern oneAltPattern� n   � �tut o   � ��=�= 0 altpatterns altPatternsu o   � ��<�< 	0 prefs  � vwv l ���;�:�9�;  �:  �9  w xyx L  ��zz o  ���8�8 $0 fieldnowselected fieldNowSelectedy {�7{ l ���6�5�4�6  �5  �4  �7   |�3| l ���2�1�0�2  �1  �0  �3  a R      �/}~
�/ .ascrerr ****      � ****} o      �.�. 0 errmsg errMsg~ �-�,
�- 
errn o      �+�+ 0 errnum errNum�,  b R  ���*��
�* .ascrerr ****      � ****� b  ����� b  ����� b  ����� m  ���� ��� 4 C o u l d n ' t   s e l e c t   a   F i e l d   -  � I  ���)��(�)  0 coercetostring coerceToString� ��'� o  ���&�& 	0 prefs  �'  �(  � m  ���� ���    -  � o  ���%�% 0 errmsg errMsg� �$��#
�$ 
errn� o  ���"�" 0 errnum errNum�#  _ ��!� l ��� ���   �  �  �!  � ��� l     ����  �  �  � ��� i   X [��� I      ���� >0 fmgui_managedb_fieldlistfocus fmGUI_ManageDb_FieldListFocus� ��� o      �� 	0 prefs  �  �  � k     F�� ��� l     ����  � &   version 1.1, Daniel A. Shockley   � ��� @   v e r s i o n   1 . 1 ,   D a n i e l   A .   S h o c k l e y� ��� l     ����  �  �  � ��� Q     D���� k    4�� ��� I    
���� 40 fmgui_managedb_fieldstab fmGUI_ManageDb_FieldsTab� ��� J    ��  �  �  � ��� l   ����  �  �  � ��� O    2��� O    1��� k    0�� ��� n   ��� I    ��
�	� (0 fmgui_appfrontmost fmGUI_AppFrontMost�
  �	  �  f    � ��� r    -��� m    �
� boovtrue� n      ��� 1   * ,�
� 
focu� l   *���� n    *��� 4   ' *��
� 
tabB� m   ( )�� � n    '��� 4   $ '��
� 
scra� m   % &�� � n    $��� 4   ! $� �
�  
tabg� m   " #���� � 4    !���
�� 
cwin� m     ���� �  �  � ���� L   . 0�� m   . /��
�� boovtrue��  � 4    ���
�� 
pcap� m    �� ��� , F i l e M a k e r   P r o   A d v a n c e d� m    ���                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  � ���� l  3 3��������  ��  ��  ��  � R      ����
�� .ascrerr ****      � ****� o      ���� 0 errmsg errMsg� �����
�� 
errn� o      ���� 0 errnum errNum��  � R   < D����
�� .ascrerr ****      � ****� b   @ C��� m   @ A�� ��� > C o u l d n ' t   f o c u s   o n   F i e l d   l i s t   -  � o   A B���� 0 errmsg errMsg� �����
�� 
errn� o   > ?���� 0 errnum errNum��  � ���� l  E E��������  ��  ��  ��  � ��� l     ��������  ��  ��  � ��� i   \ _��� I      ������� @0 fmgui_managedb_fieldspicktable fmGUI_ManageDb_FieldsPickTable� ���� o      ���� 0 basetablename baseTableName��  ��  � k     G�� ��� l     ������  �   version 1.3   � ���    v e r s i o n   1 . 3� ��� l     ��������  ��  ��  � ��� Q     E���� k    1�� ��� I    
������� 40 fmgui_managedb_fieldstab fmGUI_ManageDb_FieldsTab� ���� J    ����  ��  ��  � ���� O    1��� O    0��� k    /�� ��� n   ��� I    �������� (0 fmgui_appfrontmost fmGUI_AppFrontMost��  ��  �  f    � ��� n   ,   I    ,������  0 fmgui_popupset fmGUI_PopupSet  n    ' 4   $ '��
�� 
popB m   % & �		  T a b l e : n    $

 4   ! $��
�� 
tabg m   " #����  4    !��
�� 
cwin m     ����  �� o   ' (���� 0 basetablename baseTableName��  ��    f    � �� L   - / m   - .��
�� boovtrue��  � 4    ��
�� 
pcap m     � , F i l e M a k e r   P r o   A d v a n c e d� m    �                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  ��  � R      ��
�� .ascrerr ****      � **** o      ���� 0 errmsg errMsg ����
�� 
errn o      ���� 0 errnum errNum��  � R   9 E��
�� .ascrerr ****      � **** b   = D b   = B b   = @ m   = >   �!! . C o u l d n ' t   s e l e c t   t a b l e   ' o   > ?���� 0 basetablename baseTableName m   @ A"" �##  '   -   o   B C���� 0 errmsg errMsg ��$�
�� 
errn$ o   ; <�� 0 errnum errNum�  � %�% l  F F����  �  �  �  � &'& l     ����  �  �  ' ()( i   ` c*+* I      �,�� 40 fmgui_managedb_fieldstab fmGUI_ManageDb_FieldsTab, -�- o      �� 	0 prefs  �  �  + k     \.. /0/ l     �12�  1 &   version 1.2, Daniel A. Shockley   2 �33 @   v e r s i o n   1 . 2 ,   D a n i e l   A .   S h o c k l e y0 454 l     ����  �  �  5 676 Q     Z89:8 k    H;; <=< I    
�>�� *0 fmgui_managedb_open fmGUI_ManageDb_Open> ?�? J    ��  �  �  = @�@ O    HABA O    GCDC k    FEE FGF n   HIH I    ���� (0 fmgui_appfrontmost fmGUI_AppFrontMost�  �  I  f    G JKJ r    1LML 6   /NON n    &PQP 4  # &�R
� 
radBR m   $ %�� Q n    #STS 4     #�U
� 
tabgU m   ! "�� T 4     �V
� 
cwinV m    �� O E   ' .WXW 1   ( *�
� 
titlX m   + -YY �ZZ 
 F i e l dM o      �� "0 fieldstabobject fieldsTabObjectK [\[ Z   2 C]^��] >  2 7_`_ n   2 5aba 1   3 5�
� 
valLb o   2 3�� "0 fieldstabobject fieldsTabObject` m   5 6�� ^ I  : ?�c�
� .prcsclicnull��� ��� uielc o   : ;�� "0 fieldstabobject fieldsTabObject�  �  �  \ d�d L   D Fee m   D E�
� boovtrue�  D 4    �f
� 
pcapf m    gg �hh , F i l e M a k e r   P r o   A d v a n c e dB m    ii�                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  �  9 R      �jk
� .ascrerr ****      � ****j o      �� 0 errmsg errMsgk �l�
� 
errnl o      �� 0 errnum errNum�  : R   P Z�mn
� .ascrerr ****      � ****m b   T Yopo m   T Wqq �rr @ C o u l d n ' t   g o   t o   t h e   f i e l d s   t a b   -  p o   W X�� 0 errmsg errMsgn �s�
� 
errns o   R S�� 0 errnum errNum�  7 t�t l  [ [����  �  �  �  ) uvu l     ����  �  �  v wxw i   d gyzy I      �{�� *0 fmgui_managedb_open fmGUI_ManageDb_Open{ |�| o      �� 	0 prefs  �  �  z k    �}} ~~ l     �~���~  �   version 1.2, NYHTC   � ��� &   v e r s i o n   1 . 2 ,   N Y H T C ��� l     �}�|�{�}  �|  �{  � ��� Q    ����� O   ���� O   ���� k   ��� ��� l   �z�y�x�z  �y  �x  � ��� n   ��� I    �w�v�u�w (0 fmgui_appfrontmost fmGUI_AppFrontMost�v  �u  �  f    � ��� l   �t�s�r�t  �s  �r  � ��� l   �q���q  �   try to open Manage DB   � ��� ,   t r y   t o   o p e n   M a n a g e   D B� ��p� Z   ����o�� C    ��� n    ��� 1    �n
�n 
pnam� 4    �m�
�m 
cwin� m    �l�l � m    �� ��� & M a n a g e   D a t a b a s e   f o r� L    !�� m     �k
�k boovtrue�o  � k   $��� ��� I  $ D�j��i
�j .prcsclicnull��� ��� uiel� l  $ @��h�g� 6  $ @��� n   $ 7��� 4  4 7�f�
�f 
menI� m   5 6�e�e � n   $ 4��� 4   1 4�d�
�d 
menE� m   2 3�c�c � n   $ 1��� 4   . 1�b�
�b 
menI� m   / 0�� ���  M a n a g e� n   $ .��� 4   + .�a�
�a 
menE� m   , -�`�` � n   $ +��� 4   ( +�_�
�_ 
mbri� m   ) *�� ���  F i l e� 4   $ (�^�
�^ 
mbar� m   & '�]�] � C   8 ?��� 1   9 ;�\
�\ 
pnam� m   < >�� ���  D a t a b a s e�h  �g  �i  � ��� l  E E�[�Z�Y�[  �Z  �Y  � ��� l  E E�X���X  �   TO DO   � ���    T O   D O� ��� l  E E�W���W  �   TO DO   � ���    T O   D O� ��� l  E E�V���V  �   TO DO   � ���    T O   D O� ��� l  E E�U���U  � v p 2015-06-03 ( eshagdar ): probably going to need to open manageDB via openManageDB script if the menu item fails   � ��� �   2 0 1 5 - 0 6 - 0 3   (   e s h a g d a r   ) :   p r o b a b l y   g o i n g   t o   n e e d   t o   o p e n   m a n a g e D B   v i a   o p e n M a n a g e D B   s c r i p t   i f   t h e   m e n u   i t e m   f a i l s� ��� l  E E�T�S�R�T  �S  �R  � ��� l  E E�Q���Q  � 3 - do this in case already on relationships tab   � ��� Z   d o   t h i s   i n   c a s e   a l r e a d y   o n   r e l a t i o n s h i p s   t a b� ��� l  E J���� I  E J�P��O
�P .sysodelanull��� ��� nmbr� m   E F�N�N �O  �   seconds   � ���    s e c o n d s� ��� r   K N��� m   K L�M
�M boovtrue� o      �L�L *0 lookingforxdbcerror lookingForXDBCError� ��� V   O ���� Z   U ����K�� C  U _��� n   U [��� 1   Y [�J
�J 
pnam� 4   U Y�I�
�I 
cwin� m   W X�H�H � m   [ ^�� ���  C o n n e c t   t o  � k   b ��� ��� I  b z�G �F
�G .prcsclicnull��� ��� uiel  l  b v�E�D 6  b v n   b k 4  f k�C
�C 
butT m   i j�B�B  4   b f�A
�A 
cwin m   d e�@�@  =  l u	 1   m o�?
�? 
pnam	 m   p t

 �  C a n c e l�E  �D  �F  � �> l  { � I  { ��=�<
�= .sysodelanull��� ��� nmbr m   { |�;�; �<     seconds    �    s e c o n d s�>  �K  � r   � � m   � ��:
�: boovfals o      �9�9 *0 lookingforxdbcerror lookingForXDBCError� o   S T�8�8 *0 lookingforxdbcerror lookingForXDBCError�  l  � ��7�6�5�7  �6  �5    l  � ��4�4   P J to to the TOs tab and dismiss any xDBC connections that failed to connect    � �   t o   t o   t h e   T O s   t a b   a n d   d i s m i s s   a n y   x D B C   c o n n e c t i o n s   t h a t   f a i l e d   t o   c o n n e c t  n  � � I   � ��3�2�3 B0 fmgui_managedb_relationshipstab fmGUI_ManageDb_RelationshipsTab  �1  J   � ��0�0  �1  �2    f   � � !"! l  � �#$%# I  � ��/&�.
�/ .sysodelanull��� ��� nmbr& m   � ��-�- �.  $   seconds   % �''    s e c o n d s" ()( r   � �*+* m   � ��,
�, boovtrue+ o      �+�+ *0 lookingforxdbcerror lookingForXDBCError) ,-, V   � �./. Z   � �01�*20 C  � �343 n   � �565 1   � ��)
�) 
pnam6 4   � ��(7
�( 
cwin7 m   � ��'�' 4 m   � �88 �99  C o n n e c t   t o  1 k   � �:: ;<; I  � ��&=�%
�& .prcsclicnull��� ��� uiel= l  � �>�$�#> 6  � �?@? n   � �ABA 4  � ��"C
�" 
butTC m   � ��!�! B 4   � �� D
�  
cwinD m   � ��� @ =  � �EFE 1   � ��
� 
pnamF m   � �GG �HH  C a n c e l�$  �#  �%  < I�I l  � �JKLJ I  � ��M�
� .sysodelanull��� ��� nmbrM m   � ��� �  K   seconds   L �NN    s e c o n d s�  �*  2 r   � �OPO m   � ��
� boovfalsP o      �� *0 lookingforxdbcerror lookingForXDBCError/ o   � ��� *0 lookingforxdbcerror lookingForXDBCError- QRQ l  � �����  �  �  R STS l  � ��UV�  U M Gzoom out to show all TOs and dismiss any that weren't already dismissed   V �WW � z o o m   o u t   t o   s h o w   a l l   T O s   a n d   d i s m i s s   a n y   t h a t   w e r e n ' t   a l r e a d y   d i s m i s s e dT XYX I  � ��Z[
� .prcskprsnull���     ctxtZ m   � �\\ �]]  i[ �^�
� 
faal^ m   � ��
� eMdsKcmd�  Y _`_ l  � �abca I  � ��d�
� .sysodelanull��� ��� nmbrd m   � ��� �  b   seconds   c �ee    s e c o n d s` fgf r   � �hih m   � ��
� boovtruei o      �
�
 *0 lookingforxdbcerror lookingForXDBCErrorg jkj V   �&lml Z   �!no�	pn C  �qrq n   � �sts 1   � ��
� 
pnamt 4   � ��u
� 
cwinu m   � ��� r m   �vv �ww  C o n n e c t   t o  o k  xx yzy I �{�
� .prcsclicnull��� ��� uiel{ n  |}| 4  
�~
� 
butT~ m   ���  C a n c e l} 4  
��
� 
cwin� m  	�� �  z �� � l ���� I �����
�� .sysodelanull��� ��� nmbr� m  ���� ��  �   seconds   � ���    s e c o n d s�   �	  p r  !��� m  ��
�� boovfals� o      ���� *0 lookingforxdbcerror lookingForXDBCErrorm o   � ����� *0 lookingforxdbcerror lookingForXDBCErrork ��� l ''��������  ��  ��  � ��� l ''������  �   zoom back in   � ���    z o o m   b a c k   i n� ��� r  '7��� n  '5��� 4  05���
�� 
txtf� m  34���� � n  '0��� 4  +0���
�� 
tabg� m  ./���� � 4  '+���
�� 
cwin� m  )*���� � o      ���� 0 	zoomfield 	zoomField� ��� r  8?��� m  89��
�� boovtrue� n      ��� 1  :>��
�� 
focu� o  9:���� 0 	zoomfield 	zoomField� ��� r  @I��� m  @C�� ���  1 0 0� n      ��� 1  DH��
�� 
valL� o  CD���� 0 	zoomfield 	zoomField� ��� r  J^��� m  JK��
�� boovtrue� n      ��� 1  Y]��
�� 
focu� n  KY��� 4  TY���
�� 
scra� m  WX���� � n  KT��� 4  OT���
�� 
tabg� m  RS���� � 4  KO���
�� 
cwin� m  MN���� � ��� r  _x��� m  _`����  � n      ��� 1  sw��
�� 
valL� n  `s��� 4  ns���
�� 
scrb� m  qr���� � n  `n��� 4  in���
�� 
scra� m  lm���� � n  `i��� 4  di���
�� 
tabg� m  gh���� � 4  `d���
�� 
cwin� m  bc���� � ��� r  y���� m  yz����  � n      ��� 1  ����
�� 
valL� n  z���� 4  �����
�� 
scrb� m  ������ � n  z���� 4  �����
�� 
scra� m  ������ � n  z���� 4  ~����
�� 
tabg� m  ������ � 4  z~���
�� 
cwin� m  |}���� � ��� l ����������  ��  ��  � ���� L  ���� m  ����
�� boovtrue��  �p  � 4    ���
�� 
pcap� m   	 
�� ��� , F i l e M a k e r   P r o   A d v a n c e d� m    ���                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  � R      ����
�� .ascrerr ****      � ****� o      ���� 0 errmsg errMsg� �����
�� 
errn� o      ���� 0 errnum errNum��  � R  ������
�� .ascrerr ****      � ****� b  ����� m  ���� ��� 4 C o u l d n ' t   o p e n   m a n a g e   D B   -  � o  ������ 0 errmsg errMsg� ����
�� 
errn� o  ���� 0 errnum errNum�  � ��� l ������  �  �  �  x ��� l     ����  �  �  � ��� i   h k��� I      ���� B0 fmgui_managedb_relationshipstab fmGUI_ManageDb_RelationshipsTab� ��� o      �� 	0 prefs  �  �  � k     \�� ��� l     ����  �   version 1.2   � ���    v e r s i o n   1 . 2� ��� l     ����  �  �  � ��� Q     Z���� k    H��    I    
��� *0 fmgui_managedb_open fmGUI_ManageDb_Open � J    ��  �  �   � O    H O    G k    F		 

 n    I    ���� (0 fmgui_appfrontmost fmGUI_AppFrontMost�  �    f      r    1 6   / n    & 4  # &�
� 
radB m   $ %��  n    # 4     #�
� 
tabg m   ! "��  4     �
� 
cwin m    ��  E   ' . 1   ( *�
� 
titl m   + - �  R e l a t i o n s h i p o      �� "0 fieldstabobject fieldsTabObject   Z   2 C!"��! >  2 7#$# n   2 5%&% 1   3 5�
� 
valL& o   2 3�� "0 fieldstabobject fieldsTabObject$ m   5 6�� " I  : ?�'�
� .prcsclicnull��� ��� uiel' o   : ;�� "0 fieldstabobject fieldsTabObject�  �  �    (�( L   D F)) m   D E�
� boovtrue�   4    �*
� 
pcap* m    ++ �,, , F i l e M a k e r   P r o   A d v a n c e d m    --�                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  �  � R      �./
� .ascrerr ****      � ****. o      �� 0 errmsg errMsg/ �0�
� 
errn0 o      �� 0 errnum errNum�  � R   P Z�12
� .ascrerr ****      � ****1 b   T Y343 m   T W55 �66 N C o u l d n ' t   g o   t o   t h e   R e l a t i o n s h i p s   t a b   -  4 o   W X�� 0 errmsg errMsg2 �7�
� 
errn7 o   R S�� 0 errnum errNum�  � 8�8 l  [ [����  �  �  �  � 9:9 l     ����  �  �  : ;<; i   l o=>= I      �?�� *0 fmgui_managedb_save fmGUI_ManageDB_Save? @�@ o      �� 	0 prefs  �  �  > k     �AA BCB l     �~DE�~  D   version 1.4   E �FF    v e r s i o n   1 . 4C GHG l     �}�|�{�}  �|  �{  H IJI r     KLK K     MM �zN�y�z ,0 notinmanagedbiserror notInManageDbIsErrorN m    �x
�x boovtrue�y  L o      �w�w 0 defaultprefs defaultPrefsJ OPO l   �v�u�t�v  �u  �t  P QRQ r    STS b    
UVU o    �s�s 	0 prefs  V o    	�r�r 0 defaultprefs defaultPrefsT o      �q�q 	0 prefs  R WXW l   �p�o�n�p  �o  �n  X YZY l   �m�l�k�m  �l  �k  Z [\[ r    ]^] m    __ �`` & M a n a g e   D a t a b a s e   f o r^ o      �j�j 40 managedbwindownameprefix manageDbWindowNamePrefix\ aba l   cdec r    fgf m    �i�i 
g o      �h�h .0 waitcycledelayseconds waitCycleDelaySecondsd   seconds   e �hh    s e c o n d sb iji l   klmk r    non ]    pqp m    �g�g <q 1    �f
�f 
min o o      �e�e ,0 waitsavetotalseconds waitSaveTotalSecondsl  seconds   m �rr  s e c o n d sj sts l   �d�c�b�d  �c  �b  t uvu r    &wxw I   $�ayz
�a .sysorondlong        douby l   {�`�_{ ^    |}| o    �^�^ ,0 waitsavetotalseconds waitSaveTotalSeconds} o    �]�] .0 waitcycledelayseconds waitCycleDelaySeconds�`  �_  z �\~�[
�\ 
dire~ m     �Z
�Z olierndD�[  x o      �Y�Y 0 waitcyclemax waitCycleMaxv � l  ' '�X�W�V�X  �W  �V  � ��� Q   ' ����� k   * ��� ��� O   * ���� k   . ��� ��� O   . ���� k   5 ��� ��� l  5 5�U�T�S�U  �T  �S  � ��� n  5 :��� I   6 :�R�Q�P�R (0 fmgui_appfrontmost fmGUI_AppFrontMost�Q  �P  �  f   5 6� ��� l  ; ;�O�N�M�O  �N  �M  � ��� Z   ; ����L�� C   ; C��� n   ; A��� 1   ? A�K
�K 
pnam� 4   ; ?�J�
�J 
cwin� m   = >�I�I � o   A B�H�H 40 managedbwindownameprefix manageDbWindowNamePrefix� Q   F y���� k   I e�� ��� r   I Q��� n   I O��� 1   M O�G
�G 
pnam� 4   I M�F�
�F 
cwin� m   K L�E�E � o      �D�D (0 managedbwindowname manageDbWindowName� ��� I  R ]�C��B
�C .prcsclicnull��� ��� uiel� l  R Y��A�@� n   R Y��� 4   V Y�?�
�? 
butT� m   W X�� ���  O K� 4   R V�>�
�> 
cwin� m   T U�=�= �A  �@  �B  � ��� l  ^ c���� I  ^ c�<��;
�< .sysodelanull��� ��� nmbr� m   ^ _�:�: �;  �   let click register.   � ��� (   l e t   c l i c k   r e g i s t e r .� ��� l  d d�9���9  � 6 0 will continue below to wait for window to close   � ��� `   w i l l   c o n t i n u e   b e l o w   t o   w a i t   f o r   w i n d o w   t o   c l o s e� ��8� l  d d�7�6�5�7  �6  �5  �8  � R      �4��
�4 .ascrerr ****      � ****� o      �3�3 0 errmsg errMsg� �2��1
�2 
errn� o      �0�0 0 errnum errNum�1  � R   m y�/��
�/ .ascrerr ****      � ****� b   s x��� m   s v�� ��� @ C o u l d n ' t   s a v e   M a n a g e   D a t a b a s e   -  � o   v w�.�. 0 errmsg errMsg� �-��,
�- 
errn� o   q r�+�+ 0 errnum errNum�,  �L  � Z   | ����*�� n   | ���� o   } �)�) ,0 notinmanagedbiserror notInManageDbIsError� o   | }�(�( 	0 prefs  � R   � ��'��
�' .ascrerr ****      � ****� m   � ��� ��� p M a n a g e   D a t a b a s e   w i n d o w   w a s n ' t   o p e n ,   s o   n o t h i n g   t o   c l o s e .� �&��%
�& 
errn� m   � ��$�$ �%  �*  � k   � ��� ��� l  � ��#���#  � . ( Not in Manage Database, but that is OK.   � ��� P   N o t   i n   M a n a g e   D a t a b a s e ,   b u t   t h a t   i s   O K .� ��"� L   � ��� m   � ��!
�! boovtrue�"  � �� � l  � �����  �  �  �   � 4   . 2��
� 
pcap� m   0 1�� ��� , F i l e M a k e r   P r o   A d v a n c e d� ��� l  � �����  �  �  � ��� n  � ���� I   � ����� "0 windowwaituntil windowWaitUntil� ��� K   � ��� ���� 0 
windowname 
windowName� o   � ��� (0 managedbwindowname manageDbWindowName� ����  0 windownametest windowNameTest� m   � ��� ���   d o e s   n o t   c o n t a i n� ���� 0 whichwindow whichWindow� m   � ��� ���  a n y� ���� .0 waitcycledelayseconds waitCycleDelaySeconds� o   � ��� .0 waitcycledelayseconds waitCycleDelaySeconds� ���� 0 waitcyclemax waitCycleMax� o   � ��� 0 waitcyclemax waitCycleMax�  �  �  �  f   � �� ��� l  � ����
�  �  �
  � ��� l  � �� � I  � ��	�
�	 .sysodelanull��� ��� nmbr m   � ��� �    ( " let normal window come to front.     � D   l e t   n o r m a l   w i n d o w   c o m e   t o   f r o n t .  �  l  � �����  �  �    L   � � m   � ��
� boovtrue 	�	 l  � ��� ���  �   ��  �  � m   * +

�                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  �  l  � ���������  ��  ��   �� l  � ���������  ��  ��  ��  � R      ��
�� .ascrerr ****      � **** o      ���� 0 errmsg errMsg ����
�� 
errn o      ���� 0 errnum errNum��  � R   � ���
�� .ascrerr ****      � **** b   � � m   � � � @ C o u l d n ' t   s a v e   M a n a g e   D a t a b a s e   -   o   � ����� 0 errmsg errMsg ����
�� 
errn o   � ����� 0 errnum errNum��  � �� l  � ���������  ��  ��  ��  <  l     ��������  ��  ��    i   p s I      �������� 20 fmgui_modeensure_browse fmGUI_ModeEnsure_Browse��  ��   k       !  l     ��"#��  "   version 1.0   # �$$    v e r s i o n   1 . 0! %&% l     ��������  ��  ��  & '(' Q     )*+) k    ,, -.- I    	��/���� $0 fmgui_modeselect fmGUI_ModeSelect/ 0��0 m    11 �22  B r o w s e��  ��  . 3��3 l  
 
��������  ��  ��  ��  * R      ��45
�� .ascrerr ****      � ****4 o      ���� 0 errmsg errMsg5 ��6��
�� 
errn6 o      ���� 0 errnum errNum��  + R    ��78
�� .ascrerr ****      � ****7 b    9:9 m    ;; �<< B C o u l d n ' t   e n s u r e   i n   B r o w s e   M o d e   -  : o    ���� 0 errmsg errMsg8 ��=��
�� 
errn= o    ���� 0 errnum errNum��  ( >?> l   ��������  ��  ��  ? @��@ l   ��������  ��  ��  ��   ABA l     ��������  ��  ��  B CDC i   t wEFE I      �������� .0 fmgui_modeensure_find fmGUI_ModeEnsure_Find��  ��  F k     GG HIH l     ��JK��  J   version 1.0   K �LL    v e r s i o n   1 . 0I MNM l     ������  �  �  N OPO Q     QRSQ k    TT UVU I    	�W�� $0 fmgui_modeselect fmGUI_ModeSelectW X�X m    YY �ZZ  F i n d�  �  V [�[ l  
 
����  �  �  �  R R      �\]
� .ascrerr ****      � ****\ o      �� 0 errmsg errMsg] �^�
� 
errn^ o      �� 0 errnum errNum�  S R    �_`
� .ascrerr ****      � ****_ b    aba m    cc �dd B C o u l d n ' t   e n s u r e   i n   B r o w s e   M o d e   -  b o    �� 0 errmsg errMsg` �e�
� 
errne o    �� 0 errnum errNum�  P fgf l   ����  �  �  g h�h l   ����  �  �  �  D iji l     ����  �  �  j klk i   x {mnm I      ���� 20 fmgui_modeensure_layout fmGUI_ModeEnsure_Layout�  �  n k     oo pqp l     �rs�  r   version 1.0   s �tt    v e r s i o n   1 . 0q uvu l     ����  �  �  v wxw Q     yz{y k    || }~} I    	��� $0 fmgui_modeselect fmGUI_ModeSelect ��� m    �� ���  L a y o u t�  �  ~ ��� l  
 
����  �  �  �  z R      ���
� .ascrerr ****      � ****� o      �� 0 errmsg errMsg� ���
� 
errn� o      �� 0 errnum errNum�  { R    ����
�� .ascrerr ****      � ****� b    ��� m    �� ��� B C o u l d n ' t   e n s u r e   i n   B r o w s e   M o d e   -  � o    ���� 0 errmsg errMsg� �����
�� 
errn� o    ���� 0 errnum errNum��  x ���� l   ��������  ��  ��  ��  l ��� l     ��������  ��  ��  � ��� i   | ��� I      ������� $0 fmgui_modeselect fmGUI_ModeSelect� ���� o      ���� 0 modetoselect modeToSelect��  ��  � k     ��� ��� l     ����  �    version 1.0, Dan Shockley   � ��� 4   v e r s i o n   1 . 0 ,   D a n   S h o c k l e y� ��� l     �~�}�|�~  �}  �|  � ��{� Q     ����� O    r��� O    q��� k    p�� ��� n   ��� I    �z�y�x�z (0 fmgui_appfrontmost fmGUI_AppFrontMost�y  �x  �  f    � ��� n   ��� I    �w�v�u�w .0 fmgui_inspector_close fmGUI_Inspector_Close�v  �u  �  f    � ��� l   �t�s�r�t  �s  �r  � ��� l   �q���q  � @ : Need to click in upper-left corner of area before pasting   � ��� t   N e e d   t o   c l i c k   i n   u p p e r - l e f t   c o r n e r   o f   a r e a   b e f o r e   p a s t i n g� ��� r     ��� 4    �p�
�p 
cwin� m    �o�o � o      �n�n 0 
modewindow 
modeWindow� ��� r   ! 0��� 6  ! .��� n   ! %��� 4  " %�m�
�m 
sgrp� m   # $�l�l � o   ! "�k�k 0 
modewindow 
modeWindow� D   & -��� 1   ' )�j
�j 
desc� m   * ,�� ��� " M o d e   C o n t e n t   A r e a� o      �i�i "0 modecontentarea modeContentArea� ��� r   1 6��� n   1 4��� 1   2 4�h
�h 
desc� o   1 2�g�g "0 modecontentarea modeContentArea� o      �f�f *0 modecontentareadesc modeContentAreaDesc� ��� r   7 =��� n   7 ;��� 4  8 ;�e�
�e 
cwor� m   9 :�d�d � o   7 8�c�c *0 modecontentareadesc modeContentAreaDesc� o      �b�b 0 currentmode currentMode� ��� l  > >�a�`�_�a  �`  �_  � ��� Z   > k���^�]� >  > A��� o   > ?�\�\ 0 currentmode currentMode� o   ? @�[�[ 0 modetoselect modeToSelect� k   D g�� ��� I  D I�Z��Y
�Z .sysodelanull��� ��� nmbr� m   D E�� ?�      �Y  � ��� r   J O��� b   J M��� o   J K�X�X 0 modetoselect modeToSelect� m   K L�� ��� 
   M o d e� o      �W�W 0 menuitemname menuItemName� ��V� I  P g�U��T
�U .prcsclicnull��� ��� uiel� l  P c��S�R� n   P c��� 4   ^ c�Q�
�Q 
menI� o   a b�P�P 0 menuitemname menuItemName� n   P ^��� 4   Y ^�O�
�O 
menE� m   \ ]�N�N � n   P Y��� 4   T Y�M�
�M 
mbri� m   U X�� ���  V i e w� 4   P T�L�
�L 
mbar� m   R S�K�K �S  �R  �T  �V  �^  �]  � ��� l  l l�J�I�H�J  �I  �H  � ��� L   l n�� m   l m�G
�G boovtrue� ��F� l  o o�E�D�C�E  �D  �C  �F  � 4    �B 
�B 
pcap  m   	 
 � , F i l e M a k e r   P r o   A d v a n c e d� m    �                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  � R      �A
�A .ascrerr ****      � **** o      �@�@ 0 errmsg errMsg �?�>
�? 
errn o      �=�= 0 errnum errNum�>  � R   z ��<
�< .ascrerr ****      � **** b   � �	
	 b   � � b   � � m   � � � 2 C o u l d n ' t   s w i t c h   t o   m o d e   ' o   � ��;�; 0 modetoselect modeToSelect m   � � �  '   -  
 o   � ��:�: 0 errmsg errMsg �9�8
�9 
errn o   ~ �7�7 0 errnum errNum�8  �{  �  l     �6�5�4�6  �5  �4    i   � � I      �3�2�3 B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow �1 o      �0�0 0 	buttonref 	buttonRef�1  �2   k     
  w       n   !"! I    �/#�.�/ *0 clickobjectbycoords clickObjectByCoords# $�-$ o    �,�, 0 	buttonref 	buttonRef�-  �.  "  f     �                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��   %�+% l  	 	�*�)�(�*  �)  �(  �+   &'& l     �'�&�%�'  �&  �%  ' ()( i   � �*+* I      �$,�#�$ :0 fmgui_popup_selectbycommand fmGUI_Popup_SelectByCommand, -�"- o      �!�! 	0 prefs  �"  �#  + k    .. /0/ l     � 12�   1    version 1.0, Dan Shockley   2 �33 4   v e r s i o n   1 . 0 ,   D a n   S h o c k l e y0 454 l     ����  �  �  5 676 r     898 K     
:: �;<� 0 popupobject popupObject; m    �
� 
null< �=>� 0 popupchoice popupChoice= m    �
� 
null> �?@� 0 selectcommand selectCommand? m    AA �BB  i s@ �C�� &0 clickifalreadyset clickIfAlreadySetC m    �
� boovfals�  9 o      �� 0 defaultprefs defaultPrefs7 DED l   ����  �  �  E FGF Z    ,HI��H =   JKJ n    LML m    �
� 
pclsM o    �� 	0 prefs  K n    NON m    �
� 
pclsO J    PP QRQ m    SS �TT  aR U�U m    �
�
 �  I r    (VWV K    &XX �	YZ�	 0 popupobject popupObjectY n    [\[ 4    �]
� 
cobj] m    �� \ o    �� 	0 prefs  Z �^�� 0 popupchoice popupChoice^ n     $_`_ 4   ! $�a
� 
cobja m   " #�� ` o     !�� 	0 prefs  �  W o      � �  	0 prefs  �  �  G bcb l  - -��������  ��  ��  c ded l  - -��������  ��  ��  e fgf r   - 2hih b   - 0jkj o   - .���� 	0 prefs  k o   . /���� 0 defaultprefs defaultPrefsi o      ���� 	0 prefs  g lml l  3 3��������  ��  ��  m non r   3 8pqp n   3 6rsr o   4 6���� 0 popupobject popupObjects o   3 4���� 	0 prefs  q o      ���� 0 popupobject popupObjecto tut r   9 >vwv n   9 <xyx o   : <���� 0 selectcommand selectCommandy o   9 :���� 	0 prefs  w o      ���� 0 selectcommand selectCommandu z{z r   ? D|}| n   ? B~~ o   @ B���� 0 popupchoice popupChoice o   ? @���� 	0 prefs  } o      ���� 0 popupchoice popupChoice{ ��� l  E J���� r   E J��� n   E H��� o   F H���� &0 clickifalreadyset clickIfAlreadySet� o   E F���� 	0 prefs  � o      ���� &0 clickifalreadyset clickIfAlreadySet� 6 0 re-select even if popup is the requested value.   � ��� `   r e - s e l e c t   e v e n   i f   p o p u p   i s   t h e   r e q u e s t e d   v a l u e .� ��� l  K K��������  ��  ��  � ��� l  K K��������  ��  ��  � ���� w   K��� Q   M���� Z   P������� H   P V�� l  P U������ I  P U�����
�� .coredoexnull���     ****� o   P Q���� 0 popupobject popupObject��  ��  ��  � k   Y a�� ��� l  Y Y������  � * $ does NOT exist, so error with that:   � ��� H   d o e s   N O T   e x i s t ,   s o   e r r o r   w i t h   t h a t :� ��� R   Y _����
�� .ascrerr ****      � ****� m   ] ^�� ��� R T h e   s p e c i f i e d   p o p u p O b j e c t   d o e s   n o t   e x i s t .� �����
�� 
errn� m   [ \���� ��  � ���� l  ` `��������  ��  ��  ��  ��  � k   d��� ��� l  d d������  � !  the popupObject DOES exist   � ��� 6   t h e   p o p u p O b j e c t   D O E S   e x i s t� ��� r   d g��� m   d e��
�� boovfals� o      ���� 0 mustpick mustPick� ��� Z   h$������ H   h r�� l  h q������ I  h q�����
�� .coredoexnull���     ****� n   h m��� 1   i m��
�� 
valL� o   h i���� 0 popupobject popupObject��  ��  ��  � k   u z�� ��� l  u u������  � i c first check if the value of the popupObject exists - if it doesn't, then we can't test it directly   � ��� �   f i r s t   c h e c k   i f   t h e   v a l u e   o f   t h e   p o p u p O b j e c t   e x i s t s   -   i f   i t   d o e s n ' t ,   t h e n   w e   c a n ' t   t e s t   i t   d i r e c t l y� ��� r   u x��� m   u v��
�� boovtrue� o      ���� 0 mustpick mustPick� ���� l  y y��������  ��  ��  ��  ��  � l  }$���� k   }$�� ��� l  } }������  � K E note that our selection might be one of several 'matching' commands:   � ��� �   n o t e   t h a t   o u r   s e l e c t i o n   m i g h t   b e   o n e   o f   s e v e r a l   ' m a t c h i n g '   c o m m a n d s :� ��� Z   }$����� o   } ~�� &0 clickifalreadyset clickIfAlreadySet� k   � ��� ��� l  � �����  � > 8 RE-SELECT even if popup already is the requested value.   � ��� p   R E - S E L E C T   e v e n   i f   p o p u p   a l r e a d y   i s   t h e   r e q u e s t e d   v a l u e .� ��� r   � ���� m   � ��
� boovtrue� o      �� 0 mustpick mustPick� ��� l  � �����  �  �  �  � ��� =  � ���� o   � ��� 0 selectcommand selectCommand� m   � ��� ���  i s� ��� k   � ��� ��� Z   � ������ >  � ���� n   � ���� 1   � ��
� 
valL� o   � ��� 0 popupobject popupObject� o   � ��� 0 popupchoice popupChoice� r   � ���� m   � ��
� boovtrue� o      �� 0 mustpick mustPick�  �  � ��� l  � �����  �  �  �  � ��� =  � ���� o   � ��� 0 selectcommand selectCommand� m   � ��� ���  c o n t a i n s� ��� k   � ��� ��� Z   � ������ H   � �   E   � � n   � � 1   � ��
� 
valL o   � ��� 0 popupobject popupObject o   � ��� 0 popupchoice popupChoice� r   � � m   � ��
� boovtrue o      �� 0 mustpick mustPick�  �  � � l  � �����  �  �  �  � 	 =  � �

 o   � ��� 0 selectcommand selectCommand m   � � �  s t a r t s W i t h	  k   � �  Z   � ��� H   � � C   � � n   � � 1   � ��
� 
valL o   � ��� 0 popupobject popupObject o   � ��� 0 popupchoice popupChoice r   � � m   � ��
� boovtrue o      �� 0 mustpick mustPick�  �   � l  � �����  �  �  �    =  � �  o   � ��� 0 selectcommand selectCommand  m   � �!! �""  b e g i n s W i t h #$# k   �%% &'& Z   � �()��( H   � �** C   � �+,+ n   � �-.- 1   � ��
� 
valL. o   � ��� 0 popupobject popupObject, o   � ��� 0 popupchoice popupChoice) r   � �/0/ m   � ��
� boovtrue0 o      �� 0 mustpick mustPick�  �  ' 1�1 l   ����  �  �  �  $ 232 = 	454 o  �� 0 selectcommand selectCommand5 m  66 �77  e n d s W i t h3 8�8 k   99 :;: Z  <=��< H  >> D  ?@? n  ABA 1  �
� 
valLB o  �� 0 popupobject popupObject@ o  �� 0 popupchoice popupChoice= r  CDC m  �~
�~ boovtrueD o      �}�} 0 mustpick mustPick�  �  ; E�|E l �{�z�y�{  �z  �y  �|  �  �  �  � C = we can see the value without 'picking' the menu, so test it:   � �FF z   w e   c a n   s e e   t h e   v a l u e   w i t h o u t   ' p i c k i n g '   t h e   m e n u ,   s o   t e s t   i t :� GHG l %%�x�w�v�x  �w  �v  H IJI Z  %�KL�u�tK o  %&�s�s 0 mustpick mustPickL Z  )�MN�r�qM > ),OPO o  )*�p�p 0 popupchoice popupChoiceP m  *+�o
�o 
nullN k  /�QQ RSR I /4�nT�m
�n .prcsclicnull��� ��� uielT o  /0�l�l 0 popupobject popupObject�m  S UVU Z  5�WXY�kW = 5:Z[Z o  56�j�j 0 selectcommand selectCommand[ m  69\\ �]]  i sX I =Y�i^�h
�i .prcsclicnull��� ��� uiel^ l =U_�g�f_ 6 =U`a` n  =Hbcb 4 CH�ed
�e 
menId m  FG�d�d c n  =Cefe 4  >C�cg
�c 
menEg m  AB�b�b f o  =>�a�a 0 popupobject popupObjecta = KThih 1  LP�`
�` 
pnami o  QS�_�_ 0 popupchoice popupChoice�g  �f  �h  Y jkj = \alml o  \]�^�^ 0 selectcommand selectCommandm m  ]`nn �oo  c o n t a i n sk pqp k  d�rr sts I d��]u�\
�] .prcsclicnull��� ��� uielu l d|v�[�Zv 6 d|wxw n  doyzy 4 jo�Y{
�Y 
menI{ m  mn�X�X z n  dj|}| 4  ej�W~
�W 
menE~ m  hi�V�V } o  de�U�U 0 popupobject popupObjectx E  r{� 1  sw�T
�T 
pnam� o  xz�S�S 0 popupchoice popupChoice�[  �Z  �\  t ��R� l ���Q�P�O�Q  �P  �O  �R  q ��� = ����� o  ���N�N 0 selectcommand selectCommand� m  ���� ���  b e g i n s W i t h� ��� k  ���� ��� I ���M��L
�M .prcsclicnull��� ��� uiel� l ����K�J� 6 ����� n  ����� 4 ���I�
�I 
menI� m  ���H�H � n  ����� 4  ���G�
�G 
menE� m  ���F�F � o  ���E�E 0 popupobject popupObject� C  ����� 1  ���D
�D 
pnam� o  ���C�C 0 popupchoice popupChoice�K  �J  �L  � ��B� l ���A�@�?�A  �@  �?  �B  � ��� = ����� o  ���>�> 0 selectcommand selectCommand� m  ���� ���  e n d s W i t h� ��=� k  ���� ��� I ���<��;
�< .prcsclicnull��� ��� uiel� l ����:�9� 6 ����� n  ����� 4 ���8�
�8 
menI� m  ���7�7 � n  ����� 4  ���6�
�6 
menE� m  ���5�5 � o  ���4�4 0 popupobject popupObject� D  ����� 1  ���3
�3 
pnam� o  ���2�2 0 popupchoice popupChoice�:  �9  �;  � ��1� l ���0�/�.�0  �/  �.  �1  �=  �k  V ��-� l ���,�+�*�,  �+  �*  �-  �r  �q  �u  �t  J ��� l ���)�(�'�)  �(  �'  � ��� L  ���� m  ���&
�& boovtrue� ��%� l ���$�#�"�$  �#  �"  �%  � R      �!��
�! .ascrerr ****      � ****� o      � �  0 errmsg errMsg� ���
� 
errn� o      �� 0 errnum errNum�  � R  ����
� .ascrerr ****      � ****� b  ���� b  ���� b  ����� b  ����� b  ����� m  ���� ��� N C o u l d n ' t   s e l e c t   m e n u   i t e m   w h o s e   v a l u e   _� o  ���� 0 selectcommand selectCommand� m  ���� ���  _   '� o  ���� 0 popupchoice popupChoice� m  ��� ���  '   i n   p o p u p   -  � o  �� 0 errmsg errMsg� ���
� 
errn� o  ���� 0 errnum errNum�  ��                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  ��  ) ��� l     ����  �  �  � ��� i   � ���� I      ����  0 fmgui_popupset fmGUI_PopupSet� ��� o      �� 0 popupobject popupObject� ��� o      �� 0 popupchoice popupChoice�  �  � k     *�� ��� l     ����  �    version 1.0, Dan Shockley   � ��� 4   v e r s i o n   1 . 0 ,   D a n   S h o c k l e y� ��� l     ���
�  �  �
  � ��	� w     *��� Q    *���� k    �� ��� l   ����  �  �  � ��� I    ���� :0 fmgui_popup_selectbycommand fmGUI_Popup_SelectByCommand� ��� K    �� ���� 0 popupobject popupObject� o    �� 0 popupobject popupObject� � ����  0 popupchoice popupChoice� o   	 
���� 0 popupchoice popupChoice��  �  �  � ��� L    �� 1    ��
�� 
rslt� ���� l   ��������  ��  ��  ��  � R      ����
�� .ascrerr ****      � ****� o      ���� 0 errmsg errMsg� �����
�� 
errn� o      ���� 0 errnum errNum��  � R    *����
�� .ascrerr ****      � ****� b   " )��� b   " '��� b   " %��� m   " #   � " C o u l d n ' t   s e l e c t   '� o   # $���� 0 popupchoice popupChoice� m   % & �  '   i n   p o p u p   -  � o   ' (���� 0 errmsg errMsg� ����
�� 
errn o     !���� 0 errnum errNum��  ��                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  �	  �  l     ��������  ��  ��    i   � �	
	 I      ������ (0 fmgui_textfieldset fmGUI_TextFieldSet  o      ���� "0 textfieldobject textfieldObject �� o      ����  0 textfieldvalue textfieldValue��  ��  
 k     @  l     ����   &   version 1.0, Daniel A. Shockley    � @   v e r s i o n   1 . 0 ,   D a n i e l   A .   S h o c k l e y  l     ��������  ��  ��   �� w     @ Q    @ k    ,  Z    ' !����  >   "#" o    ����  0 textfieldvalue textfieldValue# m    ��
�� 
null! Z    #$%��&$ >   '(' n    )*) 1    ��
�� 
valL* o    ���� "0 textfieldobject textfieldObject( l   +����+ o    ����  0 textfieldvalue textfieldValue��  ��  % k    ,, -.- r    /0/ m    ��
�� boovtrue0 n      121 1    ��
�� 
focu2 o    ���� "0 textfieldobject textfieldObject. 3��3 r    454 o    ����  0 textfieldvalue textfieldValue5 n      676 1    ��
�� 
valL7 o    ���� "0 textfieldobject textfieldObject��  ��  & l  ! #89:8 L   ! #;; m   ! "��
�� boovfals9   did not need to change.   : �<< 0   d i d   n o t   n e e d   t o   c h a n g e .��  ��   =>= L   ( *?? m   ( )��
�� boovtrue> @��@ l  + +��������  ��  ��  ��   R      ��AB
�� .ascrerr ****      � ****A o      ���� 0 errmsg errMsgB ��C��
�� 
errnC o      ���� 0 errnum errNum��   R   4 @��DE
�� .ascrerr ****      � ****D b   8 ?FGF b   8 =HIH b   8 ;JKJ m   8 9LL �MM " C o u l d n ' t   s e l e c t   'K o   9 :����  0 textfieldvalue textfieldValueI m   ; <NN �OO & '   f o r   t e x t   f i e l d   -  G o   = >���� 0 errmsg errMsgE ��P��
�� 
errnP o   6 7�� 0 errnum errNum��  �                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  ��   QRQ l     ����  �  �  R STS i   � �UVU I      �W�� (0 fmgui_window_close fmGUI_Window_CloseW X�X o      ��  0 somewindowname someWindowName�  �  V k     YY Z[Z l     �\]�  \ - ' version 1.1, Daniel A. Shockley, NYHTC   ] �^^ N   v e r s i o n   1 . 1 ,   D a n i e l   A .   S h o c k l e y ,   N Y H T C[ _`_ l     ����  �  �  ` aba O     cdc k    ee fgf l   ����  �  �  g hih I   �j�
� .coreclosnull���    obj j 4    �k
� 
cwink o   
 ��  0 somewindowname someWindowName�  i l�l l   ����  �  �  �  d 5     �m�
� 
cappm m    nn �oo > c o m . f i l e m a k e r . c l i e n t . a d v a n c e d 1 2
� kfrmID  b pqp l   ����  �  �  q rsr L    tt m    �
� boovtrues u�u l   ����  �  �  �  T vwv l     ����  �  �  w xyx i   � �z{z I      �|�� .0 openfilemakerdatabase openFileMakerDatabase| }�} o      �� 	0 prefs  �  �  { k     g~~ � l     ����  � &   version 1.3, Daniel A. Shockley   � ��� @   v e r s i o n   1 . 3 ,   D a n i e l   A .   S h o c k l e y� ��� l     ����  �  �  � ��� Q     e���� k    Y�� ��� r    ��� b    
��� b    ��� m    �� ��� < h t c l i n k : / / A c c e s s F i l e ? F i l e N a m e =� n    ��� o    �� 0 dbname dbName� o    �� 	0 prefs  � m    	�� ��� N & C o m m a n d = O p e n & S i l e n t O p e n = 1 & S h o w W i n d o w = 1� o      �� 0 	customurl 	customURL� ��� l   ����  �  �  � ��� O    T��� k    S�� ��� l   ����  �  �  � ��� r    /��� b    -��� b    $��� b    "��� b    ��� b    ��� b    ��� b    ��� m    �� ���  F M P : / /� n    ��� o    �� 0 serverip serverIP� o    �� 	0 prefs  � m    �� ���  /� n    ��� o    �� 0 
maindbname 
mainDbName� o    �� 	0 prefs  � m    �� ���  ? s c r i p t =� n    !��� o    !�� <0 customlinkreceiverscriptname customLinkReceiverScriptName� o    �� 	0 prefs  � m   " #�� ���  & p a r a m =� n  $ ,��� I   % ,���� $0 encodetextforurl encodeTextForURL� ��� o   % &�� 0 	customurl 	customURL� ��� m   & '�
� boovtrue� ��� m   ' (�
� boovfals�  �  �  f   $ %� o      �~�~ 0 fmpurl fmpURL� ��� l  0 0�}�|�{�}  �|  �{  � ��� l  0 0�z���z  � [ U we must double-encode equals (%3D) and ampersand (%26) to work-around FileMaker bug:   � ��� �   w e   m u s t   d o u b l e - e n c o d e   e q u a l s   ( % 3 D )   a n d   a m p e r s a n d   ( % 2 6 )   t o   w o r k - a r o u n d   F i l e M a k e r   b u g :� ��� r   0 <��� n  0 :��� I   1 :�y��x�y 0 replacesimple replaceSimple� ��w� J   1 6�� ��� o   1 2�v�v 0 fmpurl fmpURL� ��� m   2 3�� ���  % 3 D� ��u� m   3 4�� ��� 
 % 2 5 3 D�u  �w  �x  �  f   0 1� o      �t�t 0 fmpurl fmpURL� ��� r   = K��� n  = I��� I   > I�s��r�s 0 replacesimple replaceSimple� ��q� J   > E�� ��� o   > ?�p�p 0 fmpurl fmpURL� ��� m   ? @�� ���  % 2 6� ��o� m   @ C�� ��� 
 % 2 5 2 6�o  �q  �r  �  f   = >� o      �n�n 0 fmpurl fmpURL� ��� l  L L�m�l�k�m  �l  �k  � ��� I  L Q�j��i
�j .GURLGURLnull��� ��� TEXT� o   L M�h�h 0 fmpurl fmpURL�i  � ��g� l  R R�f�e�d�f  �e  �d  �g  � m    ���                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  � ��� l  U U�c�b�a�c  �b  �a  � � � L   U W m   U V�`
�` boovtrue  �_ l  X X�^�]�\�^  �]  �\  �_  � R      �[
�[ .ascrerr ****      � **** o      �Z�Z 0 errmsg errMsg �Y�X
�Y 
errn o      �W�W 0 errnum errNum�X  � k   a e  l  a a�V	
�V  	 A ; ANY error should return FALSE, as in "could not be opened"   
 � v   A N Y   e r r o r   s h o u l d   r e t u r n   F A L S E ,   a s   i n   " c o u l d   n o t   b e   o p e n e d "  l  a a�U�T�S�U  �T  �S    l  a c L   a c o   a b�R�R 0 errmsg errMsg  false    � 
 f a l s e �Q l  d d�P�O�N�P  �O  �N  �Q  �  l  f f�M�L�K�M  �L  �K   �J l  f f�I�H�G�I  �H  �G  �J  y  l     �F�E�D�F  �E  �D    i   � � I      �C�B�C "0 windowwaituntil windowWaitUntil  �A  o      �@�@ 	0 prefs  �A  �B   k    C!! "#" l     �?$%�?  $ ' ! version 1.2, Erik Shagdar, NYHTC   % �&& B   v e r s i o n   1 . 2 ,   E r i k   S h a g d a r ,   N Y H T C# '(' l     �>�=�<�>  �=  �<  ( )*) r     +,+ K     -- �;./�; 0 
windowname 
windowName. m    �:
�: 
null/ �901�9  0 windownametest windowNameTest0 m    22 �33  c o n t a i n s1 �845�8 0 whichwindow whichWindow4 m    66 �77  a n y5 �789�7 .0 waitcycledelayseconds waitCycleDelaySeconds8 m    :: ?�      9 �6;�5�6 0 waitcyclemax waitCycleMax; m   	 
�4�4 �5  , o      �3�3 0 defaultprefs defaultPrefs* <=< r    >?> b    @A@ o    �2�2 	0 prefs  A o    �1�1 0 defaultprefs defaultPrefs? o      �0�0 	0 prefs  = BCB l   �/�.�-�/  �.  �-  C DED r    FGF n    HIH o    �,�, 0 
windowname 
windowNameI o    �+�+ 	0 prefs  G o      �*�* 0 
windowname 
windowNameE JKJ r     LML n    NON o    �)�)  0 windownametest windowNameTestO o    �(�( 	0 prefs  M o      �'�'  0 windownametest windowNameTestK PQP r   ! &RSR n   ! $TUT o   " $�&�& 0 whichwindow whichWindowU o   ! "�%�% 	0 prefs  S o      �$�$ 0 whichwindow whichWindowQ VWV l  ' '�#�"�!�#  �"  �!  W XYX r   ' *Z[Z m   ' (� 
�  boovfals[ o      �� 0 checkresult checkResultY \]\ l  + +����  �  �  ] ^_^ U   +>`a` k   59bb cdc O   5 �efe Z   9 ghijg =  9 <klk o   9 :�� 0 whichwindow whichWindowl m   : ;mm �nn  a n yh r   ? Kopo n   ? Iqrq 1   E I�
� 
pnamr n   ? Ests 2   C E�
� 
cwint 4   ? C�u
� 
pcapu m   A Bvv �ww , F i l e M a k e r   P r o   A d v a n c e dp o      �� "0 windownamecheck windowNameChecki xyx =  N Sz{z o   N O�� 0 whichwindow whichWindow{ m   O R|| �}} 
 f r o n ty ~�~ r   V e� n   V c��� 1   _ c�
� 
pnam� n   V _��� 4   \ _��
� 
cwin� m   ] ^�� � 4   V \��
� 
pcap� m   X [�� ��� , F i l e M a k e r   P r o   A d v a n c e d� o      �� "0 windownamecheck windowNameCheck�  j l  h ���� k   h �� ��� r   h o��� c   h m��� o   h i�� 0 whichwindow whichWindow� m   i l�
� 
nmbr� o      �� 0 windowindex windowIndex� ��� r   p ��� n   p }��� 1   y }�
� 
pnam� n   p y��� 4   v y�
�
�
 
cwin� o   w x�	�	 0 windowindex windowIndex� 4   p v��
� 
pcap� m   r u�� ��� , F i l e M a k e r   P r o   A d v a n c e d� o      �� "0 windownamecheck windowNameCheck�  � + % whichWindow  is window index number:   � ��� J   w h i c h W i n d o w     i s   w i n d o w   i n d e x   n u m b e r :f m   5 6���                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  d ��� l  � �����  �  �  � ��� l  � �����  �  �  � ��� Z   �%���� � =  � ���� o   � �����  0 windownametest windowNameTest� m   � ��� ���  c o n t a i n s� k   � ��� ��� r   � ���� l  � ������� E   � ���� o   � ����� "0 windownamecheck windowNameCheck� o   � ����� 0 
windowname 
windowName��  ��  � o      ���� 0 checkresult checkResult� ���� l  � ���������  ��  ��  ��  � ��� =  � ���� o   � �����  0 windownametest windowNameTest� m   � ��� ���   d o e s   n o t   c o n t a i n� ��� k   � ��� ��� r   � ���� l  � ������� H   � ��� E   � ���� o   � ����� "0 windownamecheck windowNameCheck� o   � ����� 0 
windowname 
windowName��  ��  � o      ���� 0 checkresult checkResult� ���� l  � ���������  ��  ��  ��  � ��� =  � ���� o   � �����  0 windownametest windowNameTest� m   � ��� ���  e q u a l s� ��� k   � ��� ��� r   � ���� l  � ������� =  � ���� o   � ����� "0 windownamecheck windowNameCheck� o   � ����� 0 
windowname 
windowName��  ��  � o      ���� 0 checkresult checkResult� ���� l  � ���������  ��  ��  ��  � ��� =  � ���� o   � �����  0 windownametest windowNameTest� m   � ��� ���  i s� ��� k   � ��� ��� r   � ���� l  � ������� =  � ���� o   � ����� "0 windownamecheck windowNameCheck� o   � ����� 0 
windowname 
windowName��  ��  � o      ���� 0 checkresult checkResult� ���� l  � ���������  ��  ��  ��  � ��� =  � ���� o   � �����  0 windownametest windowNameTest� m   � ��� ���  s t a r t s   w i t h� ��� k   � ��� ��� r   � ���� l  � ������� C   � ���� o   � ����� "0 windownamecheck windowNameCheck� o   � ����� 0 
windowname 
windowName��  ��  � o      ���� 0 checkresult checkResult� ���� l  � ���������  ��  ��  ��  � ��� =  � ���� o   � �����  0 windownametest windowNameTest� m   � ��� �   & d o e s   n o t   s t a r t   w i t h�  k   � �  r   � � l  � ����� H   � �		 C   � �

 o   � ����� "0 windownamecheck windowNameCheck o   � ����� 0 
windowname 
windowName��  ��   o      ���� 0 checkresult checkResult �� l  � ���������  ��  ��  ��    =  � � o   � �����  0 windownametest windowNameTest m   � � �  e n d s   w i t h  k   � �  r   � � l  � ����� D   � � o   � ����� "0 windownamecheck windowNameCheck o   � ����� 0 
windowname 
windowName��  ��   o      ���� 0 checkresult checkResult �� l  � ���������  ��  ��  ��    =  !  o  ����  0 windownametest windowNameTest! m  "" �## " d o e s   n o t   e n d   w i t h $%$ r  	&'& l 	(����( H  	)) D  	*+* o  	
���� "0 windownamecheck windowNameCheck+ o  
���� 0 
windowname 
windowName��  ��  ' o      ���� 0 checkresult checkResult% ,-, = ./. o  ����  0 windownametest windowNameTest/ m  00 �11  i s   n o t- 2��2 k  !33 454 r  676 l 8����8 > 9:9 o  ���� "0 windownamecheck windowNameCheck: o  ���� 0 
windowname 
windowName��  ��  7 o      ���� 0 checkresult checkResult5 ;��; l   ��������  ��  ��  ��  ��  �   � <=< l &&��������  ��  ��  = >?> Z &/@A����@ o  &'���� 0 checkresult checkResultA  S  *+��  ��  ? BCB l 00��������  ��  ��  C DED I 07�F�
� .sysodelanull��� ��� nmbrF n  03GHG o  13�� .0 waitcycledelayseconds waitCycleDelaySecondsH o  01�� 	0 prefs  �  E IJI l 88����  �  �  J K�K l 88����  �  �  �  a n   . 2LML o   / 1�� 0 waitcyclemax waitCycleMaxM o   . /�� 	0 prefs  _ NON l ??����  �  �  O PQP L  ?ARR o  ?@�� 0 checkresult checkResultQ S�S l BB����  �  �  �   TUT l     ����  �  �  U VWV i   � �XYX I      �Z�� 20 windowwaituntil_frontis windowWaitUntil_FrontISZ [�[ o      �� 	0 prefs  �  �  Y k     \\ ]^] l     �_`�  _ #  version 1.0, Daniel Shockley   ` �aa :   v e r s i o n   1 . 0 ,   D a n i e l   S h o c k l e y^ bcb l     ����  �  �  c ded r     fgf K     hh �ij� 0 
windowname 
windowNamei m    �~
�~ 
nullj �}kl�}  0 windownametest windowNameTestk m    mm �nn  i sl �|op�| 0 whichwindow whichWindowo m    qq �rr 
 f r o n tp �{st�{ .0 waitcycledelayseconds waitCycleDelaySecondss m    uu ?�������t �zv�y�z 0 waitcyclemax waitCycleMaxv m   	 
�x�x d�y  g o      �w�w 0 defaultprefs defaultPrefse wxw r    yzy b    {|{ o    �v�v 	0 prefs  | o    �u�u 0 defaultprefs defaultPrefsz o      �t�t 	0 prefs  x }~} l   �s�r�q�s  �r  �q  ~ � L    �� I    �p��o�p "0 windowwaituntil windowWaitUntil� ��n� o    �m�m 	0 prefs  �n  �o  � ��� l   �l�k�j�l  �k  �j  � ��i� l   �h�g�f�h  �g  �f  �i  W ��� l     �e�d�c�e  �d  �c  � ��� i   � ���� I      �b��a�b 0 sort  � ��`� o      �_�_ 0 oldlist oldList�`  �a  � k     D�� ��� l     �^���^  �   version 1.0   � ���    v e r s i o n   1 . 0� ��� l     �]�\�[�]  �\  �[  � ��� r     ��� J     
�� ��� n    ��� 1    �Z
�Z 
txdl� 1     �Y
�Y 
ascr� ��X� I   �W��V
�W .sysontocTEXT       shor� m    �U�U 
�V  �X  � J      �� ��� o      �T�T 0 od  � ��S� n     ��� 1    �R
�R 
txdl� 1    �Q
�Q 
ascr�S  � ��� r    !��� c    ��� o    �P�P 0 oldlist oldList� m    �O
�O 
TEXT� o      �N�N 0 	textblock 	textBlock� ��� r   " /��� I  " -�M��L
�M .sysoexecTEXT���     TEXT� b   " )��� b   " '��� m   " #�� ��� 
 e c h o  � n   # &��� 1   $ &�K
�K 
strq� o   # $�J�J 0 	textblock 	textBlock� m   ' (�� ���    |   s o r t�L  � o      �I�I 0 sortedblock sortedBlock� ��� r   0 5��� o   0 1�H
�H 
ret � n     ��� 1   2 4�G
�G 
txdl� 1   1 2�F
�F 
ascr� ��� r   6 ;��� n   6 9��� 2   7 9�E
�E 
citm� o   6 7�D�D 0 sortedblock sortedBlock� o      �C�C 0 
sortedlist 
sortedList� ��� r   < A��� o   < =�B�B 0 od  � n     ��� 1   > @�A
�A 
txdl� 1   = >�@
�@ 
ascr� ��� l  B B�?�>�=�?  �>  �=  � ��<� L   B D�� o   B C�;�; 0 
sortedlist 
sortedList�<  � ��� l     �:�9�8�:  �9  �8  � ��� i   � ���� I      �7��6�7 0 
logconsole 
logConsole� ��� o      �5�5 0 processname processName� ��4� o      �3�3 0 
consolemsg 
consoleMsg�4  �6  � k     H�� ��� l     �2���2  � D > version 2.0 - Daniel A. Shockley, http://www.danshockley.com	   � ��� |   v e r s i o n   2 . 0   -   D a n i e l   A .   S h o c k l e y ,   h t t p : / / w w w . d a n s h o c k l e y . c o m 	� ��� l     �1�0�/�1  �0  �/  � ��� r     ��� I     �.��-�.  0 coercetostring coerceToString� ��,� o    �+�+ 0 
consolemsg 
consoleMsg�,  �-  � o      �*�* 0 
consolemsg 
consoleMsg� ��� l  	 ���� r   	 ��� I   	 �)��(�) 0 replacesimple replaceSimple� ��'� J   
 �� ��� o   
 �&�& 0 
consolemsg 
consoleMsg� ��� I   �%��$
�% .sysontocTEXT       shor� m    �#�#  �$  � ��"� m    �� ���  �"  �'  �(  � o      �!�! 0 
consolemsg 
consoleMsg� %  ASCII 0 breaks shell scripting   � ��� >   A S C I I   0   b r e a k s   s h e l l   s c r i p t i n g� ��� Z    )   � �   =       n        1    �
� 
leng  o    �� 0 
consolemsg 
consoleMsg  m    ��    k   " %       l  " "� 	 
�   	 H B we still want this function to log that an empty string was sent:    
 �   �   w e   s t i l l   w a n t   t h i s   f u n c t i o n   t o   l o g   t h a t   a n   e m p t y   s t r i n g   w a s   s e n t :   �  r   " %    m   " #   �    [ E M P T Y   S T R I N G ]  o      �� 0 
consolemsg 
consoleMsg�  �   �  �     r   * =    b   * ;    b   * 7    b   * 5    b   * 1    b   * /    b   * -     m   * + ! ! � " "  l o g g e r   1   + ,�
� 
spac  m   - . # # � $ $  - t  1   / 0�
� 
spac  n   1 4 % & % 1   2 4�
� 
strq & o   1 2�� 0 processname processName  1   5 6�
� 
spac  n   7 : ' ( ' 1   8 :�
� 
strq ( o   7 8�� 0 
consolemsg 
consoleMsg  o      �� 0 shellcommand shellCommand   ) * ) l  > >����  �  �   *  + , + I  > C� -�
� .sysoexecTEXT���     TEXT - o   > ?�� 0 shellcommand shellCommand�   ,  . / . L   D F 0 0 o   D E�
�
 0 shellcommand shellCommand /  1�	 1 l  G G����  �  �  �	  �  2 3 2 l     ����  �  �   3  4 5 4 i   � � 6 7 6 I      � 8�� 0 loglevel logLEVEL 8  9 : 9 o      � �  	0 level   :  ;�� ; o      ���� 0 somemsg someMsg��  �   7 k     4 < <  = > = l     �� ? @��   ? &   version 1.0, Daniel A. Shockley    @ � A A @   v e r s i o n   1 . 0 ,   D a n i e l   A .   S h o c k l e y >  B C B l     ��������  ��  ��   C  D E D r      F G F m     ����  G o      ���� 0 	maxxcount 	maxXcount E  H I H l   ��������  ��  ��   I  J K J r     L M L b     N O N o    	���� 0 
scriptname 
ScriptName O m   	 
 P P � Q Q  _ M o      ���� 0 logname logName K  R S R l   ��������  ��  ��   S  T U T r     V W V [     X Y X \     Z [ Z o    ���� 0 	maxxcount 	maxXcount [ o    ���� 	0 level   Y m    ����  W o      ���� 0 xcount xCount U  \ ] \ l   ��������  ��  ��   ]  ^ _ ^ Y    * `�� a b�� ` r     % c d c b     # e f e o     !���� 0 logname logName f m   ! " g g � h h  X d o      ���� 0 logname logName�� 0 i   a m    ����  b o    ���� 0 xcount xCount��   _  i j i l  + +��������  ��  ��   j  k l k I   + 2�� m���� 0 
logconsole 
logConsole m  n o n o   , -���� 0 logname logName o  p�� p o   - .���� 0 somemsg someMsg��  ��   l  q�� q l  3 3��������  ��  ��  ��   5  r s r l     ��������  ��  ��   s  t u t i   � � v w v I      �� x���� 0 logmain logMAIN x  y�� y o      ���� 0 somemsg someMsg��  ��   w l     z { | z I     �� }���� 0 loglevel logLEVEL }  ~  ~ m    ����     ��� � o    ���� 0 somemsg someMsg��  ��   {    log at highest importance    | � � � 4   l o g   a t   h i g h e s t   i m p o r t a n c e u  � � � l     ��������  ��  ��   �  � � � i   � � � � � I      �� ����� 0 clickatcoords clickAtCoords �  � � � o      ���� 0 xclick xClick �  ��� � o      ���� 0 yclick yClick��  ��   � k     0 � �  � � � l     �� � ���   �    version 1.0, Dan Shockley    � � � � 4   v e r s i o n   1 . 0 ,   D a n   S h o c k l e y �  � � � l     �������  ��  �   �  � � � r     	 � � � I    � � �
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
spac � o   ! "�� 0 yclick yClick�   �  �� � L   ( 0 � � l  ( / ��� � b   ( / � � � b   ( - � � � l  ( + ��� � c   ( + � � � o   ( )�� 0 xclick xClick � m   ) *�
� 
TEXT�  �   � m   + , � � � � �  , � o   - .�� 0 yclick yClick�  �  �   �  � � � l     ����  �  �   �  � � � i   � � � � � I      � ��� *0 clickobjectbycoords clickObjectByCoords �  �� � o      �� 0 
someobject 
someObject�  �   � k     M � �  � � � l     � � ��   � &   version 1.0, Daniel A. Shockley    � � � � @   v e r s i o n   1 . 0 ,   D a n i e l   A .   S h o c k l e y �  � � � l     ����  �  �   �  � � � w     ' � � � k    ' � �  � � � r     � � � n     � � � 1    �
� 
posn � o    �� 0 
someobject 
someObject � J       � �  � � � o      �� 0 xcoord xCoord �  �� � o      �� 0 ycoord yCoord�   �  �� � r    ' � � � n     � � � 1    �
� 
ptsz � o    �� 0 
someobject 
someObject � J       � �  � � � o      �� 0 xsize xSize �  �� � o      �� 0 ysize ySize�  �   ��                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��   �  � � � l  ( (����  �  �   �  � � � l  ( 5 � � � � r   ( 5 � � � I  ( 3� � �
� .sysorondlong        doub � l  ( - ��� � [   ( - � � � o   ( )�� 0 xcoord xCoord � ^   ) , � � � o   ) *�� 0 xsize xSize � m   * +�� �  �   � � ��
� 
dire � m   . /�
� olierndD�   � o      �� 0 xclick xClick �   middle    � � � �    m i d d l e �  � � � l  6 C � � � � r   6 C � � � I  6 A� � �
� .sysorondlong        doub � l  6 ;! ��~!  [   6 ;!!! o   6 7�}�} 0 ycoord yCoord! ^   7 :!!! o   7 8�|�| 0 ysize ySize! m   8 9�{�{ �  �~   � �z!�y
�z 
dire! m   < =�x
�x olierndD�y   � o      �w�w 0 yclick yClick �   middle    � �!!    m i d d l e � !!! l  D D�v�u�t�v  �u  �t  ! !	!
!	 I   D K�s!�r�s 0 clickatcoords clickAtCoords! !!! o   E F�q�q 0 xclick xClick! !�p! o   F G�o�o 0 yclick yClick�p  �r  !
 !�n! l  L L�m�l�k�m  �l  �k  �n   � !!! l     �j�i�h�j  �i  �h  ! !!! i   � �!!! I      �g!�f�g  0 coercetostring coerceToString! !�e! o      �d�d  0 incomingobject incomingObject�e  �f  ! k    �!! !!! l     �c!!�c  ! 4 . version 2.2, Daniel A. Shockley, Erik Shagdar   ! �!! \   v e r s i o n   2 . 2 ,   D a n i e l   A .   S h o c k l e y ,   E r i k   S h a g d a r! !!! l     �b�a�`�b  �a  �`  ! ! �_!  Z    �!!!"!#!$!! =    !%!&!% n     !'!(!' m    �^
�^ 
pcls!( o     �]�]  0 incomingobject incomingObject!& m    �\
�\ 
TEXT!" k    !)!) !*!+!* r    !,!-!, l   !.�[�Z!. c    !/!0!/ o    	�Y�Y  0 incomingobject incomingObject!0 m   	 
�X
�X 
TEXT�[  �Z  !- K      !1!1 �W!2�V
�W 
ctxt!2 o      �U�U  0 incomingobject incomingObject�V  !+ !3�T!3 L    !4!4 o    �S�S  0 incomingobject incomingObject�T  !# !5!6!5 =   !7!8!7 n    !9!:!9 m    �R
�R 
pcls!: o    �Q�Q  0 incomingobject incomingObject!8 m    �P
�P 
long!6 !;!<!; k     /!=!= !>!?!> r     *!@!A!@ l    #!B�O�N!B c     #!C!D!C o     !�M�M  0 incomingobject incomingObject!D m   ! "�L
�L 
TEXT�O  �N  !A K      !E!E �K!F�J
�K 
ctxt!F o      �I�I  0 incomingobject incomingObject�J  !? !G�H!G L   + /!H!H c   + .!I!J!I o   + ,�G�G  0 incomingobject incomingObject!J m   , -�F
�F 
TEXT�H  !< !K!L!K =  2 7!M!N!M n   2 5!O!P!O m   3 5�E
�E 
pcls!P o   2 3�D�D  0 incomingobject incomingObject!N m   5 6�C
�C 
doub!L !Q!R!Q k   : I!S!S !T!U!T r   : D!V!W!V l  : =!X�B�A!X c   : =!Y!Z!Y o   : ;�@�@  0 incomingobject incomingObject!Z m   ; <�?
�? 
TEXT�B  �A  !W K      ![![ �>!\�=
�> 
ctxt!\ o      �<�<  0 incomingobject incomingObject�=  !U !]�;!] L   E I!^!^ c   E H!_!`!_ o   E F�:�:  0 incomingobject incomingObject!` m   F G�9
�9 
TEXT�;  !R !a!b!a =  L Q!c!d!c n   L O!e!f!e m   M O�8
�8 
pcls!f o   L M�7�7  0 incomingobject incomingObject!d m   O P�6
�6 
utxt!b !g�5!g k   T c!h!h !i!j!i r   T ^!k!l!k l  T W!m�4�3!m c   T W!n!o!n o   T U�2�2  0 incomingobject incomingObject!o m   U V�1
�1 
TEXT�4  �3  !l K      !p!p �0!q�/
�0 
ctxt!q o      �.�.  0 incomingobject incomingObject�/  !j !r�-!r L   _ c!s!s c   _ b!t!u!t o   _ `�,�,  0 incomingobject incomingObject!u m   ` a�+
�+ 
TEXT�-  �5  !$ k   f�!v!v !w!x!w l  f f�*!y!z�*  !y , & LIST, RECORD, styled text, or unknown   !z �!{!{ L   L I S T ,   R E C O R D ,   s t y l e d   t e x t ,   o r   u n k n o w n!x !|!}!| Q   f~!~!!�!~ k   i �!�!� !�!�!� Q   i �!�!�!�!� k   l s!�!� !�!�!� r   l q!�!�!� m   l m!�!� �!�!� ` s o m e _ U U I D _ V a l u e _ 5 4 F 8 2 7 C 7 3 7 9 E 4 0 7 3 B 5 A 2 1 6 B B 9 C D E 5 7 5 D!� n      !�!�!� o   n p�)�) j0 3some_uuid_property_54f827c7379e4073b5a216bb9cde575d 3some_UUID_Property_54F827C7379E4073B5A216BB9CDE575D!� m   m n!�!� �!�!�  X X X X!� !�!�!� l  r r�(�'�&�(  �'  �&  !� !�!�!� l  r r�%!�!��%  !� V P GENERATE the error message for a known 'object' (here, a string) so we can get    !� �!�!� �   G E N E R A T E   t h e   e r r o r   m e s s a g e   f o r   a   k n o w n   ' o b j e c t '   ( h e r e ,   a   s t r i n g )   s o   w e   c a n   g e t  !� !��$!� l  r r�#!�!��#  !� 7 1 the 'lead' and 'trail' part of the error message   !� �!�!� b   t h e   ' l e a d '   a n d   ' t r a i l '   p a r t   o f   t h e   e r r o r   m e s s a g e�$  !� R      �"!�!�
�" .ascrerr ****      � ****!� o      �!�! 0 errmsg errMsg!� � !��
�  
errn!� o      �� 0 errnum errNum�  !� k   { �!�!� !�!�!� r   { �!�!�!� J   { �!�!� !�!�!� n  { ~!�!�!� 1   | ~�
� 
txdl!� 1   { |�
� 
ascr!� !��!� J   ~ �!�!� !��!� m   ~ !�!� �!�!�  " X X X X "�  �  !� J      !�!� !�!�!� o      �� 0 	olddelims 	oldDelims!� !��!� n     !�!�!� 1   � ��
� 
txdl!� 1   � ��
� 
ascr�  !� !�!�!� r   � �!�!�!� n   � �!�!�!� 2  � ��
� 
citm!� o   � ��� 0 errmsg errMsg!� J      !�!� !�!�!� o      �� 0 
errmsglead 
errMsgLead!� !��!� o      �� 0 errmsgtrail errMsgTrail�  !� !��!� r   � �!�!�!� o   � ��� 0 	olddelims 	oldDelims!� n     !�!�!� 1   � ��
� 
txdl!� 1   � ��
� 
ascr�  !� !�!�!� l  � ����
�  �  �
  !� !�!�!� l  � ��	!�!��	  !� = 7 now, generate error message for the SPECIFIED object:    !� �!�!� n   n o w ,   g e n e r a t e   e r r o r   m e s s a g e   f o r   t h e   S P E C I F I E D   o b j e c t :  !� !�!�!� r   � �!�!�!� m   � �!�!� �!�!� ` s o m e _ U U I D _ V a l u e _ 5 4 F 8 2 7 C 7 3 7 9 E 4 0 7 3 B 5 A 2 1 6 B B 9 C D E 5 7 5 D!� n      !�!�!� o   � ��� j0 3some_uuid_property_54f827c7379e4073b5a216bb9cde575d 3some_UUID_Property_54F827C7379E4073B5A216BB9CDE575D!� o   � ���  0 incomingobject incomingObject!� !�!�!� l  � �����  �  �  !� !��!� l  � ���� �  �  �   �  ! R      ��!���
�� .ascrerr ****      � ****!� o      ���� 0 errmsg errMsg��  !� Z   �~!�!���!�!� F   � �!�!�!� C   � �!�!�!� o   � ����� 0 errmsg errMsg!� m   � �!�!� �!�!� � S y s t e m   E v e n t s   g o t   a n   e r r o r :   C a n  t   m a k e   s o m e _ U U I D _ P r o p e r t y _ 5 4 F 8 2 7 C 7 3 7 9 E 4 0 7 3 B 5 A 2 1 6 B B 9 C D E 5 7 5 D   o f  !� D   � �!�!�!� o   � ����� 0 errmsg errMsg!� m   � �!�!� �!�!� ( i n t o   t y p e   s p e c i f i e r .!� k   �!�!� !�!�!� r   � �!�!�!� m   � �!�!� �!�!� � S y s t e m   E v e n t s   g o t   a n   e r r o r :   C a n  t   m a k e   s o m e _ U U I D _ P r o p e r t y _ 5 4 F 8 2 7 C 7 3 7 9 E 4 0 7 3 B 5 A 2 1 6 B B 9 C D E 5 7 5 D   o f  !� o      ���� 0 
errmsglead 
errMsgLead!� !�!�!� r   � �!�!�!� m   � �!�!� �!�!� *   i n t o   t y p e   s p e c i f i e r .!� o      ���� 0 errmsgtrail errMsgTrail!� !�!�!� l  � ���������  ��  ��  !� !�!�!� r   � �!�!�!� J   � �!�!� !�!�!� n  � �!�!�!� 1   � ���
�� 
txdl!� 1   � ���
�� 
ascr!� !���!� o   � ����� 0 
errmsglead 
errMsgLead��  !� J      !�!� !�!�!� o      ���� 0 od  !� " ��"  n     """ 1   � ���
�� 
txdl" 1   � ���
�� 
ascr��  !� """ l  � ���������  ��  ��  " """ r   � �""" n   � �"	"
"	 4   � ���"
�� 
citm" m   � ����� "
 o   � ����� 0 errmsg errMsg" o      ���� 0 objectstring objectString" """ r   �""" o   � ����� 0 errmsgtrail errMsgTrail" n     """ 1   ��
�� 
txdl" 1   � ��
�� 
ascr" """ l ��������  ��  ��  " """ r  
""" n  """ 4  ��"
�� 
citm" m  ���� " o  ���� 0 objectstring objectString" o      ���� 0 objectstring objectString" """ r  """ o  ���� 0 od  " n     "" " 1  ��
�� 
txdl"  1  ��
�� 
ascr" "!"""! l ��������  ��  ��  "" "#"$"# l ��������  ��  ��  "$ "%��"% l ��������  ��  ��  ��  ��  !� k  ~"&"& "'"("' l ��")"*��  ")  tell me to log errMsg   "* �"+"+ * t e l l   m e   t o   l o g   e r r M s g"( ","-", r  "."/". o  ���� 0 errmsg errMsg"/ o      ���� 0 objectstring objectString"- "0"1"0 l ��������  ��  ��  "1 "2"3"2 Z  G"4"5����"4 E  "6"7"6 o  ���� 0 objectstring objectString"7 o  ���� 0 
errmsglead 
errMsgLead"5 k  C"8"8 "9":"9 r  6";"<"; J  %"="= ">"?"> n ""@"A"@ 1   "��
�� 
txdl"A 1   ��
�� 
ascr"? "B��"B o  "#���� 0 
errmsglead 
errMsgLead��  "< J      "C"C "D"E"D o      ���� 0 od  "E "F�"F n     "G"H"G 1  24�
� 
txdl"H 1  12�
� 
ascr�  ": "I"J"I r  7="K"L"K n  7;"M"N"M 4  8;�"O
� 
citm"O m  9:�� "N o  78�� 0 objectstring objectString"L o      �� 0 objectstring objectString"J "P�"P r  >C"Q"R"Q o  >?�� 0 od  "R n     "S"T"S 1  @B�
� 
txdl"T 1  ?@�
� 
ascr�  ��  ��  "3 "U"V"U l HH����  �  �  "V "W"X"W Z  H|"Y"Z��"Y E  HK"["\"[ o  HI�� 0 objectstring objectString"\ o  IJ�� 0 errmsgtrail errMsgTrail"Z k  Nx"]"] "^"_"^ r  Ne"`"a"` J  NT"b"b "c"d"c n NQ"e"f"e 1  OQ�
� 
txdl"f 1  NO�
� 
ascr"d "g�"g o  QR�� 0 errmsgtrail errMsgTrail�  "a J      "h"h "i"j"i o      �� 0 od  "j "k�"k n     "l"m"l 1  ac�
� 
txdl"m 1  `a�
� 
ascr�  "_ "n"o"n r  fk"p"q"p o  fg�� 0 errmsgtrail errMsgTrail"q n     "r"s"r 1  hj�
� 
txdl"s 1  gh�
� 
ascr"o "t"u"t r  lr"v"w"v n  lp"x"y"x 4  mp�"z
� 
citm"z m  no�� "y o  lm�� 0 objectstring objectString"w o      �� 0 objectstring objectString"u "{�"{ r  sx"|"}"| o  st�� 0 od  "} n     "~""~ 1  uw�
� 
txdl" 1  tu�
� 
ascr�  �  �  "X "�"�"� l }}����  �  �  "� "��"� l }}�"�"��  "� O Iset {text:objectString} to (objectString as string) -- what does THIS do?   "� �"�"� � s e t   { t e x t : o b j e c t S t r i n g }   t o   ( o b j e c t S t r i n g   a s   s t r i n g )   - -   w h a t   d o e s   T H I S   d o ?�  !} "�"�"� l ����  �  �  "� "��"� L  �"�"� o  ��� 0 objectstring objectString�  �_  ! "�"�"� l     ����  �  �  "� "�"�"� i   � �"�"�"� I      �"��� 0 gettextbefore getTextBefore"� "�"�"� o      �� 0 
sourcetext 
sourceTEXT"� "��"� o      �� 0 stophere stopHere�  �  "� k     Q"�"� "�"�"� l     �"�"��  "� B < version 1.1, Daniel A. Shockley, http://www.danshockley.com   "� �"�"� x   v e r s i o n   1 . 1 ,   D a n i e l   A .   S h o c k l e y ,   h t t p : / / w w w . d a n s h o c k l e y . c o m"� "�"�"� l     ����  �  �  "� "��"� Q     Q"�"�"�"� k    A"�"� "�"�"� r    "�"�"� J    	"�"� "�"�"� n   "�"�"� 1    �
� 
txdl"� 1    �
� 
ascr"� "��"� o    �� 0 stophere stopHere�  "� J      "�"� "�"�"� o      �� 0 	olddelims 	oldDelims"� "��~"� n     "�"�"� 1    �}
�} 
txdl"� 1    �|
�| 
ascr�~  "� "�"�"� Z    8"�"��{"�"� =   $"�"�"� l   ""��z�y"� I   "�x"��w
�x .corecnte****       ****"� n    "�"�"� 2   �v
�v 
citm"� o    �u�u 0 
sourcetext 
sourceTEXT�w  �z  �y  "� m   " #�t�t "� k   ' /"�"� "�"�"� r   ' ,"�"�"� o   ' (�s�s 0 	olddelims 	oldDelims"� n     "�"�"� 1   ) +�r
�r 
txdl"� 1   ( )�q
�q 
ascr"� "��p"� L   - /"�"� m   - ."�"� �"�"�  �p  �{  "� r   2 8"�"�"� n   2 6"�"�"� 4   3 6�o"�
�o 
citm"� m   4 5�n�n "� o   2 3�m�m 0 
sourcetext 
sourceTEXT"� l     "��l�k"� o      �j�j 0 finalresult finalResult�l  �k  "� "�"�"� r   9 >"�"�"� o   9 :�i�i 0 	olddelims 	oldDelims"� n     "�"�"� 1   ; =�h
�h 
txdl"� 1   : ;�g
�g 
ascr"� "��f"� L   ? A"�"� o   ? @�e�e 0 finalresult finalResult�f  "� R      �d"�"�
�d .ascrerr ****      � ****"� o      �c�c 0 errmsg errMsg"� �b"��a
�b 
errn"� o      �`�` 0 errnum errNum�a  "� k   I Q"�"� "�"�"� r   I N"�"�"� o   I J�_�_ 0 	olddelims 	oldDelims"� n     "�"�"� 1   K M�^
�^ 
txdl"� 1   J K�]
�] 
ascr"� "��\"� l  O Q"�"�"�"� L   O Q"�"� m   O P"�"� �"�"�  "� 3 - return nothing if the stop text is not found   "� �"�"� Z   r e t u r n   n o t h i n g   i f   t h e   s t o p   t e x t   i s   n o t   f o u n d�\  �  "� "�"�"� l     �[�Z�Y�[  �Z  �Y  "� "�"�"� i   � �"�"�"� I      �X"��W�X  0 gettextbetween getTextBetween"� "��V"� o      �U�U 	0 prefs  �V  �W  "� k     �"�"� "�"�"� l     �T"�"��T  "� C = version 1.6, Daniel A. Shockley <http://www.danshockley.com>   "� �"�"� z   v e r s i o n   1 . 6 ,   D a n i e l   A .   S h o c k l e y   < h t t p : / / w w w . d a n s h o c k l e y . c o m >"� "�"�"� l     �S�R�Q�S  �R  �Q  "� "�"�"� r     "�"�"� K     "�"� �P"�"��P 0 textitemnum textItemNum"� m    �O�O "� �N"��M�N  0 includemarkers includeMarkers"� m    �L
�L boovfals�M  "� o      �K�K 0 defaultprefs defaultPrefs"� "�# "� l  	 	�J�I�H�J  �I  �H  #  ### Z   	 '##�G�F# F   	 ### l  	 #�E�D# >  	 ##	# n   	 #
##
 m   
 �C
�C 
pcls# o   	 
�B�B 	0 prefs  #	 m    �A
�A 
list�E  �D  # l   #�@�?# >   ### c    ### l   #�>�=# n    ### m    �<
�< 
pcls# o    �;�; 	0 prefs  �>  �=  # m    �:
�: 
TEXT# m    ## �##  r e c o r d�@  �?  # R    #�9##
�9 .ascrerr ****      � ****# m   ! "## �## g e t T e x t B e t w e e n   F A I L E D :   p a r a m e t e r   s h o u l d   b e   a   r e c o r d   o r   l i s t .   I f   i t   i s   m u l t i p l e   i t e m s ,   j u s t   m a k e   i t   i n t o   a   l i s t   t o   u p g r a d e   t o   t h i s   h a n d l e r .# �8#�7
�8 
errn# m     �6�6 �7  �G  �F  # ### Z   ( `##�5�4# =  ( -## # n   ( +#!#"#! m   ) +�3
�3 
pcls#" o   ( )�2�2 	0 prefs  #  m   + ,�1
�1 
list# k   0 \#### #$#%#$ Z   0 F#&#'�0�/#& =  0 7#(#)#( l  0 5#*�.�-#* I  0 5�,#+�+
�, .corecnte****       ****#+ o   0 1�*�* 	0 prefs  �+  �.  �-  #) m   5 6�)�) #' r   : B#,#-#, n   : >#.#/#. 4   ; >�(#0
�( 
cobj#0 m   < =�'�' #/ o   : ;�&�& 	0 prefs  #- n      #1#2#1 o   ? A�%�% 0 textitemnum textItemNum#2 o   > ?�$�$ 0 defaultprefs defaultPrefs�0  �/  #% #3�##3 r   G \#4#5#4 K   G Z#6#6 �"#7#8�" 0 
sourcetext 
sourceTEXT#7 n   H L#9#:#9 4   I L�!#;
�! 
cobj#; m   J K� �  #: o   H I�� 	0 prefs  #8 �#<#=� 0 
beforetext 
beforeText#< n   M Q#>#?#> 4   N Q�#@
� 
cobj#@ m   O P�� #? o   M N�� 	0 prefs  #= �#A�� 0 	aftertext 	afterText#A n   R V#B#C#B 4   S V�#D
� 
cobj#D m   T U�� #C o   R S�� 	0 prefs  �  #5 o      �� 	0 prefs  �#  �5  �4  # #E#F#E l  a f#G#H#I#G r   a f#J#K#J b   a d#L#M#L o   a b�� 	0 prefs  #M o   b c�� 0 defaultprefs defaultPrefs#K o      �� 	0 prefs  #H , & add on default preferences, if needed   #I �#N#N L   a d d   o n   d e f a u l t   p r e f e r e n c e s ,   i f   n e e d e d#F #O#P#O r   g l#Q#R#Q n   g j#S#T#S o   h j�� 0 
sourcetext 
sourceTEXT#T o   g h�� 	0 prefs  #R o      �� 0 
sourcetext 
sourceTEXT#P #U#V#U r   m r#W#X#W n   m p#Y#Z#Y o   n p�� 0 
beforetext 
beforeText#Z o   m n�� 	0 prefs  #X o      �� 0 
beforetext 
beforeText#V #[#\#[ r   s x#]#^#] n   s v#_#`#_ o   t v�� 0 	aftertext 	afterText#` o   s t�
�
 	0 prefs  #^ o      �	�	 0 	aftertext 	afterText#\ #a#b#a r   y ~#c#d#c n   y |#e#f#e o   z |�� 0 textitemnum textItemNum#f o   y z�� 	0 prefs  #d o      �� 0 textitemnum textItemNum#b #g#h#g r    �#i#j#i n    �#k#l#k o   � ���  0 includemarkers includeMarkers#l o    ��� 	0 prefs  #j o      ��  0 includemarkers includeMarkers#h #m#n#m l  � ���� �  �  �   #n #o#p#o Q   � �#q#r#s#q k   � �#t#t #u#v#u r   � �#w#x#w J   � �#y#y #z#{#z n  � �#|#}#| 1   � ���
�� 
txdl#} 1   � ���
�� 
ascr#{ #~��#~ o   � ����� 0 
beforetext 
beforeText��  #x J      ## #�#�#� o      ���� 0 	olddelims 	oldDelims#� #���#� n     #�#�#� 1   � ���
�� 
txdl#� 1   � ���
�� 
ascr��  #v #�#�#� r   � �#�#�#� n   � �#�#�#� 4   � ���#�
�� 
citm#� o   � ����� 0 textitemnum textItemNum#� o   � ����� 0 
sourcetext 
sourceTEXT#� l     #�����#� o      ���� 0 prefixremoved prefixRemoved��  ��  #� #�#�#� r   � �#�#�#� o   � ����� 0 	aftertext 	afterText#� n     #�#�#� 1   � ���
�� 
txdl#� 1   � ���
�� 
ascr#� #�#�#� r   � �#�#�#� n   � �#�#�#� 4   � ���#�
�� 
citm#� m   � ����� #� o   � ����� 0 prefixremoved prefixRemoved#� l     #�����#� o      ���� 0 finalresult finalResult��  ��  #� #�#�#� r   � �#�#�#� o   � ����� 0 	olddelims 	oldDelims#� n     #�#�#� 1   � ���
�� 
txdl#� 1   � ���
�� 
ascr#� #�#�#� l  � ���������  ��  ��  #� #�#�#� Z  � �#�#�����#� o   � �����  0 includemarkers includeMarkers#� r   � �#�#�#� b   � �#�#�#� b   � �#�#�#� o   � ����� 0 
beforetext 
beforeText#� o   � ����� 0 finalresult finalResult#� o   � ����� 0 	aftertext 	afterText#� o      ���� 0 finalresult finalResult��  ��  #� #���#� l  � ���������  ��  ��  ��  #r R      ��#�#�
�� .ascrerr ****      � ****#� o      ���� 0 errmsg errMsg#� ��#���
�� 
errn#� o      ���� 0 errnum errNum��  #s k   � �#�#� #�#�#� r   � �#�#�#� o   � ����� 0 	olddelims 	oldDelims#� n     #�#�#� 1   � ���
�� 
txdl#� 1   � ���
�� 
ascr#� #�#�#� l  � ���#�#���  #� > 8 	tell me to log "Error in getTextBetween() : " & errMsg   #� �#�#� p   	 t e l l   m e   t o   l o g   " E r r o r   i n   g e t T e x t B e t w e e n ( )   :   "   &   e r r M s g#� #���#� l  � �#�#�#�#� r   � �#�#�#� m   � �#�#� �#�#�  #� l     #�����#� o      ���� 0 finalresult finalResult��  ��  #� : 4 return nothing if the surrounding text is not found   #� �#�#� h   r e t u r n   n o t h i n g   i f   t h e   s u r r o u n d i n g   t e x t   i s   n o t   f o u n d��  #p #�#�#� l  � ���������  ��  ��  #� #�#�#� l  � ���������  ��  ��  #� #�#�#� L   � �#�#� o   � ����� 0 finalresult finalResult#� #���#� l  � ���������  ��  ��  ��  "� #�#�#� l     ����  �  �  #� #�#�#� i   � �#�#�#� I      �#��� 0 
parsechars 
parseChars#� #��#� o      �� 	0 prefs  �  �  #� k     �#�#� #�#�#� l     �#�#��  #� B < version 1.3, Daniel A. Shockley, http://www.danshockley.com   #� �#�#� x   v e r s i o n   1 . 3 ,   D a n i e l   A .   S h o c k l e y ,   h t t p : / / w w w . d a n s h o c k l e y . c o m#� #�#�#� l     ����  �  �  #� #�#�#� r     #�#�#� K     #�#� �#��� 0 considercase considerCase#� m    �
� boovtrue�  #� o      �� 0 defaultprefs defaultPrefs#� #�#�#� l   ����  �  �  #� #�#�#� l   ����  �  �  #� #�#�#� Z    [#�#�#��#� =   #�#�#� n    
#�#�#� m    
�
� 
pcls#� o    �� 	0 prefs  #� m   
 �
� 
list#� k    ?#�#� #�#�#� Z    =#�#��#�#� ?   #�#�#� l   #���#� I   �#��
� .corecnte****       ****#� o    �� 	0 prefs  �  �  �  #� m    �� #� k    ,#�#� #�#�#� l   �#�$ �  #� - ' get any parameters after the initial 3   $  �$$ N   g e t   a n y   p a r a m e t e r s   a f t e r   t h e   i n i t i a l   3#� $�$ r    ,$$$ K    *$$ �$$� 0 
sourcetext 
sourceTEXT$ n    $$	$ 4    �$

� 
cobj$
 m    �� $	 o    �� 	0 prefs  $ �$$� 0 parsestring parseString$ n    #$$$ 4     #�$
� 
cobj$ m   ! "�� $ o     �� 	0 prefs  $ �$�� 0 considercase considerCase$ n   $ ($$$ 4   % (�$
� 
cobj$ m   & '�� $ o   $ %�� 	0 prefs  �  $ o      �� 	0 prefs  �  �  #� r   / =$$$ K   / ;$$ �$$� 0 
sourcetext 
sourceTEXT$ n   0 4$$$ 4   1 4�$
� 
cobj$ m   2 3�� $ o   0 1�� 	0 prefs  $ �$�� 0 parsestring parseString$ n   5 9$$$ 4   6 9�$
� 
cobj$ m   7 8�� $ o   5 6�� 	0 prefs  �  $ o      �� 	0 prefs  #� $ �$  l  > >����  �  �  �  #� $!$"$! >  B L$#$$$# n   B E$%$&$% m   C E�
� 
pcls$& o   B C�� 	0 prefs  $$ l  E K$'��~$' n   E K$($)$( m   I K�}
�} 
pcls$) K   E I$*$* �|$+�{�| 0 somekey someKey$+ m   F G�z�z �{  �  �~  $" $,�y$, k   O W$-$- $.$/$. l  O O�x$0$1�x  $0 x r Test by matching class to something that IS a record to avoid FileMaker namespace conflict with the term "record"   $1 �$2$2 �   T e s t   b y   m a t c h i n g   c l a s s   t o   s o m e t h i n g   t h a t   I S   a   r e c o r d   t o   a v o i d   F i l e M a k e r   n a m e s p a c e   c o n f l i c t   w i t h   t h e   t e r m   " r e c o r d "$/ $3$4$3 l  O O�w�v�u�w  �v  �u  $4 $5$6$5 R   O U�t$7$8
�t .ascrerr ****      � ****$7 m   S T$9$9 �$:$:> T h e   p a r a m e t e r   f o r   ' p a r s e C h a r s ( ) '   s h o u l d   b e   a   r e c o r d   o r   a t   l e a s t   a   l i s t .   W r a p   t h e   p a r a m e t e r ( s )   i n   c u r l y   b r a c k e t s   f o r   e a s y   u p g r a d e   t o   ' p a r s e C h a r s ( )   v e r s i o n   1 . 3 .  $8 �s$;�r
�s 
errn$; m   Q R�q�q �r  $6 $<�p$< l  V V�o�n�m�o  �n  �m  �p  �y  �  #� $=$>$= l  \ \�l�k�j�l  �k  �j  $> $?$@$? l  \ \�i�h�g�i  �h  �g  $@ $A$B$A r   \ a$C$D$C b   \ _$E$F$E o   \ ]�f�f 	0 prefs  $F o   ] ^�e�e 0 defaultprefs defaultPrefs$D o      �d�d 	0 prefs  $B $G$H$G l  b b�c�b�a�c  �b  �a  $H $I$J$I l  b b�`�_�^�`  �_  �^  $J $K$L$K r   b g$M$N$M n   b e$O$P$O o   c e�]�] 0 
sourcetext 
sourceTEXT$P o   b c�\�\ 	0 prefs  $N o      �[�[ 0 
sourcetext 
sourceTEXT$L $Q$R$Q r   h m$S$T$S n   h k$U$V$U o   i k�Z�Z 0 parsestring parseString$V o   h i�Y�Y 	0 prefs  $T o      �X�X 0 parsestring parseString$R $W$X$W r   n s$Y$Z$Y n   n q$[$\$[ o   o q�W�W 0 considercase considerCase$\ o   n o�V�V 	0 prefs  $Z o      �U�U 0 considercase considerCase$X $]$^$] l  t t�T�S�R�T  �S  �R  $^ $_$`$_ l  t t�Q�P�O�Q  �P  �O  $` $a$b$a r   t y$c$d$c n  t w$e$f$e 1   u w�N
�N 
txdl$f 1   t u�M
�M 
ascr$d o      �L�L 0 	olddelims 	oldDelims$b $g�K$g Q   z �$h$i$j$h k   } �$k$k $l$m$l r   } �$n$o$n l  } �$p�J�I$p J   } �$q$q $r�H$r c   } �$s$t$s o   } ~�G�G 0 parsestring parseString$t m   ~ �F
�F 
TEXT�H  �J  �I  $o n     $u$v$u 1   � ��E
�E 
txdl$v 1   � ��D
�D 
ascr$m $w$x$w l  � ��C�B�A�C  �B  �A  $x $y$z$y Z   � �${$|�@$}${ o   � ��?�? 0 considercase considerCase$| P   � �$~$�>$~ r   � �$�$�$� n   � �$�$�$� 2   � ��=
�= 
citm$� o   � ��<�< 0 
sourcetext 
sourceTEXT$� l     $��;�:$� o      �9�9 0 
parsedlist 
parsedList�;  �:  $ �8�7
�8 conscase�7  �>  �@  $} P   � �$��6$�$� r   � �$�$�$� n   � �$�$�$� 2   � ��5
�5 
citm$� o   � ��4�4 0 
sourcetext 
sourceTEXT$� l     $��3�2$� o      �1�1 0 
parsedlist 
parsedList�3  �2  �6  $� �0�/
�0 conscase�/  $z $�$�$� l  � ��.�-�,�.  �-  �,  $� $�$�$� r   � �$�$�$� o   � ��+�+ 0 	olddelims 	oldDelims$� n     $�$�$� 1   � ��*
�* 
txdl$� 1   � ��)
�) 
ascr$� $��($� L   � �$�$� o   � ��'�' 0 
parsedlist 
parsedList�(  $i R      �&$�$�
�& .ascrerr ****      � ****$� o      �%�% 0 errmsg errMsg$� �$$��#
�$ 
errn$� o      �"�" 0 errnum errNum�#  $j k   � �$�$� $�$�$� Q   � �$�$��!$� r   � �$�$�$� o   � �� �  0 	olddelims 	oldDelims$� n     $�$�$� 1   � ��
� 
txdl$� 1   � ��
� 
ascr$� R      ���
� .ascrerr ****      � ****�  �  �!  $� $��$� R   � ��$�$�
� .ascrerr ****      � ****$� b   � �$�$�$� m   � �$�$� �$�$� : E R R O R :   p a r s e C h a r s ( )   h a n d l e r :  $� o   � ��� 0 errmsg errMsg$� �$��
� 
errn$� o   � ��� 0 errnum errNum�  �  �K  #� $�$�$� l     ����  �  �  $� $�$�$� i   � �$�$�$� I      �$��� 0 replacesimple replaceSimple$� $��$� o      �� 	0 prefs  �  �  $� k     �$�$� $�$�$� l     �$�$��  $� A ; version 1.4, Daniel A. Shockley http://www.danshockley.com   $� �$�$� v   v e r s i o n   1 . 4 ,   D a n i e l   A .   S h o c k l e y   h t t p : / / w w w . d a n s h o c k l e y . c o m$� $�$�$� l     ���
�  �  �
  $� $�$�$� r     $�$�$� K     $�$� �	$���	 0 considercase considerCase$� m    �
� boovtrue�  $� o      �� 0 defaultprefs defaultPrefs$� $�$�$� l   ����  �  �  $� $�$�$� Z    e$�$�$��$� =   $�$�$� n    
$�$�$� m    
�
� 
pcls$� o    � �  	0 prefs  $� m   
 ��
�� 
list$� k    I$�$� $�$�$� Z    G$�$���$�$� ?   $�$�$� l   $�����$� I   ��$���
�� .corecnte****       ****$� o    ���� 	0 prefs  ��  ��  ��  $� m    ���� $� k    1$�$� $�$�$� l   ��$�$���  $� - ' get any parameters after the initial 3   $� �$�$� N   g e t   a n y   p a r a m e t e r s   a f t e r   t h e   i n i t i a l   3$� $���$� r    1$�$�$� K    /$�$� ��$�$��� 0 
sourcetext 
sourceTEXT$� n    $�$�$� 4    ��$�
�� 
cobj$� m    ���� $� o    ���� 	0 prefs  $� ��$�$��� 0 oldchars oldChars$� n    #$�$�$� 4     #��$�
�� 
cobj$� m   ! "���� $� o     ���� 	0 prefs  $� ��$�$��� 0 newchars newChars$� n   $ ($�$�$� 4   % (��$�
�� 
cobj$� m   & '���� $� o   $ %���� 	0 prefs  $� ��$����� 0 considercase considerCase$� n   ) -$�$�$� 4   * -��$�
�� 
cobj$� m   + ,���� $� o   ) *���� 	0 prefs  ��  $� o      ���� 	0 prefs  ��  ��  $� r   4 G$�$�$� K   4 E$�$� ��$�$��� 0 
sourcetext 
sourceTEXT$� n   5 9$�$�$� 4   6 9��$�
�� 
cobj$� m   7 8���� $� o   5 6���� 	0 prefs  $� ��$�$��� 0 oldchars oldChars$� n   : >$�$�$� 4   ; >��$�
�� 
cobj$� m   < =���� $� o   : ;���� 	0 prefs  $� ��$����� 0 newchars newChars$� n   ? C% %%  4   @ C��%
�� 
cobj% m   A B���� % o   ? @���� 	0 prefs  ��  $� o      ���� 	0 prefs  $� %��% l  H H��������  ��  ��  ��  $� %%% >  L V%%% n   L O%%	% m   M O��
�� 
pcls%	 o   L M���� 	0 prefs  % l  O U%
����%
 n   O U%%% m   S U��
�� 
pcls% K   O S%% ��%���� 0 somekey someKey% m   P Q���� ��  ��  ��  % %��% k   Y a%% %%% l  Y Y��%%��  % x r Test by matching class to something that IS a record to avoid FileMaker namespace conflict with the term "record"   % �%% �   T e s t   b y   m a t c h i n g   c l a s s   t o   s o m e t h i n g   t h a t   I S   a   r e c o r d   t o   a v o i d   F i l e M a k e r   n a m e s p a c e   c o n f l i c t   w i t h   t h e   t e r m   " r e c o r d "% %%% l  Y Y��������  ��  ��  % %%% R   Y _��%%
�� .ascrerr ****      � ****% m   ] ^%% �%%J T h e   p a r a m e t e r   f o r   ' r e p l a c e S i m p l e ( ) '   s h o u l d   b e   a   r e c o r d   o r   a t   l e a s t   a   l i s t .   W r a p   t h e   p a r a m e t e r ( s )   i n   c u r l y   b r a c k e t s   f o r   e a s y   u p g r a d e   t o   ' r e p l a c e S i m p l e ( )   v e r s i o n   1 . 3 .  % ��%��
�� 
errn% m   [ \���� ��  % %��% l  ` `����  �  �  ��  ��  �  $� % %!%  l  f f����  �  �  %! %"%#%" l  f f����  �  �  %# %$%%%$ r   f k%&%'%& b   f i%(%)%( o   f g�� 	0 prefs  %) o   g h�� 0 defaultprefs defaultPrefs%' o      �� 	0 prefs  %% %*%+%* l  l l����  �  �  %+ %,%-%, l  l l����  �  �  %- %.%/%. r   l q%0%1%0 n   l o%2%3%2 o   m o�� 0 considercase considerCase%3 o   l m�� 	0 prefs  %1 o      �� 0 considercase considerCase%/ %4%5%4 r   r w%6%7%6 n   r u%8%9%8 o   s u�� 0 
sourcetext 
sourceTEXT%9 o   r s�� 	0 prefs  %7 o      �� 0 
sourcetext 
sourceTEXT%5 %:%;%: r   x }%<%=%< n   x {%>%?%> o   y {�� 0 oldchars oldChars%? o   x y�� 	0 prefs  %= o      �� 0 oldchars oldChars%; %@%A%@ r   ~ �%B%C%B n   ~ �%D%E%D o    ��� 0 newchars newChars%E o   ~ �� 	0 prefs  %C o      �� 0 newchars newChars%A %F%G%F l  � �����  �  �  %G %H%I%H r   � �%J%K%J c   � �%L%M%L o   � ��� 0 
sourcetext 
sourceTEXT%M m   � ��
� 
TEXT%K o      �� 0 
sourcetext 
sourceTEXT%I %N%O%N l  � �����  �  �  %O %P%Q%P r   � �%R%S%R n  � �%T%U%T 1   � ��
� 
txdl%U 1   � ��
� 
ascr%S o      �� 0 	olddelims 	oldDelims%Q %V%W%V r   � �%X%Y%X l  � �%Z��%Z o   � ��� 0 oldchars oldChars�  �  %Y n     %[%\%[ 1   � ��
� 
txdl%\ 1   � ��
� 
ascr%W %]%^%] Z   � �%_%`�%a%_ o   � ��� 0 considercase considerCase%` P   � �%b%c�%b k   � �%d%d %e%f%e r   � �%g%h%g n   � �%i%j%i 2   � ��
� 
citm%j o   � ��� 0 
sourcetext 
sourceTEXT%h l     %k��%k o      �� 0 
parsedlist 
parsedList�  �  %f %l%m%l r   � �%n%o%n l  � �%p��%p J   � �%q%q %r�%r l  � �%s��%s c   � �%t%u%t o   � ��� 0 newchars newChars%u m   � ��
� 
TEXT�  �  �  �  �  %o n     %v%w%v 1   � ��
� 
txdl%w 1   � ��
� 
ascr%m %x�%x r   � �%y%z%y c   � �%{%|%{ l  � �%}�~�}%} o   � ��|�| 0 
parsedlist 
parsedList�~  �}  %| m   � ��{
�{ 
TEXT%z l     %~�z�y%~ o      �x�x 0 newtext newText�z  �y  �  %c �w�v
�w conscase�v  �  �  %a P   � �%�u%�% k   � �%�%� %�%�%� r   � �%�%�%� n   � �%�%�%� 2   � ��t
�t 
citm%� o   � ��s�s 0 
sourcetext 
sourceTEXT%� l     %��r�q%� o      �p�p 0 
parsedlist 
parsedList�r  �q  %� %�%�%� r   � �%�%�%� l  � �%��o�n%� J   � �%�%� %��m%� l  � �%��l�k%� c   � �%�%�%� o   � ��j�j 0 newchars newChars%� m   � ��i
�i 
TEXT�l  �k  �m  �o  �n  %� n     %�%�%� 1   � ��h
�h 
txdl%� 1   � ��g
�g 
ascr%� %��f%� r   � �%�%�%� c   � �%�%�%� l  � �%��e�d%� o   � ��c�c 0 
parsedlist 
parsedList�e  �d  %� m   � ��b
�b 
TEXT%� l     %��a�`%� o      �_�_ 0 newtext newText�a  �`  �f  �u  %� �^�]
�^ conscase�]  %^ %�%�%� r   � �%�%�%� o   � ��\�\ 0 	olddelims 	oldDelims%� n     %�%�%� 1   � ��[
�[ 
txdl%� 1   � ��Z
�Z 
ascr%� %�%�%� L   � �%�%� o   � ��Y�Y 0 newtext newText%� %��X%� l  � ��W�V�U�W  �V  �U  �X  $� %�%�%� l     �T�S�R�T  �S  �R  %� %�%�%� i   � �%�%�%� I      �Q%��P�Q 0 unparsechars unParseChars%� %�%�%� o      �O�O 0 thislist thisList%� %��N%� o      �M�M 0 newdelim newDelim�N  �P  %� k     C%�%� %�%�%� l     �L%�%��L  %� B < version 1.2, Daniel A. Shockley, http://www.danshockley.com   %� �%�%� x   v e r s i o n   1 . 2 ,   D a n i e l   A .   S h o c k l e y ,   h t t p : / / w w w . d a n s h o c k l e y . c o m%� %�%�%� l     �K�J�I�K  �J  �I  %� %�%�%� r     %�%�%� n    %�%�%� 1    �H
�H 
txdl%� 1     �G
�G 
ascr%� o      �F�F 0 	olddelims 	oldDelims%� %��E%� Q    C%�%�%�%� k   	 !%�%� %�%�%� r   	 %�%�%� l  	 %��D�C%� J   	 %�%� %��B%� c   	 %�%�%� o   	 
�A�A 0 newdelim newDelim%� m   
 �@
�@ 
TEXT�B  �D  �C  %� n     %�%�%� 1    �?
�? 
txdl%� 1    �>
�> 
ascr%� %�%�%� r    %�%�%� c    %�%�%� o    �=�= 0 thislist thisList%� m    �<
�< 
TEXT%� l     %��;�:%� o      �9�9 0 unparsedtext unparsedText�;  �:  %� %�%�%� r    %�%�%� o    �8�8 0 	olddelims 	oldDelims%� n     %�%�%� 1    �7
�7 
txdl%� 1    �6
�6 
ascr%� %��5%� L    !%�%� o     �4�4 0 unparsedtext unparsedText�5  %� R      �3%�%�
�3 .ascrerr ****      � ****%� o      �2�2 0 errmsg errMsg%� �1%��0
�1 
errn%� o      �/�/ 0 errnum errNum�0  %� k   ) C%�%� %�%�%� Q   ) :%�%��.%� r   , 1%�%�%� o   , -�-�- 0 	olddelims 	oldDelims%� n     %�%�%� 1   . 0�,
�, 
txdl%� 1   - .�+
�+ 
ascr%� R      �*�)�(
�* .ascrerr ****      � ****�)  �(  �.  %� %��'%� R   ; C�&%�%�
�& .ascrerr ****      � ****%� b   ? B%�%�%� m   ? @%�%� �%�%� > E R R O R :   u n P a r s e C h a r s ( )   h a n d l e r :  %� o   @ A�%�% 0 errmsg errMsg%� �$%��#
�$ 
errn%� o   = >�"�" 0 errnum errNum�#  �'  �E  %� %��!%� l     � ���   �  �  �!       4�%�� #%�%�%�%�%�%�%�%�%�%�%�%�%�& &&&&&&&&&	&
&&&&&&&&&&&&&&&&&&&&&& &!&"�  %� 2������������������
�	��������� ��������������������������������������������� 0 	debugmode 	DebugMode� 0 
scriptname 
ScriptName� &0 clickcommandposix clickCommandPosix� $0 encodecharforurl encodeCharForURL� $0 encodetextforurl encodeTextForURL� 0 
getfromfmp 
getFromFMP� 0 	sendtofmp 	sendToFMP� 0 sfr_dictget SFR_DictGet� 0 sfr_dictitem SFR_DictItem� 0 
sfr_escape 
SFR_Escape� 0 sfr_unescape SFR_Unescape� 40 displayfilemakerdatabase displayFileMakerDatabase� 20 ensurefilemakerdatabase ensureFileMakerDatabase� (0 fmgui_appfrontmost fmGUI_AppFrontMost� &0 fmgui_checkboxset fmGUI_CheckboxSet� 00 fmgui_dataviewer_close fmGUI_DataViewer_Close� .0 fmgui_inspector_close fmGUI_Inspector_Close�
 00 fmgui_inspector_ensure fmGUI_Inspector_Ensure�	 60 fmgui_managedb_field_edit fmGUI_ManageDb_Field_Edit� :0 fmgui_managedb_field_select fmGUI_ManageDb_Field_Select� >0 fmgui_managedb_fieldlistfocus fmGUI_ManageDb_FieldListFocus� @0 fmgui_managedb_fieldspicktable fmGUI_ManageDb_FieldsPickTable� 40 fmgui_managedb_fieldstab fmGUI_ManageDb_FieldsTab� *0 fmgui_managedb_open fmGUI_ManageDb_Open� B0 fmgui_managedb_relationshipstab fmGUI_ManageDb_RelationshipsTab� *0 fmgui_managedb_save fmGUI_ManageDB_Save� 20 fmgui_modeensure_browse fmGUI_ModeEnsure_Browse�  .0 fmgui_modeensure_find fmGUI_ModeEnsure_Find�� 20 fmgui_modeensure_layout fmGUI_ModeEnsure_Layout�� $0 fmgui_modeselect fmGUI_ModeSelect�� B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow�� :0 fmgui_popup_selectbycommand fmGUI_Popup_SelectByCommand��  0 fmgui_popupset fmGUI_PopupSet�� (0 fmgui_textfieldset fmGUI_TextFieldSet�� (0 fmgui_window_close fmGUI_Window_Close�� .0 openfilemakerdatabase openFileMakerDatabase�� "0 windowwaituntil windowWaitUntil�� 20 windowwaituntil_frontis windowWaitUntil_FrontIS�� 0 sort  �� 0 
logconsole 
logConsole�� 0 loglevel logLEVEL�� 0 logmain logMAIN�� 0 clickatcoords clickAtCoords�� *0 clickobjectbycoords clickObjectByCoords��  0 coercetostring coerceToString�� 0 gettextbefore getTextBefore��  0 gettextbetween getTextBetween�� 0 
parsechars 
parseChars�� 0 replacesimple replaceSimple�� 0 unparsechars unParseChars
� boovfals%� �&#&# f / U s e r s / e s h a g d a r / C o d e / a p p l e s c r i p t - f m - h e l p e r / c l i c l i c k%� �� ;����&$&%���� $0 encodecharforurl encodeCharForURL�� ��&&�� &&  ���� 0 	this_char  ��  &$ ������������ 0 	this_char  �� 0 	ascii_num 	ASCII_num�� 0 hex_list  �� 0 x  �� 0 y  &% �� N R V Z ^ b f j n r v z ~ � � ����� ���
�� .sysoctonshor       TEXT�� 
�� 
cobj
�� 
TEXT�� L�j  E�O���������������a a vE�O�a �a "k/E�O�a �a #k/E�Oa �%�%a &%� �� �����&'&(���� $0 encodetextforurl encodeTextForURL�� ��&)�� &)  �������� 0 	this_text  �� 0 encode_url_a encode_URL_A�� 0 encode_url_b encode_URL_B��  &' 	�������������������� 0 	this_text  �� 0 encode_url_a encode_URL_A�� 0 encode_url_b encode_URL_B�� 0 standard_characters  �� 0 url_a_chars URL_A_chars�� 0 url_b_chars URL_B_chars�� 0 acceptable_characters  �� 0 encoded_text  �� 0 	this_char  &( 	 � � �	����������
�� 
kocl
�� 
cobj
�� .corecnte****       ****�� $0 encodecharforurl encodeCharForURL
�� 
TEXT�� g�E�O�E�O�E�O�E�O�f  
��%E�Y hO�f  
��%E�Y hO�E�O .�[��l kh �� 
��%E�Y �*�k+ %�&E�[OY��O�%� ��0����&*&+���� 0 
getfromfmp 
getFromFMP�� ��&,�� &,  �� 	0 prefs  ��  &* 
����������� 	0 prefs  � 0 fmtype fmType� 0 
astransfer 
asTransfer� 0 fmpname fmpName� 0 fmpactivename fmpActiveName� 0 begintellfm beginTellFM� 0 	endtellfm 	endTellFM� 0 	codetoget 	codeToGet� 0 
sendsource 
sendSource� 0 	inputdata 	inputData&+ ���MU[�x�&-���������������� 0 fmtype fmType�  �  
� .earsffdralis        afdr
� 
pcap&-  
� 
dnam
� 
ret 
� .sysodsct****        scpt�� � 
��,E�W 
X  �E�O�E�O�E�O)j � Y� *�k/�[�,\Z�>1�,E�UO��  �%�%�%E�Y %��  a �%E�Y �a   a �%E�Y hO�a %E�Y a E�Oa E�Oa �%a %E�O��%�%E�O�j E�O�%� ����&.&/�� 0 	sendtofmp 	sendToFMP� �&0� &0  �� 0 somedata someData�  &. ������������� 0 somedata someData� 0 fmtype fmType� 0 
astransfer 
asTransfer� 0 fmpname fmpName� 0 fmpactivename fmpActiveName� 0 begintellfm beginTellFM� 0 	endtellfm 	endTellFM� "0 somedatacleaned someDataCleaned� 0 	olddelims 	oldDelims� 0 	backslash  � 0 	codetoset 	codeToSet� 0 
sendsource 
sendSource&/ #�����,�&-�4>@�FNT[dkp������������� 0 fmtype fmType� 0 somedata someData�  �  
� .earsffdralis        afdr
� 
pcap
� 
dnam
� 
ret 
� 
TEXT
� 
ascr
� 
txdl� \
� .sysontocTEXT       shor
� 
citm
� .sysodsct****        scpt�* ��,E�O��,E�W 
X  �E�O�E�O�E�O)j � [� *�k/�[�,\Z�>1�,E�UO��  ��%�%�%E�Y '�a   a �%E�Y �a   a �%E�Y hO�a %E�Y a E�Oa E�O�a &E�O_ a ,E�Oa j E�O�_ a ,FO�a -E�O��%_ a ,FO�a &E�Oa _ a ,FO�a -E�O�a %_ a ,FO�a &E�O�_ a ,FOa �%a  %�%a !%E�O��%�%E�O�j "OP%� ���&1&2�� 0 sfr_dictget SFR_DictGet� �&3� &3  ��� 0 somedict someDict� 0 itemname itemName�  &1 �������~� 0 somedict someDict� 0 itemname itemName� 0 	keystring 	keyString� 0 	endstring 	endString� 0 	olddelims 	oldDelims� 0 
keyremoved 
keyRemoved�~ 0 	itemvalue 	itemValue&2 
�}!.�|�{�zN�y�} 0 
sfr_escape 
SFR_Escape
�| 
ascr
�{ 
txdl
�z 
citm�y 0 sfr_unescape SFR_Unescape� Y�*�k+ %�%E�O�E�O�� �Y 3��,E�O���,FO��l/E�O�� �Y ���,FO��k/E�O���,FO*�k+ 	OP%� �xs�w�v&4&5�u�x 0 sfr_dictitem SFR_DictItem�w �t&6�t &6  �s�r�s 0 itemname itemName�r 0 	itemvalue 	itemValue�v  &4 �q�p�q 0 itemname itemName�p 0 	itemvalue 	itemValue&5 ��o���o 0 
sfr_escape 
SFR_Escape�u �*�k+ %�%*�k+ %�%%� �n��m�l&7&8�k�n 0 
sfr_escape 
SFR_Escape�m �j&9�j &9  �i�i 0 
somestring 
someString�l  &7 �h�g�f�h 0 
somestring 
someString�g  0 escapecharlist escapeCharList�f 0 onechar oneChar&8 
�����e�d�c�b��a�e 
�d 
kocl
�c 
cobj
�b .corecnte****       ****�a 0 replacesimple replaceSimple�k 4�����vE�O $�[��l kh *���%mvk+ 	E�OP[OY��O�OP%� �`��_�^&:&;�]�` 0 sfr_unescape SFR_Unescape�_ �\&<�\ &<  �[�[ 0 
somestring 
someString�^  &: �Z�Y�X�Z 0 
somestring 
someString�Y  0 escapecharlist escapeCharList�X 0 onechar oneChar&; 
�����W�V�U�T�S�W 
�V 
kocl
�U 
cobj
�T .corecnte****       ****�S 0 replacesimple replaceSimple�] 4�����vE�O $�[��l kh *��%�mvk+ 	E�OP[OY��O�OP%� �R�Q�P&=&>�O�R 40 displayfilemakerdatabase displayFileMakerDatabase�Q �N&?�N &?  �M�M 	0 prefs  �P  &= �L�K�J�I�H�G�F�E�D�C�B�A�L 	0 prefs  �K 0 defaultprefs defaultPrefs�J 0 dbname dbName�I ,0 waitsavetotalseconds waitSaveTotalSeconds�H .0 waitcycledelayseconds waitCycleDelaySeconds�G 0 waitcyclemax waitCycleMax�F 0 fmappbundleid fmAppBundleID�E 0 doclist docList�D 0 errmsg errMsg�C 0 errnum errNum�B 0 onedoc oneDoc�A 0 docname docName&> ,�@5�?�>�=�<�;�:�9�8�7osw�6��5�4�3�2&@�1�0��/�.�-�,�+�*�)�(�'�&�%��$�#�"�!�� @B�@ 0 	fmapptype 	fmAppType�? .0 waitcycledelayseconds waitCycleDelaySeconds�> �= ,0 waitsavetotalseconds waitSaveTotalSeconds
�< 
min �; �: 0 dbname dbName
�9 
dire
�8 olierndD
�7 .sysorondlong        doub
�6 
null
�5 
capp
�4 kfrmID  
�3 
docu�2 0 errmsg errMsg&@ ���
� 
errn� 0 errnum errNum�  �1��
�0 
errn
�/ .sysodelanull��� ��� nmbr
�. 
kocl
�- 
cobj
�, .corecnte****       ****
�+ 
pnam
�* 
cha 
�) 
rvse
�( 
TEXT
�' 
rslt
�& 
ctxt
�% 
psof
�$ 
psin�# 
�" .sysooffslong    ��� null
�! .ascrcmnt****      � ****
�  .miscmvisnull���    obj �O�h�����l� �E�O��%E�O��,E�O��,E�O��,E�O��!��l 
E�O��,�  �E�Y �E�O \�kh�E�O )�Z*a �a 0 	*a -E�UO�� Y hOPW X  �a   hY )a �la �%O�j [OY��O ��[a a l kh 
�a ,E�O�a -a ,a &O_  [a !\[Z*a "a #a $_  a % &k\Zi2EO_  a -a ,a &E�Ob    
�j 'Y hOb    
�j 'Y hOga ( .�a &�a &  �Z*a �a 0 	�j )OPUOeY hV[OY�VOfOPW X  )a �la *�%a +%�%OP%� �K��&A&B�� 20 ensurefilemakerdatabase ensureFileMakerDatabase� �&C� &C  �� 	0 prefs  �  &A ���� 	0 prefs  � 0 dbname dbName� 0 isdisplayed isDisplayed&B ��k��x�������� 0 dbname dbName� 0 	fmapptype 	fmAppType� � 40 displayfilemakerdatabase displayFileMakerDatabase� 0 
logconsole 
logConsole� .0 openfilemakerdatabase openFileMakerDatabase
� .sysodelanull��� ��� nmbr� ���,E�O*����k+ E�Ob    *b  �%l+ Y hO� eY Zb    *b  �%l+ Y hO*�k+  5�j 
Ob    *b  �%l+ Y hO*����k+ E�O�Y f%� ����
&D&E�	� (0 fmgui_appfrontmost fmGUI_AppFrontMost�  �
  &D  &E 
����������
� 
pcap
� 
pisf
� .sysodelanull��� ��� nmbr
� 
cwin
� 
pnam
� 
butT
� .prcsclicnull��� ��� uiel�	 F� B*��/ :*�,e 1e*�,FOkj O*�k/�,�  *�k/�k/j 	Okj Y hY hUU%� �� ��&F&G��� &0 fmgui_checkboxset fmGUI_CheckboxSet�  ��&H�� &H  ������  0 checkboxobject checkboxObject�� 0 checkboxvalue checkboxValue��  &F ����������  0 checkboxobject checkboxObject�� 0 checkboxvalue checkboxValue�� 0 errmsg errMsg�� 0 errnum errNum&G 	��������&I��35
�� 
null
�� 
valL
�� .prcsclicnull��� ��� uiel�� 0 errmsg errMsg&I ������
�� 
errn�� 0 errnum errNum��  
�� 
errn�� :�Z %�� ��,� 
�j Y hY hOeOPW X  )�l�%�%�%&  ��=����&J&K���� 00 fmgui_dataviewer_close fmGUI_DataViewer_Close��  ��  &J  &K b��`����&-��]��������
�� 
pcap�� (0 fmgui_appfrontmost fmGUI_AppFrontMost
�� 
cwin
�� 
pnam
�� 
butT
�� .prcsclicnull��� ��� uiel��  ��  �� 4� 0*��/ ()j+ O *�k/�[�,\Z�81�k/j 	W X 
 hUU& ��h����&L&M���� .0 fmgui_inspector_close fmGUI_Inspector_Close��  ��  &L  &M ��������&-���������������
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
hUU& �������&N&O���� 00 fmgui_inspector_ensure fmGUI_Inspector_Ensure��  ��  &N ������ 0 errmsg errMsg�� 0 errnum errNum&O ����������&-�������������������&P���� 20 fmgui_modeensure_layout fmGUI_ModeEnsure_Layout
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
�� .prcsclicnull��� ��� uiel�� 0 errmsg errMsg&P ������
�� 
errn�� 0 errnum errNum��  
�� 
errn�� i T*j+  O� F*��/ >)j+ O*�k/�[�,\Z�@1j 	 *�k/��/�k/�k/�[�,\Z�81j Y hOeUUW X  )a �la �%OP& ���&Q&R�� 60 fmgui_managedb_field_edit fmGUI_ManageDb_Field_Edit� �&S� &S  �� 	0 prefs  �  &Q ����������������������� 	0 prefs  � 0 defaultprefs defaultPrefs� 0 editmode editMode� $0 fieldnowselected fieldNowSelected� 0 changebutton changeButton�  0 fieldtypepopup fieldTypePopup� *0 notevaluatecheckbox notEvaluateCheckbox� 0 workingarea workingArea� .0 globalstoragecheckbox globalStorageCheckbox� (0 donotstorecheckbox doNotStoreCheckbox� &0 autoindexcheckbox autoIndexCheckbox� 0 datatypepopup dataTypePopup� 0 fdsfdsf  � 0 
menuchoice 
menuChoice� 0 datacheckbox dataCheckbox� .0 autoentercalccheckbox autoEnterCalcCheckbox� 20 autoentercalccode_value autoEnterCalcCode_VALUE� @0 overwriteexistingvaluecheckbox overwriteExistingValueCheckbox� *0 prohibitmodcheckbox prohibitModCheckbox� 40 validationcalccode_value validationCalcCode_VALUE� 0 errmsg errMsg� 0 errnum errNum&R ��)�������������������������������������&-���~��}�|�{�z�y*�x9=GLR�w�vhr����u��t�s�		3�r	?�q	Q�p�o�n	�	��m	��l	�


L
W�k
[�j
^�i�h
v
�
�
�
�
�%3Ni���������I����2=AD��g������f,=PTW����������
*J��e����d��c�b$HYcqu}�����������������"'3?Vgx���&Qb�a���Aw���B[hlo�����`&T��_�� 0 editmode editMode� 0 	tablename 	tableName
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
� 
titl
�~ 
txtf�} (0 fmgui_textfieldset fmGUI_TextFieldSet
�| .prcsclicnull��� ��� uiel
�{ .sysodelanull��� ��� nmbr
�z 
bool
�y 
popB
�x 
valL
�w 
errn�v �u  0 fmgui_popupset fmGUI_PopupSet�t B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow
�s 
pnam�r 0 
windowname 
windowName�q 20 windowwaituntil_frontis windowWaitUntil_FrontIS
�p 
scra�o 
�n 
txta
�m 
chbx�l &0 fmgui_checkboxset fmGUI_CheckboxSet�k  0 windownametest windowNameTest�j 0 whichwindow whichWindow�i �h "0 windowwaituntil windowWaitUntil
�g 
radB�f *0 clickobjectbycoords clickObjectByCoords
�e 
pcls�d 0 autonextvalue autoNextValue�c 0 autoincrement autoIncrement�b 0 autogenerate autoGenerate
�a 
leng�` 0 errmsg errMsg&T �^�]�\
�^ 
errn�] 0 errnum errNum�\  �_  0 coercetostring coerceToString������������������������������a �a �a �a �a �a �a �a �a �a �a �a �a �a �a E�O��%E�O��,E�O��,� e�a ,FY hO*�k+ E�O� fY hOa  �*a !a "/�)j+ #O*a $k/a %k/a &k/a '[a (,\Za )81E�O��,� 3)*a $k/a %k/a *a +/��,l+ , 
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
a �E�Y hO)�a 2a �/�l+ AOPY g�a ,a �  Z)�a Qk/a '[a (,\Za �81jl+ SO)�a Qk/a '[a (,\Za �81jl+ SO)�a Qk/a '[a D,\Za �@1jl+ SOPY hOPY hO�a ,� a�a Qk/a '[a D,\Za �@1E�O�a ,E 4)�kl+ SO�a ,�  hY )�a La �/a Na �/�a ,l+ ,Y 	)�jl+ SOPY hO�a ,� hY hO�a ,���a , )�a Qa �/jl+ SOPY�a Qa �/E�O�a 4,k )�k+ CY )�a &k/a '[a D,\Za �>1k+ CO)a Ha �lk+ JO*a $k/E�O��,a �,j  a �E^ Y 	��,E^ O)*a $k/a La M/a Nk/] l+ ,O��,� ")�a 2k/a '[a D,\Za �@1��,l+ AY hO��,� 5�a Qk/a '[a D,\Za �@1E�O��,E )�jl+ SY 	)�kl+ SY hO)�a &k/a '[a D,\Za �@1k+ CO)a Ha �a Ya �a [a �a ]k+ ^O*a $k/a %k/E�O�a ,� =�a Qk/a '[a D,\Za �@1E^ O�a ,E )] jl+ SY )] kl+ SY hOPOPY hO�a ,� =�a Qk/a '[a D,\Za �@1E^ O�a ,E )] jl+ SY )] kl+ SY hO�a �a �/j -O�a ,� �)�a &a �/k+ CO)a Ha �lk+ JO*a $k/E�O�a ,a �,j  a �E^ Y �a ,E^ O)*a $k/a La M/a Nk/] l+ ,O�a ,� $)�a 2k/a '[a D,\Za �@1�a ,l+ AY hO)�a &k/a '[a D,\Za �@1k+ CO)a Ha �a Ya �a [a �a ]k+ ^O*a $k/a %k/E�OPY hO)*a $k/a &k/a '[a D,\Za �@1k+ CO)a Ha �a Ya �a [a �a ]k+ ^OeOPY hOeOPUUOPW "X � �)a :] la �*�k+ �%a �%] %OP& �[��Z�Y&U&V�X�[ :0 fmgui_managedb_field_select fmGUI_ManageDb_Field_Select�Z �W&W�W &W  �V�V 	0 prefs  �Y  &U �U�T�S�R�Q�P�O�N�M�L�K�J�I�H�G�F�E�U 	0 prefs  �T 0 defaultprefs defaultPrefs�S  0 testcodeheader testCodeHeader�R 0 
selectcode 
selectCode�Q 0 
rowrefcode 
rowRefCode�P 0 	whosecode 	whoseCode�O *0 fieldnameobjectcode fieldNameObjectCode�N $0 betweentestscode betweenTestsCode�M &0 afteralltestscode afterAllTestsCode�L  0 testcodefooter testCodeFooter�K 0 errmsg errMsg�J 0 errnum errNum�I $0 fieldnowselected fieldNowSelected�H 0 onealtpattern oneAltPattern�G 0 testlist testList�F 0 testcode testCode�E 0 
onetestrec 
oneTestRec&V 4�D�C�B�A�@�?$*06ALXZ�>�=�<��;��:�9�8�7�6&-�5�4�3�2&X�1�0�/�.�-�,�+��*��)�(�'*�&��%��D 0 	fieldname 	fieldName
�C 
null�B 0 	tablename 	tableName�A 0 altpatterns altPatterns�@ 
�? 
ret �> >0 fmgui_managedb_fieldlistfocus fmGUI_ManageDb_FieldListFocus�= @0 fmgui_managedb_fieldspicktable fmGUI_ManageDb_FieldsPickTable�< (0 fmgui_appfrontmost fmGUI_AppFrontMost
�; 
pcap
�: 
cwin
�9 
tabg
�8 
scra
�7 
tabB
�6 
crow
�5 
sttx
�4 
valL
�3 .miscslctnull���     uiel�2 0 errmsg errMsg&X �$�#�"
�$ 
errn�# 0 errnum errNum�"  �1�I
�0 
errn
�/ 
kocl
�. 
cobj
�- .corecnte****       ****�, 0 pattern  
�+ 
pcnt�* 0 testtype testType�) 0 	testmatch 	testMatch�( 0 quotestring quoteString�' 0 unparsechars unParseChars
�& .sysodsct****        scpt�%  0 coercetostring coerceToString�X��������E�O��%E�O��%�%�%E�O�E�O�E�O�E�O�E�O�E�O�E�O��%�%�%E�O]*jvk+ O��,� *��,k+ Y hO*j+ O Ma  @*a a / 4*a k/a k/a k/a k/a k/a [a k/a ,\Z��,81j UUOeW �X   �a ! )a "�l�Y �fE�O à�,[a #a $l %kh �a &,a ',E�O jvE�O 7�[a #a $l %kh a (] a ),%a *%)] a +,k+ ,%�6G[OY��O)���%a -%l+ .E�O��%�%�%a /%�%�%E�O��%�%E�O) �j 0UOeE�OOPW X   �a ! )a "�l�Y hOPOP[OY�QO�OPOPW X   )a "�la 1*�k+ 2%a 3%�%OP& �!�� �&Y&Z��! >0 fmgui_managedb_fieldlistfocus fmGUI_ManageDb_FieldListFocus�  �&[� &[  �� 	0 prefs  �  &Y ���� 	0 prefs  � 0 errmsg errMsg� 0 errnum errNum&Z �����������&\��� 40 fmgui_managedb_fieldstab fmGUI_ManageDb_FieldsTab
� 
pcap� (0 fmgui_appfrontmost fmGUI_AppFrontMost
� 
cwin
� 
tabg
� 
scra
� 
tabB
� 
focu� 0 errmsg errMsg&\ ���
� 
errn� 0 errnum errNum�  
� 
errn� G 6*jvk+  O� $*��/ )j+ Oe*�k/�k/�k/�k/�,FOeUUOPW X 
 )�l��%OP& ���
�	&]&^�� @0 fmgui_managedb_fieldspicktable fmGUI_ManageDb_FieldsPickTable�
 �&_� &_  �� 0 basetablename baseTableName�	  &] ���� 0 basetablename baseTableName� 0 errmsg errMsg� 0 errnum errNum&^ ��� ����������&`�� "� 40 fmgui_managedb_fieldstab fmGUI_ManageDb_FieldsTab
� 
pcap�  (0 fmgui_appfrontmost fmGUI_AppFrontMost
�� 
cwin
�� 
tabg
�� 
popB��  0 fmgui_popupset fmGUI_PopupSet�� 0 errmsg errMsg&` ������
�� 
errn�� 0 errnum errNum��  
�� 
errn� H 3*jvk+  O� #*��/ )j+ O)*�k/�k/��/�l+ 	OeUUW X 
 )�l��%�%�%OP& ��+����&a&b���� 40 fmgui_managedb_fieldstab fmGUI_ManageDb_FieldsTab�� ��&c�� &c  ���� 	0 prefs  ��  &a ���������� 	0 prefs  �� "0 fieldstabobject fieldsTabObject�� 0 errmsg errMsg�� 0 errnum errNum&b ��i��g��������&-��Y������&d��q�� *0 fmgui_managedb_open fmGUI_ManageDb_Open
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
�� .prcsclicnull��� ��� uiel�� 0 errmsg errMsg&d ������
�� 
errn�� 0 errnum errNum��  
�� 
errn�� ] J*jvk+  O� :*��/ 2)j+ O*�k/�k/�k/�[�,\Z�@1E�O��,k 
�j Y hOeUUW X  )�la �%OP& ��z����&e&f���� *0 fmgui_managedb_open fmGUI_ManageDb_Open�� ��&g�� &g  ���� 	0 prefs  ��  &e ������������ 	0 prefs  �� *0 lookingforxdbcerror lookingForXDBCError�� 0 	zoomfield 	zoomField�� 0 errmsg errMsg�� 0 errnum errNum&f (���������������������&-��������
��8G\������v�������������&h��
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
� 
scrb� 0 errmsg errMsg&h ���
� 
errn� 0 errnum errNum�  
� 
errn������*��/�)j+ O*�k/�,� eYs*�k/��/�k/��/�k/�k/�[�,\Z�>1j Okj OeE�O ;h�*�k/�,a  #*�k/a k/�[�,\Za 81j Okj Y fE�[OY��O)jvk+ Okj OeE�O ;h�*�k/�,a  #*�k/a k/�[�,\Za 81j Okj Y fE�[OY��Oa a a l Okj OeE�O 2h�*�k/�,a  *�k/a a /j Okj Y fE�[OY��O*�k/a k/a k/E�Oe�a ,FOa  �a !,FOe*�k/a k/a "k/a ,FOj*�k/a k/a "k/a #k/a !,FOj*�k/a k/a "k/a #l/a !,FOeUUW X $ %)a &�la '�%OP&	 ����&i&j�� B0 fmgui_managedb_relationshipstab fmGUI_ManageDb_RelationshipsTab� �&k� &k  �� 	0 prefs  �  &i ����� 	0 prefs  � "0 fieldstabobject fieldsTabObject� 0 errmsg errMsg� 0 errnum errNum&j �-�+����&-����&l�5� *0 fmgui_managedb_open fmGUI_ManageDb_Open
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
� .prcsclicnull��� ��� uiel� 0 errmsg errMsg&l ���
� 
errn� 0 errnum errNum�  
� 
errn� ] J*jvk+  O� :*��/ 2)j+ O*�k/�k/�k/�[�,\Z�@1E�O��,k 
�j Y hOeUUW X  )�la �%OP&
 �>��&m&n�� *0 fmgui_managedb_save fmGUI_ManageDB_Save� �&o� &o  �� 	0 prefs  �  &m 	���������� 	0 prefs  � 0 defaultprefs defaultPrefs� 40 managedbwindownameprefix manageDbWindowNamePrefix� .0 waitcycledelayseconds waitCycleDelaySeconds� ,0 waitsavetotalseconds waitSaveTotalSeconds� 0 waitcyclemax waitCycleMax� (0 managedbwindowname manageDbWindowName� 0 errmsg errMsg� 0 errnum errNum&n !�_������
����������&p����������~�}�|� ,0 notinmanagedbiserror notInManageDbIsError� 
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
� .sysodelanull��� ��� nmbr� 0 errmsg errMsg&p �{�z�y
�{ 
errn�z 0 errnum errNum�y  
� 
errn� � 0 
windowname 
windowName�  0 windownametest windowNameTest� 0 whichwindow whichWindow�~ .0 waitcycledelayseconds waitCycleDelaySeconds�} 0 waitcyclemax waitCycleMax�| "0 windowwaituntil windowWaitUntil� ��elE�O��%E�O�E�O�E�O�� E�O��!��l E�O �� �*��/ c)j+ O*�k/�,� 8 !*�k/�,E�O*�k/��/j Okj OPW X  )a �la �%Y ��,E )a a la Y eOPUO)a �a a a a a �a ��k+ Okj OeOPUOPW X  )a �la  �%OP& �x�w�v&q&r�u�x 20 fmgui_modeensure_browse fmGUI_ModeEnsure_Browse�w  �v  &q �t�s�t 0 errmsg errMsg�s 0 errnum errNum&r 1�r�q&s�p;�r $0 fmgui_modeselect fmGUI_ModeSelect�q 0 errmsg errMsg&s �o�n�m
�o 
errn�n 0 errnum errNum�m  
�p 
errn�u  *�k+ OPW X  )�l�%OP& �lF�k�j&t&u�i�l .0 fmgui_modeensure_find fmGUI_ModeEnsure_Find�k  �j  &t �h�g�h 0 errmsg errMsg�g 0 errnum errNum&u Y�f�e&v�dc�f $0 fmgui_modeselect fmGUI_ModeSelect�e 0 errmsg errMsg&v �c�b�a
�c 
errn�b 0 errnum errNum�a  
�d 
errn�i  *�k+ OPW X  )�l�%OP& �`n�_�^&w&x�]�` 20 fmgui_modeensure_layout fmGUI_ModeEnsure_Layout�_  �^  &w �\�[�\ 0 errmsg errMsg�[ 0 errnum errNum&x ��Z�Y&y�X��Z $0 fmgui_modeselect fmGUI_ModeSelect�Y 0 errmsg errMsg&y �W�V�U
�W 
errn�V 0 errnum errNum�U  
�X 
errn�]  *�k+ OPW X  )�l�%OP& �T��S�R&z&{�Q�T $0 fmgui_modeselect fmGUI_ModeSelect�S �P&|�P &|  �O�O 0 modetoselect modeToSelect�R  &z �N�M�L�K�J�I�H�G�N 0 modetoselect modeToSelect�M 0 
modewindow 
modeWindow�L "0 modecontentarea modeContentArea�K *0 modecontentareadesc modeContentAreaDesc�J 0 currentmode currentMode�I 0 menuitemname menuItemName�H 0 errmsg errMsg�G 0 errnum errNum&{ �F�E�D�C�B&-�A��@��?��>�=��<�;�:�9&}�8
�F 
pcap�E (0 fmgui_appfrontmost fmGUI_AppFrontMost�D .0 fmgui_inspector_close fmGUI_Inspector_Close
�C 
cwin
�B 
sgrp
�A 
desc
�@ 
cwor
�? .sysodelanull��� ��� nmbr
�> 
mbar
�= 
mbri
�< 
menE
�; 
menI
�: .prcsclicnull��� ��� uiel�9 0 errmsg errMsg&} �7�6�5
�7 
errn�6 0 errnum errNum�5  
�8 
errn�Q � t� l*��/ d)j+ O)j+ O*�k/E�O��k/�[�,\Z�?1E�O��,E�O��k/E�O�� (�j O��%E�O*�k/�a /a k/a �/j Y hOeOPUUW X  )a �la �%a %�%& �4�3�2&~&�1�4 B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow�3 �0&��0 &�  �/�/ 0 	buttonref 	buttonRef�2  &~ �.�. 0 	buttonref 	buttonRef&  �-�- *0 clickobjectbycoords clickObjectByCoords�1 �Z)�k+ OP& �,+�+�*&�&��)�, :0 fmgui_popup_selectbycommand fmGUI_Popup_SelectByCommand�+ �(&��( &�  �'�' 	0 prefs  �*  &� 	�&�%�$�#�"�!� ���& 	0 prefs  �% 0 defaultprefs defaultPrefs�$ 0 popupobject popupObject�# 0 selectcommand selectCommand�" 0 popupchoice popupChoice�! &0 clickifalreadyset clickIfAlreadySet�  0 mustpick mustPick� 0 errmsg errMsg� 0 errnum errNum&� $����A���S����������!6�\��&-�n���&����� 0 popupobject popupObject
� 
null� 0 popupchoice popupChoice� 0 selectcommand selectCommand� &0 clickifalreadyset clickIfAlreadySet� 
� 
pcls
� 
cobj� 
� .coredoexnull���     ****
� 
errn� 
� 
valL
� .prcsclicnull��� ��� uiel
� 
menE
� 
menI
� 
pnam� 0 errmsg errMsg&� ��
�	
� 
errn�
 0 errnum errNum�	  �)�������f�E�O��,�llv�,  ��k/��l/�E�Y hO��%E�O��,E�O��,E�O��,E�O��,E�O�Z��j  )��l�OPY�fE�O�a ,j  
eE�OPY �� 
eE�OPY ��a   �a ,� eE�Y hOPY �a   �a ,� eE�Y hOPY `�a   �a ,� eE�Y hOPY A�a   �a ,� eE�Y hOPY "�a   �a ,� eE�Y hOPY hO� ��� ��j O�a   !�a k/a k/a [a ,\Z�81j Y ~�a   #�a k/a k/a [a ,\Z�@1j OPY U�a   #�a k/a k/a [a ,\Z�>1j OPY ,�a   #�a k/a k/a [a ,\Z�?1j OPY hOPY hY hOeOPW X   )��la !�%a "%�%a #%�%& ����&�&���  0 fmgui_popupset fmGUI_PopupSet� �&�� &�  ��� 0 popupobject popupObject� 0 popupchoice popupChoice�  &� �� ����� 0 popupobject popupObject�  0 popupchoice popupChoice�� 0 errmsg errMsg�� 0 errnum errNum&� �������������&��� �� 0 popupobject popupObject�� 0 popupchoice popupChoice�� �� :0 fmgui_popup_selectbycommand fmGUI_Popup_SelectByCommand
�� 
rslt�� 0 errmsg errMsg&� ������
�� 
errn�� 0 errnum errNum��  
�� 
errn� +�Z *���k+ O�EOPW X  )�l�%�%�%& ��
����&�&����� (0 fmgui_textfieldset fmGUI_TextFieldSet�� ��&��� &�  ������ "0 textfieldobject textfieldObject��  0 textfieldvalue textfieldValue��  &� ���������� "0 textfieldobject textfieldObject��  0 textfieldvalue textfieldValue�� 0 errmsg errMsg�� 0 errnum errNum&� 	��������&���LN
�� 
null
�� 
valL
�� 
focu�� 0 errmsg errMsg&� ������
�� 
errn�� 0 errnum errNum��  
�� 
errn�� A�Z ,�� ��,� e��,FO���,FY fY hOeOPW X  )�l�%�%�%& ��V����&�&����� (0 fmgui_window_close fmGUI_Window_Close�� ��&��� &�  ����  0 somewindowname someWindowName��  &� ����  0 somewindowname someWindowName&� ��n������
�� 
capp
�� kfrmID  
�� 
cwin
�� .coreclosnull���    obj �� )���0 *�/j OPUOeOP& ��{����&�&����� .0 openfilemakerdatabase openFileMakerDatabase�� ��&��� &�  ���� 	0 prefs  ��  &� ������������ 	0 prefs  �� 0 	customurl 	customURL�� 0 fmpurl fmpURL�� 0 errmsg errMsg�� 0 errnum errNum&� ���������������������������&��� 0 dbname dbName�� 0 serverip serverIP�� 0 
maindbname 
mainDbName�� <0 customlinkreceiverscriptname customLinkReceiverScriptName�� $0 encodetextforurl encodeTextForURL�� 0 replacesimple replaceSimple
�� .GURLGURLnull��� ��� TEXT�� 0 errmsg errMsg&� ������
�� 
errn�� 0 errnum errNum��  �� h [��,%�%E�O� D��,%�%��,%�%��,%�%)�efm+ %E�O)���mvk+ E�O)��a mvk+ E�O�j OPUOeOPW X  �OPOP& ���&�&��� "0 windowwaituntil windowWaitUntil� �&�� &�  �� 	0 prefs  �  &� ��������� 	0 prefs  � 0 defaultprefs defaultPrefs� 0 
windowname 
windowName�  0 windownametest windowNameTest� 0 whichwindow whichWindow� 0 checkresult checkResult� "0 windownamecheck windowNameCheck� 0 windowindex windowIndex&� ���2�6�:����m�v��|���������"0�� 0 
windowname 
windowName
� 
null�  0 windownametest windowNameTest� 0 whichwindow whichWindow� .0 waitcycledelayseconds waitCycleDelaySeconds� 0 waitcyclemax waitCycleMax� � 

� 
pcap
� 
cwin
� 
pnam
� 
nmbr
� .sysodelanull��� ��� nmbr�D�����������E�O��%E�O��,E�O��,E�O��,E�OfE�O��,Ekh� H��  *��/�-a ,E�Y 3�a   *�a /�k/a ,E�Y �a &E�O*�a /�/a ,E�UO�a   ��E�OPY ��a   ��E�OPY ��a   �� E�OPY o�a   �� E�OPY ]�a   ��E�OPY K�a   ��E�OPY 8�a   ��E�OPY &�a   ��E�Y �a   ��E�OPY hO� Y hO��,j OP[OY��O�OP& �Y��&�&��� 20 windowwaituntil_frontis windowWaitUntil_FrontIS� �&�� &�  �� 	0 prefs  �  &� ��� 	0 prefs  � 0 defaultprefs defaultPrefs&� ���m�q�u����� 0 
windowname 
windowName
� 
null�  0 windownametest windowNameTest� 0 whichwindow whichWindow� .0 waitcycledelayseconds waitCycleDelaySeconds� 0 waitcyclemax waitCycleMax� d� 
� "0 windowwaituntil windowWaitUntil� �����������E�O��%E�O*�k+ OP& ����&�&��� 0 sort  � �&�� &�  �� 0 oldlist oldList�  &� ������ 0 oldlist oldList� 0 od  � 0 	textblock 	textBlock� 0 sortedblock sortedBlock� 0 
sortedlist 
sortedList&� ������������
� 
ascr
� 
txdl� 

� .sysontocTEXT       shor
� 
cobj
� 
TEXT
� 
strq
� .sysoexecTEXT���     TEXT
� 
ret 
� 
citm� E��,�j lvE[�k/E�Z[�l/��,FZO��&E�O��,%�%j 	E�O���,FO��-E�O���,FO�& �~��}�|&�&��{�~ 0 
logconsole 
logConsole�} �z&��z &�  �y�x�y 0 processname processName�x 0 
consolemsg 
consoleMsg�|  &� �w�v�u�w 0 processname processName�v 0 
consolemsg 
consoleMsg�u 0 shellcommand shellCommand&� �t�s��r�q  !�p #�o�n�t  0 coercetostring coerceToString
�s .sysontocTEXT       shor�r 0 replacesimple replaceSimple
�q 
leng
�p 
spac
�o 
strq
�n .sysoexecTEXT���     TEXT�{ I*�k+  E�O*�jj �mvk+ E�O��,j  �E�Y hO��%�%�%��,%�%��,%E�O�j 
O�OP& �m 7�l�k&�&��j�m 0 loglevel logLEVEL�l �i&��i &�  �h�g�h 	0 level  �g 0 somemsg someMsg�k  &� �f�e�d�c�b�a�f 	0 level  �e 0 somemsg someMsg�d 0 	maxxcount 	maxXcount�c 0 logname logName�b 0 xcount xCount�a 0 i  &� �` P g�_�` �_ 0 
logconsole 
logConsole�j 5�E�Ob  �%E�O��kE�O k�kh ��%E�[OY��O*��l+ OP& �^ w�]�\&�&��[�^ 0 logmain logMAIN�] �Z&��Z &�  �Y�Y 0 somemsg someMsg�\  &� �X�X 0 somemsg someMsg&� �W�W 0 loglevel logLEVEL�[ *j�l+  & �V ��U�T&�&��S�V 0 clickatcoords clickAtCoords�U �R&��R &�  �Q�P�Q 0 xclick xClick�P 0 yclick yClick�T  &� �O�N�O 0 xclick xClick�N 0 yclick yClick&� 	�M�L�K�J ��I�H�G �
�M 
dire
�L olierndD
�K .sysorondlong        doub
�J 
strq
�I 
spac
�H .sysoexecTEXT���     TEXT
�G 
TEXT�S 1���l E�O���l E�Ob  �,�%�%�%�%j O��&�%�%& �F ��E�D&�&��C�F *0 clickobjectbycoords clickObjectByCoords�E �B&��B &�  �A�A 0 
someobject 
someObject�D  &� �@�?�>�=�<�;�:�@ 0 
someobject 
someObject�? 0 xcoord xCoord�> 0 ycoord yCoord�= 0 xsize xSize�< 0 ysize ySize�; 0 xclick xClick�: 0 yclick yClick&�  ��9�8�7�6�5�4�3
�9 
posn
�8 
cobj
�7 
ptsz
�6 
dire
�5 olierndD
�4 .sysorondlong        doub�3 0 clickatcoords clickAtCoords�C N�Z��,E[�k/E�Z[�l/E�ZO��,E[�k/E�Z[�l/E�ZO��l!��l E�O��l!��l E�O*��l+ OP& �2!�1�0&�&��/�2  0 coercetostring coerceToString�1 �.&��. &�  �-�-  0 incomingobject incomingObject�0  &� �,�+�*�)�(�'�&�%�,  0 incomingobject incomingObject�+ 0 errmsg errMsg�* 0 errnum errNum�) 0 	olddelims 	oldDelims�( 0 
errmsglead 
errMsgLead�' 0 errmsgtrail errMsgTrail�& 0 od  �% 0 objectstring objectString&� �$�#�"�!� �!�!���&���!���!��!�!��!�!�
�$ 
pcls
�# 
TEXT
�" 
ctxt
�! 
long
�  
doub
� 
utxt� j0 3some_uuid_property_54f827c7379e4073b5a216bb9cde575d 3some_UUID_Property_54F827C7379E4073B5A216BB9CDE575D� 0 errmsg errMsg&� ���
� 
errn� 0 errnum errNum�  
� 
ascr
� 
txdl
� 
cobj
� 
citm�  
� 
bool�/���,�  ��&E[�,E�ZO�Yk��,�  ��&E[�,E�ZO��&YQ��,�  ��&E[�,E�ZO��&Y7��,�  ��&E[�,E�ZO��&Y S ���,FOPW 9X 	 
��,�kvlvE[�k/E�Z[�l/��,FZO��-E[�k/E�Z[�l/E�ZO���,FOa ��,FOPW �X 	 �a 	 �a a & Da E�Oa E�O��,�lvE[�k/E�Z[�l/��,FZO��l/E�O���,FO��k/E�O���,FOPY k�E�O�� )��,�lvE[�k/E�Z[�l/��,FZO��l/E�O���,FY hO�� /��,�lvE[�k/E�Z[�l/��,FZO���,FO��k/E�O���,FY hOPO�& �"���&�&��� 0 gettextbefore getTextBefore� �&�� &�  ��� 0 
sourcetext 
sourceTEXT� 0 stophere stopHere�  &� ���
�	��� 0 
sourcetext 
sourceTEXT� 0 stophere stopHere�
 0 	olddelims 	oldDelims�	 0 finalresult finalResult� 0 errmsg errMsg� 0 errnum errNum&� 	�����"��&�"�
� 
ascr
� 
txdl
� 
cobj
� 
citm
� .corecnte****       ****� 0 errmsg errMsg&� � ����
�  
errn�� 0 errnum errNum��  � R C��,�lvE[�k/E�Z[�l/��,FZO��-j k  ���,FO�Y ��k/E�O���,FO�W X  ���,FO�& ��"�����&�&�����  0 gettextbetween getTextBetween�� ��&��� &�  ���� 	0 prefs  ��  &� �������������������������� 	0 prefs  �� 0 defaultprefs defaultPrefs�� 0 
sourcetext 
sourceTEXT�� 0 
beforetext 
beforeText�� 0 	aftertext 	afterText�� 0 textitemnum textItemNum��  0 includemarkers includeMarkers�� 0 	olddelims 	oldDelims�� 0 prefixremoved prefixRemoved�� 0 finalresult finalResult�� 0 errmsg errMsg�� 0 errnum errNum&� ������������#������#��������������������&�#��� 0 textitemnum textItemNum��  0 includemarkers includeMarkers�� 
�� 
pcls
�� 
list
�� 
TEXT
�� 
bool
�� 
errn�� 
�� .corecnte****       ****
�� 
cobj�� 0 
sourcetext 
sourceTEXT�� 0 
beforetext 
beforeText�� 0 	aftertext 	afterText�� 
�� 
ascr
�� 
txdl
�� 
citm�� 0 errmsg errMsg&� ������
�� 
errn�� 0 errnum errNum��  �� ��l�f�E�O��,�	 ��,�&��& )��l�Y hO��,�  1�j �  ���/��,FY hO���k/��l/��m/a E�Y hO��%E�O��,E�O��,E�O��,E�O��,E�O��,E�O \_ a ,�lvE[�k/E�Z[�l/_ a ,FZO�a �/E�O�_ a ,FO�a k/E�O�_ a ,FO� ��%�%E�Y hOPW X  �_ a ,FOa E�O�OP&  ��#�����&�&����� 0 
parsechars 
parseChars�� ��&��� &�  ���� 	0 prefs  ��  &� 	�������������������� 	0 prefs  �� 0 defaultprefs defaultPrefs�� 0 
sourcetext 
sourceTEXT�� 0 parsestring parseString�� 0 considercase considerCase�� 0 	olddelims 	oldDelims�� 0 
parsedlist 
parsedList�� 0 errmsg errMsg�� 0 errnum errNum&� �������������������$9���$��&���$��� 0 considercase considerCase
�� 
pcls
�� 
list
�� .corecnte****       ****�� 0 
sourcetext 
sourceTEXT
�� 
cobj�� 0 parsestring parseString� � � 0 somekey someKey
� 
errn� 
� 
ascr
� 
txdl
� 
TEXT
� 
citm� 0 errmsg errMsg&� ���
� 
errn� 0 errnum errNum�  �  �  �� ��elE�O��,�  5�j l ��k/��l/��m/�E�Y ��k/��l/�E�OPY ��,�ml�, )��l�OPY hO��%E�O��,E�O��,E�O��,E�O��,E�O =��&kv��,FO� a g 
�a -E�VY ga  
�a -E�VO���,FO�W #X   
���,FW X  hO)�la �%&! �$���&�&��� 0 replacesimple replaceSimple� �&�� &�  �� 	0 prefs  �  &� 	���������� 	0 prefs  � 0 defaultprefs defaultPrefs� 0 considercase considerCase� 0 
sourcetext 
sourceTEXT� 0 oldchars oldChars� 0 newchars newChars� 0 	olddelims 	oldDelims� 0 
parsedlist 
parsedList� 0 newtext newText&� ��������������%���%c�� 0 considercase considerCase
� 
pcls
� 
list
� .corecnte****       ****� 0 
sourcetext 
sourceTEXT
� 
cobj� 0 oldchars oldChars� 0 newchars newChars� � � � 0 somekey someKey
� 
errn� 
� 
TEXT
� 
ascr
� 
txdl
� 
citm� ��elE�O��,�  ?�j m ��k/��l/��m/���/�E�Y ��k/��l/��m/�E�OPY ��,�ml�, )��l�OPY hO��%E�O��,E�O��,E�O��,E�O��,E�O��&E�O_ a ,E�O�_ a ,FO� (a g �a -E�O��&kv_ a ,FO��&E�VY %ga  �a -E�O��&kv_ a ,FO��&E�VO�_ a ,FO�OP&" �%���&�&��� 0 unparsechars unParseChars� �&�� &�  ��� 0 thislist thisList� 0 newdelim newDelim�  &� ������� 0 thislist thisList� 0 newdelim newDelim� 0 	olddelims 	oldDelims� 0 unparsedtext unparsedText� 0 errmsg errMsg� 0 errnum errNum&� 	����&��~�}�|%�
� 
ascr
� 
txdl
� 
TEXT� 0 errmsg errMsg&� �{�z�y
�{ 
errn�z 0 errnum errNum�y  �~  �}  
�| 
errn� D��,E�O ��&kv��,FO��&E�O���,FO�W !X   
���,FW X  hO)�l�%ascr  ��ޭ