FasdUAS 1.101.10   ��   ��    k             l     ��  ��      main script     � 	 	    m a i n   s c r i p t   
  
 l     ��  ��      Erik Shagdar, NYHTC     �   (   E r i k   S h a g d a r ,   N Y H T C      l     ��������  ��  ��        l     ��  ��    %  Generated: 2016-07-07 17:12:45     �   >   G e n e r a t e d :   2 0 1 6 - 0 7 - 0 7   1 7 : 1 2 : 4 5      l     ��  ��    n h Run 'main_helper.applescript' to after making changes in any .applescript file and after each git pull.     �   �   R u n   ' m a i n _ h e l p e r . a p p l e s c r i p t '   t o   a f t e r   m a k i n g   c h a n g e s   i n   a n y   . a p p l e s c r i p t   f i l e   a n d   a f t e r   e a c h   g i t   p u l l .      l     ��  ��    � � Assumes file is located at '~/Code/applescript-fm-helper/'. If it is not, make sure to update clickCommandPosix property and 'vendor.sh' script.     �  "   A s s u m e s   f i l e   i s   l o c a t e d   a t   ' ~ / C o d e / a p p l e s c r i p t - f m - h e l p e r / ' .   I f   i t   i s   n o t ,   m a k e   s u r e   t o   u p d a t e   c l i c k C o m m a n d P o s i x   p r o p e r t y   a n d   ' v e n d o r . s h '   s c r i p t .     !   l     ��������  ��  ��   !  " # " j     �� $�� 0 	debugmode 	DebugMode $ m     ��
�� boovfals #  % & % j    �� '�� 0 
scriptname 
ScriptName ' m     ( ( � ) )  m a i n . s c p t &  * + * j    �� ,�� &0 clickcommandposix clickCommandPosix , b     - . - n     / 0 / 1    ��
�� 
psxp 0 l    1���� 1 l    2���� 2 c     3 4 3 l    5���� 5 I   �� 6��
�� .earsffdralis        afdr 6 m    ��
�� afdrcusr��  ��  ��   4 m    ��
�� 
TEXT��  ��  ��  ��   . m     7 7 � 8 8 f C o d e / a p p l e s c r i p t - f m - h e l p e r / v e n d o r / c l i c l i c k / c l i c l i c k +  9 : 9 l     ��������  ��  ��   :  ; < ; l     ��������  ��  ��   <  = > = i     ? @ ? I      �� A���� $0 encodecharforurl encodeCharForURL A  B�� B o      ���� 0 	this_char  ��  ��   @ k     K C C  D E D l     �� F G��   F   version 1.0    G � H H    v e r s i o n   1 . 0 E  I J I l     ��������  ��  ��   J  K L K r      M N M l     O���� O l     P���� P I    �� Q��
�� .sysoctonshor       TEXT Q o     ���� 0 	this_char  ��  ��  ��  ��  ��   N l      R���� R o      ���� 0 	ascii_num 	ASCII_num��  ��   L  S T S r      U V U J     W W  X Y X m    	 Z Z � [ [  0 Y  \ ] \ m   	 
 ^ ^ � _ _  1 ]  ` a ` m   
  b b � c c  2 a  d e d m     f f � g g  3 e  h i h m     j j � k k  4 i  l m l m     n n � o o  5 m  p q p m     r r � s s  6 q  t u t m     v v � w w  7 u  x y x m     z z � { {  8 y  | } | m     ~ ~ �    9 }  � � � m     � � � � �  A �  � � � m     � � � � �  B �  � � � m     � � � � �  C �  � � � m     � � � � �  D �  � � � m     � � � � �  E �  ��� � m     � � � � �  F��   V l      ����� � o      ���� 0 hex_list  ��  ��   T  � � � r   ! / � � � n   ! - � � � 4   " -�� �
�� 
cobj � l  % , ����� � [   % , � � � l  % * ����� � _   % * � � � o   % &���� 0 	ascii_num 	ASCII_num � m   & )���� ��  ��   � m   * +���� ��  ��   � l  ! " ����� � o   ! "���� 0 hex_list  ��  ��   � o      ���� 0 x   �  � � � r   0 > � � � n   0 < � � � 4   1 <�� �
�� 
cobj � l  4 ; ����� � [   4 ; � � � l  4 9 ����� � `   4 9 � � � o   4 5���� 0 	ascii_num 	ASCII_num � m   5 8���� ��  ��   � m   9 :���� ��  ��   � l  0 1 ����� � o   0 1���� 0 hex_list  ��  ��   � o      ���� 0 y   �  ��� � L   ? K � � c   ? J � � � l  ? F ����� � b   ? F � � � b   ? D � � � m   ? B � � � � �  % � o   B C���� 0 x   � o   D E���� 0 y  ��  ��   � m   F I��
�� 
TEXT��   >  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � i     � � � I      �� ����� $0 encodetextforurl encodeTextForURL �  � � � o      ���� 0 	this_text   �  � � � o      ���� 0 encode_url_a encode_URL_A �  ��� � o      ���� 0 encode_url_b encode_URL_B��  ��   � k     f � �  � � � l     �� � ���   �   version 1.0    � � � �    v e r s i o n   1 . 0 �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � / ) this sub-routine is used to encode text     � � � � R   t h i s   s u b - r o u t i n e   i s   u s e d   t o   e n c o d e   t e x t   �  � � � r      � � � m      � � � � � H a b c d e f g h i j k l m n o p q r s t u v w x y z 0 1 2 3 4 5 6 7 8 9 � l      ����� � o      ���� 0 standard_characters  ��  ��   �  � � � l    � � � � r     � � � m     � � � � � 2 $ + ! ' / ? ; & @ = # % > < { } [ ] " ~ ` ^ \ | * � l      ����� � o      ���� 0 url_a_chars URL_A_chars��  ��   � 6 0 double excape this since the code gets compiled    � � � � `   d o u b l e   e x c a p e   t h i s   s i n c e   t h e   c o d e   g e t s   c o m p i l e d �  � � � r     � � � m    	 � � � � �  . - _ : � l      ����� � o      ���� 0 url_b_chars URL_B_chars��  ��   �  � � � r     � � � l    ����� � o    ���� 0 standard_characters  ��  ��   � l      ����� � o      ���� 0 acceptable_characters  ��  ��   �  � � � Z    � ����� � =    � � � o    ���� 0 encode_url_a encode_URL_A � m    ��
�� boovfals � r     �  � b     l   ���� o    ���� 0 acceptable_characters  ��  ��   l   ���� o    ���� 0 url_a_chars URL_A_chars��  ��    l     ��� o      �~�~ 0 acceptable_characters  ��  �  ��  ��   �  Z    /	�}�| =    #

 o     !�{�{ 0 encode_url_b encode_URL_B m   ! "�z
�z boovfals	 r   & + b   & ) l  & '�y�x o   & '�w�w 0 acceptable_characters  �y  �x   l  ' (�v�u o   ' (�t�t 0 url_b_chars URL_B_chars�v  �u   l     �s�r o      �q�q 0 acceptable_characters  �s  �r  �}  �|    r   0 3 m   0 1 �   l     �p�o o      �n�n 0 encoded_text  �p  �o    X   4 c�m Z   D ^�l  E  D G!"! l  D E#�k�j# o   D E�i�i 0 acceptable_characters  �k  �j  " o   E F�h�h 0 	this_char   r   J O$%$ l  J M&�g�f& b   J M'(' l  J K)�e�d) o   J K�c�c 0 encoded_text  �e  �d  ( o   K L�b�b 0 	this_char  �g  �f  % l     *�a�`* o      �_�_ 0 encoded_text  �a  �`  �l    r   R ^+,+ c   R \-.- l  R Z/�^�]/ b   R Z010 l  R S2�\�[2 o   R S�Z�Z 0 encoded_text  �\  �[  1 I   S Y�Y3�X�Y $0 encodecharforurl encodeCharForURL3 4�W4 o   T U�V�V 0 	this_char  �W  �X  �^  �]  . m   Z [�U
�U 
TEXT, l     5�T�S5 o      �R�R 0 encoded_text  �T  �S  �m 0 	this_char   o   7 8�Q�Q 0 	this_text   6�P6 L   d f77 l  d e8�O�N8 o   d e�M�M 0 encoded_text  �O  �N  �P   � 9:9 l     �L�K�J�L  �K  �J  : ;<; l     �I�H�G�I  �H  �G  < =>= i    ?@? I      �FA�E�F 0 
getfromfmp 
getFromFMPA B�DB o      �C�C 	0 prefs  �D  �E  @ k     �CC DED l     �BFG�B  F   version 1.8   G �HH    v e r s i o n   1 . 8E IJI l     �A�@�?�A  �@  �?  J KLK Q     MNOM k    PP QRQ l   �>ST�>  S D > prefs MIGHT be a record that looks like this: {fmType:"Adv"}    T �UU |   p r e f s   M I G H T   b e   a   r e c o r d   t h a t   l o o k s   l i k e   t h i s :   { f m T y p e : " A d v " }  R V�=V r    WXW n    YZY o    �<�< 0 fmtype fmTypeZ o    �;�; 	0 prefs  X o      �:�: 0 fmtype fmType�=  N R      �9�8�7
�9 .ascrerr ****      � ****�8  �7  O r    [\[ m    ]] �^^  U n k\ o      �6�6 0 fmtype fmTypeL _`_ l   �5�4�3�5  �4  �3  ` aba r    cdc m    ee �ff D A p p l e S c r i p t _ T r a n s f e r - D O _ N O T _ R E N A M Ed o      �2�2 0 
astransfer 
asTransferb ghg r    iji m    kk �ll  F i l e M a k e r   P r oj o      �1�1 0 fmpname fmpNameh mnm l   �0�/�.�0  �/  �.  n opo Z    �qr�-sq H    $tt E    #uvu l   !w�,�+w I   !�*x�)
�* .earsffdralis        afdrx  f    �)  �,  �+  v o   ! "�(�( 0 fmpname fmpNamer k   ' {yy z{z O   ' =|}| r   + <~~ n   + :��� 1   8 :�'
�' 
dnam� l  + 8��&�%� 6  + 8��� 4  + /�$�
�$ 
pcap� m   - .�#�# � C  0 7��� 1   1 3�"
�" 
dnam� o   4 6�!�! 0 fmpname fmpName�&  �%   o      � �  0 fmpactivename fmpActiveName} m   ' (���                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  { ��� Z   > s����� =  > A��� o   > ?�� 0 fmtype fmType� m   ? @�� ���  U n k� r   D M��� b   D K��� b   D I��� b   D G��� m   D E�� ���  t e l l   a p p   "� o   E F�� 0 fmpactivename fmpActiveName� m   G H�� ���  "� o   I J�
� 
ret � o      �� 0 begintellfm beginTellFM� ��� =  P S��� o   P Q�� 0 fmtype fmType� m   Q R�� ���  A d v� ��� r   V ]��� b   V [��� m   V Y�� ��� Z t e l l   a p p   i d   " c o m . f i l e m a k e r . c l i e n t . a d v a n c e d 1 2 "� o   Y Z�
� 
ret � o      �� 0 begintellfm beginTellFM� ��� =  ` e��� o   ` a�� 0 fmtype fmType� m   a d�� ���  P r o� ��� r   h o��� b   h m��� m   h k�� ��� P t e l l   a p p   i d   " c o m . f i l e m a k e r . c l i e n t . p r o 1 2 "� o   k l�
� 
ret � o      �� 0 begintellfm beginTellFM�  �  � ��� r   t {��� b   t y��� o   t u�
� 
ret � m   u x�� ���  e n d   t e l l� o      �� 0 	endtellfm 	endTellFM�  �-  s k   ~ ��� ��� r   ~ ���� m   ~ ��� ���  � o      �� 0 begintellfm beginTellFM� ��� r   � ���� m   � ��� ���  � o      �� 0 	endtellfm 	endTellFM�  p ��� l  � �����  �  �  � ��� r   � ���� b   � ���� b   � ���� m   � ��� ��� $ c e l l   1   o f   l a y o u t   "� o   � ��
�
 0 
astransfer 
asTransfer� m   � ��� ���  "   o f   w i n d o w   1� o      �	�	 0 	codetoget 	codeToGet� ��� r   � ���� b   � ���� b   � ���� o   � ��� 0 begintellfm beginTellFM� o   � ��� 0 	codetoget 	codeToGet� o   � ��� 0 	endtellfm 	endTellFM� o      �� 0 
sendsource 
sendSource� ��� r   � ���� I  � ����
� .sysodsct****        scpt� o   � ��� 0 
sendsource 
sendSource�  � o      �� 0 	inputdata 	inputData� ��� l  � �� �����   ��  ��  � ���� L   � ��� o   � ����� 0 	inputdata 	inputData��  > ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� i    "��� I      ������� 0 	sendtofmp 	sendToFMP� ���� o      ���� 0 somedata someData��  ��  � k    )�� ��� l     ������  �   version 1.6   � ���    v e r s i o n   1 . 6� ��� l     ��������  ��  ��  � ��� Q     � � k      l   ����   b \ someData MIGHT be a record that looks like this: {fmType:"Adv", someData:"BLAH BLAH BLAH"}     � �   s o m e D a t a   M I G H T   b e   a   r e c o r d   t h a t   l o o k s   l i k e   t h i s :   { f m T y p e : " A d v " ,   s o m e D a t a : " B L A H   B L A H   B L A H " }   	 r    

 n     o    ���� 0 fmtype fmType o    ���� 0 somedata someData o      ���� 0 fmtype fmType	 �� r   	  n   	  o   
 ���� 0 somedata someData o   	 
���� 0 somedata someData o      ���� 0 somedata someData��    R      ������
�� .ascrerr ****      � ****��  ��   r     m     �  U n k o      ���� 0 fmtype fmType�  l   ��������  ��  ��    r     m     � D A p p l e S c r i p t _ T r a n s f e r - D O _ N O T _ R E N A M E o      ���� 0 
astransfer 
asTransfer   r    !!"! m    ## �$$  F i l e M a k e r   P r o" o      ���� 0 fmpname fmpName  %&% Z   " �'(��)' H   " *** E   " )+,+ l  " '-����- I  " '��.��
�� .earsffdralis        afdr.  f   " #��  ��  ��  , o   ' (���� 0 fmpname fmpName( k   - �// 010 O   - C232 r   1 B454 n   1 @676 1   > @��
�� 
dnam7 l  1 >8����8 6  1 >9:9 4  1 5��;
�� 
pcap; m   3 4���� : C  6 =<=< 1   7 9��
�� 
dnam= o   : <���� 0 fmpname fmpName��  ��  5 o      ���� 0 fmpactivename fmpActiveName3 m   - .>>�                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  1 ?@? Z   D {ABC��A =  D GDED o   D E���� 0 fmtype fmTypeE m   E FFF �GG  U n kB r   J SHIH b   J QJKJ b   J OLML b   J MNON m   J KPP �QQ  t e l l   a p p   "O o   K L���� 0 fmpactivename fmpActiveNameM m   M NRR �SS  "K o   O P��
�� 
ret I o      ���� 0 begintellfm beginTellFMC TUT =  V [VWV o   V W���� 0 fmtype fmTypeW m   W ZXX �YY  A d vU Z[Z r   ^ e\]\ b   ^ c^_^ m   ^ a`` �aa Z t e l l   a p p   i d   " c o m . f i l e m a k e r . c l i e n t . a d v a n c e d 1 2 "_ o   a b��
�� 
ret ] o      ���� 0 begintellfm beginTellFM[ bcb =  h mded o   h i���� 0 fmtype fmTypee m   i lff �gg  P r oc h��h r   p wiji b   p uklk m   p smm �nn P t e l l   a p p   i d   " c o m . f i l e m a k e r . c l i e n t . p r o 1 2 "l o   s t��
�� 
ret j o      ���� 0 begintellfm beginTellFM��  ��  @ opo l  | |��������  ��  ��  p q��q r   | �rsr b   | �tut o   | }��
�� 
ret u m   } �vv �ww  e n d   t e l ls o      ���� 0 	endtellfm 	endTellFM��  ��  ) k   � �xx yzy r   � �{|{ m   � �}} �~~  | o      ���� 0 begintellfm beginTellFMz �� r   � ���� m   � ��� ���  � o      ���� 0 	endtellfm 	endTellFM��  & ��� l  � ���������  ��  ��  � ��� r   � ���� c   � ���� o   � ����� 0 somedata someData� m   � ���
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
TEXT� l     ������ o      ���� "0 somedatacleaned someDataCleaned��  ��  � ��� l  � �������  � ) # reset the AppleScript delimiters	    � ��� F   r e s e t   t h e   A p p l e S c r i p t   d e l i m i t e r s 	  � ��� r   ���� o   � ��� 0 	olddelims 	oldDelims� n     ��� 1  �~
�~ 
txdl� 1   ��}
�} 
ascr� ��� l �|�{�z�|  �{  �z  � ��� r  ��� b  ��� b  ��� b  ��� b  ��� m  �� ��� , s e t   c e l l   1   o f   l a y o u t   "� o  �y�y 0 
astransfer 
asTransfer� m  �� ��� & "   o f   w i n d o w   1   t o   ( "� o  �x�x "0 somedatacleaned someDataCleaned� m  �� �    "   a s   s t r i n g )� o      �w�w 0 	codetoset 	codeToSet�  r  ! b   b   o  �v�v 0 begintellfm beginTellFM o  �u�u 0 	codetoset 	codeToSet o  �t�t 0 	endtellfm 	endTellFM o      �s�s 0 
sendsource 
sendSource 	
	 l ""�r�q�p�r  �q  �p  
  I "'�o�n
�o .sysodsct****        scpt o  "#�m�m 0 
sendsource 
sendSource�n   �l l ((�k�j�i�k  �j  �i  �l  �  l     �h�g�f�h  �g  �f    l     �e�d�c�e  �d  �c    i   # & I      �b�a�b 0 closedatabase closeDatabase �` o      �_�_ 	0 prefs  �`  �a   k    �  l     �^�^     version 1.4    �    v e r s i o n   1 . 4   l     �]�\�[�]  �\  �[    !"! r     #$# K     %% �Z&'�Z 0 	fmapptype 	fmAppType& m    (( �))  P r o' �Y*+�Y .0 waitcycledelayseconds waitCycleDelaySeconds* m    �X�X 
+ �W,-�W ,0 waitsavetotalseconds waitSaveTotalSeconds, ]    ./. m    �V�V 
/ 1    �U
�U 
min - �T01�T 0 dbname dbName0 m   	 
�S
�S 
null1 �R2�Q�R "0 closescriptname closeScriptName2 m    33 �44  C L O S E _ S C R I P T�Q  $ o      �P�P 0 defaultprefs defaultPrefs" 565 r    787 b    9:9 o    �O�O 	0 prefs  : o    �N�N 0 defaultprefs defaultPrefs8 o      �M�M 	0 prefs  6 ;<; l   �L�K�J�L  �K  �J  < =>= r    ?@? n    ABA o    �I�I ,0 waitsavetotalseconds waitSaveTotalSecondsB o    �H�H 	0 prefs  @ o      �G�G ,0 waitsavetotalseconds waitSaveTotalSeconds> CDC r    "EFE n     GHG o     �F�F .0 waitcycledelayseconds waitCycleDelaySecondsH o    �E�E 	0 prefs  F o      �D�D .0 waitcycledelayseconds waitCycleDelaySecondsD IJI r   # (KLK n   # &MNM o   $ &�C�C 0 dbname dbNameN o   # $�B�B 	0 prefs  L o      �A�A 0 dbname dbNameJ OPO l  ) )�@�?�>�@  �?  �>  P QRQ r   ) 4STS I  ) 2�=UV
�= .sysorondlong        doubU l  ) ,W�<�;W ^   ) ,XYX o   ) *�:�: ,0 waitsavetotalseconds waitSaveTotalSecondsY o   * +�9�9 .0 waitcycledelayseconds waitCycleDelaySeconds�<  �;  V �8Z�7
�8 
direZ m   - .�6
�6 olierndD�7  T o      �5�5 0 waitcyclemax waitCycleMaxR [\[ l  5 5�4�3�2�4  �3  �2  \ ]^] l  5 5�1�0�/�1  �0  �/  ^ _`_ Q   5�abca k   8�dd efe l  8 8�.gh�.  g = 7 try closing the database by telling FileMaker to do it   h �ii n   t r y   c l o s i n g   t h e   d a t a b a s e   b y   t e l l i n g   F i l e M a k e r   t o   d o   i tf jkj Z   8 �lm�-�,l >  8 =non n   8 ;pqp o   9 ;�+�+ 0 dbname dbNameq o   8 9�*�* 	0 prefs  o m   ; <�)
�) 
nullm Q   @ �rstr O   C suvu k   G rww xyx I  G O�(z�'
�( .coreclosnull���    obj z 4   G K�&{
�& 
cDB { o   I J�%�% 0 dbname dbName�'  y |}| Z  P o~�$�#~ o   P U�"�" 0 	debugmode 	DebugMode n  X k��� I   Y k�!�� �! 0 
logconsole 
logConsole� ��� o   Y ^�� 0 
scriptname 
ScriptName� ��� b   ^ g��� b   ^ c��� m   ^ a�� ���  D A T A B A S E   '� o   a b�� 0 dbname dbName� m   c f�� ��� $ '   c l o s e d   d i r e c t l y .�  �   �  f   X Y�$  �#  } ��� L   p r�� m   p q�
� boovtrue�  v m   C D��2                                                                                  FM12  alis    �  MacintoshSSD               �u8\H+   3�FileMaker Pro Advanced.app                                      4�̙�Q        ����  	                FileMaker Pro 12 Advanced     �u~�      ̚"�     3�   �  PMacintoshSSD:Applications: FileMaker Pro 12 Advanced: FileMaker Pro Advanced.app  6  F i l e M a k e r   P r o   A d v a n c e d . a p p    M a c i n t o s h S S D  AApplications/FileMaker Pro 12 Advanced/FileMaker Pro Advanced.app   / ��  s R      ���
� .ascrerr ****      � ****� o      �� 0 errmsg errMsg� ���
� 
errn� o      �� 0 errnum errNum�  t Z  { ������ o   { ��� 0 	debugmode 	DebugMode� n  � ���� I   � ����� 0 loglevel logLEVEL� ��� m   � ��� � ��� b   � ���� b   � ���� b   � ���� m   � ��� ���  D A T A B A S E   '� o   � ��� 0 dbname dbName� m   � ��� ��� h '     u n a b l e   t o   c l o s e   d i r e c t l y ,   t r y i n g   b y   c l o s e   s c r i p t .� o   � ��� 0 errmsg errMsg�  �  �  f   � ��  �  �-  �,  k ��� l  � ����
�  �  �
  � ��� l  � ��	���	  �  �  � ��� l  � �����  � = 7 unable to close directly, try to call the close script   � ��� n   u n a b l e   t o   c l o s e   d i r e c t l y ,   t r y   t o   c a l l   t h e   c l o s e   s c r i p t� ��� I   � ����� (0 fmgui_appfrontmost fmGUI_AppFrontMost�  �  � ��� l  � ���� �  �  �   � ��� Z   � ������� =  � ���� n   � ���� o   � ����� 0 	fmapptype 	fmAppType� o   � ����� 	0 prefs  � m   � ��� ���  A d v� r   � ���� m   � ��� ��� , F i l e M a k e r   P r o   A d v a n c e d� o      ���� 0 fmprocessname fmProcessName��  � r   � ���� m   � ��� ���  F i l e M a k e r   P r o� o      ���� 0 fmprocessname fmProcessName� ��� l  � ���������  ��  ��  � ���� O   ����� O   ����� k   ���� ��� l  � ���������  ��  ��  � ��� l  � �������  � G A wait until Close Window is available ( menu item is available ):   � ��� �   w a i t   u n t i l   C l o s e   W i n d o w   i s   a v a i l a b l e   (   m e n u   i t e m   i s   a v a i l a b l e   ) :� ��� r   � ���� m   � ���
�� boovfals� o      ���� ,0 closewindowavailable closeWindowAvailable� ��� U   ���� k   ��� ��� r   � ���� n   � ���� 1   � ���
�� 
enaB� n   � ���� 4   � ����
�� 
menI� m   � ��� ��� 
 C l o s e� n   � ���� 4   � ����
�� 
menE� m   � ����� � n   � ���� 4   � ����
�� 
mbri� m   � ��� ���  F i l e� 4   � ����
�� 
mbar� m   � ����� � o      ���� ,0 closewindowavailable closeWindowAvailable� ��� Z  � ������� o   � ����� ,0 closewindowavailable closeWindowAvailable�  S   � ���  ��  � ���� I �����
�� .sysodelanull��� ��� nmbr� o  ���� .0 waitcycledelayseconds waitCycleDelaySeconds��  ��  � o   � ����� 0 waitcyclemax waitCycleMax� ��� l ��������  ��  ��  � ��� l ������  � / ) try to close by running the close script   � ��� R   t r y   t o   c l o s e   b y   r u n n i n g   t h e   c l o s e   s c r i p t� � � Q  � Z  i�� o  ���� ,0 closewindowavailable closeWindowAvailable k  K 	 n 

 I  ������ 40 fmgui_managescripts_open fmGUI_ManageScripts_Open �� J  ����  ��  ��    f  	  n ( I  (������ J0 #fmgui_managescripts_fmscript_select #fmGUI_ManageScripts_FmScript_Select �� K  $ ������ 0 fmscriptname fmScriptName l "���� n  " o   "���� "0 closescriptname closeScriptName o   ���� 	0 prefs  ��  ��  ��  ��  ��    f    r  )E 6 )C n  )4  4 /4��!
�� 
butT! m  23����   4  )/��"
�� 
cwin" m  -.����  = 7B#$# 1  8<��
�� 
desc$ m  =A%% �&&  P e r f o r m o      ���� "0 runscriptbutton runScriptButton '��' I FK��(��
�� .prcsclicnull��� ��� uiel( o  FG���� "0 runscriptbutton runScriptButton��  ��  ��   k  Ni)) *+* r  NZ,-, n  NX./. 1  TX��
�� 
pnam/ 4  NT��0
�� 
cwin0 m  RS���� - o      ���� "0 frontwindowname frontWindowName+ 1��1 R  [i��23
�� .ascrerr ****      � ****2 b  ch454 m  cf66 �77 | C l o s e   W i n d o w   m e n u   i t e m   w a s   n o t   e n a b l e d   -   f r o n t   w i n d o w   n a m e   i s  5 o  fg���� "0 frontwindowname frontWindowName3 ��8��
�� 
errn8 m  _b���� ��  ��   R      ������
�� .ascrerr ****      � ****��  ��   k  q�99 :;: Z q�<=����< o  qv���� 0 	debugmode 	DebugMode= I  y���>���� 0 
logconsole 
logConsole> ?@? o  z���� 0 
scriptname 
ScriptName@ A��A b  �BCB b  �DED b  �FGF b  �HIH m  �JJ �KK  N o   'I l ��L����L n  ��MNM o  ������ "0 closescriptname closeScriptNameN o  ������ 	0 prefs  ��  ��  G m  ��OO �PP  '   f o r  E o  ������ 0 dbname dbNameC m  ��QQ �RR H ,   a t t e m p t i n g   t o   c l o s e   w i n d o w   i n s t e a d��  ��  ��  ��  ; STS n ��UVU I  ����W���� 60 fmgui_managescripts_close fmGUI_ManageScripts_CloseW X��X J  ������  ��  ��  V  f  ��T Y��Y I ����Z��
�� .prcsclicnull��� ��� uielZ n  ��[\[ 4  ����]
�� 
butT] m  ������ \ 4  ����^
�� 
cwin^ m  ������ ��  ��    _��_ l ����������  ��  ��  ��  � 4   � ���`
�� 
pcap` o   � ����� 0 fmprocessname fmProcessName� m   � �aa�                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  ��  b R      ��bc
�� .ascrerr ****      � ****b o      ���� 0 errmsg errMsgc ��d��
�� 
errnd o      ���� 0 errnum errNum��  c R  ����ef
�� .ascrerr ****      � ****e b  ��ghg m  ��ii �jj 8 U n a b l e   t o   r u n   c l o s e   s c r i p t :  h o  ������ 0 errmsg errMsgf ��k��
�� 
errnk o  ������ 0 errnum errNum��  ` l��l l ����������  ��  ��  ��   mnm l     ��������  ��  ��  n opo l     ��������  ��  ��  p qrq i   ' *sts I      ��u���� 40 displayfilemakerdatabase displayFileMakerDatabaseu v��v o      ���� 	0 prefs  ��  ��  t k    �ww xyx l     ��z{��  z   version 1.5   { �||    v e r s i o n   1 . 5y }~} l     ����~��  �  �~  ~ � Q    ����� k   ��� ��� r    ��� K    �� �}���} 0 	fmapptype 	fmAppType� m    �� ���  P r o� �|���| .0 waitcycledelayseconds waitCycleDelaySeconds� m    �{�{ � �z��y�z ,0 waitsavetotalseconds waitSaveTotalSeconds� ]    ��� m    	�x�x � 1   	 
�w
�w 
min �y  � o      �v�v 0 defaultprefs defaultPrefs� ��� r    ��� b    ��� o    �u�u 	0 prefs  � o    �t�t 0 defaultprefs defaultPrefs� o      �s�s 	0 prefs  � ��� l   �r�q�p�r  �q  �p  � ��� Z   4���o�n� o    �m�m 0 	debugmode 	DebugMode� I    0�l��k�l 0 
logconsole 
logConsole� ��� o    $�j�j 0 
scriptname 
ScriptName� ��i� b   $ ,��� m   $ %�� ��� @ d i s p l a y F i l e M a k e r D a t a b a s e   p r e f s :  � I   % +�h��g�h  0 coercetostring coerceToString� ��f� o   & '�e�e 	0 prefs  �f  �g  �i  �k  �o  �n  � ��� l  5 5�d�c�b�d  �c  �b  � ��� r   5 :��� n   5 8��� o   6 8�a�a 0 dbname dbName� o   5 6�`�` 	0 prefs  � o      �_�_ 0 dbname dbName� ��� l  ; ;�^�]�\�^  �]  �\  � ��� r   ; @��� n   ; >��� o   < >�[�[ ,0 waitsavetotalseconds waitSaveTotalSeconds� o   ; <�Z�Z 	0 prefs  � o      �Y�Y ,0 waitsavetotalseconds waitSaveTotalSeconds� ��� r   A F��� n   A D��� o   B D�X�X .0 waitcycledelayseconds waitCycleDelaySeconds� o   A B�W�W 	0 prefs  � o      �V�V .0 waitcycledelayseconds waitCycleDelaySeconds� ��� l  G G�U�T�S�U  �T  �S  � ��� r   G R��� I  G P�R��
�R .sysorondlong        doub� l  G J��Q�P� ^   G J��� o   G H�O�O ,0 waitsavetotalseconds waitSaveTotalSeconds� o   H I�N�N .0 waitcycledelayseconds waitCycleDelaySeconds�Q  �P  � �M��L
�M 
dire� m   K L�K
�K olierndD�L  � o      �J�J 0 waitcyclemax waitCycleMax� ��� l  S S�I�H�G�I  �H  �G  � ��� Z   S f���F�� =  S X��� n   S V��� o   T V�E�E 0 	fmapptype 	fmAppType� o   S T�D�D 	0 prefs  � m   V W�� ���  A d v� r   [ ^��� m   [ \�� ��� > c o m . f i l e m a k e r . c l i e n t . a d v a n c e d 1 2� o      �C�C 0 fmappbundleid fmAppBundleID�F  � r   a f��� m   a d�� ��� 4 c o m . f i l e m a k e r . c l i e n t . p r o 1 2� o      �B�B 0 fmappbundleid fmAppBundleID� ��� l  g g�A�@�?�A  �@  �?  � ��� l  g g�>�=�<�>  �=  �<  � ��� U   g ���� k   n ��� ��� l  n n�;�:�9�;  �:  �9  � ��� r   n s��� m   n q�8
�8 
null� o      �7�7 0 doclist docList� ��� Q   t ����� k   w ��� ��� w   w ���� O   { ���� r   � ���� 2   � ��6
�6 
docu� o      �5�5 0 doclist docList� 5   { ��4��3
�4 
capp� o    ��2�2 0 fmappbundleid fmAppBundleID
�3 kfrmID  �2                                                                                  FM12  alis    �  MacintoshSSD               �u8\H+   3�FileMaker Pro Advanced.app                                      4�̙�Q        ����  	                FileMaker Pro 12 Advanced     �u~�      ̚"�     3�   �  PMacintoshSSD:Applications: FileMaker Pro 12 Advanced: FileMaker Pro Advanced.app  6  F i l e M a k e r   P r o   A d v a n c e d . a p p    M a c i n t o s h S S D  AApplications/FileMaker Pro 12 Advanced/FileMaker Pro Advanced.app   / ��  � ��� l  � ��1�0�/�1  �0  �/  �    Z  � ��.�- >  � � o   � ��,�, 0 doclist docList m   � ��+
�+ 
null  S   � ��.  �-   �* l  � ��)�(�'�)  �(  �'  �*  � R      �&
�& .ascrerr ****      � **** o      �%�% 0 errmsg errMsg �$	�#
�$ 
errn	 o      �"�" 0 errnum errNum�#  � Z   � �
�!
 =  � � o   � �� �  0 errnum errNum m   � ����� l  � ���   � � just keep trying - this error can be caused when a database is opening and the open script takes a bit too long to finish, or something in the FM interface is slow to respond.     �b   j u s t   k e e p   t r y i n g   -   t h i s   e r r o r   c a n   b e   c a u s e d   w h e n   a   d a t a b a s e   i s   o p e n i n g   a n d   t h e   o p e n   s c r i p t   t a k e s   a   b i t   t o o   l o n g   t o   f i n i s h ,   o r   s o m e t h i n g   i n   t h e   F M   i n t e r f a c e   i s   s l o w   t o   r e s p o n d .  �!   R   � ��
� .ascrerr ****      � **** b   � � m   � � � \ E r r o r   g e t t i n g   l i s t   o f   d a t a b a s e s   a l r e a d y   o p e n :   o   � ��� 0 errmsg errMsg ��
� 
errn o   � ��� 0 errnum errNum�  �  l  � �����  �  �   � I  � ���
� .sysodelanull��� ��� nmbr o   � ��� .0 waitcycledelayseconds waitCycleDelaySeconds�  �  � o   j k�� 0 waitcyclemax waitCycleMax�  l  � �����  �  �     X   ��!�"! k   ��## $%$ r   � �&'& n   � �()( 1   � ��
� 
pnam) o   � ��� 0 onedoc oneDoc' o      �
�
 0 docname docName% *+* l  � ��	,-�	  , 0 * get the name WITHOUT the file extension:    - �.. T   g e t   t h e   n a m e   W I T H O U T   t h e   f i l e   e x t e n s i o n :  + /0/ c   � �121 l  � �3��3 n   � �454 1   � ��
� 
rvse5 n   � �676 2  � ��
� 
cha 7 o   � ��� 0 docname docName�  �  2 m   � ��
� 
TEXT0 898 n   �:;: 7  ��<=
� 
ctxt< l  �>�� > [   �?@? l  �A����A I  �����B
�� .sysooffslong    ��� null��  B ��CD
�� 
psofC m  EE �FF  .D ��G��
�� 
psinG 1  	��
�� 
rslt��  ��  ��  @ m  ���� �  �   = m  ������; 1   � ���
�� 
rslt9 HIH r  +JKJ c  )LML l %N����N n  %OPO 1  !%��
�� 
rvseP n  !QRQ 2 !��
�� 
cha R 1  ��
�� 
rslt��  ��  M m  %(��
�� 
TEXTK o      ���� 0 docname docNameI STS Z ,=UV����U o  ,1���� 0 	debugmode 	DebugModeV I 49��W��
�� .ascrcmnt****      � ****W o  45���� 0 dbname dbName��  ��  ��  T XYX Z >OZ[����Z o  >C���� 0 	debugmode 	DebugMode[ I FK��\��
�� .ascrcmnt****      � ****\ o  FG���� 0 docname docName��  ��  ��  Y ]��] P  P�^��_^ k  W�`` aba l WW��cd��  c w qif debugMode then logConsole(ScriptName, "displayFileMakerDatabase docName: " & coerceToString(class of docName))   d �ee � i f   d e b u g M o d e   t h e n   l o g C o n s o l e ( S c r i p t N a m e ,   " d i s p l a y F i l e M a k e r D a t a b a s e   d o c N a m e :   "   &   c o e r c e T o S t r i n g ( c l a s s   o f   d o c N a m e ) )b fgf l WW��hi��  h u oif debugMode then logConsole(ScriptName, "displayFileMakerDatabase dbName: " & coerceToString(class of dbName))   i �jj � i f   d e b u g M o d e   t h e n   l o g C o n s o l e ( S c r i p t N a m e ,   " d i s p l a y F i l e M a k e r D a t a b a s e   d b N a m e :   "   &   c o e r c e T o S t r i n g ( c l a s s   o f   d b N a m e ) )g klk l WW��������  ��  ��  l mnm l WW��������  ��  ��  n opo l WW��qr��  q s m apparently these two TEXT variables have some difference (formatting?) even when they are identical STRINGS:   r �ss �   a p p a r e n t l y   t h e s e   t w o   T E X T   v a r i a b l e s   h a v e   s o m e   d i f f e r e n c e   ( f o r m a t t i n g ? )   e v e n   w h e n   t h e y   a r e   i d e n t i c a l   S T R I N G S :p t��t Z  W�uv��wu = Wbxyx l W\z����z c  W\{|{ o  WX���� 0 docname docName| m  X[��
�� 
TEXT��  ��  y l \a}����} c  \a~~ o  \]���� 0 dbname dbName m  ]`��
�� 
TEXT��  ��  v k  e��� ��� l ee������  � " if debugMode then log "SAME"   � ��� 8 i f   d e b u g M o d e   t h e n   l o g   " S A M E "� ��� w  e���� O  i���� k  u��� ��� I uz�����
�� .miscmvisnull���    obj � o  uv���� 0 onedoc oneDoc��  � ��� Z {�������� o  {����� 0 	debugmode 	DebugMode� n ����� I  ��������� 0 
logconsole 
logConsole� ��� o  ������ 0 
scriptname 
ScriptName� ���� b  ����� m  ���� ��� B d i s p l a y F i l e M a k e r D a t a b a s e   o n e D o c :  � n ����� I  ���������  0 coercetostring coerceToString� ���� o  ������ 0 onedoc oneDoc��  ��  �  f  ����  ��  �  f  ����  ��  � ���� l ��������  � ( "if debugMode then log (path to it)   � ��� D i f   d e b u g M o d e   t h e n   l o g   ( p a t h   t o   i t )��  � 5  ir�����
�� 
capp� o  mn���� 0 fmappbundleid fmAppBundleID
�� kfrmID  �2                                                                                  FM12  alis    �  MacintoshSSD               �u8\H+   3�FileMaker Pro Advanced.app                                      4�̙�Q        ����  	                FileMaker Pro 12 Advanced     �u~�      ̚"�     3�   �  PMacintoshSSD:Applications: FileMaker Pro 12 Advanced: FileMaker Pro Advanced.app  6  F i l e M a k e r   P r o   A d v a n c e d . a p p    M a c i n t o s h S S D  AApplications/FileMaker Pro 12 Advanced/FileMaker Pro Advanced.app   / ��  � ���� L  ���� m  ����
�� boovtrue��  ��  w l ��������  � P Jif debugMode then logConsole(ScriptName, "displayFileMakerDatabase DIFF" )   � ��� � i f   d e b u g M o d e   t h e n   l o g C o n s o l e ( S c r i p t N a m e ,   " d i s p l a y F i l e M a k e r D a t a b a s e   D I F F "   )��  ��  _ ����
�� conscase��  ��  � 0 onedoc oneDoc" o   � ����� 0 doclist docList  ��� L  ���� m  ����
�� boovfals� ���� l ����������  ��  ��  ��  � R      ����
�� .ascrerr ****      � ****� o      ���� 0 errmsg errMsg� �����
�� 
errn� o      ���� 0 errnum errNum��  � R  ������
�� .ascrerr ****      � ****� b  ����� b  ����� b  ����� m  ���� ��� @ d i s p l a y F i l e M a k e r D a t a b a s e   e r r o r :  � o  ������ 0 errmsg errMsg� m  ���� ��� "   -   e r r o r   n u m b e r :  � o  ������ 0 errnum errNum� �����
�� 
errn� o  ������ 0 errnum errNum��  � ���� l ����������  ��  ��  ��  r ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� i   + .��� I      ������� 20 ensurefilemakerdatabase ensureFileMakerDatabase� ���� o      ���� 	0 prefs  ��  ��  � k     ��� ��� l     ������  �   version 1.3   � ���    v e r s i o n   1 . 3� ��� l     ��������  ��  ��  � ��� r     ��� n     ��� o    ���� 0 dbname dbName� o     ���� 	0 prefs  � o      ���� 0 dbname dbName� ��� l   ��������  ��  ��  � ��� l   ���� r    ��� I    ������� 40 displayfilemakerdatabase displayFileMakerDatabase� ���� K    �� ������ 0 dbname dbName� o    	���� 0 dbname dbName� ������� 0 	fmapptype 	fmAppType� m   
 �� ���  A d v��  ��  ��  � o      ���� 0 isdisplayed isDisplayed� + % first, just see if one is available.   � ��� J   f i r s t ,   j u s t   s e e   i f   o n e   i s   a v a i l a b l e .� ��� Z   -������� o    ���� 0 	debugmode 	DebugMode� I    )���~� 0 
logconsole 
logConsole� ��� o    "�}�} 0 
scriptname 
ScriptName� ��|� b   " %��� m   " #�� ��� $ T r i e d   t o   d i s p l a y :  � o   # $�{�{ 0 dbname dbName�|  �~  ��  ��  � ��z� Z   . ����y�� o   . /�x�x 0 isdisplayed isDisplayed� L   2 4�� m   2 3�w
�w boovtrue�y  � k   7 ��� ��� Z  7 P� �v�u� o   7 <�t�t 0 	debugmode 	DebugMode  I   ? L�s�r�s 0 
logconsole 
logConsole  o   @ E�q�q 0 
scriptname 
ScriptName �p b   E H m   E F � , A b o u t   t o   t r y   t o   o p e n :   o   F G�o�o 0 dbname dbName�p  �r  �v  �u  � 	
	 l  Q Q�n�m�l�n  �m  �l  
 �k Z   Q ��j I   Q W�i�h�i .0 openfilemakerdatabase openFileMakerDatabase �g o   R S�f�f 	0 prefs  �g  �h   k   Z �  l  Z Z�e�e   2 , was able to open it, so NOW display window.    � X   w a s   a b l e   t o   o p e n   i t ,   s o   N O W   d i s p l a y   w i n d o w .  I  Z _�d�c
�d .sysodelanull��� ��� nmbr m   Z [ ?�      �c    Z  ` y�b�a o   ` e�`�` 0 	debugmode 	DebugMode I   h u�_�^�_ 0 
logconsole 
logConsole  !  o   i n�]�] 0 
scriptname 
ScriptName! "�\" b   n q#$# m   n o%% �&& R T r i e d   t o   o p e n ,   n o w   t r y   a g a i n   t o   d i s p l a y :  $ o   o p�[�[ 0 dbname dbName�\  �^  �b  �a   '(' r   z �)*) I   z ��Z+�Y�Z 40 displayfilemakerdatabase displayFileMakerDatabase+ ,�X, K   { �-- �W./�W 0 dbname dbName. o   | }�V�V 0 dbname dbName/ �U0�T�U 0 	fmapptype 	fmAppType0 m   ~ 11 �22  A d v�T  �X  �Y  * o      �S�S 0 isdisplayed isDisplayed( 3�R3 L   � �44 o   � ��Q�Q 0 isdisplayed isDisplayed�R  �j   k   � �55 676 l  � ��P89�P  8 0 * Was NOT able to open it, so return false.   9 �:: T   W a s   N O T   a b l e   t o   o p e n   i t ,   s o   r e t u r n   f a l s e .7 ;�O; L   � �<< m   � ��N
�N boovfals�O  �k  �z  � =>= l     �M�L�K�M  �L  �K  > ?@? l     �J�I�H�J  �I  �H  @ ABA i   / 2CDC I      �GE�F�G .0 openfilemakerdatabase openFileMakerDatabaseE F�EF o      �D�D 	0 prefs  �E  �F  D k     �GG HIH l     �CJK�C  J   version 1.3   K �LL    v e r s i o n   1 . 3I MNM l     �B�A�@�B  �A  �@  N OPO Q     �QRSQ k    uTT UVU r    WXW b    
YZY b    [\[ m    ]] �^^ < h t c l i n k : / / A c c e s s F i l e ? F i l e N a m e =\ n    _`_ o    �?�? 0 dbname dbName` o    �>�> 	0 prefs  Z m    	aa �bb N & C o m m a n d = O p e n & S i l e n t O p e n = 1 & S h o w W i n d o w = 1X o      �=�= 0 	customurl 	customURLV cdc l   �<�;�:�<  �;  �:  d efe O    pghg k    oii jkj l   �9�8�7�9  �8  �7  k lml r    /non b    -pqp b    $rsr b    "tut b    vwv b    xyx b    z{z b    |}| m    ~~ �  F M P : / /} n    ��� o    �6�6 0 serverip serverIP� o    �5�5 	0 prefs  { m    �� ���  /y n    ��� o    �4�4 0 
maindbname 
mainDbName� o    �3�3 	0 prefs  w m    �� ���  ? s c r i p t =u n    !��� o    !�2�2 <0 customlinkreceiverscriptname customLinkReceiverScriptName� o    �1�1 	0 prefs  s m   " #�� ���  & p a r a m =q n  $ ,��� I   % ,�0��/�0 $0 encodetextforurl encodeTextForURL� ��� o   % &�.�. 0 	customurl 	customURL� ��� m   & '�-
�- boovtrue� ��,� m   ' (�+
�+ boovfals�,  �/  �  f   $ %o o      �*�* 0 fmpurl fmpURLm ��� l  0 0�)�(�'�)  �(  �'  � ��� l  0 0�&���&  � [ U we must double-encode equals (%3D) and ampersand (%26) to work-around FileMaker bug:   � ��� �   w e   m u s t   d o u b l e - e n c o d e   e q u a l s   ( % 3 D )   a n d   a m p e r s a n d   ( % 2 6 )   t o   w o r k - a r o u n d   F i l e M a k e r   b u g :� ��� r   0 <��� n  0 :��� I   1 :�%��$�% 0 replacesimple replaceSimple� ��#� J   1 6�� ��� o   1 2�"�" 0 fmpurl fmpURL� ��� m   2 3�� ���  % 3 D� ��!� m   3 4�� ��� 
 % 2 5 3 D�!  �#  �$  �  f   0 1� o      � �  0 fmpurl fmpURL� ��� r   = K��� n  = I��� I   > I���� 0 replacesimple replaceSimple� ��� J   > E�� ��� o   > ?�� 0 fmpurl fmpURL� ��� m   ? @�� ���  % 2 6� ��� m   @ C�� ��� 
 % 2 5 2 6�  �  �  �  f   = >� o      �� 0 fmpurl fmpURL� ��� l  L L����  �  �  � ��� Z  L g����� o   L Q�� 0 	debugmode 	DebugMode� n  T c��� I   U c���� 0 
logconsole 
logConsole� ��� o   U Z�� 0 
scriptname 
ScriptName� ��� b   Z _��� m   Z ]�� ��� < o p e n F i l e M a k e r D a t a b a s e   f m p U R L :  � o   ] ^�� 0 fmpurl fmpURL�  �  �  f   T U�  �  � ��� l  h h����  �  �  � ��� I  h m���

� .GURLGURLnull��� ��� TEXT� o   h i�	�	 0 fmpurl fmpURL�
  � ��� l  n n����  �  �  �  h m    ���                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  f ��� l  q q����  �  �  � ��� L   q s�� m   q r�
� boovtrue� �� � l  t t��������  ��  ��  �   R R      ����
�� .ascrerr ****      � ****� o      ���� 0 errmsg errMsg� �����
�� 
errn� o      ���� 0 errnum errNum��  S k   } ��� ��� l  } }������  � A ; ANY error should return FALSE, as in "could not be opened"   � ��� v   A N Y   e r r o r   s h o u l d   r e t u r n   F A L S E ,   a s   i n   " c o u l d   n o t   b e   o p e n e d "� ��� l  } }��������  ��  ��  � ��� l  } ���� L   } �� o   } ~���� 0 errmsg errMsg�  false   � ��� 
 f a l s e� ���� l  � ���������  ��  ��  ��  P ��� l  � ���������  ��  ��  � ���� l  � ���������  ��  ��  ��  B ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� i   3 6��� I      ������� 0 sfr_dictget SFR_DictGet� ��� o      ���� 0 somedict someDict� ���� o      ���� 0 itemname itemName��  ��  � k     X�� � � l     ����     version 1.0    �    v e r s i o n   1 . 0   l     ��������  ��  ��    r     	 b     


 b      m      �  < : I    ������ 0 
sfr_escape 
SFR_Escape �� o    ���� 0 itemname itemName��  ��   m    	 �  : =	 o      ���� 0 	keystring 	keyString  r     m     �  : > o      ���� 0 	endstring 	endString  l   ��������  ��  ��    Z    N��  H    !! E    "#" o    ���� 0 somedict someDict# o    ���� 0 	keystring 	keyString L    $$ m    %% �&&  ��    k    N'' ()( r    "*+* n    ,-, 1     ��
�� 
txdl- 1    ��
�� 
ascr+ o      ���� 0 	olddelims 	oldDelims) ./. r   # (010 l  # $2����2 o   # $���� 0 	keystring 	keyString��  ��  1 n     343 1   % '��
�� 
txdl4 1   $ %��
�� 
ascr/ 565 r   ) /787 n   ) -9:9 4   * -��;
�� 
citm; m   + ,���� : o   ) *���� 0 somedict someDict8 l     <����< o      ���� 0 
keyremoved 
keyRemoved��  ��  6 =��= Z   0 N>?��@> H   0 4AA E   0 3BCB o   0 1���� 0 
keyremoved 
keyRemovedC o   1 2���� 0 	endstring 	endString? L   7 9DD m   7 8EE �FF  ��  @ k   < NGG HIH r   < AJKJ o   < =���� 0 	endstring 	endStringK n     LML 1   > @��
�� 
txdlM 1   = >��
�� 
ascrI NON r   B HPQP n   B FRSR 4   C F��T
�� 
citmT m   D E���� S o   B C���� 0 
keyremoved 
keyRemovedQ l     U����U o      ���� 0 	itemvalue 	itemValue��  ��  O V��V r   I NWXW o   I J���� 0 	olddelims 	oldDelimsX n     YZY 1   K M��
�� 
txdlZ 1   J K��
�� 
ascr��  ��   [\[ l  O O��������  ��  ��  \ ]^] L   O V__ I   O U��`���� 0 sfr_unescape SFR_Unescape` a��a o   P Q���� 0 	itemvalue 	itemValue��  ��  ^ bcb l  W W��������  ��  ��  c d��d l  W W��������  ��  ��  ��  � efe l     ��������  ��  ��  f ghg l     ��������  ��  ��  h iji i   7 :klk I      ��m���� 0 sfr_dictitem SFR_DictItemm non o      ���� 0 itemname itemNameo p��p o      ���� 0 	itemvalue 	itemValue��  ��  l k     qq rsr l     ��tu��  t   version 1.0   u �vv    v e r s i o n   1 . 0s wxw l     ��������  ��  ��  x y��y L     zz b     {|{ b     }~} b     
� b     ��� m     �� ���  < :� I    ������� 0 
sfr_escape 
SFR_Escape� ���� o    ���� 0 itemname itemName��  ��  � m    	�� ���  : =~ I   
 ������� 0 
sfr_escape 
SFR_Escape� ���� o    ���� 0 	itemvalue 	itemValue��  ��  | m    �� ���  : >��  j ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� i   ; >��� I      ������� 0 
sfr_escape 
SFR_Escape� ��� o      �~�~ 0 
somestring 
someString�  ��  � k     3�� ��� l     �}���}  �   version 1.0   � ���    v e r s i o n   1 . 0� ��� l     �|�{�z�|  �{  �z  � ��� r     ��� J     �� ��� m     �� ���  =� ��� m    �� ���  :� ��� m    �� ���  <� ��y� m    �� ���  >�y  � o      �x�x  0 escapecharlist escapeCharList� ��� l  	 	�w�v�u�w  �v  �u  � ��� X   	 .��t�� k    )�� ��� r    '��� I    %�s��r�s 0 replacesimple replaceSimple� ��q� J    !�� ��� o    �p�p 0 
somestring 
someString� ��� o    �o�o 0 onechar oneChar� ��n� b    ��� m    �� ���  /� o    �m�m 0 onechar oneChar�n  �q  �r  � o      �l�l 0 
somestring 
someString� ��k� l  ( (�j�i�h�j  �i  �h  �k  �t 0 onechar oneChar� o    �g�g  0 escapecharlist escapeCharList� ��� l  / /�f�e�d�f  �e  �d  � ��� L   / 1�� o   / 0�c�c 0 
somestring 
someString� ��b� l  2 2�a�`�_�a  �`  �_  �b  � ��� l     �^�]�\�^  �]  �\  � ��� l     �[�Z�Y�[  �Z  �Y  � ��� i   ? B��� I      �X��W�X 0 sfr_unescape SFR_Unescape� ��V� o      �U�U 0 
somestring 
someString�V  �W  � k     3�� ��� l     �T���T  �   version 1.0   � ���    v e r s i o n   1 . 0� ��� l     �S�R�Q�S  �R  �Q  � ��� r     ��� J     �� ��� m     �� ���  =� ��� m    �� ���  :� ��� m    �� ���  <� ��P� m    �� ���  >�P  � o      �O�O  0 escapecharlist escapeCharList� ��� l  	 	�N�M�L�N  �M  �L  � ��� X   	 .��K�� k    )�� ��� r    '   I    %�J�I�J 0 replacesimple replaceSimple �H J    !  o    �G�G 0 
somestring 
someString  b    	
	 m     �  /
 o    �F�F 0 onechar oneChar �E o    �D�D 0 onechar oneChar�E  �H  �I   o      �C�C 0 
somestring 
someString� �B l  ( (�A�@�?�A  �@  �?  �B  �K 0 onechar oneChar� o    �>�>  0 escapecharlist escapeCharList�  l  / /�=�<�;�=  �<  �;    L   / 1 o   / 0�:�: 0 
somestring 
someString �9 l  2 2�8�7�6�8  �7  �6  �9  �  l     �5�4�3�5  �4  �3    l     �2�1�0�2  �1  �0    i   C F I      �/�.�/ L0 $fmgui_managedatasources_ensureexists $fmGUI_ManageDataSources_EnsureExists �- o      �,�, 	0 prefs  �-  �.   k      !  l     �+"#�+  "   version 1.2   # �$$    v e r s i o n   1 . 2! %&% l     �*�)�(�*  �)  �(  & '(' r     )*) K     ++ �',-�'  0 datasourcename dataSourceName, m    �&
�& 
null- �%.�$�%  0 datasourcepath dataSourcePath. m    �#
�# 
null�$  * o      �"�" 0 defaultprefs defaultPrefs( /0/ r   	 121 b   	 343 o   	 
�!�! 	0 prefs  4 o   
 � �  0 defaultprefs defaultPrefs2 o      �� 	0 prefs  0 565 l   ����  �  �  6 787 r    9:9 n    ;<; o    ��  0 datasourcename dataSourceName< o    �� 	0 prefs  : o      ��  0 datasourcename dataSourceName8 =>= r    ?@? n    ABA o    ��  0 datasourcepath dataSourcePathB o    �� 	0 prefs  @ o      ��  0 datasourcepath dataSourcePath> CDC l   ����  �  �  D EFE l   �GH�  G e _ default is just a relative path to data source name in same location as database being edited:   H �II �   d e f a u l t   i s   j u s t   a   r e l a t i v e   p a t h   t o   d a t a   s o u r c e   n a m e   i n   s a m e   l o c a t i o n   a s   d a t a b a s e   b e i n g   e d i t e d :F JKJ Z   *LM��L =   NON o    ��  0 datasourcepath dataSourcePathO m    �
� 
nullM r   ! &PQP b   ! $RSR m   ! "TT �UU 
 f i l e :S o   " #��  0 datasourcename dataSourceNameQ o      ��  0 datasourcepath dataSourcePath�  �  K VWV l  + +��
�	�  �
  �	  W XYX l  + +����  �  �  Y Z[Z Q   +\]^\ k   . �__ `a` I   . 5�b�� <0 fmgui_managedatasources_open fmGUI_ManageDataSources_Openb c�c J   / 1��  �  �  a ded O   6 �fgf O   : �hih k   A �jj klk n  A Fmnm I   B F�� ��� (0 fmgui_appfrontmost fmGUI_AppFrontMost�   ��  n  f   A Bl opo l  G G��������  ��  ��  p qrq l  G G��st��  s 0 * Make sure a specified Data Source exists.   t �uu T   M a k e   s u r e   a   s p e c i f i e d   D a t a   S o u r c e   e x i s t s .r v��v Z   G �wx��yw H   G gzz l  G f{����{ I  G f��|��
�� .coredoexnull���     ****| l  G b}����} 6  G b~~ n   G T��� 4  Q T���
�� 
crow� m   R S���� � l  G Q������ n   G Q��� 4   N Q���
�� 
tabB� m   O P���� � n   G N��� 4   K N���
�� 
scra� m   L M���� � 4   G K���
�� 
cwin� m   I J���� ��  ��   =  U a��� n   V ]��� 1   Y ]��
�� 
pnam� 4   V Y���
�� 
sttx� m   W X���� � o   ^ `����  0 datasourcename dataSourceName��  ��  ��  ��  ��  x k   j ��� ��� l  j j������  �   need to create it:    � ��� (   n e e d   t o   c r e a t e   i t :  � ��� l  j j��������  ��  ��  � ��� n  j ���� I   k �������� B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow� ���� 6  k ���� n   k t��� 4  o t���
�� 
butT� m   r s���� � 4   k o���
�� 
cwin� m   m n���� � C   u ���� 1   v z��
�� 
pnam� m   { �� ���  N e w��  ��  �  f   j k� ��� I  � ������
�� .sysodelanull��� ��� nmbr� m   � ��� ?�      ��  � ��� l  � ���������  ��  ��  � ��� r   � ���� o   � �����  0 datasourcename dataSourceName� n      ��� 1   � ���
�� 
valL� n   � ���� 4   � ����
�� 
txtf� m   � ����� � 4   � ����
�� 
cwin� m   � ����� � ��� r   � ���� o   � �����  0 datasourcepath dataSourcePath� n      ��� 1   � ���
�� 
valL� n   � ���� 4   � ����
�� 
txta� m   � ����� � n   � ���� 4   � ����
�� 
scra� m   � ����� � 4   � ����
�� 
cwin� m   � ����� � ��� n  � ���� I   � �������� B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow� ���� 6  � ���� n   � ���� 4  � ����
�� 
butT� m   � ����� � 4   � ����
�� 
cwin� m   � ����� � C   � ���� 1   � ���
�� 
pnam� m   � ��� ���  O K��  ��  �  f   � �� ��� I  � ������
�� .sysodelanull��� ��� nmbr� m   � ��� ?�      ��  � ��� l  � ���������  ��  ��  � ���� L   � ��� b   � ���� m   � ��� ���  A d d e d :  � o   � �����  0 datasourcename dataSourceName��  ��  y l  � ����� L   � ��� b   � ���� m   � ��� ���  E x i s t e d :  � o   � �����  0 datasourcename dataSourceName�   already existed:   � ��� "   a l r e a d y   e x i s t e d :��  i 4   : >���
�� 
pcap� m   < =�� ��� , F i l e M a k e r   P r o   A d v a n c e dg m   6 7���                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  e ���� l  � ���������  ��  ��  ��  ] R      ����
�� .ascrerr ****      � ****� o      ���� 0 errmsg errMsg� �����
�� 
errn� o      ���� 0 errnum errNum��  ^ R   �����
�� .ascrerr ****      � ****� b   ���� b   � ���� b   � ���� m   � ��� ��� T C o u l d n ' t   e n s u r e   e x i s t e n c e   o f   d a t a   s o u r c e   '� o   � �����  0 datasourcename dataSourceName� m   � ��� ���  '   -  � o   � ���� 0 errmsg errMsg� �����
�� 
errn� o   � ����� 0 errnum errNum��  [ ���� l ��������  ��  ��  ��   	 		  l     ��������  ��  ��  	 			 l     ��������  ��  ��  	 			 i   G J			 I      ��	���� @0 fmgui_managedatasources_modify fmGUI_ManageDataSources_Modify	 		��		 o      ���� 	0 prefs  ��  ��  	 k    %	
	
 			 l     ��		��  	   version 1.2   	 �		    v e r s i o n   1 . 2	 			 l     ��������  ��  ��  	 			 r     			 K     		 ��		��  0 datasourcename dataSourceName	 m    ��
�� 
null	 ��	����  0 datasourcepath dataSourcePath	 m    ��
�� 
null��  	 o      ���� 0 defaultprefs defaultPrefs	 			 r   	 			 b   	 			 o   	 
���� 	0 prefs  	 o   
 ���� 0 defaultprefs defaultPrefs	 o      ���� 	0 prefs  	 	 	!	  l   ��������  ��  ��  	! 	"	#	" r    	$	%	$ n    	&	'	& o    ����  0 datasourcename dataSourceName	' o    ���� 	0 prefs  	% o      ����  0 datasourcename dataSourceName	# 	(	)	( r    	*	+	* n    	,	-	, o    ����  0 datasourcepath dataSourcePath	- o    ���� 	0 prefs  	+ o      ����  0 datasourcepath dataSourcePath	) 	.	/	. l   �������  ��  �  	/ 	0	1	0 l   �~	2	3�~  	2 f ` default is just a relative path to data source name in same location as database being edited:	   	3 �	4	4 �   d e f a u l t   i s   j u s t   a   r e l a t i v e   p a t h   t o   d a t a   s o u r c e   n a m e   i n   s a m e   l o c a t i o n   a s   d a t a b a s e   b e i n g   e d i t e d : 		1 	5	6	5 Z   *	7	8�}�|	7 =   	9	:	9 o    �{�{  0 datasourcepath dataSourcePath	: m    �z
�z 
null	8 r   ! &	;	<	; b   ! $	=	>	= m   ! "	?	? �	@	@ 
 f i l e :	> o   " #�y�y  0 datasourcename dataSourceName	< o      �x�x  0 datasourcepath dataSourcePath�}  �|  	6 	A	B	A l  + +�w�v�u�w  �v  �u  	B 	C	D	C l  + +�t�s�r�t  �s  �r  	D 	E	F	E Q   +#	G	H	I	G k   .		J	J 	K	L	K I   . 5�q	M�p�q <0 fmgui_managedatasources_open fmGUI_ManageDataSources_Open	M 	N�o	N J   / 1�n�n  �o  �p  	L 	O	P	O O   6	Q	R	Q O   :	S	T	S k   A	U	U 	V	W	V n  A F	X	Y	X I   B F�m�l�k�m (0 fmgui_appfrontmost fmGUI_AppFrontMost�l  �k  	Y  f   A B	W 	Z�j	Z Z   G	[	\�i	]	[ l  G f	^�h�g	^ I  G f�f	_�e
�f .coredoexnull���     ****	_ l  G b	`�d�c	` 6  G b	a	b	a n   G T	c	d	c 4  Q T�b	e
�b 
crow	e m   R S�a�a 	d l  G Q	f�`�_	f n   G Q	g	h	g 4   N Q�^	i
�^ 
tabB	i m   O P�]�] 	h n   G N	j	k	j 4   K N�\	l
�\ 
scra	l m   L M�[�[ 	k 4   G K�Z	m
�Z 
cwin	m m   I J�Y�Y �`  �_  	b =  U a	n	o	n n   V ]	p	q	p 1   Y ]�X
�X 
pnam	q 4   V Y�W	r
�W 
sttx	r m   W X�V�V 	o o   ^ `�U�U  0 datasourcename dataSourceName�d  �c  �e  �h  �g  	\ k   i �	s	s 	t	u	t l  i i�T	v	w�T  	v $  it DOES exist, so modify it:    	w �	x	x <   i t   D O E S   e x i s t ,   s o   m o d i f y   i t :  	u 	y	z	y l  i i�S�R�Q�S  �R  �Q  	z 	{	|	{ I  i ��P	}�O
�P .miscslctnull���     uiel	} l  i �	~�N�M	~ 6  i �		�	 n   i v	�	�	� 4  s v�L	�
�L 
crow	� m   t u�K�K 	� l  i s	��J�I	� n   i s	�	�	� 4   p s�H	�
�H 
tabB	� m   q r�G�G 	� n   i p	�	�	� 4   m p�F	�
�F 
scra	� m   n o�E�E 	� 4   i m�D	�
�D 
cwin	� m   k l�C�C �J  �I  	� =  w �	�	�	� n   x 	�	�	� 1   { �B
�B 
pnam	� 4   x {�A	�
�A 
sttx	� m   y z�@�@ 	� o   � ��?�?  0 datasourcename dataSourceName�N  �M  �O  	| 	�	�	� n  � �	�	�	� I   � ��>	��=�> B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow	� 	��<	� 6  � �	�	�	� n   � �	�	�	� 4  � ��;	�
�; 
butT	� m   � ��:�: 	� 4   � ��9	�
�9 
cwin	� m   � ��8�8 	� C   � �	�	�	� 1   � ��7
�7 
pnam	� m   � �	�	� �	�	�  E d i t�<  �=  	�  f   � �	� 	�	�	� I  � ��6	��5
�6 .sysodelanull��� ��� nmbr	� m   � �	�	� ?�      �5  	� 	�	�	� l  � ��4�3�2�4  �3  �2  	� 	�	�	� r   � �	�	�	� o   � ��1�1  0 datasourcename dataSourceName	� n      	�	�	� 1   � ��0
�0 
valL	� n   � �	�	�	� 4   � ��/	�
�/ 
txtf	� m   � ��.�. 	� 4   � ��-	�
�- 
cwin	� m   � ��,�, 	� 	�	�	� r   � �	�	�	� o   � ��+�+  0 datasourcepath dataSourcePath	� n      	�	�	� 1   � ��*
�* 
valL	� n   � �	�	�	� 4   � ��)	�
�) 
txta	� m   � ��(�( 	� n   � �	�	�	� 4   � ��'	�
�' 
scra	� m   � ��&�& 	� 4   � ��%	�
�% 
cwin	� m   � ��$�$ 	� 	�	�	� n  � �	�	�	� I   � ��#	��"�# B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow	� 	��!	� 6  � �	�	�	� n   � �	�	�	� 4  � �� 	�
�  
butT	� m   � ��� 	� 4   � ��	�
� 
cwin	� m   � ��� 	� C   � �	�	�	� 1   � ��
� 
pnam	� m   � �	�	� �	�	�  O K�!  �"  	�  f   � �	� 	�	�	� I  � ��	��
� .sysodelanull��� ��� nmbr	� m   � �	�	� ?�      �  	� 	�	�	� l  � �����  �  �  	� 	��	� L   � �	�	� b   � �	�	�	� m   � �	�	� �	�	�  E x i s t e d :  	� o   � ���  0 datasourcename dataSourceName�  �i  	] l  �	�	�	�	� k   �	�	� 	�	�	� L   �	�	� b   �	�	�	� m   � 	�	� �	�	�  D o   N O T   E x i s t :  	� o   ��  0 datasourcename dataSourceName	� 	��	� l ����  �  �  �  	�   DOES NOT  exist:   	� �	�	� "   D O E S   N O T     e x i s t :�j  	T 4   : >�	�
� 
pcap	� m   < =	�	� �	�	� , F i l e M a k e r   P r o   A d v a n c e d	R m   6 7	�	��                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  	P 	��	� l ����  �  �  �  	H R      �
	�	�
�
 .ascrerr ****      � ****	� o      �	�	 0 errmsg errMsg	� �	��
� 
errn	� o      �� 0 errnum errNum�  	I R  #�	�	�
� .ascrerr ****      � ****	� b  "	�	�	� b   	�	�	� b  	�	�	� m  	�	� �	�	� T C o u l d n ' t   e n s u r e   e x i s t e n c e   o f   d a t a   s o u r c e   '	� o  ��  0 datasourcename dataSourceName	� m  	�	� �	�	�  '   -  	� o   !�� 0 errmsg errMsg	� �	��
� 
errn	� o  � �  0 errnum errNum�  	F 	���	� l $$��������  ��  ��  ��  	 	�	�	� l     ��������  ��  ��  	� 	�
 	� l     ��������  ��  ��  
  


 i   K N


 I      ��
���� <0 fmgui_managedatasources_open fmGUI_ManageDataSources_Open
 
��
 o      ���� 	0 prefs  ��  ��  
 k     _

 

	
 l     ��


��  

   version 1.1   
 �

    v e r s i o n   1 . 1
	 


 l     ��������  ��  ��  
 


 Q     ]



 O    I


 O    H


 k    G

 


 n   


 I    �������� (0 fmgui_appfrontmost fmGUI_AppFrontMost��  ��  
  f    
 


 l   ��������  ��  ��  
 

 
 l   ��
!
"��  
! !  try to open Manage window:   
" �
#
# 6   t r y   t o   o p e n   M a n a g e   w i n d o w :
  
$��
$ Z    G
%
&��
'
% C    
(
)
( n    
*
+
* 1    ��
�� 
pnam
+ 4    ��
,
�� 
cwin
, m    ���� 
) m    
-
- �
.
. 8 M a n a g e   E x t e r n a l   D a t a   S o u r c e s
& L    !
/
/ m     ��
�� boovtrue��  
' k   $ G
0
0 
1
2
1 I  $ D��
3��
�� .prcsclicnull��� ��� uiel
3 l  $ @
4����
4 6  $ @
5
6
5 n   $ 7
7
8
7 4  4 7��
9
�� 
menI
9 m   5 6���� 
8 n   $ 4
:
;
: 4   1 4��
<
�� 
menE
< m   2 3���� 
; n   $ 1
=
>
= 4   . 1��
?
�� 
menI
? m   / 0
@
@ �
A
A  M a n a g e
> n   $ .
B
C
B 4   + .��
D
�� 
menE
D m   , -���� 
C n   $ +
E
F
E 4   ( +��
G
�� 
mbri
G m   ) *
H
H �
I
I  F i l e
F 4   $ (��
J
�� 
mbar
J m   & '���� 
6 C   8 ?
K
L
K 1   9 ;��
�� 
pnam
L m   < >
M
M �
N
N ( E x t e r n a l   D a t a   S o u r c e��  ��  ��  
2 
O��
O L   E G
P
P m   E F��
�� boovtrue��  ��  
 4    ��
Q
�� 
pcap
Q m   	 

R
R �
S
S , F i l e M a k e r   P r o   A d v a n c e d
 m    
T
T�                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  
 R      ��
U
V
�� .ascrerr ****      � ****
U o      ���� 0 errmsg errMsg
V ��
W��
�� 
errn
W o      ���� 0 errnum errNum��  
 R   Q ]��
X
Y
�� .ascrerr ****      � ****
X b   W \
Z
[
Z m   W Z
\
\ �
]
] H C o u l d n ' t   o p e n   M a n a g e   D a t a   S o u r c e s   -  
[ o   Z [���� 0 errmsg errMsg
Y ��
^��
�� 
errn
^ o   U V���� 0 errnum errNum��  
 
_��
_ l  ^ ^��������  ��  ��  ��  
 
`
a
` l     ��������  ��  ��  
a 
b
c
b l     ��������  ��  ��  
c 
d
e
d i   O R
f
g
f I      ��
h���� <0 fmgui_managedatasources_save fmGUI_ManageDataSources_Save
h 
i��
i o      ���� 	0 prefs  ��  ��  
g k     �
j
j 
k
l
k l     ��
m
n��  
m   version 1.4   
n �
o
o    v e r s i o n   1 . 4
l 
p
q
p l     ��������  ��  ��  
q 
r
s
r r     
t
u
t K     
v
v ��
w���� 40 notinmanagewindowiserror notInManageWindowIsError
w m    ��
�� boovtrue��  
u o      ���� 0 defaultprefs defaultPrefs
s 
x
y
x l   ��������  ��  ��  
y 
z
{
z r    
|
}
| b    

~

~ o    ���� 	0 prefs  
 o    	���� 0 defaultprefs defaultPrefs
} o      ���� 	0 prefs  
{ 
�
�
� l   ��������  ��  ��  
� 
�
�
� l   ��������  ��  ��  
� 
�
�
� r    
�
�
� m    
�
� �
�
� 8 M a n a g e   E x t e r n a l   D a t a   S o u r c e s
� o      ���� 00 managewindownameprefix manageWindowNamePrefix
� 
�
�
� l   
�
�
�
� r    
�
�
� m    ���� 
� o      ���� .0 waitcycledelayseconds waitCycleDelaySeconds
�   seconds   
� �
�
�    s e c o n d s
� 
�
�
� l   
�
�
�
� r    
�
�
� ]    
�
�
� m    ���� 
� 1    ��
�� 
min 
� o      ���� ,0 waitsavetotalseconds waitSaveTotalSeconds
�  seconds   
� �
�
�  s e c o n d s
� 
�
�
� l   ��������  ��  ��  
� 
�
�
� r    &
�
�
� I   $��
�
�
�� .sysorondlong        doub
� l   
�����
� ^    
�
�
� o    ���� ,0 waitsavetotalseconds waitSaveTotalSeconds
� o    ���� .0 waitcycledelayseconds waitCycleDelaySeconds��  ��  
� ��
���
�� 
dire
� m     ��
�� olierndD��  
� o      ���� 0 waitcyclemax waitCycleMax
� 
�
�
� l  ' '��������  ��  ��  
� 
�
�
� Q   ' �
�
�
�
� O   * �
�
�
� k   . �
�
� 
�
�
� O   . �
�
�
� k   5 �
�
� 
�
�
� n  5 :
�
�
� I   6 :�������� (0 fmgui_appfrontmost fmGUI_AppFrontMost��  ��  
�  f   5 6
� 
�
�
� l  ; ;��������  ��  ��  
� 
�
�
� Z   ; �
�
���
�
� C   ; C
�
�
� n   ; A
�
�
� 1   ? A��
�� 
pnam
� 4   ; ?��
�
�� 
cwin
� m   = >���� 
� o   A B���� 00 managewindownameprefix manageWindowNamePrefix
� Q   F y
�
�
�
� k   I e
�
� 
�
�
� r   I Q
�
�
� n   I O
�
�
� 1   M O��
�� 
pnam
� 4   I M��
�
�� 
cwin
� m   K L���� 
� o      �� $0 managewindowname manageWindowName
� 
�
�
� I  R ]�~
��}
�~ .prcsclicnull��� ��� uiel
� l  R Y
��|�{
� n   R Y
�
�
� 4   V Y�z
�
�z 
butT
� m   W X
�
� �
�
�  O K
� 4   R V�y
�
�y 
cwin
� m   T U�x�x �|  �{  �}  
� 
�
�
� l  ^ c
�
�
�
� I  ^ c�w
��v
�w .sysodelanull��� ��� nmbr
� m   ^ _�u�u �v  
�   let click register.   
� �
�
� (   l e t   c l i c k   r e g i s t e r .
� 
�
�
� l  d d�t
�
��t  
� 6 0 will continue below to wait for window to close   
� �
�
� `   w i l l   c o n t i n u e   b e l o w   t o   w a i t   f o r   w i n d o w   t o   c l o s e
� 
��s
� l  d d�r�q�p�r  �q  �p  �s  
� R      �o
�
�
�o .ascrerr ****      � ****
� o      �n�n 0 errmsg errMsg
� �m
��l
�m 
errn
� o      �k�k 0 errnum errNum�l  
� R   m y�j
�
�
�j .ascrerr ****      � ****
� b   s x
�
�
� m   s v
�
� �
�
� H C o u l d n ' t   s a v e   M a n a g e   D a t a   S o u r c e s   -  
� o   v w�i�i 0 errmsg errMsg
� �h
��g
�h 
errn
� o   q r�f�f 0 errnum errNum�g  ��  
� Z   | �
�
��e
�
� n   | �
�
�
� o   } �d�d 40 notinmanagewindowiserror notInManageWindowIsError
� o   | }�c�c 	0 prefs  
� R   � ��b
�
�
�b .ascrerr ****      � ****
� m   � �
�
� �
�
� v M a n a g e   D a t a   S o u r c e   w i n d o w   w a s n ' t   o p e n ,   s o   n o t h i n g   t o   c l o s e .
� �a
��`
�a 
errn
� m   � ��_�_ �`  �e  
� k   � �
�
� 
�
�
� l  � ��^ �^    1 + Not in Manage Data Source, but that is OK.    � V   N o t   i n   M a n a g e   D a t a   S o u r c e ,   b u t   t h a t   i s   O K .
� �] L   � � m   � ��\
�\ boovtrue�]  
� �[ l  � ��Z�Y�X�Z  �Y  �X  �[  
� 4   . 2�W
�W 
pcap m   0 1 � , F i l e M a k e r   P r o   A d v a n c e d
� 	
	 l  � ��V�U�T�V  �U  �T  
  l  � ��S�R�Q�S  �R  �Q    n  � � I   � ��P�O�P "0 windowwaituntil windowWaitUntil �N K   � � �M�M 0 
windowname 
windowName o   � ��L�L $0 managewindowname manageWindowName �K�K  0 windownametest windowNameTest m   � � �   d o e s   n o t   c o n t a i n �J�J 0 whichwindow whichWindow m   � � �  a n y �I�I .0 waitcycledelayseconds waitCycleDelaySeconds o   � ��H�H .0 waitcycledelayseconds waitCycleDelaySeconds �G �F�G 0 waitcyclemax waitCycleMax  o   � ��E�E 0 waitcyclemax waitCycleMax�F  �N  �O    f   � � !"! l  � ��D�C�B�D  �C  �B  " #$# l  � ��A�@�?�A  �@  �?  $ %&% l  � �'()' I  � ��>*�=
�> .sysodelanull��� ��� nmbr* m   � ��<�< �=  ( ( " let normal window come to front.    ) �++ D   l e t   n o r m a l   w i n d o w   c o m e   t o   f r o n t .  & ,-, l  � ��;�:�9�;  �:  �9  - ./. L   � �00 m   � ��8
�8 boovtrue/ 121 l  � ��7�6�5�7  �6  �5  2 3�43 l  � ��3�2�1�3  �2  �1  �4  
� m   * +44�                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  
� R      �056
�0 .ascrerr ****      � ****5 o      �/�/ 0 errmsg errMsg6 �.7�-
�. 
errn7 o      �,�, 0 errnum errNum�-  
� R   � ��+89
�+ .ascrerr ****      � ****8 b   � �:;: m   � �<< �== H C o u l d n ' t   s a v e   M a n a g e   D a t a   S o u r c e s   -  ; o   � ��*�* 0 errmsg errMsg9 �)>�(
�) 
errn> o   � ��'�' 0 errnum errNum�(  
� ?�&? l  � ��%�$�#�%  �$  �#  �&  
e @A@ l     �"�!� �"  �!  �   A BCB l     ����  �  �  C DED i   S VFGF I      �H�� 60 fmgui_managedb_field_edit fmGUI_ManageDb_Field_EditH I�I o      �� 	0 prefs  �  �  G k    �JJ KLK l     �MN�  M   version 1.2   N �OO    v e r s i o n   1 . 2L PQP l     ����  �  �  Q RSR l     �TU�  T � � any BOOLEAN parameters can be either actually boolean, or 1/0.  This function will change that to match UI scripting interface needs.   U �VV   a n y   B O O L E A N   p a r a m e t e r s   c a n   b e   e i t h e r   a c t u a l l y   b o o l e a n ,   o r   1 / 0 .     T h i s   f u n c t i o n   w i l l   c h a n g e   t h a t   t o   m a t c h   U I   s c r i p t i n g   i n t e r f a c e   n e e d s .S WXW l     ����  �  �  X YZY r     Z[\[ K     X]] �^_� 0 editmode editMode^ m    `` �aa  C O N F O R M_ �bc� 0 	tablename 	tableNameb m    �
� 
nullc �de� 0 	fieldname 	fieldNamed m    �
� 
nulle �fg� 0 altpatterns altPatternsf m    �

�
 
nullg �	hi�	 0 fieldcomment fieldCommenth m   	 
�
� 
nulli �jk� 0 datatype dataTypej m    �
� 
nullk �lm� 0 	fieldtype 	fieldTypel m    �
� 
nullm �no� 0 calccode calcCoden m    �
� 
nullo �pq� &0 autoentercalccode autoEnterCalcCodep m    � 
�  
nullq ��rs�� 20 autoentercalccontexttoc autoEnterCalcContextTOCr m    ��
�� 
nulls ��tu��  0 alwaysevaluate alwaysEvaluatet m    ��
�� 
nullu ��vw��  0 calccontexttoc calcContextTOCv m    ��
�� 
nullw ��xy�� 0 storageglobal storageGlobalx m    ��
�� 
nully ��z{�� 20 storecalculationresults storeCalculationResultsz m    ��
�� 
null{ ��|}�� (0 storageindexchoice storageIndexChoice| m     ��
�� 
null} ��~�� 0 	autoindex 	autoIndex~ m   # $��
�� 
null ������ 0 maxrepetition maxRepetition� m   ' (��
�� 
null� ������ 0 indexlanguage indexLanguage� m   + ,��
�� 
null� ������ 0 allowediting allowEditing� m   / 0��
�� 
null� ������ 00 overwriteexistingvalue overwriteExistingValue� m   3 4��
�� 
null� ������ *0 autoenterisconstant autoEnterIsConstant� m   7 8��
�� 
null� ������ 00 autoenteriscalculation autoEnterIsCalculation� m   ; <��
�� 
null� ������ &0 autoenterislookup autoEnterIsLookup� m   ? @��
�� 
null� ������ .0 autoenterspecialvalue autoEnterSpecialValue� m   C D��
�� 
null� ������ 0 
autoserial 
autoSerial� m   G H��
�� 
null� ������ .0 autoenterconstantdata autoEnterConstantData� m   K L��
�� 
null� ������ (0 validationcalccode validationCalcCode� m   O P��
�� 
null� ������� 40 validationcalccontexttoc validationCalcContextTOC� m   S T��
�� 
null��  \ o      ���� 0 defaultprefs defaultPrefsZ ��� l  [ [������  � � � editMode: "CONFORM" means make field exactly match the entire specified data structure, while "TWEAK" means only to change which things were specified, leaving the other settings alone.    � ���v   e d i t M o d e :   " C O N F O R M "   m e a n s   m a k e   f i e l d   e x a c t l y   m a t c h   t h e   e n t i r e   s p e c i f i e d   d a t a   s t r u c t u r e ,   w h i l e   " T W E A K "   m e a n s   o n l y   t o   c h a n g e   w h i c h   t h i n g s   w e r e   s p e c i f i e d ,   l e a v i n g   t h e   o t h e r   s e t t i n g s   a l o n e .  � ��� l  [ [������  � � � autoEnterSpecialValue: keywords used in FM-XML: NONE, CreationAccountName, CreationUserName,CreationTimestamp, ModificationAccountName, et al.   � ���   a u t o E n t e r S p e c i a l V a l u e :   k e y w o r d s   u s e d   i n   F M - X M L :   N O N E ,   C r e a t i o n A c c o u n t N a m e ,   C r e a t i o n U s e r N a m e , C r e a t i o n T i m e s t a m p ,   M o d i f i c a t i o n A c c o u n t N a m e ,   e t   a l .� ��� l  [ [������  � a [ autoSerial:false or autoSerial:{autoNextValue:null, autoIncrement:null, autoGenerate:null}   � ��� �   a u t o S e r i a l : f a l s e   o r   a u t o S e r i a l : { a u t o N e x t V a l u e : n u l l ,   a u t o I n c r e m e n t : n u l l ,   a u t o G e n e r a t e : n u l l }� ��� l  [ [��������  ��  ��  � ��� l  [ [������  � a [ autoEnterIsLookup - LOOKUP FUNCTIONS NOT YET SUPPORTED - WOULD NEED TO HANDLE SUB-ELEMENT.   � ��� �   a u t o E n t e r I s L o o k u p   -   L O O K U P   F U N C T I O N S   N O T   Y E T   S U P P O R T E D   -   W O U L D   N E E D   T O   H A N D L E   S U B - E L E M E N T .� ��� l  [ [��������  ��  ��  � ��� l  [ [��������  ��  ��  � ��� r   [ `��� b   [ ^��� o   [ \���� 	0 prefs  � o   \ ]���� 0 defaultprefs defaultPrefs� o      ���� 	0 prefs  � ��� l  a a��������  ��  ��  � ��� r   a f��� n   a d��� o   b d���� 0 editmode editMode� o   a b���� 	0 prefs  � o      ���� 0 editmode editMode� ��� l  g g��������  ��  ��  � ��� Z  g z������� >  g l��� n   g j��� o   h j���� &0 autoentercalccode autoEnterCalcCode� o   g h���� 	0 prefs  � m   j k��
�� 
null� r   o v��� m   o p��
�� boovtrue� n      ��� o   q u���� 00 autoenteriscalculation autoEnterIsCalculation� o   p q���� 	0 prefs  ��  ��  � ��� l  { {��������  ��  ��  � ��� l   { {������  � � �   DEBUGGING   DEBUGGING   DEBUGGING   DEBUGGING   DEBUGGING   DEBUGGING   
DEBUGGING   DEBUGGING   DEBUGGING   DEBUGGING   DEBUGGING   DEBUGGING   DEBUGGING   	
   � ���D       D E B U G G I N G       D E B U G G I N G       D E B U G G I N G       D E B U G G I N G       D E B U G G I N G       D E B U G G I N G       
 D E B U G G I N G       D E B U G G I N G       D E B U G G I N G       D E B U G G I N G       D E B U G G I N G       D E B U G G I N G       D E B U G G I N G       	 
� ��� l  { {��������  ��  ��  � ��� Q   {����� k   ~��� ��� l  ~ ~��������  ��  ��  � ��� l  ~ ~��������  ��  ��  � ��� l  ~ ~��������  ��  ��  � ��� l  ~ ~��������  ��  ��  � ��� l  ~ ~������  �   try to select it first:   � ��� 0   t r y   t o   s e l e c t   i t   f i r s t :� ��� r   ~ ���� I   ~ �������� :0 fmgui_managedb_field_select fmGUI_ManageDb_Field_Select� ���� o    ����� 	0 prefs  ��  ��  � o      ���� $0 fieldnowselected fieldNowSelected� ��� l  � ���������  ��  ��  � ��� Z  � �������� H   � ��� o   � ����� $0 fieldnowselected fieldNowSelected� L   � ��� m   � ���
�� boovfals��  ��  � ��� l  � ���������  ��  ��  � ��� O   ����� O   ����� k   ����    n  � � I   � ��������� (0 fmgui_appfrontmost fmGUI_AppFrontMost��  ��    f   � �  l  � ���������  ��  ��    l  � ���������  ��  ��   	 r   � �

 6  � � n   � � 4  � ���
�� 
butT m   � �����  n   � � 4   � ���
�� 
tabg m   � �����  4   � ���
�� 
cwin m   � �����  =  � � 1   � ���
�� 
titl m   � � �  C h a n g e o      ���� 0 changebutton changeButton	  l  � ���������  ��  ��    l  � ���   %  COMMENT is for any field type:    � >   C O M M E N T   i s   f o r   a n y   f i e l d   t y p e :  !  Z   �"#�~�}" >  � �$%$ n   � �&'& o   � ��|�| 0 fieldcomment fieldComment' o   � ��{�{ 	0 prefs  % m   � ��z
�z 
null# k   �(( )*) Z   � �+,�y�x+ n  � �-.- I   � ��w/�v�w (0 fmgui_textfieldset fmGUI_TextFieldSet/ 010 n   � �232 4   � ��u4
�u 
txtf4 m   � �55 �66  C o m m e n t :3 n   � �787 4   � ��t9
�t 
tabg9 m   � ��s�s 8 4   � ��r:
�r 
cwin: m   � ��q�q 1 ;�p; n   � �<=< o   � ��o�o 0 fieldcomment fieldComment= o   � ��n�n 	0 prefs  �p  �v  .  f   � �, I  � ��m>�l
�m .prcsclicnull��� ��� uiel> o   � ��k�k 0 changebutton changeButton�l  �y  �x  * ?@? l  � ��j�i�h�j  �i  �h  @ A�gA I  ��fB�e
�f .sysodelanull��� ��� nmbrB m   � �CC ?�      �e  �g  �~  �}  ! DED l �d�c�b�d  �c  �b  E FGF Z  gHI�a�`H F  JKJ = LML o  �_�_ 0 editmode editModeM m  NN �OO 
 T W E A KK = PQP n  RSR o  �^�^ 0 	fieldtype 	fieldTypeS o  �]�] 	0 prefs  Q m  �\
�\ 
nullI k  cTT UVU l �[WX�[  W 6 0 just find out what it already is and use that:    X �YY `   j u s t   f i n d   o u t   w h a t   i t   a l r e a d y   i s   a n d   u s e   t h a t :  V Z[Z r  /\]\ n  -^_^ 4  &-�Z`
�Z 
popB` m  ),aa �bb 
 T y p e :_ n  &cdc 4  !&�Ye
�Y 
tabge m  $%�X�X d 4  !�Wf
�W 
cwinf m   �V�V ] o      �U�U  0 fieldtypepopup fieldTypePopup[ g�Tg Z  0chijkh = 09lml n  05non 1  15�S
�S 
valLo o  01�R�R  0 fieldtypepopup fieldTypePopupm m  58pp �qq  C a l c u l a t i o ni r  <Crsr m  <?tt �uu  C a l c u l a t e ds n      vwv o  @B�Q�Q 0 	fieldtype 	fieldTypew o  ?@�P�P 	0 prefs  j xyx = FOz{z n  FK|}| 1  GK�O
�O 
valL} o  FG�N�N  0 fieldtypepopup fieldTypePopup{ m  KN~~ �  S u m m a r yy ��M� r  RY��� m  RU�� ���  S u m m a r y� n      ��� o  VX�L�L 0 	fieldtype 	fieldType� o  UV�K�K 	0 prefs  �M  k r  \c��� m  \_�� ���  N o r m a l� n      ��� o  `b�J�J 0 	fieldtype 	fieldType� o  _`�I�I 	0 prefs  �T  �a  �`  G ��� l hh�H�G�F�H  �G  �F  � ��� Z  h�����E� = hm��� n  hk��� o  ik�D�D 0 	fieldtype 	fieldType� o  hi�C�C 	0 prefs  � m  kl�B
�B 
null� k  p~�� ��� R  p|�A��
�A .ascrerr ****      � ****� m  x{�� ��� 8 P a r a m e t e r   m i s s i n g :   f i e l d T y p e� �@��?
�@ 
errn� m  tw�>�> �?  � ��=� l }}�<�;�:�<  �;  �:  �=  � ��� = ����� n  ����� o  ���9�9 0 	fieldtype 	fieldType� o  ���8�8 	0 prefs  � m  ���� ���  C a l c u l a t e d� ��� k  ���� ��� l ���7�6�5�7  �6  �5  � ��� l ���4���4  �  	 IF CALC:   � ���    I F   C A L C :� ��� l ���3���3  �   Field Type = Calculated   � ��� 0   F i e l d   T y p e   =   C a l c u l a t e d� ��� l ���2���2  �   click "contains Options"   � ��� 2   c l i c k   " c o n t a i n s   O p t i o n s "� ��� l ���1���1  � / ) Data Type: popup "Calculation result is"   � ��� R   D a t a   T y p e :   p o p u p   " C a l c u l a t i o n   r e s u l t   i s "� ��� l ���0���0  �   Calc Context Table   � ��� &   C a l c   C o n t e x t   T a b l e� ��� l ���/���/  �   Calculation itself   � ��� &   C a l c u l a t i o n   i t s e l f� ��� l ���.���.  �   Do Not Evaluate�   � ��� "   D o   N o t   E v a l u a t e &� ��� l ���-���-  �  	 Storage:   � ���    S t o r a g e :� ��� l ���,���,  � - '	Global, Do Not Store, None/Minimal/All   � ��� N 	 G l o b a l ,   D o   N o t   S t o r e ,   N o n e / M i n i m a l / A l l� ��� l ���+�*�)�+  �*  �)  � ��� l ���(���(  �   FIELD TYPE:   � ���    F I E L D   T Y P E :� ��� r  ����� n  ����� 4  ���'�
�' 
popB� m  ���� ��� 
 T y p e :� n  ����� 4  ���&�
�& 
tabg� m  ���%�% � 4  ���$�
�$ 
cwin� m  ���#�# � o      �"�"  0 fieldtypepopup fieldTypePopup� ��� Z  �A���!�� > ����� n  ����� 1  ��� 
�  
valL� o  ����  0 fieldtypepopup fieldTypePopup� m  ���� ���  C a l c u l a t i o n� k  �
�� ��� n ����� I  ������  0 fmgui_popupset fmGUI_PopupSet�    o  ����  0 fieldtypepopup fieldTypePopup � m  �� �  C a l c u l a t i o n�  �  �  f  ���  l ������  �  �    l ���	
�  	 * $ click CHANGE to save the data type.   
 � H   c l i c k   C H A N G E   t o   s a v e   t h e   d a t a   t y p e .  n �� I  ����� B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow � n  �� 4  ���
� 
butT m  �� �  C h a n g e n  �� 4  ���
� 
tabg m  ����  4  ���
� 
cwin m  ���� �  �    f  ��  l ������  �  �    I ����

� .sysodelanull��� ��� nmbr m  ��   ?�      �
   !"! l ���	���	  �  �  " #$# l ���%&�  % m g if existing field was NOT ALREADY a calc, will get a warning message. Need to handle that possibility.   & �'' �   i f   e x i s t i n g   f i e l d   w a s   N O T   A L R E A D Y   a   c a l c ,   w i l l   g e t   a   w a r n i n g   m e s s a g e .   N e e d   t o   h a n d l e   t h a t   p o s s i b i l i t y .$ ()( Z  �*+��* H  ��,, C  ��-.- n  ��/0/ 1  ���
� 
pnam0 4  ���1
� 
cwin1 m  ���� . m  ��22 �33 & M a n a g e   D a t a b a s e   F o r+ k  �44 565 l ��� 78�   7 ' ! click OK to confirm the change:    8 �99 B   c l i c k   O K   t o   c o n f i r m   t h e   c h a n g e :  6 :;: n ��<=< I  ����>���� B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow> ?��? n  ��@A@ 4  ����B
�� 
butTB m  ��CC �DD  O KA 4  ����E
�� 
cwinE m  ������ ��  ��  =  f  ��; FGF l ����������  ��  ��  G HIH I ���J��
�� .sysodelanull��� ��� nmbrJ m  ��KK ?�      ��  I L��L l ��������  ��  ��  ��  �  �  ) M��M l 		��������  ��  ��  ��  �!  � l ANOPN k  AQQ RSR l ��TU��  T   click Options:    U �VV     c l i c k   O p t i o n s :  S WXW n 1YZY I  1��[���� B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow[ \��\ 6 -]^] n  _`_ 4 ��a
�� 
butTa m  ���� ` n  bcb 4  ��d
�� 
tabgd m  ���� c 4  ��e
�� 
cwine m  ���� ^ C  !,fgf 1  "&��
�� 
pnamg m  '+hh �ii  O p t i o n s��  ��  Z  f  X jkj l 22��������  ��  ��  k lml n 2?non I  3?��p���� 20 windowwaituntil_frontis windowWaitUntil_FrontISp q��q K  3;rr ��s���� 0 
windowname 
windowNames m  69tt �uu & S p e c i f y   C a l c u l a t i o n��  ��  ��  o  f  23m v��v l @@��������  ��  ��  ��  O B < ALREADY was a Calculation field, so need to click OPTIONS:    P �ww x   A L R E A D Y   w a s   a   C a l c u l a t i o n   f i e l d ,   s o   n e e d   t o   c l i c k   O P T I O N S :  � xyx l BB��������  ��  ��  y z{z l BB��������  ��  ��  { |}| l BB��������  ��  ��  } ~~ Z  Bt������� G  BS��� = BG��� o  BC���� 0 editmode editMode� m  CF�� ���  C O N F O R M� > JO��� n  JM��� o  KM���� 0 calccode calcCode� o  JK���� 	0 prefs  � m  MN��
�� 
null� k  Vp�� ��� l VV������  �   CALCULATION CODE:   � ��� $   C A L C U L A T I O N   C O D E :� ���� n Vp��� I  Wp������� (0 fmgui_textfieldset fmGUI_TextFieldSet� ��� n  Wi��� 4  di���
�� 
txta� m  gh���� � n  Wd��� 4  ]d���
�� 
scra� m  `c���� � 4  W]���
�� 
cwin� m  [\���� � ���� n  il��� o  jl���� 0 calccode calcCode� o  ij���� 	0 prefs  ��  ��  �  f  VW��  ��  ��   ��� l uu��������  ��  ��  � ��� l uu������  � ' ! Calc CONTEXT Table (occurrence):   � ��� B   C a l c   C O N T E X T   T a b l e   ( o c c u r r e n c e ) :� ��� Z  u�������� > uz��� n  ux��� o  vx����  0 calccontexttoc calcContextTOC� o  uv���� 	0 prefs  � m  xy��
�� 
null� n }���� I  ~��������  0 fmgui_popupset fmGUI_PopupSet� ��� 6 ~���� n  ~���� 4 �����
�� 
popB� m  ������ � 4  ~����
�� 
cwin� m  ������ � E  ����� 1  ����
�� 
pnam� m  ���� ���  c o n t e x t� ���� n  ����� o  ������  0 calccontexttoc calcContextTOC� o  ������ 	0 prefs  ��  ��  �  f  }~��  ��  � ��� l ����������  ��  ��  � ��� l ��������  �   Calc Result TYPE:   � ��� $   C a l c   R e s u l t   T Y P E :� ��� Z  ��������� > ����� n  ����� o  ������ 0 datatype dataType� o  ������ 	0 prefs  � m  ����
�� 
null� n ����� I  ���������  0 fmgui_popupset fmGUI_PopupSet� ��� 6 ����� n  ����� 4 �����
�� 
popB� m  ������ � 4  �����
�� 
cwin� m  ������ � E  ����� 1  ����
�� 
pnam� m  ���� ��� * C a l c u l a t i o n   r e s u l t   i s� ���� n  ����� o  ������ 0 datatype dataType� o  ������ 	0 prefs  ��  ��  �  f  ����  ��  � ��� l ����������  ��  ��  � ��� l ��������  � 9 3 Do Not Evaluate if all referenced field are empty:   � ��� f   D o   N o t   E v a l u a t e   i f   a l l   r e f e r e n c e d   f i e l d   a r e   e m p t y :� ��� Z  �������� > ����� n  ����� o  ������  0 alwaysevaluate alwaysEvaluate� o  ������ 	0 prefs  � m  ����
�� 
null� k  ��� ��� r  ����� 6 ����� n  ����� 4 �����
�� 
chbx� m  ������ � 4  �����
�� 
cwin� m  ������ � E  ����� 1  ����
�� 
pnam� m  ��   � J n o t   e v a l u a t e   i f   a l l   r e f e r e n c e d   f i e l d s� o      ���� *0 notevaluatecheckbox notEvaluateCheckbox� �� Z  ��� n  �� o  ������  0 alwaysevaluate alwaysEvaluate o  ������ 	0 prefs   n �	 I   ��
��� &0 fmgui_checkboxset fmGUI_CheckboxSet
  o   �~�~ *0 notevaluatecheckbox notEvaluateCheckbox �} m  �|�|  �}  �  	  f  � ��   n 	 I  
�{�z�{ &0 fmgui_checkboxset fmGUI_CheckboxSet  o  
�y�y *0 notevaluatecheckbox notEvaluateCheckbox �x m  �w�w �x  �z    f  	
��  ��  ��  �  l �v�u�t�v  �u  �t    l �s�s     Repetitions:     �    R e p e t i t i o n s :    Z  S�r�q G  (  = !"! o  �p�p 0 editmode editMode" m  ## �$$  C O N F O R M  > $%&% n  "'(' o  "�o�o 0 maxrepetition maxRepetition( o  �n�n 	0 prefs  & m  "#�m
�m 
null n +O)*) I  ,O�l+�k�l (0 fmgui_textfieldset fmGUI_TextFieldSet+ ,-, 6 ,F./. n  ,7010 4 27�j2
�j 
txtf2 m  56�i�i 1 4  ,2�h3
�h 
cwin3 m  01�g�g / E  :E454 1  ;?�f
�f 
pnam5 m  @D66 �77  r e p e t i t i o n s- 8�e8 n  FK9:9 o  GK�d�d 0 maxrepetition maxRepetition: o  FG�c�c 	0 prefs  �e  �k  *  f  +,�r  �q   ;<; l TT�b�a�`�b  �a  �`  < =>= l TT�_�^�]�_  �^  �]  > ?@? l TT�\�[�Z�\  �[  �Z  @ ABA Z  T�CD�Y�XC G  T�EFE G  TGHG G  TqIJI G  TeKLK = TYMNM o  TU�W�W 0 editmode editModeN l 	UXO�V�UO m  UXPP �QQ  C O N F O R M�V  �U  L > \aRSR n  \_TUT o  ]_�T�T 0 storageglobal storageGlobalU o  \]�S�S 	0 prefs  S l 
_`V�R�QV m  _`�P
�P 
null�R  �Q  J > hmWXW n  hkYZY o  ik�O�O 20 storecalculationresults storeCalculationResultsZ o  hi�N�N 	0 prefs  X l 
kl[�M�L[ m  kl�K
�K 
null�M  �L  H > t{\]\ n  ty^_^ o  uy�J�J 0 indexlanguage indexLanguage_ o  tu�I�I 	0 prefs  ] l 
yz`�H�G` m  yz�F
�F 
null�H  �G  F > ��aba n  ��cdc o  ���E�E 0 	autoindex 	autoIndexd o  ���D�D 	0 prefs  b l 
��e�C�Be m  ���A
�A 
null�C  �B  D k  ��ff ghg l ���@ij�@  i   BEGIN: STORAGE OPTIONS   j �kk .   B E G I N :   S T O R A G E   O P T I O N Sh lml l ���?�>�=�?  �>  �=  m non l ���<pq�<  p   click Storage Options:    q �rr 0   c l i c k   S t o r a g e   O p t i o n s :  o sts n ��uvu I  ���;w�:�; B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindoww x�9x 6 ��yzy n  ��{|{ 4 ���8}
�8 
butT} m  ���7�7 | 4  ���6~
�6 
cwin~ m  ���5�5 z E  ��� 1  ���4
�4 
pnam� m  ���� ���  S t o r a g e   O p t i o n s�9  �:  v  f  ��t ��� n ����� I  ���3��2�3 "0 windowwaituntil windowWaitUntil� ��1� K  ���� �0���0 0 
windowname 
windowName� m  ���� ��� & S t o r a g e   O p t i o n s   f o r� �/���/  0 windownametest windowNameTest� m  ���� ���  s t a r t s   w i t h� �.��-�. 0 whichwindow whichWindow� m  ���� ��� 
 f r o n t�-  �1  �2  �  f  ��� ��� l ���,�+�*�,  �+  �*  � ��� l ���)�(�'�)  �(  �'  � ��� r  ����� 4  ���&�
�& 
cwin� m  ���%�% � o      �$�$ 0 workingarea workingArea� ��� l ���#�"�!�#  �"  �!  � ��� r  ����� 6 ����� n  ����� 4 ��� �
�  
chbx� m  ���� � o  ���� 0 workingarea workingArea� E  ����� 1  ���
� 
pnam� m  ���� ���  g l o b a l   s t o r a g e� o      �� .0 globalstoragecheckbox globalStorageCheckbox� ��� r  ���� 6 ���� n  ����� 4 ����
� 
chbx� m  ���� � o  ���� 0 workingarea workingArea� E  ���� 1  ���
� 
pnam� m  � �� ���  D o   n o t   s t o r e� o      �� (0 donotstorecheckbox doNotStoreCheckbox� ��� l ����  �  �  � ��� Z  B����� = 
��� o  �� 0 editmode editMode� m  	�� ���  C O N F O R M� k  >�� ��� l ����  � F @ These two CANNOT BE NULL if you are making this field CONFORM.    � ��� �   T h e s e   t w o   C A N N O T   B E   N U L L   i f   y o u   a r e   m a k i n g   t h i s   f i e l d   C O N F O R M .  � ��� Z %����� = ��� n  ��� o  �� 0 storageglobal storageGlobal� o  �� 	0 prefs  � m  �
� 
null� R  !�
��
�
 .ascrerr ****      � ****� m   �� ��� @ s t o r a g e G l o b a l   m u s t   b e   s p e c i f i e d !� �	��
�	 
errn� m  �� �  �  �  � ��� Z &>����� = &+��� n  &)��� o  ')�� 20 storecalculationresults storeCalculationResults� o  &'�� 	0 prefs  � m  )*�
� 
null� R  .:� ��
�  .ascrerr ****      � ****� m  69�� ��� T s t o r e C a l c u l a t i o n R e s u l t s   m u s t   b e   s p e c i f i e d !� �����
�� 
errn� m  25���� ��  �  �  �  �  �  � ��� l CC��������  ��  ��  � ��� Z  C������ n  CG��� o  DF���� 0 storageglobal storageGlobal� o  CD���� 	0 prefs  � k  JS�� ��� n JQ��� I  KQ������� &0 fmgui_checkboxset fmGUI_CheckboxSet� ��� o  KL���� .0 globalstoragecheckbox globalStorageCheckbox� ���� m  LM���� ��  ��  �  f  JK� ���� l RR��������  ��  ��  ��  � ��� H  VZ�� n  VY��� o  WY���� 20 storecalculationresults storeCalculationResults� o  VW���� 	0 prefs  � ���� k  ]f�� ��� n ]d   I  ^d������ &0 fmgui_checkboxset fmGUI_CheckboxSet  o  ^_���� (0 donotstorecheckbox doNotStoreCheckbox �� m  _`���� ��  ��    f  ]^� �� l ee��������  ��  ��  ��  ��  � l i�	 k  i�

  n ip I  jp������ &0 fmgui_checkboxset fmGUI_CheckboxSet  o  jk���� .0 globalstoragecheckbox globalStorageCheckbox �� m  kl����  ��  ��    f  ij  n qx I  rx������ &0 fmgui_checkboxset fmGUI_CheckboxSet  o  rs���� (0 donotstorecheckbox doNotStoreCheckbox �� m  st����  ��  ��    f  qr  l yy��������  ��  ��    l yy�� ��   ; 5 Then see which one of the Indexing choices is needed     �!! j   T h e n   s e e   w h i c h   o n e   o f   t h e   I n d e x i n g   c h o i c e s   i s   n e e d e d "��" Z  y�#$%��# = y�&'& n  y~()( o  z~���� (0 storageindexchoice storageIndexChoice) o  yz���� 	0 prefs  ' m  ~�** �++  N o n e$ k  ��,, -.- n ��/0/ I  ����1���� &0 fmgui_checkboxset fmGUI_CheckboxSet1 232 n  ��454 4  ����6
�� 
chbx6 m  ��77 �88  N o n e   1   o f   35 o  ������ 0 workingarea workingArea3 9��9 m  ������ ��  ��  0  f  ��. :��: l ����������  ��  ��  ��  % ;<; = ��=>= n  ��?@? o  ������ (0 storageindexchoice storageIndexChoice@ o  ������ 	0 prefs  > m  ��AA �BB  M i n i m a l< CDC k  ��EE FGF n ��HIH I  ����J���� &0 fmgui_checkboxset fmGUI_CheckboxSetJ KLK n  ��MNM 4  ����O
�� 
chbxO m  ��PP �QQ  M i n i m a l   2   o f   3N o  ������ 0 workingarea workingAreaL R��R m  ������ ��  ��  I  f  ��G S��S l ����������  ��  ��  ��  D TUT = ��VWV n  ��XYX o  ������ (0 storageindexchoice storageIndexChoiceY o  ������ 	0 prefs  W m  ��ZZ �[[  A l lU \��\ k  ��]] ^_^ n ��`a` I  ����b���� &0 fmgui_checkboxset fmGUI_CheckboxSetb cdc n  ��efe 4  ����g
�� 
chbxg m  ��hh �ii  A l l   3   o f   3f o  ������ 0 workingarea workingAread j��j m  ������ ��  ��  a  f  ��_ k��k l ����������  ��  ��  ��  ��  ��  ��   2 , NOT EITHER OF THOSE, SO UNCHECK THEM FIRST:   	 �ll X   N O T   E I T H E R   O F   T H O S E ,   S O   U N C H E C K   T H E M   F I R S T :� mnm l ����������  ��  ��  n opo Z  �qr����q > ��sts n  ��uvu o  ������ 0 indexlanguage indexLanguagev o  ������ 	0 prefs  t m  ����
�� 
nullr n �wxw I  ���y����  0 fmgui_popupset fmGUI_PopupSety z{z 6 ��|}| n  ��~~ 4 �����
�� 
popB� m  ������  o  ������ 0 workingarea workingArea} E  ����� 1  ����
�� 
pnam� m  ���� ���   D e f a u l t   l a n g u a g e{ ���� n  ����� o  ������ 0 indexlanguage indexLanguage� o  ������ 	0 prefs  ��  ��  x  f  ����  ��  p ��� l ��������  ��  ��  � ��� Z  H������� > ��� n  ��� o  ���� 0 	autoindex 	autoIndex� o  ���� 	0 prefs  � m  ��
�� 
null� k  D�� ��� r  '��� 6 %��� n  ��� 4 ���
�� 
chbx� m  ���� � o  ���� 0 workingarea workingArea� E  $��� 1  ��
�� 
pnam� m  #�� ���  c r e a t e   i n d e x e s� o      ���� &0 autoindexcheckbox autoIndexCheckbox� ��� Z  (B������ n  (.��� o  )-���� 0 	autoindex 	autoIndex� o  ()���� 	0 prefs  � n 18��� I  28������� &0 fmgui_checkboxset fmGUI_CheckboxSet� ��� o  23���� &0 autoindexcheckbox autoIndexCheckbox� ���� m  34���� ��  ��  �  f  12��  � n ;B��� I  <B������� &0 fmgui_checkboxset fmGUI_CheckboxSet� ��� o  <=���� &0 autoindexcheckbox autoIndexCheckbox� ���� m  =>����  ��  ��  �  f  ;<� ���� l CC�������  ��  �  ��  ��  ��  � ��� l II�~�}�|�~  �}  �|  � ��� l II�{���{  � %  click OK for Storage Options:    � ��� >   c l i c k   O K   f o r   S t o r a g e   O p t i o n s :  � ��� n Ic��� I  Jc�z��y�z B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow� ��x� 6 J_��� n  JP��� 4 KP�w�
�w 
butT� m  NO�v�v � o  JK�u�u 0 workingarea workingArea� E  S^��� 1  TX�t
�t 
pnam� m  Y]�� ���  O K�x  �y  �  f  IJ� ��� l dd�s�r�q�s  �r  �q  � ��� n d��� I  e�p��o�p "0 windowwaituntil windowWaitUntil� ��n� K  e{�� �m���m 0 
windowname 
windowName� m  hk�� ��� & S t o r a g e   O p t i o n s   f o r� �l���l  0 windownametest windowNameTest� m  nq�� ��� & d o e s   n o t   s t a r t   w i t h� �k��j�k 0 whichwindow whichWindow� m  tw�� ��� 
 f r o n t�j  �n  �o  �  f  de� ��� l ���i�h�g�i  �h  �g  � ��f� l ���e���e  �   END OF: STORAGE OPTIONS   � ��� 0   E N D   O F :   S T O R A G E   O P T I O N S�f  �Y  �X  B ��� l ���d�c�b�d  �c  �b  � ��� l ������ r  ����� 4  ���a�
�a 
cwin� m  ���`�` � o      �_�_ 0 workingarea workingArea� + % need reference to NEW first window.    � ��� J   n e e d   r e f e r e n c e   t o   N E W   f i r s t   w i n d o w .  � ��� l ���^�]�\�^  �]  �\  � ��� l ���[���[  � - ' click OK to save Specify Calculation:    � ��� N   c l i c k   O K   t o   s a v e   S p e c i f y   C a l c u l a t i o n :  � ��� n ����� I  ���Z��Y�Z B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow� ��X� 6 ����� n  ����� 4 ���W 
�W 
butT  m  ���V�V � o  ���U�U 0 workingarea workingArea� E  �� 1  ���T
�T 
pnam m  �� �  O K�X  �Y  �  f  ���  l ���S�R�Q�S  �R  �Q    n ��	
	 I  ���P�O�P "0 windowwaituntil windowWaitUntil �N K  �� �M�M 0 
windowname 
windowName m  �� � & S p e c i f y   C a l c u l a t i o n �L�L  0 windownametest windowNameTest m  �� �   d o e s   n o t   c o n t a i n �K�J�K 0 whichwindow whichWindow m  �� � 
 f r o n t�J  �N  �O  
  f  ��  l ���I�H�G�I  �H  �G    L  �� m  ���F
�F boovtrue  l ���E�D�C�E  �D  �C    !  l ���B�A�@�B  �A  �@  ! "�?" l ���>�=�<�>  �=  �<  �?  � #$# = ��%&% n  ��'(' o  ���;�; 0 	fieldtype 	fieldType( o  ���:�: 	0 prefs  & m  ��)) �**  S u m m a r y$ +,+ k  ��-- ./. l ���9�8�7�9  �8  �7  / 010 l ���623�6  2   IF SUMMARY:   3 �44    I F   S U M M A R Y :1 565 l ���578�5  7   Field Type = Summary   8 �99 *   F i e l d   T y p e   =   S u m m a r y6 :;: l ���4<=�4  <   click "contains Options"   = �>> 2   c l i c k   " c o n t a i n s   O p t i o n s "; ?@? l ���3AB�3  A / ) Data Type: popup "Calculation result is"   B �CC R   D a t a   T y p e :   p o p u p   " C a l c u l a t i o n   r e s u l t   i s "@ DED l ���2FG�2  F   Calc Context Table   G �HH &   C a l c   C o n t e x t   T a b l eE IJI l ���1KL�1  K   Calculation itself   L �MM &   C a l c u l a t i o n   i t s e l fJ NON l ���0PQ�0  P   Do Not Evaluate�   Q �RR "   D o   N o t   E v a l u a t e &O STS l ���/UV�/  U  	 Storage:   V �WW    S t o r a g e :T XYX l ���.Z[�.  Z - '	Global, Do Not Store, None/Minimal/All   [ �\\ N 	 G l o b a l ,   D o   N o t   S t o r e ,   N o n e / M i n i m a l / A l lY ]^] l ���-�,�+�-  �,  �+  ^ _`_ l ���*ab�*  a p j if existing field was NOT ALREADY a summary, will get a warning message. Need to handle that possibility.   b �cc �   i f   e x i s t i n g   f i e l d   w a s   N O T   A L R E A D Y   a   s u m m a r y ,   w i l l   g e t   a   w a r n i n g   m e s s a g e .   N e e d   t o   h a n d l e   t h a t   p o s s i b i l i t y .` ded l ���)�(�'�)  �(  �'  e fgf l ���&hi�&  h   NOT YET SUPPORTED ! ! !    i �jj 2   N O T   Y E T   S U P P O R T E D   !   !   !  g klk l ���%mn�%  m   NOT YET SUPPORTED ! ! !    n �oo 2   N O T   Y E T   S U P P O R T E D   !   !   !  l pqp l ���$rs�$  r   NOT YET SUPPORTED ! ! !    s �tt 2   N O T   Y E T   S U P P O R T E D   !   !   !  q uvu l ���#�"�!�#  �"  �!  v w� w l ������  �  �  �   , xyx = ��z{z n  ��|}| o  ���� 0 	fieldtype 	fieldType} o  ���� 	0 prefs  { m  ��~~ �  N o r m a ly ��� k  ���� ��� l ������  � / )ELSE IF NOT CALC (Field Type is Normal):	   � ��� R E L S E   I F   N O T   C A L C   ( F i e l d   T y p e   i s   N o r m a l ) : 	� ��� l ������  �  
 Data Type   � ���    D a t a   T y p e� ��� l ������  �   click "contains Options"   � ��� 2   c l i c k   " c o n t a i n s   O p t i o n s "� ��� l ������  �   TAB: Storage:   � ���    T A B :   S t o r a g e :� ��� l ������  � - '	Global, Do Not Store, None/Minimal/All   � ��� N 	 G l o b a l ,   D o   N o t   S t o r e ,   N o n e / M i n i m a l / A l l� ��� l ������  �   TAB: Auto-Enter   � ���     T A B :   A u t o - E n t e r� ��� l ������  � - '	Creation, Modification, Serial, Data,    � ��� N 	 C r e a t i o n ,   M o d i f i c a t i o n ,   S e r i a l ,   D a t a ,  � ��� l ������  �  	Calculated Value:    � ��� & 	 C a l c u l a t e d   V a l u e :  � ��� l ������  �   		Calc Context Table   � ��� *   	 	 C a l c   C o n t e x t   T a b l e� ��� l ������  �   		Calculation itself   � ��� *   	 	 C a l c u l a t i o n   i t s e l f� ��� l ������  �   		Do Not Evaluate�   � ��� &   	 	 D o   N o t   E v a l u a t e &� ��� l ������  � % 	Do not replace existing value�   � ��� > 	 D o   n o t   r e p l a c e   e x i s t i n g   v a l u e &� ��� l ������  �   TAB: Validation:   � ��� "   T A B :   V a l i d a t i o n :� ��� l ������  �  	[Skip for now]   � ���  	 [ S k i p   f o r   n o w ]� ��� l ������  �   Prohibit modification�   � ��� .   P r o h i b i t   m o d i f i c a t i o n &� ��� l ���
�	��
  �	  �  � ��� l ������  �  �  � ��� l ������  �  �  � ��� l ������  �   field DATA TYPE:   � ��� "   f i e l d   D A T A   T Y P E :� ��� Z  �|��� ��� G  ����� = ����� o  ������ 0 editmode editMode� m  ���� ���  C O N F O R M� > ����� n  ����� o  ������ 0 datatype dataType� o  ������ 	0 prefs  � m  ����
�� 
null� k  �x�� ��� r  ���� n  ���� 4  ���
�� 
popB� m  
�� ��� 
 T y p e :� n  ���� 4  ����
�� 
tabg� m  ���� � 4  �����
�� 
cwin� m  ������ � o      ���� 0 datatypepopup dataTypePopup� ���� Z  x������� > ��� n  ��� 1  ��
�� 
valL� o  ���� 0 datatypepopup dataTypePopup� n  ��� o  ���� 0 datatype dataType� o  ���� 	0 prefs  � k  t�� ��� n #   I  #������  0 fmgui_popupset fmGUI_PopupSet  o  ���� 0 datatypepopup dataTypePopup �� n   o  ���� 0 datatype dataType o  ���� 	0 prefs  ��  ��    f  � 	 l $$��������  ��  ��  	 

 l $$����   * $ click CHANGE to save the data type.    � H   c l i c k   C H A N G E   t o   s a v e   t h e   d a t a   t y p e .  n $; I  %;������ B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow �� n  %7 4  07��
�� 
butT m  36 �  C h a n g e n  %0 4  +0��
�� 
tabg m  ./����  4  %+��
�� 
cwin m  )*���� ��  ��    f  $%  l <<��������  ��  ��    !  I <C��"��
�� .sysodelanull��� ��� nmbr" m  <?## ?�      ��  ! $%$ l DD��������  ��  ��  % &'& l DD��()��  ( 9 3 MIGHT open a dialog warning about type conversion:   ) �** f   M I G H T   o p e n   a   d i a l o g   w a r n i n g   a b o u t   t y p e   c o n v e r s i o n :' +��+ Z  Dt,-����, H  DS.. C  DR/0/ n  DN121 1  JN��
�� 
pnam2 4  DJ��3
�� 
cwin3 m  HI���� 0 m  NQ44 �55 & M a n a g e   D a t a b a s e   F o r- k  Vp66 787 l VV��9:��  9 ' ! click OK to confirm the change:    : �;; B   c l i c k   O K   t o   c o n f i r m   t h e   c h a n g e :  8 <=< n Vh>?> I  Wh��@���� B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow@ A��A n  WdBCB 4  ]d��D
�� 
butTD m  `cEE �FF  O KC 4  W]��G
�� 
cwinG m  [\���� ��  ��  ?  f  VW= HIH l ii��������  ��  ��  I J��J I ip��K��
�� .sysodelanull��� ��� nmbrK m  ilLL ?�      ��  ��  ��  ��  ��  ��  ��  ��  �   ��  � MNM l }}��������  ��  ��  N OPO l }}��������  ��  ��  P QRQ l }}��ST��  S   click Options:    T �UU     c l i c k   O p t i o n s :  R VWV n }�XYX I  ~���Z���� B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindowZ [��[ 6 ~�\]\ n  ~�^_^ 4 ����`
�� 
butT` m  ������ _ n  ~�aba 4  ����c
�� 
tabgc m  ������ b 4  ~���d
�� 
cwind m  ������ ] C  ��efe 1  ����
�� 
pnamf m  ��gg �hh  O p t i o n s��  ��  Y  f  }~W iji n ��klk I  ����m���� "0 windowwaituntil windowWaitUntilm n��n K  ��oo ��pq�� 0 
windowname 
windowNamep m  ��rr �ss  O p t i o n s   f o rq ��tu��  0 windownametest windowNameTestt m  ��vv �ww  s t a r t s   w i t hu ��x���� 0 whichwindow whichWindowx m  ��yy �zz 
 f r o n t��  ��  ��  l  f  ��j {|{ l ����������  ��  ��  | }~} l ����������  ��  ��  ~ � l ��������  � P J--------------------------------------------------------------------------   � ��� � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -� ��� l ��������  �   NORMAL FIELD   � ���    N O R M A L   F I E L D� ��� l ��������  � P J--------------------------------------------------------------------------   � ��� � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -� ��� r  ����� n  ����� 4  �����
�� 
tabg� m  ������ � 4  �����
�� 
cwin� m  ������ � o      ���� 0 workingarea workingArea� ��� l ����������  ��  ��  � ��� l ����������  ��  ��  � ��� l ��������  � P J--------------------------------------------------------------------------   � ��� � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -� ��� l ��������  �   STORAGE TAB:   � ���    S T O R A G E   T A B :� ��� l ��������  � P J--------------------------------------------------------------------------   � ��� � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -� ��� l ����������  ��  ��  � ��� l ����������  ��  ��  � ��� l ����������  ��  ��  � ��� Z  �	������� G  ���� G  ����� G  ����� G  ����� = ����� o  ������ 0 editmode editMode� l 	�������� m  ���� ���  C O N F O R M��  ��  � > ����� n  ����� o  ������ 0 storageglobal storageGlobal� o  ������ 	0 prefs  � l 
������� m  ���~
�~ 
null��  �  � > ����� n  ����� o  ���}�} (0 storageindexchoice storageIndexChoice� o  ���|�| 	0 prefs  � l 
����{�z� m  ���y
�y 
null�{  �z  � > ����� n  ����� o  ���x�x 0 indexlanguage indexLanguage� o  ���w�w 	0 prefs  � l 
����v�u� m  ���t
�t 
null�v  �u  � > ���� n  ���� o  ��s�s 0 	autoindex 	autoIndex� o  ���r�r 	0 prefs  � l 
��q�p� m  �o
�o 
null�q  �p  � k  
	�� ��� l 

�n�m�l�n  �m  �l  � ��� I 
�k��j
�k .prcsclicnull��� ��� uiel� n  
��� 4  �i�
�i 
radB� m  �� ���  S t o r a g e� o  
�h�h 0 workingarea workingArea�j  � ��� l �g�f�e�g  �f  �e  � ��� l �d���d  �   Repetitions:   � ���    R e p e t i t i o n s :� ��� n 6��� I  6�c��b�c (0 fmgui_textfieldset fmGUI_TextFieldSet� ��� 6 -��� n  ��� 4 �a�
�a 
txtf� m  �`�` � o  �_�_ 0 workingarea workingArea� E  !,��� 1  "&�^
�^ 
pnam� m  '+�� ���  r e p e t i t i o n s� ��]� n  -2��� o  .2�\�\ 0 maxrepetition maxRepetition� o  -.�[�[ 	0 prefs  �]  �b  �  f  � ��� l 77�Z�Y�X�Z  �Y  �X  � ��� l 77�W���W  �   Global:   � ���    G l o b a l :�    r  7N 6 7L n  7= 4 8=�V
�V 
chbx m  ;<�U�U  o  78�T�T 0 workingarea workingArea E  @K	
	 1  AE�S
�S 
pnam
 m  FJ �  g l o b a l   s t o r a g e o      �R�R .0 globalstoragecheckbox globalStorageCheckbox  l OO�Q�P�O�Q  �P  �O    Z  Os�N�M = OT o  OP�L�L 0 editmode editMode m  PS �  C O N F O R M k  Wo  l WW�K�K   D > This CANNOT BE NULL, if we are making field conform!!!!!					    � |   T h i s   C A N N O T   B E   N U L L ,   i f   w e   a r e   m a k i n g   f i e l d   c o n f o r m ! ! ! ! ! 	 	 	 	 	 �J Z Wo�I�H = W\ !  n  WZ"#" o  XZ�G�G 0 storageglobal storageGlobal# o  WX�F�F 	0 prefs  ! m  Z[�E
�E 
null R  _k�D$%
�D .ascrerr ****      � ****$ m  gj&& �'' @ s t o r a g e G l o b a l   m u s t   b e   s p e c i f i e d !% �C(�B
�C 
errn( m  cf�A�A �B  �I  �H  �J  �N  �M   )*) l tt�@�?�>�@  �?  �>  * +,+ l tt�=�<�;�=  �<  �;  , -.- l tt�:�9�8�:  �9  �8  . /0/ Z  t�12�731 n  tx454 o  uw�6�6 0 storageglobal storageGlobal5 o  tu�5�5 	0 prefs  2 k  {�66 787 l {{�4�3�2�4  �3  �2  8 9:9 Z  {�;<�1�0; > {�=>= n  {�?@? 1  |��/
�/ 
valL@ o  {|�.�. .0 globalstoragecheckbox globalStorageCheckbox> m  ���-�- < k  ��AA BCB l ���,DE�,  D ( " should be GLOBAL, but is NOT yet:   E �FF D   s h o u l d   b e   G L O B A L ,   b u t   i s   N O T   y e t :C GHG n ��IJI I  ���+K�*�+ *0 clickobjectbycoords clickObjectByCoordsK L�)L o  ���(�( .0 globalstoragecheckbox globalStorageCheckbox�)  �*  J  f  ��H MNM I ���'O�&
�' .sysodelanull��� ��� nmbrO m  ��PP ?�      �&  N QRQ l ���%�$�#�%  �$  �#  R STS l ���"UV�"  U G A MIGHT open a dialog warning about change to global status:						   V �WW �   M I G H T   o p e n   a   d i a l o g   w a r n i n g   a b o u t   c h a n g e   t o   g l o b a l   s t a t u s : 	 	 	 	 	 	T X�!X Z  ��YZ� �Y H  ��[[ C  ��\]\ n  ��^_^ 1  ���
� 
pnam_ 4  ���`
� 
cwin` m  ���� ] m  ��aa �bb  O p t i o n s   f o rZ k  ��cc ded l ���fg�  f ' ! click OK to confirm the change:    g �hh B   c l i c k   O K   t o   c o n f i r m   t h e   c h a n g e :  e iji n ��klk I  ���m�� B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindowm n�n n  ��opo 4  ���q
� 
butTq m  ��rr �ss  O Kp 4  ���t
� 
cwint m  ���� �  �  l  f  ��j uvu l ������  �  �  v wxw l ���yz�  y < 6 wait until back to normal "Options for Field" window:   z �{{ l   w a i t   u n t i l   b a c k   t o   n o r m a l   " O p t i o n s   f o r   F i e l d "   w i n d o w :x |}| n ��~~ I  ������ "0 windowwaituntil windowWaitUntil� ��� K  ���� ���� 0 
windowname 
windowName� m  ���� ���  O p t i o n s   f o r� ����  0 windownametest windowNameTest� m  ���� ���  s t a r t s   w i t h� ���
� 0 whichwindow whichWindow� m  ���� ��� 
 f r o n t�
  �  �    f  ��} ��	� l ������  �  �  �	  �   �  �!  �1  �0  : ��� l ������  �  �  � ��� l ���� ���  �   ��  �  �7  3 l ������ k  ���� ��� Z  �H������� > ����� n  ����� 1  ����
�� 
valL� o  ������ .0 globalstoragecheckbox globalStorageCheckbox� m  ������  � k  �D�� ��� l ����������  ��  ��  � ��� l ��������  � $  IS GLOBAL, but should NOT be:   � ��� <   I S   G L O B A L ,   b u t   s h o u l d   N O T   b e :� ��� n ����� I  ��������� *0 clickobjectbycoords clickObjectByCoords� ���� o  ������ .0 globalstoragecheckbox globalStorageCheckbox��  ��  �  f  ��� ��� I �������
�� .sysodelanull��� ��� nmbr� m  ���� ?�      ��  � ��� l ����������  ��  ��  � ��� l ��������  � G A MIGHT open a dialog warning about change to global status:						   � ��� �   M I G H T   o p e n   a   d i a l o g   w a r n i n g   a b o u t   c h a n g e   t o   g l o b a l   s t a t u s : 	 	 	 	 	 	� ��� Z  �B������� H  ��� C  �
��� n  ���� 1  ��
�� 
pnam� 4  ����
�� 
cwin� m   ���� � m  	�� ���  O p t i o n s   f o r� k  >�� ��� l ������  � ' ! click OK to confirm the change:    � ��� B   c l i c k   O K   t o   c o n f i r m   t h e   c h a n g e :  � ��� n  ��� I   ������� B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow� ���� n  ��� 4  ���
�� 
butT� m  �� ���  O K� 4  ���
�� 
cwin� m  ���� ��  ��  �  f  � ��� l !!��������  ��  ��  � ��� l !!������  � < 6 wait until back to normal "Options for Field" window:   � ��� l   w a i t   u n t i l   b a c k   t o   n o r m a l   " O p t i o n s   f o r   F i e l d "   w i n d o w :� ��� n !<��� I  "<������� "0 windowwaituntil windowWaitUntil� ���� K  "8�� ������ 0 
windowname 
windowName� m  %(�� ���  O p t i o n s   f o r� ������  0 windownametest windowNameTest� m  +.�� ���  s t a r t s   w i t h� ������� 0 whichwindow whichWindow� m  14�� ��� 
 f r o n t��  ��  ��  �  f  !"� ���� l ==��������  ��  ��  ��  ��  ��  � ���� l CC��������  ��  ��  ��  ��  ��  � ��� l II��������  ��  ��  � ��� l II��������  ��  ��  � ��� l II������  � ; 5 Then see which one of the Indexing choices is needed   � ��� j   T h e n   s e e   w h i c h   o n e   o f   t h e   I n d e x i n g   c h o i c e s   i s   n e e d e d� ���� Z  I������� = IR��� n  IN� � o  JN���� (0 storageindexchoice storageIndexChoice  o  IJ���� 	0 prefs  � m  NQ �  N o n e� k  Ue  n Uc I  Vc������ &0 fmgui_checkboxset fmGUI_CheckboxSet 	
	 n  V^ 4  W^��
�� 
chbx m  Z] �  N o n e   1   o f   3 o  VW���� 0 workingarea workingArea
 �� m  ^_���� ��  ��    f  UV �� o  de���� 0 fdsfdsf  ��  �  = hq n  hm o  im���� (0 storageindexchoice storageIndexChoice o  hi���� 	0 prefs   m  mp �  M i n i m a l  k  t�  n t�  I  u���!���� &0 fmgui_checkboxset fmGUI_CheckboxSet! "#" n  u}$%$ 4  v}��&
�� 
chbx& m  y|'' �((  M i n i m a l   2   o f   3% o  uv���� 0 workingarea workingArea# )��) m  }~���� ��  ��     f  tu *��* l ����������  ��  ��  ��   +,+ = ��-.- n  ��/0/ o  ������ (0 storageindexchoice storageIndexChoice0 o  ������ 	0 prefs  . m  ��11 �22  A l l, 3��3 k  ��44 565 n ��787 I  ����9���� &0 fmgui_checkboxset fmGUI_CheckboxSet9 :;: n  ��<=< 4  ����>
�� 
chbx> m  ��?? �@@  A l l   3   o f   3= o  ������ 0 workingarea workingArea; A��A m  ������ ��  ��  8  f  ��6 B��B l ����������  ��  ��  ��  ��  ��  ��  � ' ! NOT global, SO UNCHECK it FIRST:   � �CC B   N O T   g l o b a l ,   S O   U N C H E C K   i t   F I R S T :0 DED l ����������  ��  ��  E FGF l ����HI��  H   Index Language:    I �JJ "   I n d e x   L a n g u a g e :  G KLK Z  ��MN����M > ��OPO n  ��QRQ o  ������ 0 indexlanguage indexLanguageR o  ������ 	0 prefs  P m  ����
�� 
nullN n ��STS I  ����U����  0 fmgui_popupset fmGUI_PopupSetU VWV 6 ��XYX n  ��Z[Z 4 ����\
�� 
popB\ m  ������ [ o  ������ 0 workingarea workingAreaY E  ��]^] 1  ����
�� 
pnam^ m  ��__ �``   D e f a u l t   l a n g u a g eW a��a n  ��bcb o  ������ 0 indexlanguage indexLanguagec o  ���� 	0 prefs  ��  ��  T  f  ����  ��  L ded l ������  �  �  e fgf l ���hi�  h %  Create indexes automatically:    i �jj >   C r e a t e   i n d e x e s   a u t o m a t i c a l l y :  g klk Z  �	mn��m > ��opo n  ��qrq o  ���� 0 	autoindex 	autoIndexr o  ���� 	0 prefs  p m  ���
� 
nulln k  �	ss tut r  ��vwv 6 ��xyx n  ��z{z 4 ���|
� 
chbx| m  ���� { o  ���� 0 workingarea workingAreay E  ��}~} 1  ���
� 
pnam~ m  �� ���  c r e a t e   i n d e x e sw o      �� &0 autoindexcheckbox autoIndexCheckboxu ��� Z  �	����� n  ����� o  ���� 0 	autoindex 	autoIndex� o  ���~�~ 	0 prefs  � n 		��� I  		�}��|�} &0 fmgui_checkboxset fmGUI_CheckboxSet� ��� o  		�{�{ &0 autoindexcheckbox autoIndexCheckbox� ��z� m  		�y�y �z  �|  �  f  		�  � n 		��� I  		�x��w�x &0 fmgui_checkboxset fmGUI_CheckboxSet� ��� o  		�v�v &0 autoindexcheckbox autoIndexCheckbox� ��u� m  		�t�t  �u  �w  �  f  		� ��s� l 		�r�q�p�r  �q  �p  �s  �  �  l ��� l 		�o�n�m�o  �n  �m  � ��l� l 		�k���k  �   END OF: Storage Tab.   � ��� *   E N D   O F :   S t o r a g e   T a b .�l  ��  ��  � ��� l 		�j�i�h�j  �i  �h  � ��� l 		�g���g  � P J--------------------------------------------------------------------------   � ��� � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -� ��� l 		�f���f  �   NORMAL FIELD   � ���    N O R M A L   F I E L D� ��� l 		�e���e  � U O--------------------------------------------------------------------------					   � ��� � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 	 	 	 	 	� ��� l 		�d���d  �   AUTO-ENTER TAB:   � ���     A U T O - E N T E R   T A B :� ��� l 		�c���c  � U O--------------------------------------------------------------------------					   � ��� � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 	 	 	 	 	� ��� r  		,��� n  		*��� 4  	%	*�b�
�b 
tabg� m  	(	)�a�a � 4  		%�`�
�` 
cwin� m  	#	$�_�_ � o      �^�^ 0 workingarea workingArea� ��� I 	-	9�]��\
�] .prcsclicnull��� ��� uiel� n  	-	5��� 4  	.	5�[�
�[ 
radB� m  	1	4�� ���  A u t o - E n t e r� o  	-	.�Z�Z 0 workingarea workingArea�\  � ��� l 	:	:�Y�X�W�Y  �X  �W  � ��� l 	:	:�V���V  �   Serial Number:   � ���    S e r i a l   N u m b e r :� ��� Z  	:
���U�T� > 	:	A��� n  	:	?��� o  	;	?�S�S 0 
autoserial 
autoSerial� o  	:	;�R�R 	0 prefs  � m  	?	@�Q
�Q 
null� Z  	D
���P�� = 	D	Q��� n  	D	M��� m  	I	M�O
�O 
pcls� n  	D	I��� o  	E	I�N�N 0 
autoserial 
autoSerial� o  	D	E�M�M 	0 prefs  � m  	M	P�L
�L 
bool� n 	T	b��� I  	U	b�K��J�K &0 fmgui_checkboxset fmGUI_CheckboxSet� ��� n  	U	]��� 4  	V	]�I�
�I 
chbx� m  	Y	\�� ���  S e r i a l   n u m b e r� o  	U	V�H�H 0 workingarea workingArea� ��G� m  	]	^�F�F  �G  �J  �  f  	T	U�P  � k  	e
�� ��� l 	e	e�E���E  � * $ autoSerial is a RECORD of settings:   � ��� H   a u t o S e r i a l   i s   a   R E C O R D   o f   s e t t i n g s :� ��� n 	e	s��� I  	f	s�D��C�D &0 fmgui_checkboxset fmGUI_CheckboxSet� ��� n  	f	n��� 4  	g	n�B�
�B 
chbx� m  	j	m�� ���  S e r i a l   n u m b e r� o  	f	g�A�A 0 workingarea workingArea� ��@� m  	n	o�?�? �@  �C  �  f  	e	f� ��� l 	t	t�>�=�<�>  �=  �<  � ��� l 	t	t�;�:�9�;  �:  �9  �    n 	t	� I  	u	��8�7�8 (0 fmgui_textfieldset fmGUI_TextFieldSet  6 	u	� n  	u	{	
	 4 	v	{�6
�6 
txtf m  	y	z�5�5 
 o  	u	v�4�4 0 workingarea workingArea E  	~	� 1  		��3
�3 
pnam m  	�	� �  n e x t   v a l u e �2 n  	�	� o  	�	��1�1 0 autonextvalue autoNextValue n  	�	� o  	�	��0�0 0 
autoserial 
autoSerial o  	�	��/�/ 	0 prefs  �2  �7    f  	t	u  l 	�	��.�-�,�.  �-  �,    n 	�	� I  	�	��+�*�+ (0 fmgui_textfieldset fmGUI_TextFieldSet  6 	�	� n  	�	� !  4 	�	��)"
�) 
txtf" m  	�	��(�( ! o  	�	��'�' 0 workingarea workingArea E  	�	�#$# 1  	�	��&
�& 
pnam$ m  	�	�%% �&&  i n c r e m e n t '�%' n  	�	�()( o  	�	��$�$ 0 autoincrement autoIncrement) n  	�	�*+* o  	�	��#�# 0 
autoserial 
autoSerial+ o  	�	��"�" 	0 prefs  �%  �*    f  	�	� ,-, l 	�	��!� ��!  �   �  - ./. Z  	�	�012�0 = 	�	�343 n  	�	�565 o  	�	��� 0 autogenerate autoGenerate6 n  	�	�787 o  	�	��� 0 
autoserial 
autoSerial8 o  	�	��� 	0 prefs  4 m  	�	�99 �::  O n C r e a t i o n1 n 	�	�;<; I  	�	��=�� &0 fmgui_checkboxset fmGUI_CheckboxSet= >?> n  	�	�@A@ 4  	�	��B
� 
chbxB m  	�	�CC �DD $ O n   c r e a t i o n   1   o f   2A o  	�	��� 0 workingarea workingArea? E�E m  	�	��� �  �  <  f  	�	�2 FGF = 	�	�HIH n  	�	�JKJ o  	�	��� 0 autogenerate autoGenerateK n  	�	�LML o  	�	��� 0 
autoserial 
autoSerialM o  	�	��� 	0 prefs  I m  	�	�NN �OO  O n C o m m i tG P�P n 	�	�QRQ I  	�	��S�� &0 fmgui_checkboxset fmGUI_CheckboxSetS TUT n  	�	�VWV 4  	�	��X
� 
chbxX m  	�	�YY �ZZ   O n   c o m m i t   2   o f   2W o  	�	��� 0 workingarea workingAreaU [�[ m  	�	��� �  �  R  f  	�	��  �  / \�
\ l 
 
 �	���	  �  �  �
  �U  �T  � ]^] l 

����  �  �  ^ _`_ l 

����  �  �  ` aba l 

� cd�   c A ; Special Value (creation,modification,last visited record):   d �ee v   S p e c i a l   V a l u e   ( c r e a t i o n , m o d i f i c a t i o n , l a s t   v i s i t e d   r e c o r d ) :b fgf Z  
�hi����h > 

jkj n  

lml o  

���� .0 autoenterspecialvalue autoEnterSpecialValuem o  

���� 	0 prefs  k m  

��
�� 
nulli k  
�nn opo l 

��qr��  q � � autoEnterSpecialValue: keywords used in FM-XML: PreviousRecord, CreationAccountName, CreationUserName,CreationTimestamp, ModificationAccountName, et al.   r �ss2   a u t o E n t e r S p e c i a l V a l u e :   k e y w o r d s   u s e d   i n   F M - X M L :   P r e v i o u s R e c o r d ,   C r e a t i o n A c c o u n t N a m e ,   C r e a t i o n U s e r N a m e , C r e a t i o n T i m e s t a m p ,   M o d i f i c a t i o n A c c o u n t N a m e ,   e t   a l .p tut Z  
�vwx��v = 

yzy n  

{|{ o  

���� .0 autoenterspecialvalue autoEnterSpecialValue| o  

���� 	0 prefs  z m  

}} �~~  P r e v i o u s R e c o r dw k  

9 ��� n 

7��� I  

7������� &0 fmgui_checkboxset fmGUI_CheckboxSet� ��� 6 

2��� n  

#��� 4 

#���
�� 
chbx� m  
!
"���� � o  

���� 0 workingarea workingArea� E  
&
1��� 1  
'
+��
�� 
pnam� m  
,
0�� ���  l a s t   v i s i t e d� ���� m  
2
3���� ��  ��  �  f  

� ���� l 
8
8��������  ��  ��  ��  x ��� C  
<
E��� n  
<
A��� o  
=
A���� .0 autoenterspecialvalue autoEnterSpecialValue� o  
<
=���� 	0 prefs  � m  
A
D�� ���  C r e a t i o n� ��� k  
H
��� ��� Z  
H
������� = 
H
Q��� n  
H
M��� o  
I
M���� .0 autoenterspecialvalue autoEnterSpecialValue� o  
H
I���� 	0 prefs  � m  
M
P�� ���   C r e a t i o n U s e r N a m e� r  
T
Y��� m  
T
W�� ���  N a m e� o      ���� 0 
menuchoice 
menuChoice� ��� = 
\
e��� n  
\
a��� o  
]
a���� .0 autoenterspecialvalue autoEnterSpecialValue� o  
\
]���� 	0 prefs  � m  
a
d�� ���  C r e a t i o n N a m e� ��� r  
h
m��� m  
h
k�� ���  N a m e� o      ���� 0 
menuchoice 
menuChoice� ��� = 
p
y��� n  
p
u��� o  
q
u���� .0 autoenterspecialvalue autoEnterSpecialValue� o  
p
q���� 	0 prefs  � m  
u
x�� ��� & C r e a t i o n A c c o u n t N a m e� ��� r  
|
���� m  
|
�� ���  A c c o u n t   N a m e� o      ���� 0 
menuchoice 
menuChoice� ��� = 
�
���� n  
�
���� o  
�
����� .0 autoenterspecialvalue autoEnterSpecialValue� o  
�
����� 	0 prefs  � m  
�
��� ��� " C r e a t i o n T i m e s t a m p� ��� r  
�
���� m  
�
��� ��� 2 T i m e s t a m p   ( D a t e   a n d   T i m e )� o      ���� 0 
menuchoice 
menuChoice� ��� = 
�
���� n  
�
���� o  
�
����� .0 autoenterspecialvalue autoEnterSpecialValue� o  
�
����� 	0 prefs  � m  
�
��� ���  C r e a t i o n T i m e� ��� r  
�
���� m  
�
��� ���  T i m e� o      ���� 0 
menuchoice 
menuChoice� ��� = 
�
���� n  
�
���� o  
�
����� .0 autoenterspecialvalue autoEnterSpecialValue� o  
�
����� 	0 prefs  � m  
�
��� ���  C r e a t i o n D a t e� ���� r  
�
���� m  
�
��� ���  D a t e� o      ���� 0 
menuchoice 
menuChoice��  ��  � ��� n 
�
���� I  
�
��������  0 fmgui_popupset fmGUI_PopupSet� ��� n  
�
���� 4  
�
����
�� 
popB� m  
�
��� ���  C r e a t i o n� o  
�
����� 0 workingarea workingArea� ���� o  
�
����� 0 
menuchoice 
menuChoice��  ��  �  f  
�
�� ���� l 
�
���������  ��  ��  ��  � � � C  
�
� n  
�
� o  
�
����� .0 autoenterspecialvalue autoEnterSpecialValue o  
�
����� 	0 prefs   m  
�
� �  M o d i f i c a t i o n   k  
�k		 

 Z  
�Z�� = 
�
� n  
�
� o  
�
����� .0 autoenterspecialvalue autoEnterSpecialValue o  
�
����� 	0 prefs   m  
�
� � ( M o d i f i c a t i o n U s e r N a m e r  
�
� m  
�
� �  N a m e o      ���� 0 
menuchoice 
menuChoice  = 
�
� n  
�
� o  
�
����� .0 autoenterspecialvalue autoEnterSpecialValue o  
�
����� 	0 prefs   m  
�
� �     M o d i f i c a t i o n N a m e !"! r  #$# m  %% �&&  N a m e$ o      ���� 0 
menuchoice 
menuChoice" '(' = 	)*) n  	+,+ o  
���� .0 autoenterspecialvalue autoEnterSpecialValue, o  	
���� 	0 prefs  * m  -- �.. . M o d i f i c a t i o n A c c o u n t N a m e( /0/ r  121 m  33 �44  A c c o u n t   N a m e2 o      �� 0 
menuchoice 
menuChoice0 565 = &787 n  "9:9 o  "�� .0 autoenterspecialvalue autoEnterSpecialValue: o  �� 	0 prefs  8 m  "%;; �<< * M o d i f i c a t i o n T i m e s t a m p6 =>= r  ).?@? m  ),AA �BB 2 T i m e s t a m p   ( D a t e   a n d   T i m e )@ o      �� 0 
menuchoice 
menuChoice> CDC = 1:EFE n  16GHG o  26�� .0 autoenterspecialvalue autoEnterSpecialValueH o  12�� 	0 prefs  F m  69II �JJ   M o d i f i c a t i o n T i m eD KLK r  =BMNM m  =@OO �PP  T i m eN o      �� 0 
menuchoice 
menuChoiceL QRQ = ENSTS n  EJUVU o  FJ�� .0 autoenterspecialvalue autoEnterSpecialValueV o  EF�� 	0 prefs  T m  JMWW �XX   M o d i f i c a t i o n D a t eR Y�Y r  QVZ[Z m  QT\\ �]]  D a t e[ o      �� 0 
menuchoice 
menuChoice�  ��   ^_^ n [i`a` I  \i�b��  0 fmgui_popupset fmGUI_PopupSetb cdc n  \defe 4  ]d�g
� 
popBg m  `chh �ii  M o d i f i c a t i o nf o  \]�� 0 workingarea workingAread j�j o  de�� 0 
menuchoice 
menuChoice�  �  a  f  [\_ klk l jj����  �  �  l m�m l jj����  �  �  �   non = nwpqp n  nsrsr o  os�� .0 autoenterspecialvalue autoEnterSpecialValues o  no�� 	0 prefs  q m  svtt �uu  N O N Eo vwv k  z�xx yzy l zz�{|�  { : 4 need to make sure NO special values are checked on:   | �}} h   n e e d   t o   m a k e   s u r e   N O   s p e c i a l   v a l u e s   a r e   c h e c k e d   o n :z ~~ n z���� I  {����� &0 fmgui_checkboxset fmGUI_CheckboxSet� ��� 6 {���� n  {���� 4 |���
� 
chbx� m  ��� � o  {|�� 0 workingarea workingArea� = ����� 1  ���
� 
titl� m  ���� ���  C r e a t i o n� ��� m  ����  �  �  �  f  z{ ��� n ����� I  ������ &0 fmgui_checkboxset fmGUI_CheckboxSet� ��� 6 ����� n  ����� 4 ����
� 
chbx� m  ���� � o  ���� 0 workingarea workingArea� = ����� 1  ���
� 
titl� m  ���� ���  M o d i f i c a t i o n� ��� m  ����  �  �  �  f  ��� ��� n ����� I  ������ &0 fmgui_checkboxset fmGUI_CheckboxSet� ��� 6 ����� n  ����� 4 ����
� 
chbx� m  ���� � o  ���� 0 workingarea workingArea� E  ����� 1  ���
� 
pnam� m  ���� ���  l a s t   v i s i t e d� ��� m  ����  �  �  �  f  ��� ��� l ������  �  �  �  w ��� = ����� n  ����� o  ���� .0 autoenterspecialvalue autoEnterSpecialValue� o  ���� 	0 prefs  � m  ���
� 
null� ��� l ������  � * $ do not change any of the checkboxes   � ��� H   d o   n o t   c h a n g e   a n y   o f   t h e   c h e c k b o x e s�  ��  u ��� l ������  �  �  � ��� l ����~�}�  �~  �}  �  ��  ��  g ��� l ���|�{�z�|  �{  �z  � ��� l ���y���y  �   Constant:    � ���    C o n s t a n t :  � ��� Z  �R���x�w� > ����� n  ����� o  ���v�v *0 autoenterisconstant autoEnterIsConstant� o  ���u�u 	0 prefs  � m  ���t
�t 
null� k  �N�� ��� r  �	��� 6 ���� n  ����� 4 ���s�
�s 
chbx� m  ���r�r � o  ���q�q 0 workingarea workingArea� E  ���� 1  � �p
�p 
pnam� m  �� ���  D a t a� o      �o�o 0 datacheckbox dataCheckbox� ��� Z  
L���n�� n  
��� o  �m�m *0 autoenterisconstant autoEnterIsConstant� o  
�l�l 	0 prefs  � k  B�� ��� n ��� I  �k��j�k &0 fmgui_checkboxset fmGUI_CheckboxSet� ��� o  �i�i 0 datacheckbox dataCheckbox� ��h� m  �g�g �h  �j  �  f  � ��f� Z  B���e�� = "��� n   ��� o   �d�d .0 autoenterconstantdata autoEnterConstantData� o  �c�c 	0 prefs  � m   !�b
�b 
null� l %%�a���a  � 7 1 Possibly null if autoEnterIsConstant is false...   � ��� b   P o s s i b l y   n u l l   i f   a u t o E n t e r I s C o n s t a n t   i s   f a l s e . . .�e  � n )B��� I  *B�`��_�` (0 fmgui_textfieldset fmGUI_TextFieldSet� ��� n  *9��� 4  29�^�
�^ 
txta� m  58�� �   
 D a t a :� n  *2 4  +2�]
�] 
scra m  .1 � 
 D a t a : o  *+�\�\ 0 workingarea workingArea� �[ n  9> o  :>�Z�Z .0 autoenterconstantdata autoEnterConstantData o  9:�Y�Y 	0 prefs  �[  �_  �  f  )*�f  �n  � n EL	
	 I  FL�X�W�X &0 fmgui_checkboxset fmGUI_CheckboxSet  o  FG�V�V 0 datacheckbox dataCheckbox �U m  GH�T�T  �U  �W  
  f  EF�  l MM�S�R�Q�S  �R  �Q    l MM�P�O�N�P  �O  �N   �M l MM�L�K�J�L  �K  �J  �M  �x  �w  �  l SS�I�H�G�I  �H  �G    Z  Sb�F�E > SZ n  SX o  TX�D�D &0 autoenterislookup autoEnterIsLookup o  ST�C�C 	0 prefs   m  XY�B
�B 
null k  ]]   l ]]�A!"�A  !   NOT YET SUPPORTED!!!!!	   " �## 0   N O T   Y E T   S U P P O R T E D ! ! ! ! ! 	  $%$ l ]]�@&'�@  &   NOT YET SUPPORTED!!!!!	   ' �(( 0   N O T   Y E T   S U P P O R T E D ! ! ! ! ! 	% )�?) l ]]�>*+�>  * $  NOT YET SUPPORTED!!!!!							   + �,, <   N O T   Y E T   S U P P O R T E D ! ! ! ! ! 	 	 	 	 	 	 	�?  �F  �E   -.- l cc�=�<�;�=  �<  �;  . /0/ l cc�:�9�8�:  �9  �8  0 121 l cc�734�7  3   AutoEnter Calculation:    4 �55 0   A u t o E n t e r   C a l c u l a t i o n :  2 676 Z  c89�6�58 > cj:;: n  ch<=< o  dh�4�4 00 autoenteriscalculation autoEnterIsCalculation= o  cd�3�3 	0 prefs  ; m  hi�2
�2 
null9 k  m>> ?@? Z  mAB�1CA H  msDD n  mrEFE o  nr�0�0 00 autoenteriscalculation autoEnterIsCalculationF o  mn�/�/ 	0 prefs  B k  v�GG HIH l vv�.JK�.  J + % Need to make sure it is NOT checked:   K �LL J   N e e d   t o   m a k e   s u r e   i t   i s   N O T   c h e c k e d :I MNM n v�OPO I  w��-Q�,�- &0 fmgui_checkboxset fmGUI_CheckboxSetQ RSR n  wTUT 4  x�+V
�+ 
chbxV m  {~WW �XX   C a l c u l a t e d   v a l u eU o  wx�*�* 0 workingarea workingAreaS Y�)Y m  ��(�(  �)  �,  P  f  vwN Z�'Z l ���&�%�$�&  �%  �$  �'  �1  C l �[\][ k  �^^ _`_ r  ��aba n  ��cdc 4  ���#e
�# 
chbxe m  ��ff �gg   C a l c u l a t e d   v a l u ed o  ���"�" 0 workingarea workingAreab o      �!�! .0 autoentercalccheckbox autoEnterCalcCheckbox` hih l ��� jk�   j G A if the checkbox is already checked, need to click Specify button   k �ll �   i f   t h e   c h e c k b o x   i s   a l r e a d y   c h e c k e d ,   n e e d   t o   c l i c k   S p e c i f y   b u t t o ni mnm l ���op�  o ^ X if not already checked, checking it opens the window, so use special function for click   p �qq �   i f   n o t   a l r e a d y   c h e c k e d ,   c h e c k i n g   i t   o p e n s   t h e   w i n d o w ,   s o   u s e   s p e c i a l   f u n c t i o n   f o r   c l i c kn rsr Z  ��tu�vt > ��wxw n  ��yzy 1  ���
� 
valLz o  ���� .0 autoentercalccheckbox autoEnterCalcCheckboxx m  ���� u n ��{|{ I  ���}�� B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow} ~�~ o  ���� .0 autoentercalccheckbox autoEnterCalcCheckbox�  �  |  f  ���  v k  �� ��� l ������  � \ V there are TWO buttons named "Specify�" - the first is for CALC, second is for lookup:   � ��� �   t h e r e   a r e   T W O   b u t t o n s   n a m e d   " S p e c i f y & "   -   t h e   f i r s t   i s   f o r   C A L C ,   s e c o n d   i s   f o r   l o o k u p :� ��� n ����� I  ������ B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow� ��� 6 ����� n  ����� 4 ����
� 
butT� m  ���� � o  ���� 0 workingarea workingArea� C  ����� 1  ���
� 
pnam� m  ���� ���  S p e c i f y�  �  �  f  ���  s ��� l ������  �  �  � ��� l ���
���
  � + % wait for Specify Calculation window:   � ��� J   w a i t   f o r   S p e c i f y   C a l c u l a t i o n   w i n d o w :� ��� n ����� I  ���	���	 20 windowwaituntil_frontis windowWaitUntil_FrontIS� ��� K  ���� ���� 0 
windowname 
windowName� m  ���� ��� & S p e c i f y   C a l c u l a t i o n�  �  �  �  f  ��� ��� l ������  �  �  � ��� r  ����� 4  ����
� 
cwin� m  ��� �  � o      ���� 0 workingarea workingArea� ��� l ����������  ��  ��  � ��� l ��������  �   CALCULATION CODE:   � ��� $   C A L C U L A T I O N   C O D E :� ��� l ����������  ��  ��  � ��� Z  �������� = ����� n  ����� 1  ����
�� 
leng� n  ����� o  ������ &0 autoentercalccode autoEnterCalcCode� o  ������ 	0 prefs  � m  ������  � k  ���� ��� l  ��������  � � � if for some reason an empty string is specified, we want to force an error in FM's syntax checker for the validation calc box instead of silently allowing an empty string as the validation calc.    � ����   i f   f o r   s o m e   r e a s o n   a n   e m p t y   s t r i n g   i s   s p e c i f i e d ,   w e   w a n t   t o   f o r c e   a n   e r r o r   i n   F M ' s   s y n t a x   c h e c k e r   f o r   t h e   v a l i d a t i o n   c a l c   b o x   i n s t e a d   o f   s i l e n t l y   a l l o w i n g   a n   e m p t y   s t r i n g   a s   t h e   v a l i d a t i o n   c a l c .  � ���� r  ����� m  ���� ��� i f   (   / *   a u t o - e n t e r   c a l c   w a s   s p e c i f i e d   a s   a n   e m p t y   s t r i n g   r a t h e r   t h a n   a   n u l l   v a l u e   i n d i c a t i n g   a   b u g   i n   t h e   s c r i p t   r u n n i n g   t h e   s e t u p   t o o l .   * /   )� o      ���� 20 autoentercalccode_value autoEnterCalcCode_VALUE��  ��  � r  ����� n  ����� o  ������ &0 autoentercalccode autoEnterCalcCode� o  ������ 	0 prefs  � o      ���� 20 autoentercalccode_value autoEnterCalcCode_VALUE� ��� l ����������  ��  ��  � ��� n ���� I  �������� (0 fmgui_textfieldset fmGUI_TextFieldSet� ��� n  �
��� 4  
���
�� 
txta� m  	���� � n  ���� 4  ����
�� 
scra� m  ���� � 4  �����
�� 
cwin� m  ������ � ���� o  
���� 20 autoentercalccode_value autoEnterCalcCode_VALUE��  ��  �  f  ��� ��� l ��������  ��  ��  � ��� l ��������  ��  ��  � ��� l ������  � ' ! Calc CONTEXT Table (occurrence):   � ��� B   C a l c   C O N T E X T   T a b l e   ( o c c u r r e n c e ) :� ��� Z  ;������� > ��� n  ��� o  ���� 20 autoentercalccontexttoc autoEnterCalcContextTOC� o  ���� 	0 prefs  � m  ��
�� 
null� n 7��� I  7�������  0 fmgui_popupset fmGUI_PopupSet� ��� 6 0��� n  !��� 4 !���
�� 
popB� m   ���� � o  ���� 0 workingarea workingArea� E  $/��� 1  %)��
�� 
pnam� m  *.�� ���  c o n t e x t� ���� n  03� � o  13���� 20 autoentercalccontexttoc autoEnterCalcContextTOC  o  01���� 	0 prefs  ��  ��  �  f  ��  ��  �  l <<��������  ��  ��    l <<����   9 3 Do Not Evaluate if all referenced field are empty:    � f   D o   N o t   E v a l u a t e   i f   a l l   r e f e r e n c e d   f i e l d   a r e   e m p t y : 	 Z  <x
����
 > <A n  <? o  =?����  0 alwaysevaluate alwaysEvaluate o  <=���� 	0 prefs   m  ?@��
�� 
null k  Dt  r  D[ 6 DY n  DJ 4 EJ��
�� 
chbx m  HI����  o  DE�� 0 workingarea workingArea E  MX 1  NR�
� 
pnam m  SW � J n o t   e v a l u a t e   i f   a l l   r e f e r e n c e d   f i e l d s o      �� *0 notevaluatecheckbox notEvaluateCheckbox � Z  \t �! n  \`"#" o  ]_��  0 alwaysevaluate alwaysEvaluate# o  \]�� 	0 prefs    n cj$%$ I  dj�&�� &0 fmgui_checkboxset fmGUI_CheckboxSet& '(' o  de�� *0 notevaluatecheckbox notEvaluateCheckbox( )�) m  ef��  �  �  %  f  cd�  ! n mt*+* I  nt�,�� &0 fmgui_checkboxset fmGUI_CheckboxSet, -.- o  no�� *0 notevaluatecheckbox notEvaluateCheckbox. /�/ m  op�� �  �  +  f  mn�  ��  ��  	 010 l yy����  �  �  1 232 l yy����  �  �  3 454 l yy�67�  6 - ' click OK to save Specify Calculation:    7 �88 N   c l i c k   O K   t o   s a v e   S p e c i f y   C a l c u l a t i o n :  5 9:9 n y�;<; I  z��=�� B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow= >�> 6 z�?@? n  z�ABA 4 {��C
� 
butTC m  ~�� B o  z{�� 0 workingarea workingArea@ E  ��DED 1  ���
� 
pnamE m  ��FF �GG  O K�  �  <  f  yz: HIH l ������  �  �  I JKJ n ��LML I  ���N�� "0 windowwaituntil windowWaitUntilN O�O K  ��PP �QR� 0 
windowname 
windowNameQ m  ��SS �TT & S p e c i f y   C a l c u l a t i o nR �UV�  0 windownametest windowNameTestU m  ��WW �XX   d o e s   n o t   c o n t a i nV �Y�� 0 whichwindow whichWindowY m  ��ZZ �[[ 
 f r o n t�  �  �  M  f  ��K \]\ l ������  �  �  ] ^_^ r  ��`a` n  ��bcb 4  ���d
� 
tabgd m  ���� c 4  ���e
� 
cwine m  ���� a o      �� 0 workingarea workingArea_ fgf l ������  �  �  g hih l ���jk�  j 7 1 Do not replace existing value of field (if any):   k �ll b   D o   n o t   r e p l a c e   e x i s t i n g   v a l u e   o f   f i e l d   ( i f   a n y ) :i mnm Z  �op��o > ��qrq n  ��sts o  ���� 00 overwriteexistingvalue overwriteExistingValuet o  ���� 	0 prefs  r m  ���
� 
nullp k  � uu vwv r  ��xyx 6 ��z{z n  ��|}| 4 ���~
� 
chbx~ m  ���� } o  ���� 0 workingarea workingArea{ E  ��� 1  ���
� 
pnam� m  ���� ��� . D o   n o t   r e p l a c e   e x i s t i n gy o      �� @0 overwriteexistingvaluecheckbox overwriteExistingValueCheckboxw ��� Z  � ����� n  ����� o  ���~�~ 00 overwriteexistingvalue overwriteExistingValue� o  ���}�} 	0 prefs  � n ����� I  ���|��{�| &0 fmgui_checkboxset fmGUI_CheckboxSet� ��� o  ���z�z @0 overwriteexistingvaluecheckbox overwriteExistingValueCheckbox� ��y� m  ���x�x  �y  �{  �  f  ���  � n � ��� I  � �w��v�w &0 fmgui_checkboxset fmGUI_CheckboxSet� ��� o  ���u�u @0 overwriteexistingvaluecheckbox overwriteExistingValueCheckbox� ��t� m  ���s�s �t  �v  �  f  ���  �  �  n ��� l �r�q�p�r  �q  �p  � ��o� l �n�m�l�n  �m  �l  �o  \   there IS a Calc:   ] ��� "   t h e r e   I S   a   C a l c :@ ��k� l �j�i�h�j  �i  �h  �k  �6  �5  7 ��� l �g�f�e�g  �f  �e  � ��� l �d�c�b�d  �c  �b  � ��� l �a���a  � 8 2 Prohibit modification of value during data entry:   � ��� d   P r o h i b i t   m o d i f i c a t i o n   o f   v a l u e   d u r i n g   d a t a   e n t r y :� ��� Z  S���`�_� > ��� n  ��� o  �^�^ 0 allowediting allowEditing� o  �]�] 	0 prefs  � m  �\
�\ 
null� k  O�� ��� r  0��� 6 ,��� n  ��� 4 �[�
�[ 
chbx� m  �Z�Z � o  �Y�Y 0 workingarea workingArea� E   +��� 1  !%�X
�X 
pnam� m  &*�� ��� * P r o h i b i t   m o d i f i c a t i o n� o      �W�W *0 prohibitmodcheckbox prohibitModCheckbox� ��V� Z  1O���U�� n  17��� o  26�T�T 0 allowediting allowEditing� o  12�S�S 	0 prefs  � n :C��� I  ;C�R��Q�R &0 fmgui_checkboxset fmGUI_CheckboxSet� ��� o  ;>�P�P *0 prohibitmodcheckbox prohibitModCheckbox� ��O� m  >?�N�N  �O  �Q  �  f  :;�U  � n FO��� I  GO�M��L�M &0 fmgui_checkboxset fmGUI_CheckboxSet� ��� o  GJ�K�K *0 prohibitmodcheckbox prohibitModCheckbox� ��J� m  JK�I�I �J  �L  �  f  FG�V  �`  �_  � ��� l TT�H�G�F�H  �G  �F  � ��� l TT�E�D�C�E  �D  �C  � ��� l TT�B���B  � P J--------------------------------------------------------------------------   � ��� � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -� ��� l TT�A���A  �   NORMAL FIELD   � ���    N O R M A L   F I E L D� ��� l TT�@���@  � U O--------------------------------------------------------------------------					   � ��� � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 	 	 	 	 	� ��� l TT�?���?  �   VALIDATION TAB:   � ���     V A L I D A T I O N   T A B :� ��� l TT�>���>  � T N--------------------------------------------------------------------------				   � ��� � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 	 	 	 	� ��� l TT�=�<�;�=  �<  �;  � ��� l TT�:���:  � 8 2 MOST VALIDATION FEATURES NOT YET SUPPORTED ! ! !    � ��� d   M O S T   V A L I D A T I O N   F E A T U R E S   N O T   Y E T   S U P P O R T E D   !   !   !  � ��� l TT�9���9  � 8 2 MOST VALIDATION FEATURES NOT YET SUPPORTED ! ! !    � ��� d   M O S T   V A L I D A T I O N   F E A T U R E S   N O T   Y E T   S U P P O R T E D   !   !   !  � ��� l TT�8���8  � 8 2 MOST VALIDATION FEATURES NOT YET SUPPORTED ! ! !    � ��� d   M O S T   V A L I D A T I O N   F E A T U R E S   N O T   Y E T   S U P P O R T E D   !   !   !  � ��� l TT�7�6�5�7  �6  �5  � ��� I T`�4��3
�4 .prcsclicnull��� ��� uiel� n  T\��� 4  U\�2 
�2 
radB  m  X[ �  V a l i d a t i o n� o  TU�1�1 0 workingarea workingArea�3  �  l aa�0�/�.�0  �/  �.    Z  aE�-�, > ah	
	 n  af o  bf�+�+ (0 validationcalccode validationCalcCode o  ab�*�* 	0 prefs  
 m  fg�)
�) 
null k  kA  l kk�(�'�&�(  �'  �&    n kx I  lx�%�$�% B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow �# n  lt 4  mt�"
�" 
butT m  ps �  S p e c i f y & o  lm�!�! 0 workingarea workingArea�#  �$    f  kl  l yy� ���   �  �    l yy� �   + % wait for Specify Calculation window:     �!! J   w a i t   f o r   S p e c i f y   C a l c u l a t i o n   w i n d o w : "#" n y�$%$ I  z��&�� 20 windowwaituntil_frontis windowWaitUntil_FrontIS& '�' K  z�(( �)�� 0 
windowname 
windowName) m  }�** �++ & S p e c i f y   C a l c u l a t i o n�  �  �  %  f  yz# ,-, l ������  �  �  - ./. r  ��010 4  ���2
� 
cwin2 m  ���� 1 o      �� 0 workingarea workingArea/ 343 l ������  �  �  4 565 l ���78�  7   CALCULATION CODE:    8 �99 &   C A L C U L A T I O N   C O D E :  6 :;: Z  ��<=�>< = ��?@? n  ��ABA 1  ���
� 
lengB n  ��CDC o  ���� (0 validationcalccode validationCalcCodeD o  ���
�
 	0 prefs  @ m  ���	�	  = k  ��EE FGF l  ���HI�  H � � if for some reason an empty string is specified, we want to force an error in FM's syntax checker for the validation calc box instead of silently allowing an empty string as the validation calc.    I �JJ�   i f   f o r   s o m e   r e a s o n   a n   e m p t y   s t r i n g   i s   s p e c i f i e d ,   w e   w a n t   t o   f o r c e   a n   e r r o r   i n   F M ' s   s y n t a x   c h e c k e r   f o r   t h e   v a l i d a t i o n   c a l c   b o x   i n s t e a d   o f   s i l e n t l y   a l l o w i n g   a n   e m p t y   s t r i n g   a s   t h e   v a l i d a t i o n   c a l c .  G K�K r  ��LML m  ��NN �OO i f   (   / *   v a l i d a t i o n   c a l c   w a s   s p e c i f i e d   a s   a n   e m p t y   s t r i n g   r a t h e r   t h a n   a   n u l l   v a l u e   i n d i c a t i n g   a   b u g   i n   t h e   s c r i p t   r u n n i n g   t h e   s e t u p   t o o l .   * /   )M o      �� 40 validationcalccode_value validationCalcCode_VALUE�  �  > r  ��PQP n  ��RSR o  ���� (0 validationcalccode validationCalcCodeS o  ���� 	0 prefs  Q o      �� 40 validationcalccode_value validationCalcCode_VALUE; TUT l ����� �  �  �   U VWV n ��XYX I  ����Z���� (0 fmgui_textfieldset fmGUI_TextFieldSetZ [\[ n  ��]^] 4  ����_
�� 
txta_ m  ������ ^ n  ��`a` 4  ����b
�� 
scrab m  ������ a 4  ����c
�� 
cwinc m  ������ \ d��d o  ������ 40 validationcalccode_value validationCalcCode_VALUE��  ��  Y  f  ��W efe l ����������  ��  ��  f ghg l ����������  ��  ��  h iji l ����kl��  k ' ! Calc CONTEXT Table (occurrence):   l �mm B   C a l c   C O N T E X T   T a b l e   ( o c c u r r e n c e ) :j non Z  ��pq����p > ��rsr n  ��tut o  ������ 40 validationcalccontexttoc validationCalcContextTOCu o  ������ 	0 prefs  s m  ����
�� 
nullq n ��vwv I  ����x����  0 fmgui_popupset fmGUI_PopupSetx yzy 6 ��{|{ n  ��}~} 4 ����
�� 
popB m  ������ ~ o  ������ 0 workingarea workingArea| E  ����� 1  ����
�� 
pnam� m  ���� ���  c o n t e x tz ���� n  ����� o  ������ 40 validationcalccontexttoc validationCalcContextTOC� o  ������ 	0 prefs  ��  ��  w  f  ����  ��  o ��� l ����������  ��  ��  � ��� l ��������  � - ' click OK to save Specify Calculation:    � ��� N   c l i c k   O K   t o   s a v e   S p e c i f y   C a l c u l a t i o n :  � ��� n ���� I  �������� B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow� ���� 6 ���� n  ���� 4 ����
�� 
butT� m   ���� � o  ������ 0 workingarea workingArea� E  ��� 1  
��
�� 
pnam� m  �� ���  O K��  ��  �  f  ��� ��� l ��������  ��  ��  � ��� n 1��� I  1������� "0 windowwaituntil windowWaitUntil� ���� K  -�� ������ 0 
windowname 
windowName� m  �� ��� & S p e c i f y   C a l c u l a t i o n� ������  0 windownametest windowNameTest� m   #�� ���   d o e s   n o t   c o n t a i n� ������� 0 whichwindow whichWindow� m  &)�� ��� 
 f r o n t��  ��  ��  �  f  � ��� l 22��������  ��  ��  � ��� r  2?��� n  2=��� 4  8=���
�� 
tabg� m  ;<���� � 4  28���
�� 
cwin� m  67���� � o      ���� 0 workingarea workingArea� ��� l @@��������  ��  ��  � ���� l @@����  �   END OF: Validation.    � ��� *   E N D   O F :   V a l i d a t i o n .  ��  �-  �,   ��� l FF����  �  �  � ��� l FF����  �  �  � ��� l FF����  � #  SAVE NORMAL FIELD - OPTIONS:   � ��� :   S A V E   N O R M A L   F I E L D   -   O P T I O N S :� ��� l FF����  � #  click OK for field Options:    � ��� :   c l i c k   O K   f o r   f i e l d   O p t i o n s :  � ��� n Fe��� I  Ge���� B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow� ��� 6 Ga��� n  GR��� 4 MR��
� 
butT� m  PQ�� � 4  GM��
� 
cwin� m  KL�� � E  U`��� 1  VZ�
� 
pnam� m  [_�� ���  O K�  �  �  f  FG� ��� l ff����  �  �  � ��� n f���� I  g����� "0 windowwaituntil windowWaitUntil� ��� K  g}�� ���� 0 
windowname 
windowName� m  jm�� ���  O p t i o n s   f o r� ����  0 windownametest windowNameTest� m  ps�� ��� & d o e s   n o t   s t a r t   w i t h� ���� 0 whichwindow whichWindow� m  vy�� ��� 
 f r o n t�  �  �  �  f  fg� ��� l ������  �  �  � ��� l ������  �  �  � ��� L  ���� m  ���
� boovtrue� ��� l ������  �  �  � ��� l ������  �  �  � ��� l ������  �  �  �  �  �E  � � � l ������  �  �     l ������  �  �    L  �� m  ���
� boovtrue � l ������  �  �  �  � 4   � ��
� 
pcap m   � � �		 , F i l e M a k e r   P r o   A d v a n c e d� m   � �

�                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  �  l ������  �  �    l ������  �  �    l ������  �  �   �~ l  ���}�}   � �   DEBUGGING   DEBUGGING   DEBUGGING   DEBUGGING   DEBUGGING   DEBUGGING   
DEBUGGING   DEBUGGING   DEBUGGING   DEBUGGING   DEBUGGING   DEBUGGING   DEBUGGING   
    �B       D E B U G G I N G       D E B U G G I N G       D E B U G G I N G       D E B U G G I N G       D E B U G G I N G       D E B U G G I N G       
 D E B U G G I N G       D E B U G G I N G       D E B U G G I N G       D E B U G G I N G       D E B U G G I N G       D E B U G G I N G       D E B U G G I N G       
�~  � R      �|
�| .ascrerr ****      � **** o      �{�{ 0 errmsg errMsg �z�y
�z 
errn o      �x�x 0 errnum errNum�y  � R  ���w
�w .ascrerr ****      � **** b  �� b  �� b  �� m  ��   �!! 0 C o u l d n ' t   e d i t   a   F i e l d   -   I  ���v"�u�v  0 coercetostring coerceToString" #�t# o  ���s�s 	0 prefs  �t  �u   m  ��$$ �%%    -   o  ���r�r 0 errmsg errMsg �q&�p
�q 
errn& o  ���o�o 0 errnum errNum�p  � '(' l ���n�m�l�n  �m  �l  ( )�k) l ���j�i�h�j  �i  �h  �k  E *+* l     �g�f�e�g  �f  �e  + ,-, l     �d�c�b�d  �c  �b  - ./. i   W Z010 I      �a2�`�a :0 fmgui_managedb_field_select fmGUI_ManageDb_Field_Select2 3�_3 o      �^�^ 	0 prefs  �_  �`  1 k    �44 565 l     �]78�]  7   version 1.2   8 �99    v e r s i o n   1 . 26 :;: l     �\�[�Z�\  �[  �Z  ; <=< r     
>?> K     @@ �YAB�Y 0 	fieldname 	fieldNameA m    �X
�X 
nullB �WCD�W 0 	tablename 	tableNameC m    �V
�V 
nullD �UE�T�U 0 altpatterns altPatternsE m    �S
�S 
null�T  ? o      �R�R 0 defaultprefs defaultPrefs= FGF r    HIH b    JKJ o    �Q�Q 	0 prefs  K o    �P�P 0 defaultprefs defaultPrefsI o      �O�O 	0 prefs  G LML l   �N�M�L�N  �M  �L  M NON l   �KPQ�K  P   CONSTANTS:    Q �RR    C O N S T A N T S :  O STS r    UVU b    WXW b    YZY b    [\[ m    ]] �^^ @ t e l l   a p p l i c a t i o n   " S y s t e m   E v e n t s "\ o    �J
�J 
ret Z l 	  _�I�H_ m    `` �aa b t e l l   a p p l i c a t i o n   p r o c e s s   " F i l e M a k e r   P r o   A d v a n c e d "�I  �H  X o    �G
�G 
ret V o      �F�F  0 testcodeheader testCodeHeaderT bcb r    ded m    ff �gg  s e l e c t   (e o      �E�E 0 
selectcode 
selectCodec hih r    "jkj m     ll �mm � f i r s t   r o w   o f   ( t a b l e   1   o f   s c r o l l   a r e a   1   o f   t a b   g r o u p   1   o f   w i n d o w   1 )k o      �D�D 0 
rowrefcode 
rowRefCodei non r   # &pqp m   # $rr �ss    w h o s e  q o      �C�C 0 	whosecode 	whoseCodeo tut r   ' *vwv m   ' (xx �yy , v a l u e   o f   s t a t i c   t e x t   1w o      �B�B *0 fieldnameobjectcode fieldNameObjectCodeu z{z l  + +�A|}�A  | ( " (then some test will be inserted)   } �~~ D   ( t h e n   s o m e   t e s t   w i l l   b e   i n s e r t e d ){ � r   + .��� m   + ,�� ��� 
   a n d  � o      �@�@ $0 betweentestscode betweenTestsCode� ��� l  / /�?���?  � 7 1 (then possibly some other test will be inserted)   � ��� b   ( t h e n   p o s s i b l y   s o m e   o t h e r   t e s t   w i l l   b e   i n s e r t e d )� ��� r   / 2��� m   / 0�� ���  )� o      �>�> &0 afteralltestscode afterAllTestsCode� ��� r   3 <��� b   3 :��� b   3 8��� b   3 6��� o   3 4�=
�= 
ret � m   4 5�� ���  e n d   t e l l� o   6 7�<
�< 
ret � m   8 9�� ���  e n d   t e l l� o      �;�;  0 testcodefooter testCodeFooter� ��� l  = =�:�9�8�:  �9  �8  � ��� Q   =����� k   @��� ��� l  @ @�7�6�5�7  �6  �5  � ��� I   @ G�4��3�4 >0 fmgui_managedb_fieldlistfocus fmGUI_ManageDb_FieldListFocus� ��2� J   A C�1�1  �2  �3  � ��� l  H H�0�/�.�0  �/  �.  � ��� Z  H \���-�,� >  H M��� n   H K��� o   I K�+�+ 0 	tablename 	tableName� o   H I�*�* 	0 prefs  � m   K L�)
�) 
null� I   P X�(��'�( @0 fmgui_managedb_fieldspicktable fmGUI_ManageDb_FieldsPickTable� ��&� n   Q T��� o   R T�%�% 0 	tablename 	tableName� o   Q R�$�$ 	0 prefs  �&  �'  �-  �,  � ��� l  ] ]�#�"�!�#  �"  �!  � ��� I   ] b� ���  (0 fmgui_appfrontmost fmGUI_AppFrontMost�  �  � ��� l  c c����  �  �  � ��� Q   c����� k   f ��� ��� O   f ���� O   l ���� k   w ��� ��� l  w w����  �  �  � ��� I  w ����
� .miscslctnull���     uiel� l  w ����� 6  w ���� n   w ���� 4  � ���
� 
crow� m   � ��� � l  w ����� n   w ���� 4   � ���
� 
tabB� m   � ��� � n   w ���� 4   � ���
� 
scra� m   � ��� � n   w ���� 4   } ��
�
�
 
tabg� m   � ��	�	 � 4   w }��
� 
cwin� m   { |�� �  �  � =  � ���� n   � ���� 1   � ��
� 
valL� 4   � ���
� 
sttx� m   � ��� � n   � ���� o   � ��� 0 	fieldname 	fieldName� o   � ��� 	0 prefs  �  �  �  �  � 4   l t��
� 
pcap� m   p s�� ��� , F i l e M a k e r   P r o   A d v a n c e d� m   f i���                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  � �� � L   � ��� m   � ���
�� boovtrue�   � R      ����
�� .ascrerr ****      � ****� o      ���� 0 errmsg errMsg� �����
�� 
errn� o      ���� 0 errnum errNum��  � Z   �������� >  � ���� o   � ����� 0 errnum errNum� m   � ������I� k   � ��� ��� l  � �������  � / ) some error OTHER than not found in list:   � ��� R   s o m e   e r r o r   O T H E R   t h a n   n o t   f o u n d   i n   l i s t :� ���� R   � �����
�� .ascrerr ****      � ****� o   � ����� 0 errmsg errMsg� �� ��
�� 
errn  o   � ����� 0 errnum errNum��  ��  ��  � k   ��  l  � �����   * $ NOT FOUND, so try each altPattern:     � H   N O T   F O U N D ,   s o   t r y   e a c h   a l t P a t t e r n :    r   � �	
	 m   � ���
�� boovfals
 o      ���� $0 fieldnowselected fieldNowSelected  X   ���� k   ��  r   � � n   � � 1   � ���
�� 
pcnt n   � � o   � ����� 0 pattern   o   � ����� 0 onealtpattern oneAltPattern o      ���� 0 testlist testList  l  � ���������  ��  ��    Q   �� k   �l  !  l  � ���"#��  " !  BEGIN: try oneAltPattern:    # �$$ 6   B E G I N :   t r y   o n e A l t P a t t e r n :  ! %&% l  � ���������  ��  ��  & '(' r   � �)*) J   � �����  * o      ���� 0 testcode testCode( +,+ X   �/-��.- s  */0/ l '1����1 b  '232 b  454 b  676 m  88 �99  7 n  :;: o  ���� 0 testtype testType; o  ���� 0 
onetestrec 
oneTestRec5 m  << �==   3 n &>?> I  &��@���� 0 quotestring quoteString@ A��A n  "BCB o  "���� 0 	testmatch 	testMatchC o  ���� 0 
onetestrec 
oneTestRec��  ��  ?  f  ��  ��  0 n      DED  ;  ()E o  '(���� 0 testcode testCode�� 0 
onetestrec 
oneTestRec. o   � ����� 0 testlist testList, FGF l 00��������  ��  ��  G HIH r  0?JKJ n 0=LML I  1=��N���� 0 unparsechars unParseCharsN OPO o  12���� 0 testcode testCodeP Q��Q b  29RSR b  25TUT o  23���� $0 betweentestscode betweenTestsCodeU o  34���� *0 fieldnameobjectcode fieldNameObjectCodeS m  58VV �WW   ��  ��  M  f  01K o      ���� 0 testcode testCodeI XYX l @@��������  ��  ��  Y Z[Z l @@��������  ��  ��  [ \]\ r  @Q^_^ b  @O`a` b  @Mbcb b  @Kded b  @Gfgf b  @Ehih b  @Cjkj o  @A���� 0 
selectcode 
selectCodek o  AB���� 0 
rowrefcode 
rowRefCodei o  CD���� 0 	whosecode 	whoseCodeg o  EF�� *0 fieldnameobjectcode fieldNameObjectCodee m  GJll �mm   c o  KL�� 0 testcode testCodea o  MN�� &0 afteralltestscode afterAllTestsCode_ o      �� 0 testcode testCode] non l RR����  �  �  o pqp r  RYrsr b  RWtut b  RUvwv o  RS��  0 testcodeheader testCodeHeaderw o  ST�� 0 testcode testCodeu o  UV��  0 testcodefooter testCodeFooters o      �� 0 testcode testCodeq xyx l ZZ����  �  �  y z{z l ZZ����  �  �  { |}| O Zd~~ I ^c���
� .sysodsct****        scpt� o  ^_�� 0 testcode testCode�    f  Z[} ��� l ee����  �  �  � ��� l eh���� r  eh��� m  ef�
� boovtrue� o      �� $0 fieldnowselected fieldNowSelected� #  no error, so we selected it.   � ��� :   n o   e r r o r ,   s o   w e   s e l e c t e d   i t .� ��� l ij����  S  ij� + % no need to keep checking altPatterns   � ��� J   n o   n e e d   t o   k e e p   c h e c k i n g   a l t P a t t e r n s� ��� l kk����  �  �  � ��� l kk����  � !  ERROR: try oneAltPattern.    � ��� 6   E R R O R :   t r y   o n e A l t P a t t e r n .  �   R      ���
� .ascrerr ****      � ****� o      �� 0 errmsg errMsg� ���
� 
errn� o      �� 0 errnum errNum�   k  t��� ��� Z  t������ > ty��� o  tu�� 0 errnum errNum� m  ux���I� k  |��� ��� l ||����  � / ) some error OTHER than not found in list:   � ��� R   s o m e   e r r o r   O T H E R   t h a n   n o t   f o u n d   i n   l i s t :� ��� R  |����
� .ascrerr ****      � ****� o  ���� 0 errmsg errMsg� ���
� 
errn� o  ���� 0 errnum errNum�  �  �  � l ������  � = 7 just try the next altPattern, so continue repeat loop.   � ��� n   j u s t   t r y   t h e   n e x t   a l t P a t t e r n ,   s o   c o n t i n u e   r e p e a t   l o o p .� ��� l �������  �  ��  � ���� l ��������  � "  END OF: try oneAltPattern.    � ��� 8   E N D   O F :   t r y   o n e A l t P a t t e r n .  ��   ���� l ����������  ��  ��  ��  �� 0 onealtpattern oneAltPattern n   � ���� o   � ����� 0 altpatterns altPatterns� o   � ����� 	0 prefs   ��� l ����������  ��  ��  � ��� L  ���� o  ������ $0 fieldnowselected fieldNowSelected� ���� l ���������  ��  �  ��  � ��~� l ���}�|�{�}  �|  �{  �~  � R      �z��
�z .ascrerr ****      � ****� o      �y�y 0 errmsg errMsg� �x��w
�x 
errn� o      �v�v 0 errnum errNum�w  � R  ���u��
�u .ascrerr ****      � ****� b  ����� b  ����� b  ����� m  ���� ��� 4 C o u l d n ' t   s e l e c t   a   F i e l d   -  � I  ���t��s�t  0 coercetostring coerceToString� ��r� o  ���q�q 	0 prefs  �r  �s  � m  ���� ���    -  � o  ���p�p 0 errmsg errMsg� �o��n
�o 
errn� o  ���m�m 0 errnum errNum�n  � ��l� l ���k�j�i�k  �j  �i  �l  / ��� l     �h�g�f�h  �g  �f  � ��� l     �e�d�c�e  �d  �c  � ��� i   [ ^��� I      �b��a�b >0 fmgui_managedb_fieldlistfocus fmGUI_ManageDb_FieldListFocus� ��`� o      �_�_ 	0 prefs  �`  �a  � k     F�� ��� l     �^���^  �   version 1.1   � ���    v e r s i o n   1 . 1� ��� l     �]�\�[�]  �\  �[  � ��� Q     D���� k    4�� ��� I    
�Z��Y�Z >0 fmgui_managedb_gototab_fields fmGUI_ManageDb_GoToTab_Fields� ��X� J    �W�W  �X  �Y  � ��� l   �V�U�T�V  �U  �T  � ��� O    2��� O    1��� k    0�� ��� n   ��� I    �S�R�Q�S (0 fmgui_appfrontmost fmGUI_AppFrontMost�R  �Q  �  f    � ��� r    -��� m    �P
�P boovtrue� n      � � 1   * ,�O
�O 
focu  l   *�N�M n    * 4   ' *�L
�L 
tabB m   ( )�K�K  n    ' 4   $ '�J
�J 
scra m   % &�I�I  n    $	 4   ! $�H

�H 
tabg
 m   " #�G�G 	 4    !�F
�F 
cwin m     �E�E �N  �M  � �D L   . 0 m   . /�C
�C boovtrue�D  � 4    �B
�B 
pcap m     � , F i l e M a k e r   P r o   A d v a n c e d� m    �                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  � �A l  3 3�@�?�>�@  �?  �>  �A  � R      �=
�= .ascrerr ****      � **** o      �<�< 0 errmsg errMsg �;�:
�; 
errn o      �9�9 0 errnum errNum�:  � R   < D�8
�8 .ascrerr ****      � **** b   @ C m   @ A � > C o u l d n ' t   f o c u s   o n   F i e l d   l i s t   -   o   A B�7�7 0 errmsg errMsg �6�5
�6 
errn o   > ?�4�4 0 errnum errNum�5  � �3 l  E E�2�1�0�2  �1  �0  �3  �  l     �/�.�-�/  �.  �-    !  l     �,�+�*�,  �+  �*  ! "#" i   _ b$%$ I      �)&�(�) @0 fmgui_managedb_fieldspicktable fmGUI_ManageDb_FieldsPickTable& '�'' o      �&�& 0 basetablename baseTableName�'  �(  % k     A(( )*) l     �%+,�%  +   version 1.3   , �--    v e r s i o n   1 . 3* ./. l     �$�#�"�$  �#  �"  / 010 Q     ?2342 k    +55 676 I    
�!8� �! >0 fmgui_managedb_gototab_fields fmGUI_ManageDb_GoToTab_Fields8 9�9 J    ��  �  �   7 :�: O    +;<; O    *=>= k    )?? @A@ n   &BCB I    &�D��  0 fmgui_popupset fmGUI_PopupSetD EFE n    !GHG 4    !�I
� 
popBI m     JJ �KK  T a b l e :H n    LML 4    �N
� 
tabgN m    �� M 4    �O
� 
cwinO m    �� F P�P o   ! "�� 0 basetablename baseTableName�  �  C  f    A Q�Q L   ' )RR m   ' (�
� boovtrue�  > 4    �S
� 
pcapS m    TT �UU , F i l e M a k e r   P r o   A d v a n c e d< m    VV�                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  �  3 R      �WX
� .ascrerr ****      � ****W o      �� 0 errmsg errMsgX �Y�
� 
errnY o      �� 0 errnum errNum�  4 R   3 ?�Z[
� .ascrerr ****      � ****Z b   7 >\]\ b   7 <^_^ b   7 :`a` m   7 8bb �cc . C o u l d n ' t   s e l e c t   t a b l e   'a o   8 9�
�
 0 basetablename baseTableName_ m   : ;dd �ee  '   -  ] o   < =�	�	 0 errmsg errMsg[ �f�
� 
errnf o   5 6�� 0 errnum errNum�  1 g�g l  @ @����  �  �  �  # hih l     �� ���  �   ��  i jkj l     ��������  ��  ��  k lml i   c fnon I      ��p���� 00 fmgui_managedb_gototab fmGUI_ManageDb_GoToTabp q��q o      ���� 	0 prefs  ��  ��  o k     vrr sts l     ��uv��  u   version 1.0   v �ww    v e r s i o n   1 . 0t xyx l     ��������  ��  ��  y z{z r     |}| K     ~~ ������ 0 tabname tabName m    �� ���  T a b l e s��  } o      ���� 0 defaultprefs defaultPrefs{ ��� r    ��� b    
��� o    ���� 	0 prefs  � o    	���� 0 defaultprefs defaultPrefs� o      ���� 	0 prefs  � ��� l   ��������  ��  ��  � ��� Q    t���� k    X�� ��� I    �������� (0 fmgui_appfrontmost fmGUI_AppFrontMost��  ��  � ��� I    ������� *0 fmgui_managedb_open fmGUI_ManageDb_Open� ���� J    ����  ��  ��  � ���� O    X��� O   " W��� k   ) V�� ��� r   ) A��� N   ) ?�� l  ) >������ 6  ) >��� n   ) 3��� 4  0 3���
�� 
radB� m   1 2���� � n   ) 0��� 4   - 0���
�� 
tabg� m   . /���� � 4   ) -���
�� 
cwin� m   + ,���� � E   4 =��� 1   5 7��
�� 
titl� n   8 <��� o   : <���� 0 tabname tabName� o   8 :���� 	0 prefs  ��  ��  � o      ���� 0 	tabobject 	tabObject� ��� Z   B S������� >  B G��� n   B E��� 1   C E��
�� 
valL� o   B C���� 0 	tabobject 	tabObject� m   E F���� � I  J O�����
�� .prcsclicnull��� ��� uiel� o   J K���� 0 	tabobject 	tabObject��  ��  ��  � ���� L   T V�� m   T U��
�� boovtrue��  � 4   " &���
�� 
pcap� m   $ %�� ��� , F i l e M a k e r   P r o   A d v a n c e d� m    ���                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  ��  � R      ����
�� .ascrerr ****      � ****� o      ���� 0 errmsg errMsg� �����
�� 
errn� o      ���� 0 errnum errNum��  � R   ` t����
�� .ascrerr ****      � ****� b   f s��� b   f q��� b   f m��� m   f i�� ��� ( C o u l d n ' t   g o   t o   t h e   '� n   i l��� o   j l���� 0 tabname tabName� o   i j���� 	0 prefs  � m   m p�� ���  '   t a b   -  � o   q r���� 0 errmsg errMsg� �����
�� 
errn� o   d e���� 0 errnum errNum��  � ��� l  u u����  �  �  �  m ��� l     ����  �  �  � ��� l     ����  �  �  � ��� i   g j��� I      ���� >0 fmgui_managedb_gototab_fields fmGUI_ManageDb_GoToTab_Fields� ��� o      �� 	0 prefs  �  �  � k     �� ��� l     ����  �   version 1.4   � ���    v e r s i o n   1 . 4� ��� l     ����  �  �  � ��� I     	���� 00 fmgui_managedb_gototab fmGUI_ManageDb_GoToTab� ��� K    �� ���� 0 tabname tabName� m    �� ���  F i e l d s�  �  �  � ��� l  
 
����  �  �  �  � ��� l     ����  �  �  � ��� l     ����  �  �  � ��� i   k n��� I      ���� L0 $fmgui_managedb_gototab_relationships $fmGUI_ManageDb_GoToTab_Relationships� ��� o      �� 	0 prefs  �  �  � k     �� ��� l     ����  �   version 1.4   � ���    v e r s i o n   1 . 4� ��� l     ����  �  �  � ��� I     	� �� 00 fmgui_managedb_gototab fmGUI_ManageDb_GoToTab  � K     ��� 0 tabname tabName m     �  R e l a t i o n s h i p s�  �  �  �  l  
 
����  �  �   � l  
 
����  �  �  �  � 	
	 l     ����  �  �  
  l     ����  �  �    i   o r I      ��� >0 fmgui_managedb_gototab_tables fmGUI_ManageDb_GoToTab_Tables � o      �� 	0 prefs  �  �   k       l     ��     version 1.4    �    v e r s i o n   1 . 4  l     ��~�}�  �~  �}    I     	�|�{�| 00 fmgui_managedb_gototab fmGUI_ManageDb_GoToTab �z K     �y �x�y 0 tabname tabName  m    !! �""  T a b l e s�x  �z  �{   #�w# l  
 
�v�u�t�v  �u  �t  �w   $%$ l     �s�r�q�s  �r  �q  % &'& l     �p�o�n�p  �o  �n  ' ()( i   s v*+* I      �m,�l�m B0 fmgui_managedb_listoftablenames fmGUI_ManageDb_ListOfTableNames, -�k- o      �j�j 	0 prefs  �k  �l  + k     a.. /0/ l     �i12�i  1   version 1.2   2 �33    v e r s i o n   1 . 20 454 l     �h�g�f�h  �g  �f  5 676 Q     _89:8 k    K;; <=< I    
�e>�d�e >0 fmgui_managedb_gototab_tables fmGUI_ManageDb_GoToTab_Tables> ?�c? J    �b�b  �c  �d  = @�a@ O    KABA O    JCDC k    IEE FGF n   HIH I    �`�_�^�` (0 fmgui_appfrontmost fmGUI_AppFrontMost�_  �^  I  f    G JKJ l   �]�\�[�]  �\  �[  K LML r    >NON n    <PQP 1   : <�Z
�Z 
valLQ n    :RSR 4   7 :�YT
�Y 
sttxT m   8 9�X�X S l   7U�W�VU 6   7VWV n    +XYX 2   ) +�U
�U 
crowY l   )Z�T�SZ n    )[\[ 4   & )�R]
�R 
tabB] m   ' (�Q�Q \ n    &^_^ 4   # &�P`
�P 
scra` m   $ %�O�O _ n    #aba 4     #�Nc
�N 
tabgc m   ! "�M�M b 4     �Ld
�L 
cwind m    �K�K �T  �S  W =  , 6efe n   - 2ghg 1   0 2�J
�J 
valLh 4   - 0�Ii
�I 
sttxi m   . /�H�H f m   3 5jj �kk  F i l e M a k e r�W  �V  O o      �G�G 0 fmtablenames fmTableNamesM lml n  ? Fnon I   @ F�Fp�E�F *0 fmgui_managedb_save fmGUI_ManageDB_Savep q�Dq J   @ B�C�C  �D  �E  o  f   ? @m r�Br L   G Iss o   G H�A�A 0 fmtablenames fmTableNames�B  D 4    �@t
�@ 
pcapt m    uu �vv , F i l e M a k e r   P r o   A d v a n c e dB m    ww�                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  �a  9 R      �?xy
�? .ascrerr ****      � ****x o      �>�> 0 errmsg errMsgy �=z�<
�= 
errnz o      �;�; 0 errnum errNum�<  : R   S _�:{|
�: .ascrerr ****      � ****{ b   Y ^}~} m   Y \ ��� F C o u l d n ' t   g e t   l i s t   o f   t a b l e   n a m e s   -  ~ o   \ ]�9�9 0 errmsg errMsg| �8��7
�8 
errn� o   W X�6�6 0 errnum errNum�7  7 ��5� l  ` `�4�3�2�4  �3  �2  �5  ) ��� l     �1�0�/�1  �0  �/  � ��� l     �.�-�,�.  �-  �,  � ��� i   w z��� I      �+��*�+ J0 #fmgui_managedb_listofxdbctablenames #fmGUI_ManageDb_ListOfXDBCTableNames� ��)� o      �(�( 	0 prefs  �)  �*  � k     a�� ��� l     �'���'  �   version 1.2   � ���    v e r s i o n   1 . 2� ��� l     �&�%�$�&  �%  �$  � ��� Q     _���� k    K�� ��� I    
�#��"�# >0 fmgui_managedb_gototab_tables fmGUI_ManageDb_GoToTab_Tables� ��!� J    � �   �!  �"  � ��� O    K��� O    J��� k    I�� ��� n   ��� I    ���� (0 fmgui_appfrontmost fmGUI_AppFrontMost�  �  �  f    � ��� l   ����  �  �  � ��� r    >��� n    <��� 1   : <�
� 
valL� n    :��� 4   7 :��
� 
sttx� m   8 9�� � l   7���� 6   7��� n    +��� 2   ) +�
� 
crow� l   )���� n    )��� 4   & )��
� 
tabB� m   ' (�� � n    &��� 4   # &��
� 
scra� m   $ %�� � n    #��� 4     #��
� 
tabg� m   ! "�� � 4     �
�
�
 
cwin� m    �	�	 �  �  � >  , 6��� n   - 2��� 1   0 2�
� 
valL� 4   - 0��
� 
sttx� m   . /�� � m   3 5�� ���  F i l e M a k e r�  �  � o      ��  0 xdbctablenames xDBCTableNames� ��� n  ? F��� I   @ F���� *0 fmgui_managedb_save fmGUI_ManageDB_Save� ��� J   @ B��  �  �  �  f   ? @� �� � L   G I�� o   G H����  0 xdbctablenames xDBCTableNames�   � 4    ���
�� 
pcap� m    �� ��� , F i l e M a k e r   P r o   A d v a n c e d� m    ���                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  �  � R      ����
�� .ascrerr ****      � ****� o      ���� 0 errmsg errMsg� �����
�� 
errn� o      ���� 0 errnum errNum��  � R   S _����
�� .ascrerr ****      � ****� b   Y ^��� m   Y \�� ��� F C o u l d n ' t   g e t   l i s t   o f   t a b l e   n a m e s   -  � o   \ ]���� 0 errmsg errMsg� �����
�� 
errn� o   W X���� 0 errnum errNum��  � ���� l  ` `��������  ��  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� i   { ~��� I      ������� *0 fmgui_managedb_open fmGUI_ManageDb_Open� ���� o      ���� 	0 prefs  ��  ��  � k    ��� ��� l     ������  �   version 1.2   � ���    v e r s i o n   1 . 2� ��� l     ��������  ��  ��  � ��� Q    ����� O   ���� O   ���� k   ��� ��� n      I    �������� (0 fmgui_appfrontmost fmGUI_AppFrontMost��  ��    f    �  l   ��������  ��  ��    l   ����     try to open Manage DB    � ,   t r y   t o   o p e n   M a n a g e   D B 	��	 Z   �
��
 C     n     1    ��
�� 
pnam 4    ��
�� 
cwin m    ����  m     � & M a n a g e   D a t a b a s e   f o r L    ! m     ��
�� boovtrue��   k   $�  I  $ D����
�� .prcsclicnull��� ��� uiel l  $ @���� 6  $ @ n   $ 7 4  4 7��
�� 
menI m   5 6����  n   $ 4  4   1 4��!
�� 
menE! m   2 3����   n   $ 1"#" 4   . 1��$
�� 
menI$ m   / 0%% �&&  M a n a g e# n   $ .'(' 4   + .��)
�� 
menE) m   , -���� ( n   $ +*+* 4   ( +��,
�� 
mbri, m   ) *-- �..  F i l e+ 4   $ (��/
�� 
mbar/ m   & '����  C   8 ?010 1   9 ;��
�� 
pnam1 m   < >22 �33  D a t a b a s e��  ��  ��   454 l  E E��������  ��  ��  5 676 l  E E��89��  8 3 - do this in case already on relationships tab   9 �:: Z   d o   t h i s   i n   c a s e   a l r e a d y   o n   r e l a t i o n s h i p s   t a b7 ;<; l  E J=>?= I  E J��@��
�� .sysodelanull��� ��� nmbr@ m   E F�� ��  >   seconds   ? �AA    s e c o n d s< BCB r   K NDED m   K L�
� boovtrueE o      �� *0 lookingforxdbcerror lookingForXDBCErrorC FGF V   O �HIH Z   U �JK�LJ C  U _MNM n   U [OPO 1   Y [�
� 
pnamP 4   U Y�Q
� 
cwinQ m   W X�� N m   [ ^RR �SS  C o n n e c t   t o  K k   b �TT UVU I  b z�W�
� .prcsclicnull��� ��� uielW l  b vX��X 6  b vYZY n   b k[\[ 4  f k�]
� 
butT] m   i j�� \ 4   b f�^
� 
cwin^ m   d e�� Z =  l u_`_ 1   m o�
� 
pnam` m   p taa �bb  C a n c e l�  �  �  V c�c l  { �defd I  { ��g�
� .sysodelanull��� ��� nmbrg m   { |�� �  e   seconds   f �hh    s e c o n d s�  �  L r   � �iji m   � ��
� boovfalsj o      �� *0 lookingforxdbcerror lookingForXDBCErrorI o   S T�� *0 lookingforxdbcerror lookingForXDBCErrorG klk l  � �����  �  �  l mnm l  � ��op�  o P J to to the TOs tab and dismiss any xDBC connections that failed to connect   p �qq �   t o   t o   t h e   T O s   t a b   a n d   d i s m i s s   a n y   x D B C   c o n n e c t i o n s   t h a t   f a i l e d   t o   c o n n e c tn rsr n  � �tut I   � ��v�� L0 $fmgui_managedb_gototab_relationships $fmGUI_ManageDb_GoToTab_Relationshipsv w�w J   � ���  �  �  u  f   � �s xyx l  � �z{|z I  � ��}�
� .sysodelanull��� ��� nmbr} m   � ��� �  {   seconds   | �~~    s e c o n d sy � r   � ���� m   � ��
� boovtrue� o      �� *0 lookingforxdbcerror lookingForXDBCError� ��� V   � ���� Z   � ������ C  � ���� n   � ���� 1   � ��
� 
pnam� 4   � ���
� 
cwin� m   � ��� � m   � ��� ���  C o n n e c t   t o  � k   � ��� ��� I  � ����
� .prcsclicnull��� ��� uiel� l  � ����� 6  � ���� n   � ���� 4  � ���
� 
butT� m   � ��� � 4   � ���
� 
cwin� m   � ��� � =  � ���� 1   � ��
� 
pnam� m   � ��� ���  C a n c e l�  �  �  � ��� l  � ����� I  � ����
� .sysodelanull��� ��� nmbr� m   � ��� �  �   seconds   � ���    s e c o n d s�  �  � r   � ���� m   � ��
� boovfals� o      �� *0 lookingforxdbcerror lookingForXDBCError� o   � ��� *0 lookingforxdbcerror lookingForXDBCError� ��� l  � �����  �  �  � ��� l  � �����  � M Gzoom out to show all TOs and dismiss any that weren't already dismissed   � ��� � z o o m   o u t   t o   s h o w   a l l   T O s   a n d   d i s m i s s   a n y   t h a t   w e r e n ' t   a l r e a d y   d i s m i s s e d� ��� I  � ����
� .prcskprsnull���     ctxt� m   � ��� ���  i� ���
� 
faal� m   � ��
� eMdsKcmd�  � ��� l  � ����� I  � ����~
� .sysodelanull��� ��� nmbr� m   � ��}�} �~  �   seconds   � ���    s e c o n d s� ��� r   � ���� m   � ��|
�| boovtrue� o      �{�{ *0 lookingforxdbcerror lookingForXDBCError� ��� V   �&��� Z   �!���z�� C  ���� n   � ���� 1   � ��y
�y 
pnam� 4   � ��x�
�x 
cwin� m   � ��w�w � m   ��� ���  C o n n e c t   t o  � k  �� ��� I �v��u
�v .prcsclicnull��� ��� uiel� n  ��� 4  
�t�
�t 
butT� m  �� ���  C a n c e l� 4  
�s�
�s 
cwin� m  	�r�r �u  � ��q� l ���� I �p��o
�p .sysodelanull��� ��� nmbr� m  �n�n �o  �   seconds   � ���    s e c o n d s�q  �z  � r  !��� m  �m
�m boovfals� o      �l�l *0 lookingforxdbcerror lookingForXDBCError� o   � ��k�k *0 lookingforxdbcerror lookingForXDBCError� ��� l ''�j�i�h�j  �i  �h  � ��� l ''�g���g  �   zoom back in   � ���    z o o m   b a c k   i n� ��� r  '7��� n  '5��� 4  05�f�
�f 
txtf� m  34�e�e � n  '0��� 4  +0�d�
�d 
tabg� m  ./�c�c � 4  '+�b�
�b 
cwin� m  )*�a�a � o      �`�` 0 	zoomfield 	zoomField� ��� r  8?��� m  89�_
�_ boovtrue� n      ��� 1  :>�^
�^ 
focu� o  9:�]�] 0 	zoomfield 	zoomField� ��� r  @I��� m  @C�� ���  1 0 0� n      � � 1  DH�\
�\ 
valL  o  CD�[�[ 0 	zoomfield 	zoomField�  r  J^ m  JK�Z
�Z boovtrue n       1  Y]�Y
�Y 
focu n  KY 4  TY�X	
�X 
scra	 m  WX�W�W  n  KT

 4  OT�V
�V 
tabg m  RS�U�U  4  KO�T
�T 
cwin m  MN�S�S   r  _x m  _`�R�R   n       1  sw�Q
�Q 
valL n  `s 4  ns�P
�P 
scrb m  qr�O�O  n  `n 4  in�N
�N 
scra m  lm�M�M  n  `i 4  di�L
�L 
tabg m  gh�K�K  4  `d�J
�J 
cwin m  bc�I�I   r  y� !  m  yz�H�H  ! n      "#" 1  ���G
�G 
valL# n  z�$%$ 4  ���F&
�F 
scrb& m  ���E�E % n  z�'(' 4  ���D)
�D 
scra) m  ���C�C ( n  z�*+* 4  ~��B,
�B 
tabg, m  ���A�A + 4  z~�@-
�@ 
cwin- m  |}�?�?  ./. l ���>�=�<�>  �=  �<  / 0�;0 L  ��11 m  ���:
�: boovtrue�;  ��  � 4    �92
�9 
pcap2 m   	 
33 �44 , F i l e M a k e r   P r o   A d v a n c e d� m    55�                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  � R      �867
�8 .ascrerr ****      � ****6 o      �7�7 0 errmsg errMsg7 �68�5
�6 
errn8 o      �4�4 0 errnum errNum�5  � R  ���39:
�3 .ascrerr ****      � ****9 b  ��;<; m  ��== �>> 4 C o u l d n ' t   o p e n   m a n a g e   D B   -  < o  ���2�2 0 errmsg errMsg: �1?�0
�1 
errn? o  ���/�/ 0 errnum errNum�0  � @�.@ l ���-�,�+�-  �,  �+  �.  � ABA l     �*�)�(�*  �)  �(  B CDC l     �'�&�%�'  �&  �%  D EFE i    �GHG I      �$I�#�$ *0 fmgui_managedb_save fmGUI_ManageDB_SaveI J�"J o      �!�! 	0 prefs  �"  �#  H k     �KK LML l     � NO�   N   version 1.4   O �PP    v e r s i o n   1 . 4M QRQ l     ����  �  �  R STS r     UVU K     WW �X�� ,0 notinmanagedbiserror notInManageDbIsErrorX m    �
� boovtrue�  V o      �� 0 defaultprefs defaultPrefsT YZY l   ����  �  �  Z [\[ r    ]^] b    
_`_ o    �� 	0 prefs  ` o    	�� 0 defaultprefs defaultPrefs^ o      �� 	0 prefs  \ aba l   ����  �  �  b cdc l   ����  �  �  d efe r    ghg m    ii �jj & M a n a g e   D a t a b a s e   f o rh o      �� 40 managedbwindownameprefix manageDbWindowNamePrefixf klk l   mnom r    pqp m    �� 
q o      �
�
 .0 waitcycledelayseconds waitCycleDelaySecondsn   seconds   o �rr    s e c o n d sl sts l   uvwu r    xyx ]    z{z m    �	�	 <{ 1    �
� 
min y o      �� ,0 waitsavetotalseconds waitSaveTotalSecondsv  seconds   w �||  s e c o n d st }~} l   ����  �  �  ~ � r    &��� I   $���
� .sysorondlong        doub� l   ���� ^    ��� o    � �  ,0 waitsavetotalseconds waitSaveTotalSeconds� o    ���� .0 waitcycledelayseconds waitCycleDelaySeconds�  �  � �����
�� 
dire� m     ��
�� olierndD��  � o      ���� 0 waitcyclemax waitCycleMax� ��� l  ' '��������  ��  ��  � ��� Q   ' ����� k   * ��� ��� O   * ���� k   . ��� ��� O   . ���� k   5 ��� ��� l  5 5��������  ��  ��  � ��� n  5 :��� I   6 :�������� (0 fmgui_appfrontmost fmGUI_AppFrontMost��  ��  �  f   5 6� ��� l  ; ;��������  ��  ��  � ��� Z   ; ������� C   ; C��� n   ; A��� 1   ? A��
�� 
pnam� 4   ; ?���
�� 
cwin� m   = >���� � o   A B���� 40 managedbwindownameprefix manageDbWindowNamePrefix� Q   F y���� k   I e�� ��� r   I Q��� n   I O��� 1   M O��
�� 
pnam� 4   I M���
�� 
cwin� m   K L���� � o      ���� (0 managedbwindowname manageDbWindowName� ��� I  R ]�����
�� .prcsclicnull��� ��� uiel� l  R Y������ n   R Y��� 4   V Y���
�� 
butT� m   W X�� ���  O K� 4   R V���
�� 
cwin� m   T U���� ��  ��  ��  � ��� l  ^ c���� I  ^ c�����
�� .sysodelanull��� ��� nmbr� m   ^ _���� ��  �   let click register.   � ��� (   l e t   c l i c k   r e g i s t e r .� ��� l  d d������  � 6 0 will continue below to wait for window to close   � ��� `   w i l l   c o n t i n u e   b e l o w   t o   w a i t   f o r   w i n d o w   t o   c l o s e� ���� l  d d��������  ��  ��  ��  � R      ����
�� .ascrerr ****      � ****� o      ���� 0 errmsg errMsg� �����
�� 
errn� o      ���� 0 errnum errNum��  � R   m y����
�� .ascrerr ****      � ****� b   s x��� m   s v�� ��� @ C o u l d n ' t   s a v e   M a n a g e   D a t a b a s e   -  � o   v w���� 0 errmsg errMsg� �����
�� 
errn� o   q r���� 0 errnum errNum��  ��  � Z   | ������� n   | ���� o   } ���� ,0 notinmanagedbiserror notInManageDbIsError� o   | }���� 	0 prefs  � R   � �����
�� .ascrerr ****      � ****� m   � ��� ��� p M a n a g e   D a t a b a s e   w i n d o w   w a s n ' t   o p e n ,   s o   n o t h i n g   t o   c l o s e .� �����
�� 
errn� m   � ����� ��  ��  � k   � ��� ��� l  � �������  � . ( Not in Manage Database, but that is OK.   � ��� P   N o t   i n   M a n a g e   D a t a b a s e ,   b u t   t h a t   i s   O K .� ���� L   � ��� m   � ���
�� boovtrue��  � ���� l  � ���������  ��  ��  ��  � 4   . 2���
�� 
pcap� m   0 1�� ��� , F i l e M a k e r   P r o   A d v a n c e d� ��� l  � ���������  ��  ��  � ��� n  � ���� I   � �������� "0 windowwaituntil windowWaitUntil� ���� K   � ��� ������ 0 
windowname 
windowName� o   � ����� (0 managedbwindowname manageDbWindowName� ������  0 windownametest windowNameTest� m   � ��� ���   d o e s   n o t   c o n t a i n� ������ 0 whichwindow whichWindow� m   � �   �  a n y� ���� .0 waitcycledelayseconds waitCycleDelaySeconds o   � ����� .0 waitcycledelayseconds waitCycleDelaySeconds ������ 0 waitcyclemax waitCycleMax o   � ����� 0 waitcyclemax waitCycleMax��  ��  ��  �  f   � ��  l  � ���������  ��  ��    l  � �	
	 I  � �����
�� .sysodelanull��� ��� nmbr m   � ����� ��  
 ( " let normal window come to front.     � D   l e t   n o r m a l   w i n d o w   c o m e   t o   f r o n t .    l  � ���������  ��  ��    L   � � m   � ���
�� boovtrue �� l  � ���������  ��  ��  ��  � m   * +�                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  �  l  � �������  �  �   � l  � �����  �  �  �  � R      �
� .ascrerr ****      � **** o      �� 0 errmsg errMsg ��
� 
errn o      �� 0 errnum errNum�  � R   � ��
� .ascrerr ****      � **** b   � � m   � � �   @ C o u l d n ' t   s a v e   M a n a g e   D a t a b a s e   -   o   � ��� 0 errmsg errMsg �!�
� 
errn! o   � ��� 0 errnum errNum�  � "�" l  � �����  �  �  �  F #$# l     ����  �  �  $ %&% l     ����  �  �  & '(' i   � �)*) I      �+�� N0 %fmgui_managedb_table_listoffieldnames %fmGUI_ManageDb_Table_ListOfFieldNames+ ,�, o      �� 0 basetablename baseTableName�  �  * k     H-- ./. l     �01�  0   version 1.1   1 �22    v e r s i o n   1 . 1/ 343 l     ���~�  �  �~  4 565 Q     F7897 k    0:: ;<; I    	�}=�|�} @0 fmgui_managedb_fieldspicktable fmGUI_ManageDb_FieldsPickTable= >�{> o    �z�z 0 basetablename baseTableName�{  �|  < ?@? l  
 
�y�x�w�y  �x  �w  @ A�vA O   
 0BCB O    /DED k    .FF GHG n    *IJI 1   ' )�u
�u 
valLJ n    'KLK 4   $ '�tM
�t 
sttxM m   % &�s�s L n    $NON 2   " $�r
�r 
crowO n    "PQP 4    "�qR
�q 
tabBR m     !�p�p Q n    STS 4    �oU
�o 
scraU m    �n�n T n    VWV 4    �mX
�m 
tabgX m    �l�l W 4    �kY
�k 
cwinY m    �j�j H Z�iZ L   + .[[ 1   + -�h
�h 
rslt�i  E 4    �g\
�g 
pcap\ m    ]] �^^ , F i l e M a k e r   P r o   A d v a n c e dC m   
 __�                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  �v  8 R      �f`a
�f .ascrerr ****      � ****` o      �e�e 0 errmsg errMsga �db�c
�d 
errnb o      �b�b 0 errnum errNum�c  9 R   8 F�acd
�a .ascrerr ****      � ****c b   < Eefe b   < Cghg b   < ?iji m   < =kk �ll X C o u l d n ' t   g e t   l i s t   o f   f i e l d   n a m e s   f o r   t a b l e   'j o   = >�`�` 0 basetablename baseTableNameh m   ? Bmm �nn  '   -  f o   C D�_�_ 0 errmsg errMsgd �^o�]
�^ 
errno o   : ;�\�\ 0 errnum errNum�]  6 p�[p l  G G�Z�Y�X�Z  �Y  �X  �[  ( qrq l     �W�V�U�W  �V  �U  r sts l     �T�S�R�T  �S  �R  t uvu i   � �wxw I      �Qy�P�Q >0 fmgui_managedb_tablelistfocus fmGUI_ManageDb_TableListFocusy z�Oz o      �N�N 	0 prefs  �O  �P  x k     @{{ |}| l     �M~�M  ~   version 1.1    ���    v e r s i o n   1 . 1} ��� l     �L�K�J�L  �K  �J  � ��� Q     >���� k    .�� ��� I    
�I��H�I >0 fmgui_managedb_gototab_tables fmGUI_ManageDb_GoToTab_Tables� ��G� J    �F�F  �G  �H  � ��� l   �E�D�C�E  �D  �C  � ��� O    ,��� O    +��� k    *�� ��� r    '��� m    �B
�B boovtrue� n      ��� 1   $ &�A
�A 
focu� l   $��@�?� n    $��� 4   ! $�>�
�> 
tabB� m   " #�=�= � n    !��� 4    !�<�
�< 
scra� m     �;�; � n    ��� 4    �:�
�: 
tabg� m    �9�9 � 4    �8�
�8 
cwin� m    �7�7 �@  �?  � ��6� L   ( *�� m   ( )�5
�5 boovtrue�6  � 4    �4�
�4 
pcap� m    �� ��� , F i l e M a k e r   P r o   A d v a n c e d� m    ���                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  � ��3� l  - -�2�1�0�2  �1  �0  �3  � R      �/��
�/ .ascrerr ****      � ****� o      �.�. 0 errmsg errMsg� �-��,
�- 
errn� o      �+�+ 0 errnum errNum�,  � R   6 >�*��
�* .ascrerr ****      � ****� b   : =��� m   : ;�� ��� > C o u l d n ' t   f o c u s   o n   F i e l d   l i s t   -  � o   ; <�)�) 0 errmsg errMsg� �(��'
�( 
errn� o   8 9�&�& 0 errnum errNum�'  � ��%� l  ? ?�$�#�"�$  �#  �"  �%  v ��� l     �!� ��!  �   �  � ��� l     ����  �  �  � ��� i   � ���� I      ���� .0 fmgui_managedb_to_add fmGUI_ManageDb_TO_Add� ��� o      �� 	0 prefs  �  �  � k    O�� ��� l     ����  �   version 1.3   � ���    v e r s i o n   1 . 3� ��� l     ����  �  �  � ��� r     ��� K     
�� ���� 0 tocname tocName� m    �
� 
null� ���� 0 dbname dbName� m    �
� 
null� ���� *0 donotchangeexisting doNotChangeExisting� m    �
� boovfals� ���� 0 basetablename baseTableName� m    �
� 
null�  � o      �
�
 0 defaultprefs defaultPrefs� ��� l   �	���	  �  �  � ��� r    ��� b    ��� o    �� 	0 prefs  � o    �� 0 defaultprefs defaultPrefs� o      �� 	0 prefs  � ��� l   ����  �  �  � ��� l   � �����   ��  ��  � ��� l   ��������  ��  ��  � ��� Q   M���� k   9�� ��� I    ������� L0 $fmgui_managedb_gototab_relationships $fmGUI_ManageDb_GoToTab_Relationships� ���� J    ����  ��  ��  � ���� O   9��� O   "8��� k   )7�� ��� n  ) .��� I   * .�������� (0 fmgui_appfrontmost fmGUI_AppFrontMost��  ��  �  f   ) *� ��� r   / F��� 6  / D��� n   / 9�  � 4  6 9�� 
�� 
butT  m   7 8����    n   / 6    4   3 6�� 
�� 
tabg  m   4 5����   4   / 3�� 
�� 
cwin  m   1 2���� � E   : C    1   ; =��
�� 
desc  m   > B   � 	 	  A d d   a   t a b l e� o      ���� 0 addtocbutton addTocButton�  
  
 n  G M    I   H M�� ���� B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow   ��  o   H I���� 0 addtocbutton addTocButton��  ��     f   G H      I  N S�� ��
�� .sysodelanull��� ��� nmbr  m   N O���� ��        Q   T     k   W �       n  W j    I   X j�� ����  0 fmgui_popupset fmGUI_PopupSet      n   X c   !   4   \ c�� "
�� 
popB " m   _ b # # � $ $  D a t a   S o u r c e : ! 4   X \�� %
�� 
cwin % m   Z [����    &�� & n   c f ' ( ' o   d f���� 0 dbname dbName ( o   c d���� 	0 prefs  ��  ��     f   W X   )�� ) I  k ��� *��
�� .miscslctnull���     uiel * l  k � +���� + 6  k � , - , n   k ~ . / . 4  y ~�� 0
�� 
crow 0 m   | }����  / n   k y 1 2 1 4   t y�� 3
�� 
tabB 3 m   w x����  2 n   k t 4 5 4 4   o t�� 6
�� 
scra 6 m   r s����  5 4   k o�� 7
�� 
cwin 7 m   m n����  - =   � 8 9 8 n   � � : ; : 1   � ���
�� 
valL ; 4   � ��� <
�� 
sttx < m   � �����  9 n   � � = > = o   � ����� 0 basetablename baseTableName > o   � ����� 	0 prefs  ��  ��  ��  ��    R      ������
�� .ascrerr ****      � ****��  ��    k   � ? ?  @ A @ l  � ��� B C��   B / )Not an existing data source, so create it    C � D D R N o t   a n   e x i s t i n g   d a t a   s o u r c e ,   s o   c r e a t e   i t A  E F E l  � � G H I G I  � ��� J��
�� .prcskcodnull���     **** J m   � ����� 5��   H !  Hit 'Esc' to close pop up.    I � K K 6   H i t   ' E s c '   t o   c l o s e   p o p   u p . F  L M L l  � ���������  ��  ��   M  N O N l  � �� P Q�   P 9 3 add data source from within adding a new TO window    Q � R R f   a d d   d a t a   s o u r c e   f r o m   w i t h i n   a d d i n g   a   n e w   T O   w i n d o w O  S T S n  � � U V U I   � �� W��  0 fmgui_popupset fmGUI_PopupSet W  X Y X n   � � Z [ Z 4   � �� \
� 
popB \ m   � � ] ] � ^ ^  D a t a   S o u r c e : [ 4   � �� _
� 
cwin _ m   � ���  Y  `� ` m   � � a a � b b ( M a n a g e   D a t a   S o u r c e s &�  �   V  f   � � T  c d c n  � � e f e I   � �� g�� L0 $fmgui_managedatasources_ensureexists $fmGUI_ManageDataSources_EnsureExists g  h� h K   � � i i � j��  0 datasourcename dataSourceName j n   � � k l k o   � ��� 0 dbname dbName l o   � ��� 	0 prefs  �  �  �   f  f   � � d  m n m n  � � o p o I   � �� q�� <0 fmgui_managedatasources_save fmGUI_ManageDataSources_Save q  r� r J   � ���  �  �   p  f   � � n  s t s I  � �� u�
� .sysodelanull��� ��� nmbr u m   � ��� �   t  v w v l  � �����  �  �   w  x y x l  � �� z {�   z 9 3 now that we've added the data source, try again...    { � | | f   n o w   t h a t   w e ' v e   a d d e d   t h e   d a t a   s o u r c e ,   t r y   a g a i n . . . y  } ~ } n  � �  �  I   � �� ���  0 fmgui_popupset fmGUI_PopupSet �  � � � n   � � � � � 4   � �� �
� 
popB � m   � � � � � � �  D a t a   S o u r c e : � 4   � �� �
� 
cwin � m   � ���  �  �� � n   � � � � � o   � ��� 0 dbname dbName � o   � ��� 	0 prefs  �  �   �  f   � � ~  �� � I  �� ��
� .miscslctnull���     uiel � l  � ��� � 6  � � � � n   � � � � � 4  � �� �
� 
crow � m   � ���  � n   � � � � � 4   � �� �
� 
tabB � m   � ���  � n   � � � � � 4   � �� �
� 
scra � m   � ���  � 4   � �� �
� 
cwin � m   � ���  � =  � � � � n   � � � � 1  �
� 
valL � 4   �� �
� 
sttx � m   ��  � n   � � � o  	�� 0 basetablename baseTableName � o  	�� 	0 prefs  �  �  �  �     � � � l ����  �  �   �  � � � r  % � � � n   � � � o  �� 0 tocname tocName � o  �� 	0 prefs   � n       � � � 1   $�
� 
valL � n    � � � 4   � �
� 
txtf � m   � � � � �  N a m e � 4  � �
� 
cwin � m  ��  �  � � � n &4 � � � I  '4� ��� B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow �  �� � n  '0 � � � 4  +0� �
� 
butT � m  ,/ � � � � �  O K � 4  '+� �
� 
cwin � m  )*�~�~ �  �   �  f  &' �  � � � l 55�}�|�{�}  �|  �{   �  ��z � L  57 � � m  56�y
�y boovtrue�z  � 4   " &�x �
�x 
pcap � m   $ % � � � � � , F i l e M a k e r   P r o   A d v a n c e d� m     � ��                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  ��  � R      �w � �
�w .ascrerr ****      � **** � o      �v�v 0 errmsg errMsg � �u ��t
�u 
errn � o      �s�s 0 errnum errNum�t  � R  AM�r � �
�r .ascrerr ****      � **** � b  GL � � � m  GJ � � � � � > C o u l d n ' t   a d d   T O   i n   M a n a g e   D B   -   � o  JK�q�q 0 errmsg errMsg � �p ��o
�p 
errn � o  EF�n�n 0 errnum errNum�o  �  ��m � l NN�l�k�j�l  �k  �j  �m  �  � � � l     �i�h�g�i  �h  �g   �  � � � l     �f�e�d�f  �e  �d   �  � � � i   � � � � � I      �c ��b�c 60 fmgui_managedb_to_listadd fmGUI_ManageDB_TO_ListAdd �  ��a � o      �`�` 	0 prefs  �a  �b   � k     � � �  � � � l     �_ � ��_   �   version 1.1    � � � �    v e r s i o n   1 . 1 �  � � � l     �^�]�\�^  �]  �\   �  � � � r      � � � K      � � �[ ��Z�[ 0 tolist TOList � m     � � � � �  �Z   � o      �Y�Y 0 defaultprefs defaultPrefs �  � � � r     � � � b    
 � � � o    �X�X 	0 prefs   � o    	�W�W 0 defaultprefs defaultPrefs � o      �V�V 	0 prefs   �  � � � l   �U�T�S�U  �T  �S   �  � � � Q    � � � � � k    � � �  � � � r     � � � n     � � � o    �R�R 0 tolist TOList � o    �Q�Q 	0 prefs   � o      �P�P 0 tolist TOList � ! !!  r    "!!! I     �O!�N�O 0 replacesimple replaceSimple! !�M! J    !! !!! o    �L�L 0 tolist TOList! !	!
!	 o    �K�K 0 cr CR!
 !�J! o    �I�I 0 lf LF�J  �M  �N  ! o      �H�H 0 tolist TOList! !!! r   # 0!!! I   # .�G!�F�G 0 
parsechars 
parseChars! !�E! K   $ *!! �D!!�D 0 
sourcetext 
sourceTEXT! o   % &�C�C 0 tolist TOList! �B!�A�B 0 parsestring parseString! o   ' (�@�@ 0 lf LF�A  �E  �F  ! o      �?�? 0 tolist TOList! !!! l  1 1�>�=�<�>  �=  �<  ! !!! Z   1 �!!�;�:! ?  1 8!!! l  1 6!�9�8! I  1 6�7!�6
�7 .corecnte****       ****! o   1 2�5�5 0 tolist TOList�6  �9  �8  ! m   6 7�4�4  ! k   ; �! !  !!!"!! l  ; ;�3�2�1�3  �2  �1  !" !#!$!# l  ; ;�0!%!&�0  !% H B loop over and get list of DBs that need to exist as data sources.   !& �!'!' �   l o o p   o v e r   a n d   g e t   l i s t   o f   D B s   t h a t   n e e d   t o   e x i s t   a s   d a t a   s o u r c e s .!$ !(!)!( X   ; �!*�/!+!* k   K |!,!, !-!.!- r   K X!/!0!/ I   K V�.!1�-�. 0 
parsechars 
parseChars!1 !2�,!2 K   L R!3!3 �+!4!5�+ 0 
sourcetext 
sourceTEXT!4 o   M N�*�* 0 oneto oneTO!5 �)!6�(�) 0 parsestring parseString!6 m   O P!7!7 �!8!8  | |�(  �,  �-  !0 o      �'�' 0 torec TORec!. !9!:!9 r   Y _!;!<!; n   Y ]!=!>!= 4   Z ]�&!?
�& 
cobj!? m   [ \�%�% !> o   Y Z�$�$ 0 torec TORec!< o      �#�# 0 	onedbname 	oneDBName!: !@!A!@ r   ` f!B!C!B n   ` d!D!E!D 4   a d�"!F
�" 
cobj!F m   b c�!�! !E o   ` a� �  0 torec TORec!C o      �� 0 onetablename oneTableName!A !G!H!G r   g u!I!J!I K   g s!K!K �!L!M� 0 dbname dbName!L o   h i�� 0 	onedbname 	oneDBName!M �!N!O� 0 basetablename baseTableName!N o   j k�� 0 onetablename oneTableName!O �!P�� 0 toname TOName!P b   l q!Q!R!Q b   l o!S!T!S o   l m�� 0 	onedbname 	oneDBName!T m   m n!U!U �!V!V  _ _!R o   o p�� 0 onetablename oneTableName�  !J o      �� 0 toparam TOParam!H !W!X!W l  v v����  �  �  !X !Y�!Y I   v |�!Z�� .0 fmgui_managedb_to_add fmGUI_ManageDb_TO_Add!Z ![�![ o   w x�� 0 toparam TOParam�  �  �  �/ 0 oneto oneTO!+ o   > ?�� 0 tolist TOList!) !\!]!\ l  � ����
�  �  �
  !] !^�	!^ I   � ��!_�� *0 fmgui_managedb_save fmGUI_ManageDB_Save!_ !`�!` J   � ���  �  �  �	  �;  �:  ! !a�!a L   � �!b!b m   � ��
� boovtrue�   � R      �!c!d
� .ascrerr ****      � ****!c o      �� 0 errmsg errMsg!d � !e��
�  
errn!e o      ���� 0 errnum errNum��   � R   � ���!f!g
�� .ascrerr ****      � ****!f b   � �!h!i!h m   � �!j!j �!k!k J C o u l d n ' t   f m G U I _ M a n a g e D B _ T O _ L i s t A d d   -  !i o   � ����� 0 errmsg errMsg!g ��!l��
�� 
errn!l o   � ����� 0 errnum errNum��   � !m��!m l  � ���������  ��  ��  ��   � !n!o!n l     ��������  ��  ��  !o !p!q!p l     ��������  ��  ��  !q !r!s!r i   � �!t!u!t I      ��!v���� &0 fmgui_checkboxset fmGUI_CheckboxSet!v !w!x!w o      ����  0 checkboxobject checkboxObject!x !y��!y o      ���� 0 checkboxvalue checkboxValue��  ��  !u k     9!z!z !{!|!{ l     ��!}!~��  !}   version 1.0   !~ �!!    v e r s i o n   1 . 0!| !�!�!� l     ��������  ��  ��  !� !���!� w     9!�!�!� Q    9!�!�!�!� k    %!�!� !�!�!� Z     !�!�����!� >   !�!�!� o    ���� 0 checkboxvalue checkboxValue!� m    ��
�� 
null!� Z    !�!�����!� >   !�!�!� n    !�!�!� 1    ��
�� 
valL!� o    ����  0 checkboxobject checkboxObject!� o    ���� 0 checkboxvalue checkboxValue!� I   ��!���
�� .prcsclicnull��� ��� uiel!� o    ����  0 checkboxobject checkboxObject��  ��  ��  ��  ��  !� !�!�!� L   ! #!�!� m   ! "��
�� boovtrue!� !���!� l  $ $��������  ��  ��  ��  !� R      ��!�!�
�� .ascrerr ****      � ****!� o      ���� 0 errmsg errMsg!� ��!���
�� 
errn!� o      ���� 0 errnum errNum��  !� R   - 9��!�!�
�� .ascrerr ****      � ****!� b   1 8!�!�!� b   1 6!�!�!� b   1 4!�!�!� m   1 2!�!� �!�!� " C o u l d n ' t   s e l e c t   '!� o   2 3���� 0 checkboxvalue checkboxValue!� m   4 5!�!� �!�!� " '   f o r   c h e c k b o x   -  !� o   6 7���� 0 errmsg errMsg!� ��!���
�� 
errn!� o   / 0���� 0 errnum errNum��  !��                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  ��  !s !�!�!� l     ��������  ��  ��  !� !�!�!� l     ��������  ��  ��  !� !�!�!� i   � �!�!�!� I      ��!����� B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow!� !���!� o      �� 0 	buttonref 	buttonRef��  ��  !� k     
!�!� !�!�!� l     �!�!��  !�   version 1.0   !� �!�!�    v e r s i o n   1 . 0!� !�!�!� l     ����  �  �  !� !�!�!� w     !�!�!� n   !�!�!� I    �!��� *0 clickobjectbycoords clickObjectByCoords!� !��!� o    �� 0 	buttonref 	buttonRef�  �  !�  f    !��                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  !� !��!� l  	 	����  �  �  �  !� !�!�!� l     ����  �  �  !� !�!�!� l     ����  �  �  !� !�!�!� i   � �!�!�!� I      ���� 40 fmgui_pastefromclipboard fmGUI_PasteFromClipboard�  �  !� k     �!�!� !�!�!� l     �!�!��  !�    version 1.0, Erik Shagdar   !� �!�!� 4   v e r s i o n   1 . 0 ,   E r i k   S h a g d a r!� !�!�!� l     ����  �  �  !� !�!�!� r     !�!�!� m     �
� boovfals!� o      �� (0 pasemenuitemexists paseMenuItemExists!� !�!�!� l   ����  �  �  !� !�!�!� O    ~!�!�!� O    }!�!�!� k    |!�!� !�!�!� l   ����  �  �  !� !�!�!� n   !�!�!� I    ���� (0 fmgui_appfrontmost fmGUI_AppFrontMost�  �  !�  f    !� !�!�!� l   ����  �  �  !� !�!�!� r    -!�!�!� 6   +!�!�!� n    "!�!�!� 4   "�!�
� 
menI!� m     !�� !� n    !�!�!� 4    �!�
� 
menE!� m    �� !� n    !�!�!� 4    �!�
� 
mbri!� m    !�!� �!�!�  E d i t!� 4    �!�
� 
mbar!� m    �� !� =  # *!�!�!� 1   $ &�
� 
pnam!� m   ' )!�!� �!�!� 
 P a s t e!� o      �� 0 pastemenuitem pasteMenuItem!� " ""  Q   . H"""" I  1 6�"�
� .prcsclicnull��� ��� uiel" o   1 2�� 0 pastemenuitem pasteMenuItem�  " R      �""
� .ascrerr ****      � ****" o      �� 0 errmsg errMsg" �"�
� 
errn" o      �� 0 errnum errNum�  " R   > H�"	"

� .ascrerr ****      � ****"	 b   B G""" m   B E"" �"" R U n a b l e   t o   c l i c k   ' S e l e c t   A l l '   m e n u   i t e m   -  " o   E F�� 0 errmsg errMsg"
 �"�
� 
errn" o   @ A�� 0 errnum errNum�  " """ l  I I����  �  �  " """ l  I I�~�}�|�~  �}  �|  " """ l  I I�{""�{  " G A waiting until the paste item exists suggests the paste completed   " �"" �   w a i t i n g   u n t i l   t h e   p a s t e   i t e m   e x i s t s   s u g g e s t s   t h e   p a s t e   c o m p l e t e d" "�z" U   I |""" k   R w"" """ Q   R o"" �y" Z   U f"!""�x�w"! I  U Z�v"#�u
�v .coredoexnull���     ****"# o   U V�t�t 0 pastemenuitem pasteMenuItem�u  "" k   ] b"$"$ "%"&"% r   ] `"'"("' m   ] ^�s
�s boovtrue"( o      �r�r (0 pasemenuitemexists paseMenuItemExists"& ")�q")  S   a b�q  �x  �w  "  R      �p�o�n
�p .ascrerr ****      � ****�o  �n  �y  " "*�m"* I  p w�l"+�k
�l .sysodelanull��� ��� nmbr"+ m   p s",", ?�      �k  �m  " m   L O�j�j �z  !� 4    �i"-
�i 
pcap"- m   
 ".". �"/"/ , F i l e M a k e r   P r o   A d v a n c e d!� m    "0"0�                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  !� "1"2"1 l   �h�g�f�h  �g  �f  "2 "3"4"3 L    �"5"5 o    ��e�e (0 pasemenuitemexists paseMenuItemExists"4 "6�d"6 l  � ��c�b�a�c  �b  �a  �d  !� "7"8"7 l     �`�_�^�`  �_  �^  "8 "9":"9 l     �]�\�[�]  �\  �[  ": ";"<"; i   � �"=">"= I      �Z"?�Y�Z :0 fmgui_popup_selectbycommand fmGUI_Popup_SelectByCommand"? "@�X"@ o      �W�W 	0 prefs  �X  �Y  "> k    "A"A "B"C"B l     �V"D"E�V  "D   version 1.0   "E �"F"F    v e r s i o n   1 . 0"C "G"H"G l     �U�T�S�U  �T  �S  "H "I"J"I r     "K"L"K K     
"M"M �R"N"O�R 0 popupobject popupObject"N m    �Q
�Q 
null"O �P"P"Q�P 0 popupchoice popupChoice"P m    �O
�O 
null"Q �N"R"S�N 0 selectcommand selectCommand"R m    "T"T �"U"U  i s"S �M"V�L�M &0 clickifalreadyset clickIfAlreadySet"V m    �K
�K boovfals�L  "L o      �J�J 0 defaultprefs defaultPrefs"J "W"X"W l   �I�H�G�I  �H  �G  "X "Y"Z"Y Z    ,"["\�F�E"[ =   "]"^"] n    "_"`"_ m    �D
�D 
pcls"` o    �C�C 	0 prefs  "^ n    "a"b"a m    �B
�B 
pcls"b J    "c"c "d"e"d m    "f"f �"g"g  a"e "h�A"h m    �@�@ �A  "\ r    ("i"j"i K    &"k"k �?"l"m�? 0 popupobject popupObject"l n    "n"o"n 4    �>"p
�> 
cobj"p m    �=�= "o o    �<�< 	0 prefs  "m �;"q�:�; 0 popupchoice popupChoice"q n     $"r"s"r 4   ! $�9"t
�9 
cobj"t m   " #�8�8 "s o     !�7�7 	0 prefs  �:  "j o      �6�6 	0 prefs  �F  �E  "Z "u"v"u l  - -�5�4�3�5  �4  �3  "v "w"x"w l  - -�2�1�0�2  �1  �0  "x "y"z"y r   - 2"{"|"{ b   - 0"}"~"} o   - .�/�/ 	0 prefs  "~ o   . /�.�. 0 defaultprefs defaultPrefs"| o      �-�- 	0 prefs  "z ""�" l  3 3�,�+�*�,  �+  �*  "� "�"�"� r   3 8"�"�"� n   3 6"�"�"� o   4 6�)�) 0 popupobject popupObject"� o   3 4�(�( 	0 prefs  "� o      �'�' 0 popupobject popupObject"� "�"�"� r   9 >"�"�"� n   9 <"�"�"� o   : <�&�& 0 selectcommand selectCommand"� o   9 :�%�% 	0 prefs  "� o      �$�$ 0 selectcommand selectCommand"� "�"�"� r   ? D"�"�"� n   ? B"�"�"� o   @ B�#�# 0 popupchoice popupChoice"� o   ? @�"�" 	0 prefs  "� o      �!�! 0 popupchoice popupChoice"� "�"�"� l  E J"�"�"�"� r   E J"�"�"� n   E H"�"�"� o   F H� �  &0 clickifalreadyset clickIfAlreadySet"� o   E F�� 	0 prefs  "� o      �� &0 clickifalreadyset clickIfAlreadySet"� 6 0 re-select even if popup is the requested value.   "� �"�"� `   r e - s e l e c t   e v e n   i f   p o p u p   i s   t h e   r e q u e s t e d   v a l u e ."� "�"�"� l  K K����  �  �  "� "�"�"� l  K K����  �  �  "� "��"� w   K"�"�"� Q   M"�"�"�"� Z   P�"�"��"�"� H   P V"�"� l  P U"���"� I  P U�"��
� .coredoexnull���     ****"� o   P Q�� 0 popupobject popupObject�  �  �  "� k   Y a"�"� "�"�"� l  Y Y�"�"��  "� * $ does NOT exist, so error with that:   "� �"�"� H   d o e s   N O T   e x i s t ,   s o   e r r o r   w i t h   t h a t :"� "�"�"� R   Y _�"�"�
� .ascrerr ****      � ****"� m   ] ^"�"� �"�"� R T h e   s p e c i f i e d   p o p u p O b j e c t   d o e s   n o t   e x i s t ."� �"��
� 
errn"� m   [ \�� �  "� "��"� l  ` `�
�	��
  �	  �  �  �  "� k   d�"�"� "�"�"� l  d d�"�"��  "� !  the popupObject DOES exist   "� �"�"� 6   t h e   p o p u p O b j e c t   D O E S   e x i s t"� "�"�"� r   d g"�"�"� m   d e�
� boovfals"� o      �� 0 mustpick mustPick"� "�"�"� Z   h$"�"��"�"� H   h r"�"� l  h q"���"� I  h q�"�� 
� .coredoexnull���     ****"� n   h m"�"�"� 1   i m��
�� 
valL"� o   h i���� 0 popupobject popupObject�   �  �  "� k   u z"�"� "�"�"� l  u u��"�"���  "� i c first check if the value of the popupObject exists - if it doesn't, then we can't test it directly   "� �"�"� �   f i r s t   c h e c k   i f   t h e   v a l u e   o f   t h e   p o p u p O b j e c t   e x i s t s   -   i f   i t   d o e s n ' t ,   t h e n   w e   c a n ' t   t e s t   i t   d i r e c t l y"� "�"�"� r   u x"�"�"� m   u v��
�� boovtrue"� o      ���� 0 mustpick mustPick"� "���"� l  y y��������  ��  ��  ��  �  "� l  }$"�"�"�"� k   }$"�"� "�"�"� l  } }��"�"���  "� K E note that our selection might be one of several 'matching' commands:   "� �"�"� �   n o t e   t h a t   o u r   s e l e c t i o n   m i g h t   b e   o n e   o f   s e v e r a l   ' m a t c h i n g '   c o m m a n d s :"� "���"� Z   }$"�"�"���"� o   } ~���� &0 clickifalreadyset clickIfAlreadySet"� k   � �"�"� "�"�"� l  � ���"�"���  "� > 8 RE-SELECT even if popup already is the requested value.   "� �"�"� p   R E - S E L E C T   e v e n   i f   p o p u p   a l r e a d y   i s   t h e   r e q u e s t e d   v a l u e ."� "�"�"� r   � �"�"�"� m   � ���
�� boovtrue"� o      ���� 0 mustpick mustPick"� "���"� l  � ���������  ��  ��  ��  "� "�"�"� =  � �"�"�"� o   � ����� 0 selectcommand selectCommand"� m   � �"�"� �"�"�  i s"� "�"�"� k   � �"�"� "�"�"� Z   � �"�"�����"� >  � �"�# "� n   � �### 1   � ���
�� 
valL# o   � ����� 0 popupobject popupObject#  o   � ����� 0 popupchoice popupChoice"� r   � �### m   � ���
�� boovtrue# o      ���� 0 mustpick mustPick��  ��  "� #��# l  � ���������  ��  ��  ��  "� ### =  � �##	# o   � ����� 0 selectcommand selectCommand#	 m   � �#
#
 �##  c o n t a i n s# ### k   � �## ### Z   � �##����# H   � �## E   � �### n   � �### 1   � ���
�� 
valL# o   � ����� 0 popupobject popupObject# o   � ����� 0 popupchoice popupChoice# r   � �### m   � ���
�� boovtrue# o      ���� 0 mustpick mustPick��  ��  # #��# l  � ���������  ��  ��  ��  # ### =  � �### o   � ����� 0 selectcommand selectCommand# m   � �## �# #   s t a r t s W i t h# #!#"#! k   � �#### #$#%#$ Z   � �#&#'����#& H   � �#(#( C   � �#)#*#) n   � �#+#,#+ 1   � ���
�� 
valL#, o   � ����� 0 popupobject popupObject#* o   � ����� 0 popupchoice popupChoice#' r   � �#-#.#- m   � ���
�� boovtrue#. o      ���� 0 mustpick mustPick��  ��  #% #/��#/ l  � ���������  ��  ��  ��  #" #0#1#0 =  � �#2#3#2 o   � ����� 0 selectcommand selectCommand#3 m   � �#4#4 �#5#5  b e g i n s W i t h#1 #6#7#6 k   �#8#8 #9#:#9 Z   � �#;#<����#; H   � �#=#= C   � �#>#?#> n   � �#@#A#@ 1   � ���
�� 
valL#A o   � ����� 0 popupobject popupObject#? o   � ����� 0 popupchoice popupChoice#< r   � �#B#C#B m   � ���
�� boovtrue#C o      ���� 0 mustpick mustPick��  ��  #: #D�#D l   ����  �  �  �  #7 #E#F#E = 	#G#H#G o  �� 0 selectcommand selectCommand#H m  #I#I �#J#J  e n d s W i t h#F #K�#K k   #L#L #M#N#M Z  #O#P��#O H  #Q#Q D  #R#S#R n  #T#U#T 1  �
� 
valL#U o  �� 0 popupobject popupObject#S o  �� 0 popupchoice popupChoice#P r  #V#W#V m  �
� boovtrue#W o      �� 0 mustpick mustPick�  �  #N #X�#X l ����  �  �  �  �  ��  ��  "� C = we can see the value without 'picking' the menu, so test it:   "� �#Y#Y z   w e   c a n   s e e   t h e   v a l u e   w i t h o u t   ' p i c k i n g '   t h e   m e n u ,   s o   t e s t   i t :"� #Z#[#Z l %%����  �  �  #[ #\#]#\ Z  %�#^#_��#^ o  %&�� 0 mustpick mustPick#_ Z  )�#`#a��#` > ),#b#c#b o  )*�� 0 popupchoice popupChoice#c m  *+�
� 
null#a k  /�#d#d #e#f#e I /4�#g�
� .prcsclicnull��� ��� uiel#g o  /0�� 0 popupobject popupObject�  #f #h#i#h Z  5�#j#k#l�#j = 5:#m#n#m o  56�� 0 selectcommand selectCommand#n m  69#o#o �#p#p  i s#k I =Y�#q�
� .prcsclicnull��� ��� uiel#q l =U#r��#r 6 =U#s#t#s n  =H#u#v#u 4 CH�#w
� 
menI#w m  FG�� #v n  =C#x#y#x 4  >C�#z
� 
menE#z m  AB�� #y o  =>�� 0 popupobject popupObject#t = KT#{#|#{ 1  LP�
� 
pnam#| o  QS�� 0 popupchoice popupChoice�  �  �  #l #}#~#} = \a##�# o  \]�� 0 selectcommand selectCommand#� m  ]`#�#� �#�#�  c o n t a i n s#~ #�#�#� k  d�#�#� #�#�#� I d��#��
� .prcsclicnull��� ��� uiel#� l d|#���#� 6 d|#�#�#� n  do#�#�#� 4 jo�#�
� 
menI#� m  mn�� #� n  dj#�#�#� 4  ej�#�
� 
menE#� m  hi�� #� o  de�� 0 popupobject popupObject#� E  r{#�#�#� 1  sw�
� 
pnam#� o  xz�� 0 popupchoice popupChoice�  �  �  #� #��#� l ������  �  �  �  #� #�#�#� = ��#�#�#� o  ���� 0 selectcommand selectCommand#� m  ��#�#� �#�#�  b e g i n s W i t h#� #�#�#� k  ��#�#� #�#�#� I ���#��
� .prcsclicnull��� ��� uiel#� l ��#���#� 6 ��#�#�#� n  ��#�#�#� 4 ���#�
� 
menI#� m  ���~�~ #� n  ��#�#�#� 4  ���}#�
�} 
menE#� m  ���|�| #� o  ���{�{ 0 popupobject popupObject#� C  ��#�#�#� 1  ���z
�z 
pnam#� o  ���y�y 0 popupchoice popupChoice�  �  �  #� #��x#� l ���w�v�u�w  �v  �u  �x  #� #�#�#� = ��#�#�#� o  ���t�t 0 selectcommand selectCommand#� m  ��#�#� �#�#�  e n d s W i t h#� #��s#� k  ��#�#� #�#�#� I ���r#��q
�r .prcsclicnull��� ��� uiel#� l ��#��p�o#� 6 ��#�#�#� n  ��#�#�#� 4 ���n#�
�n 
menI#� m  ���m�m #� n  ��#�#�#� 4  ���l#�
�l 
menE#� m  ���k�k #� o  ���j�j 0 popupobject popupObject#� D  ��#�#�#� 1  ���i
�i 
pnam#� o  ���h�h 0 popupchoice popupChoice�p  �o  �q  #� #��g#� l ���f�e�d�f  �e  �d  �g  �s  �  #i #��c#� l ���b�a�`�b  �a  �`  �c  �  �  �  �  #] #�#�#� l ���_�^�]�_  �^  �]  #� #�#�#� L  ��#�#� m  ���\
�\ boovtrue#� #��[#� l ���Z�Y�X�Z  �Y  �X  �[  "� R      �W#�#�
�W .ascrerr ****      � ****#� o      �V�V 0 errmsg errMsg#� �U#��T
�U 
errn#� o      �S�S 0 errnum errNum�T  "� R  ��R#�#�
�R .ascrerr ****      � ****#� b  �#�#�#� b  �#�#�#� b  ��#�#�#� b  ��#�#�#� b  ��#�#�#� m  ��#�#� �#�#� N C o u l d n ' t   s e l e c t   m e n u   i t e m   w h o s e   v a l u e   _#� o  ���Q�Q 0 selectcommand selectCommand#� m  ��#�#� �#�#�  _   '#� o  ���P�P 0 popupchoice popupChoice#� m  �#�#� �#�#�  '   i n   p o p u p   -  #� o  �O�O 0 errmsg errMsg#� �N#��M
�N 
errn#� o  ���L�L 0 errnum errNum�M  "��                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  �  "< #�#�#� l     �K�J�I�K  �J  �I  #� #�#�#� l     �H�G�F�H  �G  �F  #� #�#�#� i   � �#�#�#� I      �E#��D�E  0 fmgui_popupset fmGUI_PopupSet#� #�#�#� o      �C�C 0 popupobject popupObject#� #��B#� o      �A�A 0 popupchoice popupChoice�B  �D  #� k     ,#�#� #�#�#� l     �@#�#��@  #�   version 1.0   #� �#�#�    v e r s i o n   1 . 0#� #�#�#� l     �?�>�=�?  �>  �=  #� #��<#� w     ,#�#�#� Q    ,#�#�#�#� k    #�#� #�#�#� I    �;#��:�; :0 fmgui_popup_selectbycommand fmGUI_Popup_SelectByCommand#� #��9#� K    $ $  �8$$�8 0 popupobject popupObject$ o    �7�7 0 popupobject popupObject$ �6$$�6 0 popupchoice popupChoice$ o   	 
�5�5 0 popupchoice popupChoice$ �4$�3�4 0 selectcommand selectCommand$ m    $$ �$$  c o n t a i n s�3  �9  �:  #� $$	$ L    $
$
 1    �2
�2 
rslt$	 $�1$ l   �0�/�.�0  �/  �.  �1  #� R      �-$$
�- .ascrerr ****      � ****$ o      �,�, 0 errmsg errMsg$ �+$�*
�+ 
errn$ o      �)�) 0 errnum errNum�*  #� R     ,�($$
�( .ascrerr ****      � ****$ b   $ +$$$ b   $ )$$$ b   $ '$$$ m   $ %$$ �$$ " C o u l d n ' t   s e l e c t   '$ o   % &�'�' 0 popupchoice popupChoice$ m   ' ($$ �$$  '   i n   p o p u p   -  $ o   ) *�&�& 0 errmsg errMsg$ �%$�$
�% 
errn$ o   " #�#�# 0 errnum errNum�$  #��                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  �<  #� $$$ l     �"�!� �"  �!  �   $ $$$ l     ����  �  �  $ $ $!$  i   � �$"$#$" I      ���� 00 fmgui_selectallandcopy fmGUI_SelectAllAndCopy�  �  $# k     �$$$$ $%$&$% l     �$'$(�  $'   version 1.0   $( �$)$)    v e r s i o n   1 . 0$& $*$+$* l     ����  �  �  $+ $,$-$, I    �$.�
� .JonspClpnull���     ****$. m     $/$/ �$0$0  �  $- $1$2$1 r    	$3$4$3 m    �
� boovfals$4 o      �� $0 clipboardchanged clipboardChanged$2 $5$6$5 l  
 
����  �  �  $6 $7$8$7 O   
 �$9$:$9 O    �$;$<$; k    �$=$= $>$?$> n   $@$A$@ I    ���� (0 fmgui_appfrontmost fmGUI_AppFrontMost�  �  $A  f    $? $B$C$B l   ��
�	�  �
  �	  $C $D$E$D Q    L$F$G$H$F I   8�$I�
� .prcsclicnull��� ��� uiel$I l   4$J��$J 6   4$K$L$K n    +$M$N$M 4  ( +�$O
� 
menI$O m   ) *�� $N n    ($P$Q$P 4   % (�$R
� 
menE$R m   & '�� $Q n    %$S$T$S 4   " %� $U
�  
mbri$U m   # $$V$V �$W$W  E d i t$T 4    "��$X
�� 
mbar$X m     !���� $L =  , 3$Y$Z$Y 1   - /��
�� 
pnam$Z m   0 2$[$[ �$\$\  S e l e c t   A l l�  �  �  $G R      ��$]$^
�� .ascrerr ****      � ****$] o      ���� 0 errmsg errMsg$^ ��$_��
�� 
errn$_ o      ���� 0 errnum errNum��  $H R   @ L��$`$a
�� .ascrerr ****      � ****$` b   F K$b$c$b m   F I$d$d �$e$e R U n a b l e   t o   c l i c k   ' S e l e c t   A l l '   m e n u   i t e m   -  $c o   I J���� 0 errmsg errMsg$a ��$f��
�� 
errn$f o   D E���� 0 errnum errNum��  $E $g$h$g l  M M��������  ��  ��  $h $i$j$i Q   M y$k$l$m$k I  P e��$n��
�� .prcsclicnull��� ��� uiel$n l  P a$o����$o n   P a$p$q$p 4   \ a��$r
�� 
menI$r m   ] `$s$s �$t$t  C o p y$q n   P \$u$v$u 4   Y \��$w
�� 
menE$w m   Z [���� $v n   P Y$x$y$x 4   T Y��$z
�� 
mbri$z m   U X${${ �$|$|  E d i t$y 4   P T��$}
�� 
mbar$} m   R S���� ��  ��  ��  $l R      ��$~$
�� .ascrerr ****      � ****$~ o      ���� 0 errmsg errMsg$ ��$���
�� 
errn$� o      ���� 0 errnum errNum��  $m R   m y��$�$�
�� .ascrerr ****      � ****$� b   s x$�$�$� m   s v$�$� �$�$� F U n a b l e   t o   c l i c k   ' C o p y '   m e n u   i t e m   -  $� o   v w���� 0 errmsg errMsg$� ��$���
�� 
errn$� o   q r���� 0 errnum errNum��  $j $�$�$� l  z z��������  ��  ��  $� $�$�$� l  z z��������  ��  ��  $� $�$�$� U   z �$�$�$� k   � �$�$� $�$�$� Q   � �$�$�$�$� k   � �$�$� $�$�$� l  � ���$�$���  $� � � We set the clipboard to an empty string. Once utf8 is no longer in it (or isn't empty), we must have picked up the objects copied above.   $� �$�$�   W e   s e t   t h e   c l i p b o a r d   t o   a n   e m p t y   s t r i n g .   O n c e   u t f 8   i s   n o   l o n g e r   i n   i t   ( o r   i s n ' t   e m p t y ) ,   w e   m u s t   h a v e   p i c k e d   u p   t h e   o b j e c t s   c o p i e d   a b o v e .$� $�$�$� e   � �$�$� I  � �����$�
�� .JonsgClp****    ��� null��  $� ��$���
�� 
rtyp$� m   � ���
�� 
utf8��  $� $���$� Z   � �$�$�����$� ?  � �$�$�$� n   � �$�$�$� 1   � ���
�� 
leng$� 1   � ���
�� 
rslt$� m   � �����  $� k   � �$�$� $�$�$� r   � �$�$�$� m   � ���
�� boovtrue$� o      ���� $0 clipboardchanged clipboardChanged$� $���$�  S   � ���  ��  ��  ��  $� R      ������
�� .ascrerr ****      � ****��  ��  $� k   � �$�$� $�$�$� r   � �$�$�$� m   � ���
�� boovtrue$� o      ���� $0 clipboardchanged clipboardChanged$� $���$�  S   � ���  $� $���$� I  � ��$��
� .sysodelanull��� ��� nmbr$� m   � ��� �  ��  $� m   } ��� 
$� $��$� l  � �����  �  �  �  $< 4    �$�
� 
pcap$� m    $�$� �$�$� , F i l e M a k e r   P r o   A d v a n c e d$: m   
 $�$��                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  $8 $�$�$� l  � �����  �  �  $� $�$�$� L   � �$�$� o   � ��� $0 clipboardchanged clipboardChanged$� $��$� l  � �����  �  �  �  $! $�$�$� l     ����  �  �  $� $�$�$� l     ����  �  �  $� $�$�$� i   � �$�$�$� I      �$��� (0 fmgui_textfieldset fmGUI_TextFieldSet$� $�$�$� o      �� "0 textfieldobject textfieldObject$� $��$� o      ��  0 textfieldvalue textfieldValue�  �  $� k     @$�$� $�$�$� l     �$�$��  $�   version 1.0   $� �$�$�    v e r s i o n   1 . 0$� $�$�$� l     ����  �  �  $� $��$� w     @$�$�$� Q    @$�$�$�$� k    ,$�$� $�$�$� Z    '$�$���$� >   $�$�$� o    ��  0 textfieldvalue textfieldValue$� m    �
� 
null$� Z    #$�$��$�$� >   $�$�$� n    $�$�$� 1    �
� 
valL$� o    �� "0 textfieldobject textfieldObject$� l   $���$� o    ��  0 textfieldvalue textfieldValue�  �  $� k    $�$� $�$�$� r    $�$�$� m    �
� boovtrue$� n      $�$�$� 1    �
� 
focu$� o    �� "0 textfieldobject textfieldObject$� $��$� r    $�$�$� o    ��  0 textfieldvalue textfieldValue$� n      $�$�$� 1    �
� 
valL$� o    �� "0 textfieldobject textfieldObject�  �  $� l  ! #$�$�$�$� L   ! #$�$� m   ! "�
� boovfals$�   did not need to change.   $� �$�$� 0   d i d   n o t   n e e d   t o   c h a n g e .�  �  $� $�$�$� L   ( *$�$� m   ( )�
� boovtrue$� $��$� l  + +����  �  �  �  $� R      �$�% 
� .ascrerr ****      � ****$� o      �� 0 errmsg errMsg%  �%�
� 
errn% o      �� 0 errnum errNum�  $� R   4 @�%%
� .ascrerr ****      � ****% b   8 ?%%% b   8 =%%% b   8 ;%%	% m   8 9%
%
 �%% " C o u l d n ' t   s e l e c t   '%	 o   9 :��  0 textfieldvalue textfieldValue% m   ; <%% �%% & '   f o r   t e x t   f i e l d   -  % o   = >�� 0 errmsg errMsg% �%�~
� 
errn% o   6 7�}�} 0 errnum errNum�~  $��                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  �  $� %%% l     �|�{�z�|  �{  �z  % %%% l     �y�x�w�y  �x  �w  % %%% i   � �%%% I      �v�u�t�v (0 fmgui_appfrontmost fmGUI_AppFrontMost�u  �t  % k     E%% %%% l     �s%%�s  %   version 1.1   % �%%    v e r s i o n   1 . 1% %%% l     �r�q�p�r  �q  �p  % %�o% O     E% %!%  O    D%"%#%" Z    C%$%%�n�m%$ >   %&%'%& 1    �l
�l 
pisf%' m    �k
�k boovtrue%% k    ?%(%( %)%*%) r    %+%,%+ m    �j
�j boovtrue%, 1    �i
�i 
pisf%* %-%.%- I   �h%/�g
�h .sysodelanull��� ��� nmbr%/ m    �f�f �g  %. %0%1%0 l   �e�d�c�e  �d  �c  %1 %2%3%2 l   �b%4%5�b  %4 ) #close FMEmpower window if it's open   %5 �%6%6 F c l o s e   F M E m p o w e r   w i n d o w   i f   i t ' s   o p e n%3 %7�a%7 Z    ?%8%9�`�_%8 =   '%:%;%: n    %%<%=%< 1   # %�^
�^ 
pnam%= 4    #�]%>
�] 
cwin%> m   ! "�\�\ %; m   % &%?%? �%@%@ $ 2 e m p o w e r F M   T o o l b o x%9 k   * ;%A%A %B%C%B I  * 5�[%D�Z
�[ .prcsclicnull��� ��� uiel%D n   * 1%E%F%E 4   . 1�Y%G
�Y 
butT%G m   / 0�X�X %F 4   * .�W%H
�W 
cwin%H m   , -�V�V �Z  %C %I�U%I I  6 ;�T%J�S
�T .sysodelanull��� ��� nmbr%J m   6 7�R�R �S  �U  �`  �_  �a  �n  �m  %# 4    �Q%K
�Q 
pcap%K m    %L%L �%M%M , F i l e M a k e r   P r o   A d v a n c e d%! m     %N%N�                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  �o  % %O%P%O l     �P�O�N�P  �O  �N  %P %Q%R%Q l     �M�L�K�M  �L  �K  %R %S%T%S i   � �%U%V%U I      �J�I�H�J 00 fmgui_dataviewer_close fmGUI_DataViewer_Close�I  �H  %V k     3%W%W %X%Y%X l     �G%Z%[�G  %Z   version 1.0   %[ �%\%\    v e r s i o n   1 . 0%Y %]%^%] l     �F�E�D�F  �E  �D  %^ %_�C%_ O     3%`%a%` O    2%b%c%b k    1%d%d %e%f%e n   %g%h%g I    �B�A�@�B (0 fmgui_appfrontmost fmGUI_AppFrontMost�A  �@  %h  f    %f %i�?%i Q    1%j%k�>%j I   (�=%l�<
�= .prcsclicnull��� ��� uiel%l n    $%m%n%m 4   ! $�;%o
�; 
butT%o m   " #�:�: %n l   !%p�9�8%p 6   !%q%r%q 4   �7%s
�7 
cwin%s m    �6�6 %r =    %t%u%t 1    �5
�5 
pnam%u m    %v%v �%w%w  D a t a   V i e w e r�9  �8  �<  %k R      �4�3�2
�4 .ascrerr ****      � ****�3  �2  �>  �?  %c 4    �1%x
�1 
pcap%x m    %y%y �%z%z , F i l e M a k e r   P r o   A d v a n c e d%a m     %{%{�                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  �C  %T %|%}%| l     �0�/�.�0  �/  �.  %} %~%%~ l     �-�,�+�-  �,  �+  % %�%�%� i   � �%�%�%� I      �*�)�(�* .0 fmgui_inspector_close fmGUI_Inspector_Close�)  �(  %� k     r%�%� %�%�%� l     �'%�%��'  %�   version 1.0   %� �%�%�    v e r s i o n   1 . 0%� %�%�%� l     �&�%�$�&  �%  �$  %� %��#%� O     r%�%�%� O    q%�%�%� k    p%�%� %�%�%� n   %�%�%� I    �"�!� �" (0 fmgui_appfrontmost fmGUI_AppFrontMost�!  �   %�  f    %� %�%�%� l   �%�%��  %� I C try the click twice in case the first only brings window to front.   %� �%�%� �   t r y   t h e   c l i c k   t w i c e   i n   c a s e   t h e   f i r s t   o n l y   b r i n g s   w i n d o w   t o   f r o n t .%� %�%�%� Q    .%�%��%� r    %%�%�%� m    �� %� n      %�%�%� 1   " $�
� 
pidx%� l   "%���%� 6   "%�%�%� 4   �%�
� 
cwin%� m    �� %� =   !%�%�%� 1    �
� 
pnam%� m     %�%� �%�%�  I n s p e c t o r�  �  %� R      ���
� .ascrerr ****      � ****�  �  �  %� %�%�%� Q   / O%�%��%� I  2 F�%��
� .prcsclicnull��� ��� uiel%� n   2 B%�%�%� 4   ? B�%�
� 
butT%� m   @ A�� %� l  2 ?%���%� 6  2 ?%�%�%� 4  2 6�%�
� 
cwin%� m   4 5�� %� =  7 >%�%�%� 1   8 :�

�
 
pnam%� m   ; =%�%� �%�%�  I n s p e c t o r�  �  �  %� R      �	��
�	 .ascrerr ****      � ****�  �  �  %� %��%� Q   P p%�%��%� I  S g�%��
� .prcsclicnull��� ��� uiel%� n   S c%�%�%� 4   ` c�%�
� 
butT%� m   a b�� %� l  S `%�� ��%� 6  S `%�%�%� 4  S W��%�
�� 
cwin%� m   U V���� %� =  X _%�%�%� 1   Y [��
�� 
pnam%� m   \ ^%�%� �%�%�  I n s p e c t o r�   ��  �  %� R      ������
�� .ascrerr ****      � ****��  ��  �  �  %� 4    ��%�
�� 
pcap%� m    %�%� �%�%� , F i l e M a k e r   P r o   A d v a n c e d%� m     %�%��                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  �#  %� %�%�%� l     ��������  ��  ��  %� %�%�%� l     ��������  ��  ��  %� %�%�%� i   � �%�%�%� I      �������� 00 fmgui_inspector_ensure fmGUI_Inspector_Ensure��  ��  %� k     h%�%� %�%�%� l     ��%�%���  %�   version 1.1   %� �%�%�    v e r s i o n   1 . 1%� %�%�%� l     ��������  ��  ��  %� %�%�%� Q     f%�%�%�%� k    R%�%� %�%�%� I    �������� 20 fmgui_modeensure_layout fmGUI_ModeEnsure_Layout��  ��  %� %���%� O   	 R%�%�%� O    Q%�%�%� k    P%�%� %�%�%� l   ��������  ��  ��  %� %�%�%� n   %�%�%� I    �������� (0 fmgui_appfrontmost fmGUI_AppFrontMost��  ��  %�  f    %� %�%�%� l   ��������  ��  ��  %� %�%�%� Z    M%�%�����%� H    ,%�%� l   +%�����%� I   +��%���
�� .coredoexnull���     ****%� l   '%�����%� 6   '%�%�%� 4   ��%�
�� 
cwin%� m    ���� %� E    &%�& %� 1     "��
�� 
pnam&  m   # %&& �&&  I n s p e c t o r��  ��  ��  ��  ��  %� I  / I��&��
�� .prcsclicnull��� ��� uiel& l  / E&����& 6  / E&&& n   / <&&& 4  9 <��&	
�� 
menI&	 m   : ;���� & n   / 9&
&&
 4   6 9��&
�� 
menE& m   7 8���� & n   / 6&&& 4   3 6��&
�� 
mbri& m   4 5&& �&&  V i e w& 4   / 3��&
�� 
mbar& m   1 2���� & =  = D&&& 1   > @��
�� 
pnam& m   A C&& �&&  I n s p e c t o r��  ��  ��  ��  ��  %� &��& L   N P&& m   N O��
�� boovtrue��  %� 4    ��&
�� 
pcap& m    && �&& , F i l e M a k e r   P r o   A d v a n c e d%� m   	 
&&�                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  ��  %� R      ��&&
�� .ascrerr ****      � ****& o      ���� 0 errmsg errMsg& ��&��
�� 
errn& o      �� 0 errnum errNum��  %� R   Z f�& &!
� .ascrerr ****      � ****&  b   ` e&"&#&" m   ` c&$&$ �&%&% 4 C o u l d n ' t   o p e n   I n s p e c t o r   -  &# o   c d�� 0 errmsg errMsg&! �&&�
� 
errn&& o   ^ _�� 0 errnum errNum�  %� &'�&' l  g g����  �  �  �  %� &(&)&( l     ����  �  �  &) &*&+&* l     ����  �  �  &+ &,&-&, i   � �&.&/&. I      ���� 20 fmgui_modeensure_browse fmGUI_ModeEnsure_Browse�  �  &/ k     &0&0 &1&2&1 l     �&3&4�  &3   version 1.0   &4 �&5&5    v e r s i o n   1 . 0&2 &6&7&6 l     ����  �  �  &7 &8&9&8 Q     &:&;&<&: k    &=&= &>&?&> I    	�&@�� $0 fmgui_modeselect fmGUI_ModeSelect&@ &A�&A m    &B&B �&C&C  B r o w s e�  �  &? &D�&D l  
 
����  �  �  �  &; R      �&E&F
� .ascrerr ****      � ****&E o      �� 0 errmsg errMsg&F �&G�
� 
errn&G o      �� 0 errnum errNum�  &< R    �&H&I
� .ascrerr ****      � ****&H b    &J&K&J m    &L&L �&M&M B C o u l d n ' t   e n s u r e   i n   B r o w s e   M o d e   -  &K o    �� 0 errmsg errMsg&I �&N�
� 
errn&N o    �� 0 errnum errNum�  &9 &O&P&O l   ����  �  �  &P &Q�&Q l   ����  �  �  �  &- &R&S&R l     ����  �  �  &S &T&U&T l     ����  �  �  &U &V&W&V i   � �&X&Y&X I      ���� .0 fmgui_modeensure_find fmGUI_ModeEnsure_Find�  �  &Y k     &Z&Z &[&\&[ l     �&]&^�  &]   version 1.0   &^ �&_&_    v e r s i o n   1 . 0&\ &`&a&` l     ����  �  �  &a &b&c&b Q     &d&e&f&d k    &g&g &h&i&h I    	�&j�� $0 fmgui_modeselect fmGUI_ModeSelect&j &k�&k m    &l&l �&m&m  F i n d�  �  &i &n�&n l  
 
��~�}�  �~  �}  �  &e R      �|&o&p
�| .ascrerr ****      � ****&o o      �{�{ 0 errmsg errMsg&p �z&q�y
�z 
errn&q o      �x�x 0 errnum errNum�y  &f R    �w&r&s
�w .ascrerr ****      � ****&r b    &t&u&t m    &v&v �&w&w B C o u l d n ' t   e n s u r e   i n   B r o w s e   M o d e   -  &u o    �v�v 0 errmsg errMsg&s �u&x�t
�u 
errn&x o    �s�s 0 errnum errNum�t  &c &y&z&y l   �r�q�p�r  �q  �p  &z &{�o&{ l   �n�m�l�n  �m  �l  �o  &W &|&}&| l     �k�j�i�k  �j  �i  &} &~&&~ l     �h�g�f�h  �g  �f  & &�&�&� i   � �&�&�&� I      �e�d�c�e 20 fmgui_modeensure_layout fmGUI_ModeEnsure_Layout�d  �c  &� k     &�&� &�&�&� l     �b&�&��b  &�   version 1.0   &� �&�&�    v e r s i o n   1 . 0&� &�&�&� l     �a�`�_�a  �`  �_  &� &�&�&� Q     &�&�&�&� k    &�&� &�&�&� I    	�^&��]�^ $0 fmgui_modeselect fmGUI_ModeSelect&� &��\&� m    &�&� �&�&�  L a y o u t�\  �]  &� &��[&� l  
 
�Z�Y�X�Z  �Y  �X  �[  &� R      �W&�&�
�W .ascrerr ****      � ****&� o      �V�V 0 errmsg errMsg&� �U&��T
�U 
errn&� o      �S�S 0 errnum errNum�T  &� R    �R&�&�
�R .ascrerr ****      � ****&� b    &�&�&� m    &�&� �&�&� B C o u l d n ' t   e n s u r e   i n   B r o w s e   M o d e   -  &� o    �Q�Q 0 errmsg errMsg&� �P&��O
�P 
errn&� o    �N�N 0 errnum errNum�O  &� &��M&� l   �L�K�J�L  �K  �J  �M  &� &�&�&� l     �I�H�G�I  �H  �G  &� &�&�&� l     �F�E�D�F  �E  �D  &� &�&�&� i   � �&�&�&� I      �C&��B�C $0 fmgui_modeselect fmGUI_ModeSelect&� &��A&� o      �@�@ 0 modetoselect modeToSelect�A  �B  &� k     �&�&� &�&�&� l     �?&�&��?  &�   version 1.0   &� �&�&�    v e r s i o n   1 . 0&� &�&�&� l     �>�=�<�>  �=  �<  &� &��;&� Q     �&�&�&�&� O    r&�&�&� O    q&�&�&� k    p&�&� &�&�&� n   &�&�&� I    �:�9�8�: (0 fmgui_appfrontmost fmGUI_AppFrontMost�9  �8  &�  f    &� &�&�&� n   &�&�&� I    �7�6�5�7 .0 fmgui_inspector_close fmGUI_Inspector_Close�6  �5  &�  f    &� &�&�&� l   �4�3�2�4  �3  �2  &� &�&�&� l   �1&�&��1  &� @ : Need to click in upper-left corner of area before pasting   &� �&�&� t   N e e d   t o   c l i c k   i n   u p p e r - l e f t   c o r n e r   o f   a r e a   b e f o r e   p a s t i n g&� &�&�&� r     &�&�&� 4    �0&�
�0 
cwin&� m    �/�/ &� o      �.�. 0 
modewindow 
modeWindow&� &�&�&� r   ! 0&�&�&� 6  ! .&�&�&� n   ! %&�&�&� 4  " %�-&�
�- 
sgrp&� m   # $�,�, &� o   ! "�+�+ 0 
modewindow 
modeWindow&� D   & -&�&�&� 1   ' )�*
�* 
desc&� m   * ,&�&� �&�&� " M o d e   C o n t e n t   A r e a&� o      �)�) "0 modecontentarea modeContentArea&� &�&�&� r   1 6&�&�&� n   1 4&�&�&� 1   2 4�(
�( 
desc&� o   1 2�'�' "0 modecontentarea modeContentArea&� o      �&�& *0 modecontentareadesc modeContentAreaDesc&� &�&�&� r   7 =&�&�&� n   7 ;&�&�&� 4  8 ;�%&�
�% 
cwor&� m   9 :�$�$ &� o   7 8�#�# *0 modecontentareadesc modeContentAreaDesc&� o      �"�" 0 currentmode currentMode&� &�&�&� l  > >�!� ��!  �   �  &� &�&�&� Z   > k&�&���&� >  > A&�&�&� o   > ?�� 0 currentmode currentMode&� o   ? @�� 0 modetoselect modeToSelect&� k   D g&�&� &�&�&� I  D I�&��
� .sysodelanull��� ��� nmbr&� m   D E&�&� ?�      �  &� &�&�&� r   J O&�&�&� b   J M&�&�&� o   J K�� 0 modetoselect modeToSelect&� m   K L' '  �'' 
   M o d e&� o      �� 0 menuitemname menuItemName&� '�' I  P g�'�
� .prcsclicnull��� ��� uiel' l  P c'��' n   P c''' 4   ^ c�'
� 
menI' o   a b�� 0 menuitemname menuItemName' n   P ^''	' 4   Y ^�'

� 
menE'
 m   \ ]�� '	 n   P Y''' 4   T Y�'
� 
mbri' m   U X'' �''  V i e w' 4   P T�'
� 
mbar' m   R S�� �  �  �  �  �  �  &� ''' l  l l�
�	��
  �	  �  ' ''' L   l n'' m   l m�
� boovtrue' '�' l  o o����  �  �  �  &� 4    �'
� 
pcap' m   	 
'' �'' , F i l e M a k e r   P r o   A d v a n c e d&� m    ''�                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  &� R      �''
� .ascrerr ****      � ****' o      � �  0 errmsg errMsg' ��'��
�� 
errn' o      ���� 0 errnum errNum��  &� R   z ���''
�� .ascrerr ****      � ****' b   � �' '!'  b   � �'"'#'" b   � �'$'%'$ m   � �'&'& �'''' 2 C o u l d n ' t   s w i t c h   t o   m o d e   ''% o   � ����� 0 modetoselect modeToSelect'# m   � �'('( �')')  '   -  '! o   � ����� 0 errmsg errMsg' ��'*��
�� 
errn'* o   ~ ���� 0 errnum errNum��  �;  &� '+','+ l     ��������  ��  ��  ', '-'.'- l     ��������  ��  ��  '. '/'0'/ i   � �'1'2'1 I      ��'3���� (0 fmgui_window_close fmGUI_Window_Close'3 '4��'4 o      ����  0 somewindowname someWindowName��  ��  '2 k     '5'5 '6'7'6 l     ��'8'9��  '8   version 1.1   '9 �':':    v e r s i o n   1 . 1'7 ';'<'; l     ��������  ��  ��  '< '='>'= O     '?'@'? k    'A'A 'B'C'B l   ��������  ��  ��  'C 'D'E'D I   ��'F��
�� .coreclosnull���    obj 'F 4    ��'G
�� 
cwin'G o   
 ����  0 somewindowname someWindowName��  'E 'H��'H l   ��������  ��  ��  ��  '@ 5     ��'I��
�� 
capp'I m    'J'J �'K'K > c o m . f i l e m a k e r . c l i e n t . a d v a n c e d 1 2
�� kfrmID  '> 'L'M'L l   ��������  ��  ��  'M 'N'O'N L    'P'P m    ��
�� boovtrue'O 'Q��'Q l   ��������  ��  ��  ��  '0 'R'S'R l     ��������  ��  ��  'S 'T'U'T l     ��������  ��  ��  'U 'V'W'V i   � �'X'Y'X I      ��'Z���� "0 windowwaituntil windowWaitUntil'Z '[��'[ o      ���� 	0 prefs  ��  ��  'Y k    C'\'\ ']'^'] l     ��'_'`��  '_   version 1.2   '` �'a'a    v e r s i o n   1 . 2'^ 'b'c'b l     ��������  ��  ��  'c 'd'e'd r     'f'g'f K     'h'h ��'i'j�� 0 
windowname 
windowName'i m    ��
�� 
null'j ��'k'l��  0 windownametest windowNameTest'k m    'm'm �'n'n  c o n t a i n s'l ��'o'p�� 0 whichwindow whichWindow'o m    'q'q �'r'r  a n y'p ��'s't�� .0 waitcycledelayseconds waitCycleDelaySeconds's m    'u'u ?�      't ��'v��� 0 waitcyclemax waitCycleMax'v m   	 
�� �  'g o      �� 0 defaultprefs defaultPrefs'e 'w'x'w r    'y'z'y b    '{'|'{ o    �� 	0 prefs  '| o    �� 0 defaultprefs defaultPrefs'z o      �� 	0 prefs  'x '}'~'} l   ����  �  �  '~ ''�' r    '�'�'� n    '�'�'� o    �� 0 
windowname 
windowName'� o    �� 	0 prefs  '� o      �� 0 
windowname 
windowName'� '�'�'� r     '�'�'� n    '�'�'� o    ��  0 windownametest windowNameTest'� o    �� 	0 prefs  '� o      ��  0 windownametest windowNameTest'� '�'�'� r   ! &'�'�'� n   ! $'�'�'� o   " $�� 0 whichwindow whichWindow'� o   ! "�� 	0 prefs  '� o      �� 0 whichwindow whichWindow'� '�'�'� l  ' '����  �  �  '� '�'�'� r   ' *'�'�'� m   ' (�
� boovfals'� o      �� 0 checkresult checkResult'� '�'�'� l  + +����  �  �  '� '�'�'� U   +>'�'�'� k   59'�'� '�'�'� O   5 �'�'�'� Z   9 '�'�'�'�'� =  9 <'�'�'� o   9 :�� 0 whichwindow whichWindow'� m   : ;'�'� �'�'�  a n y'� r   ? K'�'�'� n   ? I'�'�'� 1   E I�
� 
pnam'� n   ? E'�'�'� 2   C E�
� 
cwin'� 4   ? C�'�
� 
pcap'� m   A B'�'� �'�'� , F i l e M a k e r   P r o   A d v a n c e d'� o      �� "0 windownamecheck windowNameCheck'� '�'�'� =  N S'�'�'� o   N O�� 0 whichwindow whichWindow'� m   O R'�'� �'�'� 
 f r o n t'� '��'� r   V e'�'�'� n   V c'�'�'� 1   _ c�
� 
pnam'� n   V _'�'�'� 4   \ _�'�
� 
cwin'� m   ] ^�� '� 4   V \�'�
� 
pcap'� m   X ['�'� �'�'� , F i l e M a k e r   P r o   A d v a n c e d'� o      �� "0 windownamecheck windowNameCheck�  '� l  h '�'�'�'� k   h '�'� '�'�'� r   h o'�'�'� c   h m'�'�'� o   h i�� 0 whichwindow whichWindow'� m   i l�
� 
nmbr'� o      �� 0 windowindex windowIndex'� '��'� r   p '�'�'� n   p }'�'�'� 1   y }�
� 
pnam'� n   p y'�'�'� 4   v y�'�
� 
cwin'� o   w x�� 0 windowindex windowIndex'� 4   p v�'�
� 
pcap'� m   r u'�'� �'�'� , F i l e M a k e r   P r o   A d v a n c e d'� o      �� "0 windownamecheck windowNameCheck�  '� + % whichWindow  is window index number:   '� �'�'� J   w h i c h W i n d o w     i s   w i n d o w   i n d e x   n u m b e r :'� m   5 6'�'��                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  '� '�'�'� l  � �����  �  �  '� '�'�'� l  � �����  �  �  '� '�'�'� Z   �%'�'�'��'� =  � �'�'�'� o   � ���  0 windownametest windowNameTest'� m   � �'�'� �'�'�  c o n t a i n s'� k   � �'�'� '�'�'� r   � �'�'�'� l  � �'���'� E   � �'�'�'� o   � ��� "0 windownamecheck windowNameCheck'� o   � ��� 0 
windowname 
windowName�  �  '� o      �� 0 checkresult checkResult'� '��'� l  � �����  �  �  �  '� '�'�'� =  � �'�'�'� o   � ���  0 windownametest windowNameTest'� m   � �'�'� �'�'�   d o e s   n o t   c o n t a i n'� '�'�'� k   � �'�'� '�'�'� r   � �'�'�'� l  � �'��~�}'� H   � �'�'� E   � �( ((  o   � ��|�| "0 windownamecheck windowNameCheck( o   � ��{�{ 0 
windowname 
windowName�~  �}  '� o      �z�z 0 checkresult checkResult'� (�y( l  � ��x�w�v�x  �w  �v  �y  '� ((( =  � �((( o   � ��u�u  0 windownametest windowNameTest( m   � �(( �((  e q u a l s( (	(
(	 k   � �(( ((( r   � �((( l  � �(�t�s( =  � �((( o   � ��r�r "0 windownamecheck windowNameCheck( o   � ��q�q 0 
windowname 
windowName�t  �s  ( o      �p�p 0 checkresult checkResult( (�o( l  � ��n�m�l�n  �m  �l  �o  (
 ((( =  � �((( o   � ��k�k  0 windownametest windowNameTest( m   � �(( �((  i s( ((( k   � �(( ((( r   � �(( ( l  � �(!�j�i(! =  � �("(#(" o   � ��h�h "0 windownamecheck windowNameCheck(# o   � ��g�g 0 
windowname 
windowName�j  �i  (  o      �f�f 0 checkresult checkResult( ($�e($ l  � ��d�c�b�d  �c  �b  �e  ( (%(&(% =  � �('(((' o   � ��a�a  0 windownametest windowNameTest(( m   � �()() �(*(*  s t a r t s   w i t h(& (+(,(+ k   � �(-(- (.(/(. r   � �(0(1(0 l  � �(2�`�_(2 C   � �(3(4(3 o   � ��^�^ "0 windownamecheck windowNameCheck(4 o   � ��]�] 0 
windowname 
windowName�`  �_  (1 o      �\�\ 0 checkresult checkResult(/ (5�[(5 l  � ��Z�Y�X�Z  �Y  �X  �[  (, (6(7(6 =  � �(8(9(8 o   � ��W�W  0 windownametest windowNameTest(9 m   � �(:(: �(;(; & d o e s   n o t   s t a r t   w i t h(7 (<(=(< k   � �(>(> (?(@(? r   � �(A(B(A l  � �(C�V�U(C H   � �(D(D C   � �(E(F(E o   � ��T�T "0 windownamecheck windowNameCheck(F o   � ��S�S 0 
windowname 
windowName�V  �U  (B o      �R�R 0 checkresult checkResult(@ (G�Q(G l  � ��P�O�N�P  �O  �N  �Q  (= (H(I(H =  � �(J(K(J o   � ��M�M  0 windownametest windowNameTest(K m   � �(L(L �(M(M  e n d s   w i t h(I (N(O(N k   � �(P(P (Q(R(Q r   � �(S(T(S l  � �(U�L�K(U D   � �(V(W(V o   � ��J�J "0 windownamecheck windowNameCheck(W o   � ��I�I 0 
windowname 
windowName�L  �K  (T o      �H�H 0 checkresult checkResult(R (X�G(X l  � ��F�E�D�F  �E  �D  �G  (O (Y(Z(Y = ([(\([ o  �C�C  0 windownametest windowNameTest(\ m  (](] �(^(^ " d o e s   n o t   e n d   w i t h(Z (_(`(_ r  	(a(b(a l 	(c�B�A(c H  	(d(d D  	(e(f(e o  	
�@�@ "0 windownamecheck windowNameCheck(f o  
�?�? 0 
windowname 
windowName�B  �A  (b o      �>�> 0 checkresult checkResult(` (g(h(g = (i(j(i o  �=�=  0 windownametest windowNameTest(j m  (k(k �(l(l  i s   n o t(h (m�<(m k  !(n(n (o(p(o r  (q(r(q l (s�;�:(s > (t(u(t o  �9�9 "0 windownamecheck windowNameCheck(u o  �8�8 0 
windowname 
windowName�;  �:  (r o      �7�7 0 checkresult checkResult(p (v�6(v l   �5�4�3�5  �4  �3  �6  �<  �  '� (w(x(w l &&�2�1�0�2  �1  �0  (x (y(z(y Z &/({(|�/�.({ o  &'�-�- 0 checkresult checkResult(|  S  *+�/  �.  (z (}(~(} l 00�,�+�*�,  �+  �*  (~ ((�( I 07�)(��(
�) .sysodelanull��� ��� nmbr(� n  03(�(�(� o  13�'�' .0 waitcycledelayseconds waitCycleDelaySeconds(� o  01�&�& 	0 prefs  �(  (� (�(�(� l 88�%�$�#�%  �$  �#  (� (��"(� l 88�!� ��!  �   �  �"  '� n   . 2(�(�(� o   / 1�� 0 waitcyclemax waitCycleMax(� o   . /�� 	0 prefs  '� (�(�(� l ??����  �  �  (� (�(�(� L  ?A(�(� o  ?@�� 0 checkresult checkResult(� (��(� l BB����  �  �  �  'W (�(�(� l     ����  �  �  (� (�(�(� l     ����  �  �  (� (�(�(� i   � �(�(�(� I      �(��� 20 windowwaituntil_frontis windowWaitUntil_FrontIS(� (��(� o      �� 	0 prefs  �  �  (� k     (�(� (�(�(� l     �
(�(��
  (�   version 1.0   (� �(�(�    v e r s i o n   1 . 0(� (�(�(� l     �	���	  �  �  (� (�(�(� r     (�(�(� K     (�(� �(�(�� 0 
windowname 
windowName(� m    �
� 
null(� �(�(��  0 windownametest windowNameTest(� m    (�(� �(�(�  i s(� �(�(�� 0 whichwindow whichWindow(� m    (�(� �(�(� 
 f r o n t(� �(�(�� .0 waitcycledelayseconds waitCycleDelaySeconds(� m    (�(� ?�������(� �(�� � 0 waitcyclemax waitCycleMax(� m   	 
���� d�   (� o      ���� 0 defaultprefs defaultPrefs(� (�(�(� r    (�(�(� b    (�(�(� o    ���� 	0 prefs  (� o    ���� 0 defaultprefs defaultPrefs(� o      ���� 	0 prefs  (� (�(�(� l   ��������  ��  ��  (� (�(�(� L    (�(� I    ��(����� "0 windowwaituntil windowWaitUntil(� (���(� o    ���� 	0 prefs  ��  ��  (� (�(�(� l   ��������  ��  ��  (� (���(� l   ��������  ��  ��  ��  (� (�(�(� l     ��������  ��  ��  (� (�(�(� l     ��������  ��  ��  (� (�(�(� i   � �(�(�(� I      ��(����� "0 indexoflistitem indexOfListItem(� (�(�(� o      ���� 0 somelist someList(� (���(� o      ���� 0 somelistitem someListItem��  ��  (� k     8(�(� (�(�(� l     ��(�(���  (�   version 1.0   (� �(�(�    v e r s i o n   1 . 0(� (�(�(� l     ��������  ��  ��  (� (�(�(� Z    (�(�����(� H     (�(� E     (�(�(� o     ���� 0 somelist someList(� o    ���� 0 somelistitem someListItem(� L    	(�(� m    ��������  ��  (� (�(�(� l   ��������  ��  ��  (� (�(�(� Y    6(���(�(���(� k    1(�(� (�(�(� r    "(�(�(� n     (�(�(� 4     ��(�
�� 
cobj(� o    ���� 0 i  (� o    ���� 0 somelist someList(� o      ���� 0 onelistitem oneListItem(� (�(�(� l  # #��������  ��  ��  (� (�(�(� Z  # /(�(�����(� =  # &(�(�(� o   # $���� 0 onelistitem oneListItem(� o   $ %���� 0 somelistitem someListItem(� L   ) +(�(� o   ) *���� 0 i  ��  ��  (� (���(� l  0 0��������  ��  ��  ��  �� 0 i  (� m    ���� (� I   ��(���
�� .corecnte****       ****(� o    ���� 0 somelist someList��  ��  (� (��(� l  7 7����  �  �  �  (� (�(�(� l     ����  �  �  (� (�(�(� l     ����  �  �  (� (�) (� i   � �))) I      �)�� 0 listcontains listContains) ))) o      �� 0 somelist someList) )�) o      �� "0 somecomplexitem someComplexItem�  �  ) k     0)) ))	) l     �)
)�  )
   version 1.0   ) �))    v e r s i o n   1 . 0)	 ))) l     ����  �  �  ) ))) X     +)�)) k    &)) ))) r    ))) n    ))) 1    �
� 
pcnt) o    �� 0 oneitem oneItem) o      �� 0 oneitem oneItem) ))) Z    $))��) =   ))) o    �� 0 oneitem oneItem) o    �� "0 somecomplexitem someComplexItem) k     ) )  )!)")! l   ����  �  �  )" )#)$)# L    )%)% m    �
� boovtrue)$ )&�)& l   ����  �  �  �  �  �  ) )')()' l  % %����  �  �  )( ))�)) l  % %����  �  �  �  � 0 oneitem oneItem) o    �� 0 somelist someList) )*)+)* l  , ,����  �  �  )+ ),)-), L   , .).). m   , -�
� boovfals)- )/�)/ l  / /����  �  �  �  )  )0)1)0 l     ����  �  �  )1 )2)3)2 l     ����  �  �  )3 )4)5)4 i   � �)6)7)6 I      �)8�� $0 listuniquevalues listUniqueValues)8 )9�)9 o      �� 	0 prefs  �  �  )7 k     :):): );)<); l     �)=)>�  )=   version 1.0   )> �)?)?    v e r s i o n   1 . 0)< )@)A)@ l     ����  �  �  )A )B)C)B r     )D)E)D n     )F)G)F o    �~�~ 0 	inputlist 	inputList)G o     �}�} 	0 prefs  )E o      �|�| 0 	inputlist 	inputList)C )H)I)H l   �{�z�y�{  �z  �y  )I )J)K)J r    
)L)M)L J    �x�x  )M o      �w�w 0 
uniquelist 
uniqueList)K )N)O)N l   �v�u�t�v  �u  �t  )O )P)Q)P l   �s�r�q�s  �r  �q  )Q )R)S)R X    5)T�p)U)T k    0)V)V )W)X)W r     )Y)Z)Y n    )[)\)[ 1    �o
�o 
pcnt)\ o    �n�n 0 oneitem oneItem)Z o      �m�m 0 oneitem oneItem)X )]�l)] Z   ! 0)^)_�k�j)^ H   ! %)`)` E   ! $)a)b)a o   ! "�i�i 0 
uniquelist 
uniqueList)b o   " #�h�h 0 oneitem oneItem)_ s   ( ,)c)d)c o   ( )�g�g 0 oneitem oneItem)d n      )e)f)e  ;   * +)f o   ) *�f�f 0 
uniquelist 
uniqueList�k  �j  �l  �p 0 oneitem oneItem)U o    �e�e 0 	inputlist 	inputList)S )g)h)g l  6 6�d�c�b�d  �c  �b  )h )i)j)i L   6 8)k)k o   6 7�a�a 0 
uniquelist 
uniqueList)j )l�`)l l  9 9�_�^�]�_  �^  �]  �`  )5 )m)n)m l     �\�[�Z�\  �[  �Z  )n )o)p)o l     �Y�X�W�Y  �X  �W  )p )q)r)q i   � �)s)t)s I      �V)u�U�V 0 sort  )u )v�T)v o      �S�S 0 oldlist oldList�T  �U  )t k     D)w)w )x)y)x l     �R)z){�R  )z   version 1.0   ){ �)|)|    v e r s i o n   1 . 0)y )})~)} l     �Q�P�O�Q  �P  �O  )~ ))�) r     )�)�)� J     
)�)� )�)�)� n    )�)�)� 1    �N
�N 
txdl)� 1     �M
�M 
ascr)� )��L)� I   �K)��J
�K .sysontocTEXT       shor)� m    �I�I 
�J  �L  )� J      )�)� )�)�)� o      �H�H 0 od  )� )��G)� n     )�)�)� 1    �F
�F 
txdl)� 1    �E
�E 
ascr�G  )� )�)�)� r    !)�)�)� c    )�)�)� o    �D�D 0 oldlist oldList)� m    �C
�C 
TEXT)� o      �B�B 0 	textblock 	textBlock)� )�)�)� r   " /)�)�)� I  " -�A)��@
�A .sysoexecTEXT���     TEXT)� b   " ))�)�)� b   " ')�)�)� m   " #)�)� �)�)� 
 e c h o  )� n   # &)�)�)� 1   $ &�?
�? 
strq)� o   # $�>�> 0 	textblock 	textBlock)� m   ' ()�)� �)�)�    |   s o r t�@  )� o      �=�= 0 sortedblock sortedBlock)� )�)�)� r   0 5)�)�)� o   0 1�<
�< 
ret )� n     )�)�)� 1   2 4�;
�; 
txdl)� 1   1 2�:
�: 
ascr)� )�)�)� r   6 ;)�)�)� n   6 9)�)�)� 2   7 9�9
�9 
citm)� o   6 7�8�8 0 sortedblock sortedBlock)� o      �7�7 0 
sortedlist 
sortedList)� )�)�)� r   < A)�)�)� o   < =�6�6 0 od  )� n     )�)�)� 1   > @�5
�5 
txdl)� 1   = >�4
�4 
ascr)� )�)�)� l  B B�3�2�1�3  �2  �1  )� )��0)� L   B D)�)� o   B C�/�/ 0 
sortedlist 
sortedList�0  )r )�)�)� l     �.�-�,�.  �-  �,  )� )�)�)� l     �+�*�)�+  �*  �)  )� )�)�)� i   � �)�)�)� I      �()��'�( 0 
logconsole 
logConsole)� )�)�)� o      �&�& 0 processname processName)� )��%)� o      �$�$ 0 
consolemsg 
consoleMsg�%  �'  )� k     H)�)� )�)�)� l     �#)�)��#  )�   version 2.0   )� �)�)�    v e r s i o n   2 . 0)� )�)�)� l     �"�!� �"  �!  �   )� )�)�)� r     )�)�)� I     �)���  0 coercetostring coerceToString)� )��)� o    �� 0 
consolemsg 
consoleMsg�  �  )� o      �� 0 
consolemsg 
consoleMsg)� )�)�)� l  	 )�)�)�)� r   	 )�)�)� I   	 �)��� 0 replacesimple replaceSimple)� )��)� J   
 )�)� )�)�)� o   
 �� 0 
consolemsg 
consoleMsg)� )�)�)� I   �)��
� .sysontocTEXT       shor)� m    ��  �  )� )��)� m    )�)� �)�)�  �  �  �  )� o      �� 0 
consolemsg 
consoleMsg)� %  ASCII 0 breaks shell scripting   )� �)�)� >   A S C I I   0   b r e a k s   s h e l l   s c r i p t i n g)� )�)�)� Z    ))�)���)� =   )�)�)� n    )�)�)� 1    �
� 
leng)� o    �� 0 
consolemsg 
consoleMsg)� m    ��  )� k   " %)�)� )�)�)� l  " "�)�)��  )� H B we still want this function to log that an empty string was sent:   )� �)�)� �   w e   s t i l l   w a n t   t h i s   f u n c t i o n   t o   l o g   t h a t   a n   e m p t y   s t r i n g   w a s   s e n t :)� )��)� r   " %)�)�)� m   " #)�)� �)�)�  [ E M P T Y   S T R I N G ])� o      �
�
 0 
consolemsg 
consoleMsg�  �  �  )� )�)�)� r   * =)�)�)� b   * ;)�* )� b   * 7*** b   * 5*** b   * 1*** b   * /*** b   * -*	*
*	 m   * +** �**  l o g g e r*
 1   + ,�	
�	 
spac* m   - .** �**  - t* 1   / 0�
� 
spac* n   1 4*** 1   2 4�
� 
strq* o   1 2�� 0 processname processName* 1   5 6�
� 
spac*  n   7 :*** 1   8 :�
� 
strq* o   7 8�� 0 
consolemsg 
consoleMsg)� o      �� 0 shellcommand shellCommand)� *** l  > >�� ���  �   ��  * *** I  > C��*��
�� .sysoexecTEXT���     TEXT* o   > ?���� 0 shellcommand shellCommand��  * *** L   D F** o   D E���� 0 shellcommand shellCommand* *��* l  G G��������  ��  ��  ��  )� *** l     ��������  ��  ��  * *** l     ��������  ��  ��  * * *!*  i   � �*"*#*" I      ��*$���� 0 loglevel logLEVEL*$ *%*&*% o      ���� 	0 level  *& *'��*' o      ���� 0 somemsg someMsg��  ��  *# k     4*(*( *)***) l     ��*+*,��  *+   version 1.0   *, �*-*-    v e r s i o n   1 . 0** *.*/*. l     ��������  ��  ��  */ *0*1*0 r     *2*3*2 m     ���� *3 o      ���� 0 	maxxcount 	maxXcount*1 *4*5*4 r    *6*7*6 b    *8*9*8 o    	���� 0 
scriptname 
ScriptName*9 m   	 
*:*: �*;*;  _*7 o      ���� 0 logname logName*5 *<*=*< r    *>*?*> [    *@*A*@ \    *B*C*B o    ���� 0 	maxxcount 	maxXcount*C o    ���� 	0 level  *A m    ���� *? o      ���� 0 xcount xCount*= *D*E*D l   ��������  ��  ��  *E *F*G*F Y    **H��*I*J��*H r     %*K*L*K b     #*M*N*M o     !���� 0 logname logName*N m   ! "*O*O �*P*P  X*L o      ���� 0 logname logName�� 0 i  *I m    ���� *J o    ���� 0 xcount xCount��  *G *Q*R*Q l  + +��������  ��  ��  *R *S*T*S I   + 2��*U���� 0 
logconsole 
logConsole*U *V*W*V o   , -���� 0 logname logName*W *X��*X o   - .���� 0 somemsg someMsg��  ��  *T *Y��*Y l  3 3��������  ��  ��  ��  *! *Z*[*Z l     ��������  ��  ��  *[ *\*]*\ l     ��������  ��  ��  *] *^*_*^ i   � �*`*a*` I      ��*b���� 0 logmain logMAIN*b *c��*c o      ���� 0 somemsg someMsg��  ��  *a k     *d*d *e*f*e l     ��*g*h��  *g   version 1.0   *h �*i*i    v e r s i o n   1 . 0*f *j*k*j l     ����  �  �  *k *l�*l l    *m*n*o*m I     �*p�� 0 loglevel logLEVEL*p *q*r*q m    ��  *r *s�*s o    �� 0 somemsg someMsg�  �  *n    log at highest importance   *o �*t*t 4   l o g   a t   h i g h e s t   i m p o r t a n c e�  *_ *u*v*u l     ����  �  �  *v *w*x*w l     ����  �  �  *x *y*z*y i   � �*{*|*{ I      �*}�� (0 systemnotification systemNotification*} *~�*~ o      �� 	0 prefs  �  �  *| k     F** *�*�*� l     �*�*��  *�   version 1.0   *� �*�*�    v e r s i o n   1 . 0*� *�*�*� l     ����  �  �  *� *�*�*� r     *�*�*� K     *�*� �*�*�� 0 msg  *� m    *�*� �*�*�  *� �*�*�� 0 msgtitle msgTitle*� m    *�*� �*�*�  *� �*�*�� 0 msgsubtitle msgSubtitle*� m    *�*� �*�*�  *� �*�*�� 0 msgsound msgSound*� m    *�*� �*�*�  d e f a u l t*� �*��� 0 nosound noSound*� m   	 
�
� 
null�  *� o      �� 0 defaultprefs defaultPrefs*� *�*�*� r    *�*�*� b    *�*�*� o    �� 	0 prefs  *� o    �� 0 defaultprefs defaultPrefs*� o      �� 	0 prefs  *� *�*�*� l   ����  �  �  *� *�*�*� Z    D*�*��*�*� >   *�*�*� n    *�*�*� o    �� 0 nosound noSound*� o    �� 	0 prefs  *� m    �
� 
null*� I   ,�*�*�
� .sysonotfnull��� ��� TEXT*� n     *�*�*� o     �� 0 msg  *� o    �� 	0 prefs  *� �*�*�
� 
appr*� n   ! $*�*�*� o   " $�� 0 msgtitle msgTitle*� o   ! "�� 	0 prefs  *� �*��
� 
subt*� n   % (*�*�*� o   & (�� 0 msgsubtitle msgSubtitle*� o   % &�� 	0 prefs  �  �  *� I  / D�*�*�
� .sysonotfnull��� ��� TEXT*� n   / 2*�*�*� o   0 2�� 0 msg  *� o   / 0�� 	0 prefs  *� �*�*�
� 
appr*� n   3 6*�*�*� o   4 6�� 0 msgtitle msgTitle*� o   3 4�� 	0 prefs  *� �*�*�
� 
subt*� n   7 :*�*�*� o   8 :�� 0 msgsubtitle msgSubtitle*� o   7 8�� 	0 prefs  *� �*��
� 
nsou*� n   ; >*�*�*� o   < >�� 0 msgsound msgSound*� o   ; <�� 	0 prefs  �  *� *�*�*� l  E E��~�}�  �~  �}  *� *��|*� l  E E�{�z�y�{  �z  �y  �|  *z *�*�*� l     �x�w�v�x  �w  �v  *� *�*�*� l     �u�t�s�u  �t  �s  *� *�*�*� i   � �*�*�*� I      �r*��q�r 0 writetofile writeToFile*� *��p*� o      �o�o 	0 prefs  �p  �q  *� k     �*�*� *�*�*� l     �n*�*��n  *�   version 1.0   *� �*�*�    v e r s i o n   1 . 0*� *�*�*� l     �m�l�k�m  �l  �k  *� *�*�*� r     *�*�*� K     *�*� �j*�*��j 0 fullfilepath fullFilePath*� m    �i
�i 
null*� �h*�*��h 0 filename fileName*� m    �g
�g 
null*� �f*�*��f 0 filedirectory fileDirectory*� c    *�*�*� l   
*��e�d*� I   
�c*��b
�c .earsffdralis        afdr*� m    �a
�a afdrdesk�b  �e  �d  *� m   
 �`
�` 
TEXT*� �_*��^�_ 0 
outputtext 
outputText*� m    �]
�] 
null�^  *� o      �\�\ 0 defaultprefs defaultPrefs*� *�*�*� r    *�*�*� b    *�*�*� o    �[�[ 	0 prefs  *� o    �Z�Z 0 defaultprefs defaultPrefs*� o      �Y�Y 	0 prefs  *� *�*�*� l   �X�W�V�X  �W  �V  *� *�*�*� l   �U*�*��U  *�   determine file path   *� �*�*� (   d e t e r m i n e   f i l e   p a t h*� *�*�*� Z    H*�*�*�*�*� >   + ++  n    +++ o    �T�T 0 fullfilepath fullFilePath+ o    �S�S 	0 prefs  + m    �R
�R 
null*� r   ! &+++ n   ! $+++ o   " $�Q�Q 0 fullfilepath fullFilePath+ o   ! "�P�P 	0 prefs  + o      �O�O 0 
outputfile 
outputFile*� ++	+ >  ) .+
++
 n   ) ,+++ o   * ,�N�N 0 filename fileName+ o   ) *�M�M 	0 prefs  + m   , -�L
�L 
null+	 +�K+ r   1 :+++ b   1 8+++ n   1 4+++ o   2 4�J�J 0 filedirectory fileDirectory+ o   1 2�I�I 	0 prefs  + n   4 7+++ o   5 7�H�H 0 filename fileName+ o   4 5�G�G 	0 prefs  + o      �F�F 0 
outputfile 
outputFile�K  *� r   = H+++ b   = F+++ l  = D+�E�D+ c   = D+++ l  = B+�C�B+ I  = B�A+�@
�A .earsffdralis        afdr+ m   = >�?
�? afdrdesk�@  �C  �B  + m   B C�>
�> 
TEXT�E  �D  + m   D E+ +  �+!+! 2 A S F i l e W r i t t e n B y _ f m G U I . t x t+ o      �=�= 0 
outputfile 
outputFile*� +"+#+" l  I I�<�;�:�<  �;  �:  +# +$+%+$ l  I I�9�8�7�9  �8  �7  +% +&+'+& l  I I�6+(+)�6  +( $  now write output text to file   +) �+*+* <   n o w   w r i t e   o u t p u t   t e x t   t o   f i l e+' ++�5++ Q   I �+,+-+.+, k   L h+/+/ +0+1+0 r   L X+2+3+2 I  L V�4+4+5
�4 .rdwropenshor       file+4 4   L P�3+6
�3 
file+6 o   N O�2�2 0 
outputfile 
outputFile+5 �1+7�0
�1 
perm+7 m   Q R�/
�/ boovtrue�0  +3 o      �.�. 0 filereference fileReference+1 +8+9+8 I  Y b�-+:+;
�- .rdwrwritnull���     ****+: n   Y \+<+=+< o   Z \�,�, 0 
outputtext 
outputText+= o   Y Z�+�+ 	0 prefs  +; �*+>�)
�* 
refn+> o   ] ^�(�( 0 filereference fileReference�)  +9 +?�'+? I  c h�&+@�%
�& .rdwrclosnull���     ****+@ o   c d�$�$ 0 filereference fileReference�%  �'  +- R      �#�"�!
�# .ascrerr ****      � ****�"  �!  +. Q   p �+A+B� +A I  s {�+C�
� .rdwrclosnull���     ****+C 4   s w�+D
� 
file+D o   u v�� 0 
outputfile 
outputFile�  +B R      ���
� .ascrerr ****      � ****�  �  �   �5  *� +E+F+E l     ����  �  �  +F +G+H+G l     ����  �  �  +H +I+J+I i   �+K+L+K I      �+M�� 0 clickatcoords clickAtCoords+M +N+O+N o      �� 0 xclick xClick+O +P�+P o      �� 0 yclick yClick�  �  +L k     0+Q+Q +R+S+R l     �+T+U�  +T   version 1.0   +U �+V+V    v e r s i o n   1 . 0+S +W+X+W l     ���
�  �  �
  +X +Y+Z+Y r     	+[+\+[ I    �	+]+^
�	 .sysorondlong        doub+] o     �� 0 xclick xClick+^ �+_�
� 
dire+_ m    �
� olierndD�  +\ o      �� 0 xclick xClick+Z +`+a+` r   
 +b+c+b I  
 �+d+e
� .sysorondlong        doub+d o   
 �� 0 yclick yClick+e �+f� 
� 
dire+f m    ��
�� olierndD�   +c o      ���� 0 yclick yClick+a +g+h+g I   '��+i��
�� .sysoexecTEXT���     TEXT+i b    #+j+k+j b    !+l+m+l b    +n+o+n b    +p+q+p n    +r+s+r 1    ��
�� 
strq+s o    ���� &0 clickcommandposix clickCommandPosix+q m    +t+t �+u+u    - r   c :+o o    ���� 0 xclick xClick+m m     +v+v �+w+w  ,+k o   ! "���� 0 yclick yClick��  +h +x��+x L   ( 0+y+y l  ( /+z����+z b   ( /+{+|+{ b   ( -+}+~+} l  ( ++����+ c   ( ++�+�+� o   ( )���� 0 xclick xClick+� m   ) *��
�� 
TEXT��  ��  +~ m   + ,+�+� �+�+�  ,+| o   - .���� 0 yclick yClick��  ��  ��  +J +�+�+� l     ��������  ��  ��  +� +�+�+� l     ��������  ��  ��  +� +�+�+� i  +�+�+� I      ��+����� *0 clickobjectbycoords clickObjectByCoords+� +���+� o      ���� 0 
someobject 
someObject��  ��  +� k     M+�+� +�+�+� l     ��+�+���  +�   version 1.0   +� �+�+�    v e r s i o n   1 . 0+� +�+�+� l     ��������  ��  ��  +� +�+�+� w     '+�+�+� k    '+�+� +�+�+� r    +�+�+� n    +�+�+� 1    ��
�� 
posn+� o    ���� 0 
someobject 
someObject+� J      +�+� +�+�+� o      ���� 0 xcoord xCoord+� +���+� o      ���� 0 ycoord yCoord��  +� +���+� r    '+�+�+� n    +�+�+� 1    ��
�� 
ptsz+� o    ���� 0 
someobject 
someObject+� J      +�+� +�+�+� o      ���� 0 xsize xSize+� +���+� o      ���� 0 ysize ySize��  ��  +��                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  +� +�+�+� l  ( (��������  ��  ��  +� +�+�+� l  ( 5+�+�+�+� r   ( 5+�+�+� I  ( 3��+�+�
�� .sysorondlong        doub+� l  ( -+�����+� [   ( -+�+�+� o   ( )���� 0 xcoord xCoord+� ^   ) ,+�+�+� o   ) *���� 0 xsize xSize+� m   * +���� ��  ��  +� ��+���
�� 
dire+� m   . /��
�� olierndD��  +� o      ���� 0 xclick xClick+�   middle   +� �+�+�    m i d d l e+� +�+�+� l  6 C+�+�+�+� r   6 C+�+�+� I  6 A��+�+�
�� .sysorondlong        doub+� l  6 ;+�����+� [   6 ;+�+�+� o   6 7���� 0 ycoord yCoord+� ^   7 :+�+�+� o   7 8���� 0 ysize ySize+� m   8 9���� ��  ��  +� ��+���
�� 
dire+� m   < =��
�� olierndD��  +� o      ���� 0 yclick yClick+�   middle   +� �+�+�    m i d d l e+� +�+�+� l  D D����  �  �  +� +�+�+� I   D K�+��� 0 clickatcoords clickAtCoords+� +�+�+� o   E F�� 0 xclick xClick+� +��+� o   F G�� 0 yclick yClick�  �  +� +��+� l  L L����  �  �  �  +� +�+�+� l     ����  �  �  +� +�+�+� l     ����  �  �  +� +�+�+� i  
+�+�+� I      �+���  0 coercetostring coerceToString+� +��+� o      ��  0 incomingobject incomingObject�  �  +� k    �+�+� +�+�+� l     �+�+��  +�   version 2.2   +� �+�+�    v e r s i o n   2 . 2+� +�+�+� l     ����  �  �  +� +��+� Z    �+�+�+�+�+� =    +�+�+� n     +�+�+� m    �
� 
pcls+� o     ��  0 incomingobject incomingObject+� m    �
� 
TEXT+� k    +�+� +�+�+� r    +�+�+� l   +���+� c    +�+�+� o    	��  0 incomingobject incomingObject+� m   	 
�
� 
TEXT�  �  +� K      +�+� �+��
� 
ctxt+� o      ��  0 incomingobject incomingObject�  +� +��+� L    +�+� o    ��  0 incomingobject incomingObject�  +� , ,,  =   ,,, n    ,,, m    �
� 
pcls, o    ��  0 incomingobject incomingObject, m    �
� 
long, ,,, k     /,, ,	,
,	 r     *,,, l    #,��, c     #,,, o     !��  0 incomingobject incomingObject, m   ! "�
� 
TEXT�  �  , K      ,, �,�
� 
ctxt, o      ��  0 incomingobject incomingObject�  ,
 ,�, L   + /,, c   + .,,, o   + ,��  0 incomingobject incomingObject, m   , -�
� 
TEXT�  , ,,, =  2 7,,, n   2 5,,, m   3 5�
� 
pcls, o   2 3��  0 incomingobject incomingObject, m   5 6�
� 
doub, ,,, k   : I,, ,, , r   : D,!,",! l  : =,#��,# c   : =,$,%,$ o   : ;��  0 incomingobject incomingObject,% m   ; <�
� 
TEXT�  �  ," K      ,&,& �,'�
� 
ctxt,' o      ��  0 incomingobject incomingObject�  ,  ,(�,( L   E I,),) c   E H,*,+,* o   E F��  0 incomingobject incomingObject,+ m   F G�
� 
TEXT�  , ,,,-,, =  L Q,.,/,. n   L O,0,1,0 m   M O�~
�~ 
pcls,1 o   L M�}�}  0 incomingobject incomingObject,/ m   O P�|
�| 
utxt,- ,2�{,2 k   T c,3,3 ,4,5,4 r   T ^,6,7,6 l  T W,8�z�y,8 c   T W,9,:,9 o   T U�x�x  0 incomingobject incomingObject,: m   U V�w
�w 
TEXT�z  �y  ,7 K      ,;,; �v,<�u
�v 
ctxt,< o      �t�t  0 incomingobject incomingObject�u  ,5 ,=�s,= L   _ c,>,> c   _ b,?,@,? o   _ `�r�r  0 incomingobject incomingObject,@ m   ` a�q
�q 
TEXT�s  �{  +� k   f�,A,A ,B,C,B l  f f�p,D,E�p  ,D , & LIST, RECORD, styled text, or unknown   ,E �,F,F L   L I S T ,   R E C O R D ,   s t y l e d   t e x t ,   o r   u n k n o w n,C ,G,H,G Q   f~,I,J,K,I k   i �,L,L ,M,N,M Q   i �,O,P,Q,O k   l s,R,R ,S,T,S r   l q,U,V,U m   l m,W,W �,X,X ` s o m e _ U U I D _ V a l u e _ 5 4 F 8 2 7 C 7 3 7 9 E 4 0 7 3 B 5 A 2 1 6 B B 9 C D E 5 7 5 D,V n      ,Y,Z,Y o   n p�o�o j0 3some_uuid_property_54f827c7379e4073b5a216bb9cde575d 3some_UUID_Property_54F827C7379E4073B5A216BB9CDE575D,Z m   m n,[,[ �,\,\  X X X X,T ,],^,] l  r r�n�m�l�n  �m  �l  ,^ ,_,`,_ l  r r�k,a,b�k  ,a V P GENERATE the error message for a known 'object' (here, a string) so we can get    ,b �,c,c �   G E N E R A T E   t h e   e r r o r   m e s s a g e   f o r   a   k n o w n   ' o b j e c t '   ( h e r e ,   a   s t r i n g )   s o   w e   c a n   g e t  ,` ,d�j,d l  r r�i,e,f�i  ,e 7 1 the 'lead' and 'trail' part of the error message   ,f �,g,g b   t h e   ' l e a d '   a n d   ' t r a i l '   p a r t   o f   t h e   e r r o r   m e s s a g e�j  ,P R      �h,h,i
�h .ascrerr ****      � ****,h o      �g�g 0 errmsg errMsg,i �f,j�e
�f 
errn,j o      �d�d 0 errnum errNum�e  ,Q k   { �,k,k ,l,m,l r   { �,n,o,n J   { �,p,p ,q,r,q n  { ~,s,t,s 1   | ~�c
�c 
txdl,t 1   { |�b
�b 
ascr,r ,u�a,u J   ~ �,v,v ,w�`,w m   ~ ,x,x �,y,y  " X X X X "�`  �a  ,o J      ,z,z ,{,|,{ o      �_�_ 0 	olddelims 	oldDelims,| ,}�^,} n     ,~,,~ 1   � ��]
�] 
txdl, 1   � ��\
�\ 
ascr�^  ,m ,�,�,� r   � �,�,�,� n   � �,�,�,� 2  � ��[
�[ 
citm,� o   � ��Z�Z 0 errmsg errMsg,� J      ,�,� ,�,�,� o      �Y�Y 0 
errmsglead 
errMsgLead,� ,��X,� o      �W�W 0 errmsgtrail errMsgTrail�X  ,� ,��V,� r   � �,�,�,� o   � ��U�U 0 	olddelims 	oldDelims,� n     ,�,�,� 1   � ��T
�T 
txdl,� 1   � ��S
�S 
ascr�V  ,N ,�,�,� l  � ��R�Q�P�R  �Q  �P  ,� ,�,�,� l  � ��O,�,��O  ,� = 7 now, generate error message for the SPECIFIED object:    ,� �,�,� n   n o w ,   g e n e r a t e   e r r o r   m e s s a g e   f o r   t h e   S P E C I F I E D   o b j e c t :  ,� ,�,�,� r   � �,�,�,� m   � �,�,� �,�,� ` s o m e _ U U I D _ V a l u e _ 5 4 F 8 2 7 C 7 3 7 9 E 4 0 7 3 B 5 A 2 1 6 B B 9 C D E 5 7 5 D,� n      ,�,�,� o   � ��N�N j0 3some_uuid_property_54f827c7379e4073b5a216bb9cde575d 3some_UUID_Property_54F827C7379E4073B5A216BB9CDE575D,� o   � ��M�M  0 incomingobject incomingObject,� ,�,�,� l  � ��L�K�J�L  �K  �J  ,� ,��I,� l  � ��H�G�F�H  �G  �F  �I  ,J R      �E,��D
�E .ascrerr ****      � ****,� o      �C�C 0 errmsg errMsg�D  ,K Z   �~,�,��B,�,� F   � �,�,�,� C   � �,�,�,� o   � ��A�A 0 errmsg errMsg,� m   � �,�,� �,�,� � S y s t e m   E v e n t s   g o t   a n   e r r o r :   C a n  t   m a k e   s o m e _ U U I D _ P r o p e r t y _ 5 4 F 8 2 7 C 7 3 7 9 E 4 0 7 3 B 5 A 2 1 6 B B 9 C D E 5 7 5 D   o f  ,� D   � �,�,�,� o   � ��@�@ 0 errmsg errMsg,� m   � �,�,� �,�,� ( i n t o   t y p e   s p e c i f i e r .,� k   �,�,� ,�,�,� r   � �,�,�,� m   � �,�,� �,�,� � S y s t e m   E v e n t s   g o t   a n   e r r o r :   C a n  t   m a k e   s o m e _ U U I D _ P r o p e r t y _ 5 4 F 8 2 7 C 7 3 7 9 E 4 0 7 3 B 5 A 2 1 6 B B 9 C D E 5 7 5 D   o f  ,� o      �?�? 0 
errmsglead 
errMsgLead,� ,�,�,� r   � �,�,�,� m   � �,�,� �,�,� *   i n t o   t y p e   s p e c i f i e r .,� o      �>�> 0 errmsgtrail errMsgTrail,� ,�,�,� l  � ��=�<�;�=  �<  �;  ,� ,�,�,� r   � �,�,�,� J   � �,�,� ,�,�,� n  � �,�,�,� 1   � ��:
�: 
txdl,� 1   � ��9
�9 
ascr,� ,��8,� o   � ��7�7 0 
errmsglead 
errMsgLead�8  ,� J      ,�,� ,�,�,� o      �6�6 0 od  ,� ,��5,� n     ,�,�,� 1   � ��4
�4 
txdl,� 1   � ��3
�3 
ascr�5  ,� ,�,�,� l  � ��2�1�0�2  �1  �0  ,� ,�,�,� r   � �,�,�,� n   � �,�,�,� 4   � ��/,�
�/ 
citm,� m   � ��.�. ,� o   � ��-�- 0 errmsg errMsg,� o      �,�, 0 objectstring objectString,� ,�,�,� r   �,�,�,� o   � ��+�+ 0 errmsgtrail errMsgTrail,� n     ,�,�,� 1   �*
�* 
txdl,� 1   � �)
�) 
ascr,� ,�,�,� l �(�'�&�(  �'  �&  ,� ,�,�,� r  
,�,�,� n  ,�,�,� 4  �%,�
�% 
citm,� m  �$�$ ,� o  �#�# 0 objectstring objectString,� o      �"�" 0 objectstring objectString,� ,�,�,� r  ,�,�,� o  �!�! 0 od  ,� n     ,�,�,� 1  � 
�  
txdl,� 1  �
� 
ascr,� ,�,�,� l ����  �  �  ,� ,�,�,� l ����  �  �  ,� ,��,� l ����  �  �  �  �B  ,� k  ~,�,� ,�,�,� l �,�,��  ,�  tell me to log errMsg   ,� �,�,� * t e l l   m e   t o   l o g   e r r M s g,� ,�,�,� r  ,�,�,� o  �� 0 errmsg errMsg,� o      �� 0 objectstring objectString,� ,�,�,� l ����  �  �  ,� ,�,�,� Z  G,�- ��,� E  --- o  �� 0 objectstring objectString- o  �� 0 
errmsglead 
errMsgLead-  k  C-- --- r  6--- J  %-- -	-
-	 n "--- 1   "�

�
 
txdl- 1   �	
�	 
ascr-
 -�- o  "#�� 0 
errmsglead 
errMsgLead�  - J      -- --- o      �� 0 od  - -�- n     --- 1  24�
� 
txdl- 1  12�
� 
ascr�  - --- r  7=--- n  7;--- 4  8;�-
� 
citm- m  9:�� - o  78� �  0 objectstring objectString- o      ���� 0 objectstring objectString- -��- r  >C--- o  >?���� 0 od  - n     --- 1  @B��
�� 
txdl- 1  ?@��
�� 
ascr��  �  �  ,� - -!-  l HH��������  ��  ��  -! -"-#-" Z  H|-$-%����-$ E  HK-&-'-& o  HI���� 0 objectstring objectString-' o  IJ���� 0 errmsgtrail errMsgTrail-% k  Nx-(-( -)-*-) r  Ne-+-,-+ J  NT---- -.-/-. n NQ-0-1-0 1  OQ��
�� 
txdl-1 1  NO��
�� 
ascr-/ -2��-2 o  QR���� 0 errmsgtrail errMsgTrail��  -, J      -3-3 -4-5-4 o      ���� 0 od  -5 -6��-6 n     -7-8-7 1  ac��
�� 
txdl-8 1  `a��
�� 
ascr��  -* -9-:-9 r  fk-;-<-; o  fg���� 0 errmsgtrail errMsgTrail-< n     -=->-= 1  hj��
�� 
txdl-> 1  gh��
�� 
ascr-: -?-@-? r  lr-A-B-A n  lp-C-D-C 4  mp��-E
�� 
citm-E m  no���� -D o  lm���� 0 objectstring objectString-B o      ���� 0 objectstring objectString-@ -F��-F r  sx-G-H-G o  st���� 0 od  -H n     -I-J-I 1  uw��
�� 
txdl-J 1  tu��
�� 
ascr��  ��  ��  -# -K-L-K l }}��������  ��  ��  -L -M��-M l }}��-N-O��  -N O Iset {text:objectString} to (objectString as string) -- what does THIS do?   -O �-P-P � s e t   { t e x t : o b j e c t S t r i n g }   t o   ( o b j e c t S t r i n g   a s   s t r i n g )   - -   w h a t   d o e s   T H I S   d o ?��  ,H -Q-R-Q l ��������  ��  ��  -R -S��-S L  �-T-T o  ����� 0 objectstring objectString��  �  +� -U-V-U l     ��������  ��  ��  -V -W-X-W l     ��������  ��  ��  -X -Y-Z-Y i  -[-\-[ I      ��-]���� 0 gettextbefore getTextBefore-] -^-_-^ o      ���� 0 
sourcetext 
sourceTEXT-_ -`��-` o      ���� 0 stophere stopHere��  ��  -\ k     Q-a-a -b-c-b l     ��-d-e��  -d   version 1.1   -e �-f-f    v e r s i o n   1 . 1-c -g-h-g l     ��������  ��  ��  -h -i��-i Q     Q-j-k-l-j k    A-m-m -n-o-n r    -p-q-p J    	-r-r -s-t-s n   -u-v-u 1    ��
�� 
txdl-v 1    ��
�� 
ascr-t -w��-w o    ���� 0 stophere stopHere��  -q J      -x-x -y-z-y o      ���� 0 	olddelims 	oldDelims-z -{��-{ n     -|-}-| 1    ��
�� 
txdl-} 1    �
� 
ascr��  -o -~--~ Z    8-�-��-�-� =   $-�-�-� l   "-���-� I   "�-��
� .corecnte****       ****-� n    -�-�-� 2   �
� 
citm-� o    �� 0 
sourcetext 
sourceTEXT�  �  �  -� m   " #�� -� k   ' /-�-� -�-�-� r   ' ,-�-�-� o   ' (�� 0 	olddelims 	oldDelims-� n     -�-�-� 1   ) +�
� 
txdl-� 1   ( )�
� 
ascr-� -��-� L   - /-�-� m   - .-�-� �-�-�  �  �  -� r   2 8-�-�-� n   2 6-�-�-� 4   3 6�-�
� 
citm-� m   4 5�� -� o   2 3�� 0 
sourcetext 
sourceTEXT-� l     -���-� o      �� 0 finalresult finalResult�  �  - -�-�-� r   9 >-�-�-� o   9 :�� 0 	olddelims 	oldDelims-� n     -�-�-� 1   ; =�
� 
txdl-� 1   : ;�
� 
ascr-� -��-� L   ? A-�-� o   ? @�� 0 finalresult finalResult�  -k R      �-�-�
� .ascrerr ****      � ****-� o      �� 0 errmsg errMsg-� �-��
� 
errn-� o      �� 0 errnum errNum�  -l k   I Q-�-� -�-�-� r   I N-�-�-� o   I J�� 0 	olddelims 	oldDelims-� n     -�-�-� 1   K M�
� 
txdl-� 1   J K�
� 
ascr-� -��-� l  O Q-�-�-�-� L   O Q-�-� m   O P-�-� �-�-�  -� 3 - return nothing if the stop text is not found   -� �-�-� Z   r e t u r n   n o t h i n g   i f   t h e   s t o p   t e x t   i s   n o t   f o u n d�  ��  -Z -�-�-� l     ����  �  �  -� -�-�-� l     ����  �  �  -� -�-�-� i  -�-�-� I      �-���  0 gettextbetween getTextBetween-� -��-� o      �� 	0 prefs  �  �  -� k     �-�-� -�-�-� l     �-�-��  -�   version 1.6   -� �-�-�    v e r s i o n   1 . 6-� -�-�-� l     ����  �  �  -� -�-�-� r     -�-�-� K     -�-� �-�-�� 0 textitemnum textItemNum-� m    �� -� �-���  0 includemarkers includeMarkers-� m    �
� boovfals�  -� o      �� 0 defaultprefs defaultPrefs-� -�-�-� l  	 	����  �  �  -� -�-�-� Z   	 '-�-���-� F   	 -�-�-� l  	 -���-� >  	 -�-�-� n   	 -�-�-� m   
 �
� 
pcls-� o   	 
�� 	0 prefs  -� m    �
� 
list�  �  -� l   -���-� >   -�-�-� c    -�-�-� l   -��~�}-� n    -�-�-� m    �|
�| 
pcls-� o    �{�{ 	0 prefs  �~  �}  -� m    �z
�z 
TEXT-� m    -�-� �-�-�  r e c o r d�  �  -� R    #�y-�-�
�y .ascrerr ****      � ****-� m   ! "-�-� �-�-� g e t T e x t B e t w e e n   F A I L E D :   p a r a m e t e r   s h o u l d   b e   a   r e c o r d   o r   l i s t .   I f   i t   i s   m u l t i p l e   i t e m s ,   j u s t   m a k e   i t   i n t o   a   l i s t   t o   u p g r a d e   t o   t h i s   h a n d l e r .-� �x-��w
�x 
errn-� m     �v�v �w  �  �  -� -�-�-� Z   ( `-�-��u�t-� =  ( --�-�-� n   ( +-�-�-� m   ) +�s
�s 
pcls-� o   ( )�r�r 	0 prefs  -� m   + ,�q
�q 
list-� k   0 \-�-� -�-�-� Z   0 F-�-��p�o-� =  0 7-�-�-� l  0 5-��n�m-� I  0 5�l-��k
�l .corecnte****       ****-� o   0 1�j�j 	0 prefs  �k  �n  �m  -� m   5 6�i�i -� r   : B-�-�-� n   : >-�-�-� 4   ; >�h-�
�h 
cobj-� m   < =�g�g -� o   : ;�f�f 	0 prefs  -� n      . ..  o   ? A�e�e 0 textitemnum textItemNum. o   > ?�d�d 0 defaultprefs defaultPrefs�p  �o  -� .�c. r   G \... K   G Z.. �b..�b 0 
sourcetext 
sourceTEXT. n   H L..	. 4   I L�a.

�a 
cobj.
 m   J K�`�` .	 o   H I�_�_ 	0 prefs  . �^..�^ 0 
beforetext 
beforeText. n   M Q... 4   N Q�].
�] 
cobj. m   O P�\�\ . o   M N�[�[ 	0 prefs  . �Z.�Y�Z 0 	aftertext 	afterText. n   R V... 4   S V�X.
�X 
cobj. m   T U�W�W . o   R S�V�V 	0 prefs  �Y  . o      �U�U 	0 prefs  �c  �u  �t  -� ... l  a f.... r   a f... b   a d... o   a b�T�T 	0 prefs  . o   b c�S�S 0 defaultprefs defaultPrefs. o      �R�R 	0 prefs  . , & add on default preferences, if needed   . �.. L   a d d   o n   d e f a u l t   p r e f e r e n c e s ,   i f   n e e d e d. ... r   g l. .!.  n   g j.".#." o   h j�Q�Q 0 
sourcetext 
sourceTEXT.# o   g h�P�P 	0 prefs  .! o      �O�O 0 
sourcetext 
sourceTEXT. .$.%.$ r   m r.&.'.& n   m p.(.).( o   n p�N�N 0 
beforetext 
beforeText.) o   m n�M�M 	0 prefs  .' o      �L�L 0 
beforetext 
beforeText.% .*.+.* r   s x.,.-., n   s v.../.. o   t v�K�K 0 	aftertext 	afterText./ o   s t�J�J 	0 prefs  .- o      �I�I 0 	aftertext 	afterText.+ .0.1.0 r   y ~.2.3.2 n   y |.4.5.4 o   z |�H�H 0 textitemnum textItemNum.5 o   y z�G�G 	0 prefs  .3 o      �F�F 0 textitemnum textItemNum.1 .6.7.6 r    �.8.9.8 n    �.:.;.: o   � ��E�E  0 includemarkers includeMarkers.; o    ��D�D 	0 prefs  .9 o      �C�C  0 includemarkers includeMarkers.7 .<.=.< l  � ��B�A�@�B  �A  �@  .= .>.?.> Q   � �.@.A.B.@ k   � �.C.C .D.E.D r   � �.F.G.F J   � �.H.H .I.J.I n  � �.K.L.K 1   � ��?
�? 
txdl.L 1   � ��>
�> 
ascr.J .M�=.M o   � ��<�< 0 
beforetext 
beforeText�=  .G J      .N.N .O.P.O o      �;�; 0 	olddelims 	oldDelims.P .Q�:.Q n     .R.S.R 1   � ��9
�9 
txdl.S 1   � ��8
�8 
ascr�:  .E .T.U.T r   � �.V.W.V n   � �.X.Y.X 4   � ��7.Z
�7 
citm.Z o   � ��6�6 0 textitemnum textItemNum.Y o   � ��5�5 0 
sourcetext 
sourceTEXT.W l     .[�4�3.[ o      �2�2 0 prefixremoved prefixRemoved�4  �3  .U .\.].\ r   � �.^._.^ o   � ��1�1 0 	aftertext 	afterText._ n     .`.a.` 1   � ��0
�0 
txdl.a 1   � ��/
�/ 
ascr.] .b.c.b r   � �.d.e.d n   � �.f.g.f 4   � ��..h
�. 
citm.h m   � ��-�- .g o   � ��,�, 0 prefixremoved prefixRemoved.e l     .i�+�*.i o      �)�) 0 finalresult finalResult�+  �*  .c .j.k.j r   � �.l.m.l o   � ��(�( 0 	olddelims 	oldDelims.m n     .n.o.n 1   � ��'
�' 
txdl.o 1   � ��&
�& 
ascr.k .p.q.p l  � ��%�$�#�%  �$  �#  .q .r.s.r Z  � �.t.u�"�!.t o   � �� �   0 includemarkers includeMarkers.u r   � �.v.w.v b   � �.x.y.x b   � �.z.{.z o   � ��� 0 
beforetext 
beforeText.{ o   � ��� 0 finalresult finalResult.y o   � ��� 0 	aftertext 	afterText.w o      �� 0 finalresult finalResult�"  �!  .s .|�.| l  � �����  �  �  �  .A R      �.}.~
� .ascrerr ****      � ****.} o      �� 0 errmsg errMsg.~ �.�
� 
errn. o      �� 0 errnum errNum�  .B k   � �.�.� .�.�.� r   � �.�.�.� o   � ��� 0 	olddelims 	oldDelims.� n     .�.�.� 1   � ��
� 
txdl.� 1   � ��
� 
ascr.� .�.�.� l  � ��.�.��  .� > 8 	tell me to log "Error in getTextBetween() : " & errMsg   .� �.�.� p   	 t e l l   m e   t o   l o g   " E r r o r   i n   g e t T e x t B e t w e e n ( )   :   "   &   e r r M s g.� .��.� l  � �.�.�.�.� r   � �.�.�.� m   � �.�.� �.�.�  .� l     .���.� o      �� 0 finalresult finalResult�  �  .� : 4 return nothing if the surrounding text is not found   .� �.�.� h   r e t u r n   n o t h i n g   i f   t h e   s u r r o u n d i n g   t e x t   i s   n o t   f o u n d�  .? .�.�.� l  � ��
�	��
  �	  �  .� .�.�.� l  � �����  �  �  .� .�.�.� L   � �.�.� o   � ��� 0 finalresult finalResult.� .��.� l  � ���� �  �  �   �  -� .�.�.� l     ��������  ��  ��  .� .�.�.� l     ��������  ��  ��  .� .�.�.� i  .�.�.� I      ��.����� 0 
parsechars 
parseChars.� .���.� o      ���� 	0 prefs  ��  ��  .� k     �.�.� .�.�.� l     ��.�.���  .�   version 1.3   .� �.�.�    v e r s i o n   1 . 3.� .�.�.� l     ��������  ��  ��  .� .�.�.� r     .�.�.� K     .�.� ��.����� 0 considercase considerCase.� m    ��
�� boovtrue��  .� o      ���� 0 defaultprefs defaultPrefs.� .�.�.� l   ��������  ��  ��  .� .�.�.� l   ��������  ��  ��  .� .�.�.� Z    [.�.�.���.� =   .�.�.� n    
.�.�.� m    
��
�� 
pcls.� o    ���� 	0 prefs  .� m   
 ��
�� 
list.� k    ?.�.� .�.�.� Z    =.�.���.�.� ?   .�.�.� l   .�����.� I   ��.���
�� .corecnte****       ****.� o    ���� 	0 prefs  ��  ��  ��  .� m    ���� .� k    ,.�.� .�.�.� l   ��.�.���  .� - ' get any parameters after the initial 3   .� �.�.� N   g e t   a n y   p a r a m e t e r s   a f t e r   t h e   i n i t i a l   3.� .���.� r    ,.�.�.� K    *.�.� ��.�.��� 0 
sourcetext 
sourceTEXT.� n    .�.�.� 4    ��.�
�� 
cobj.� m    ���� .� o    ���� 	0 prefs  .� ��.�.��� 0 parsestring parseString.� n    #.�.�.� 4     #��.�
�� 
cobj.� m   ! "���� .� o     ���� 	0 prefs  .� ��.����� 0 considercase considerCase.� n   $ (.�.�.� 4   % (��.�
�� 
cobj.� m   & '���� .� o   $ %���� 	0 prefs  ��  .� o      ���� 	0 prefs  ��  ��  .� r   / =.�.�.� K   / ;.�.� ��.�.��� 0 
sourcetext 
sourceTEXT.� n   0 4.�.�.� 4   1 4��.�
�� 
cobj.� m   2 3���� .� o   0 1���� 	0 prefs  .� ��.����� 0 parsestring parseString.� n   5 9.�.�.� 4   6 9��.�
�� 
cobj.� m   7 8���� .� o   5 6���� 	0 prefs  ��  .� o      ���� 	0 prefs  .� .���.� l  > >�������  ��  �  ��  .� .�.�.� >  B L.�.�.� n   B E.�.�.� m   C E�
� 
pcls.� o   B C�� 	0 prefs  .� l  E K.���.� n   E K.�.�.� m   I K�
� 
pcls.� K   E I.�.� �.��� 0 somekey someKey.� m   F G�� �  �  �  .� .��.� k   O W.�.� .�/ .� l  O O�//�  / x r Test by matching class to something that IS a record to avoid FileMaker namespace conflict with the term "record"   / �// �   T e s t   b y   m a t c h i n g   c l a s s   t o   s o m e t h i n g   t h a t   I S   a   r e c o r d   t o   a v o i d   F i l e M a k e r   n a m e s p a c e   c o n f l i c t   w i t h   t h e   t e r m   " r e c o r d "/  /// l  O O����  �  �  / /// R   O U�//	
� .ascrerr ****      � ****/ m   S T/
/
 �//> T h e   p a r a m e t e r   f o r   ' p a r s e C h a r s ( ) '   s h o u l d   b e   a   r e c o r d   o r   a t   l e a s t   a   l i s t .   W r a p   t h e   p a r a m e t e r ( s )   i n   c u r l y   b r a c k e t s   f o r   e a s y   u p g r a d e   t o   ' p a r s e C h a r s ( )   v e r s i o n   1 . 3 .  /	 �/�
� 
errn/ m   Q R�� �  / /�/ l  V V����  �  �  �  �  ��  .� /// l  \ \����  �  �  / /// l  \ \����  �  �  / /// r   \ a/// b   \ _/// o   \ ]�� 	0 prefs  / o   ] ^�� 0 defaultprefs defaultPrefs/ o      �� 	0 prefs  / /// l  b b����  �  �  / /// l  b b����  �  �  / /// r   b g/// n   b e/ /!/  o   c e�� 0 
sourcetext 
sourceTEXT/! o   b c�� 	0 prefs  / o      �� 0 
sourcetext 
sourceTEXT/ /"/#/" r   h m/$/%/$ n   h k/&/'/& o   i k�� 0 parsestring parseString/' o   h i�� 	0 prefs  /% o      �� 0 parsestring parseString/# /(/)/( r   n s/*/+/* n   n q/,/-/, o   o q�� 0 considercase considerCase/- o   n o�� 	0 prefs  /+ o      �� 0 considercase considerCase/) /.///. l  t t����  �  �  // /0/1/0 l  t t����  �  �  /1 /2/3/2 r   t y/4/5/4 n  t w/6/7/6 1   u w�
� 
txdl/7 1   t u�
� 
ascr/5 o      �� 0 	olddelims 	oldDelims/3 /8�/8 Q   z �/9/:/;/9 k   } �/</< /=/>/= r   } �/?/@/? l  } �/A��/A J   } �/B/B /C�/C c   } �/D/E/D o   } ~�� 0 parsestring parseString/E m   ~ �
� 
TEXT�  �  �  /@ n     /F/G/F 1   � ��
� 
txdl/G 1   � ��
� 
ascr/> /H/I/H l  � ����~�  �  �~  /I /J/K/J Z   � �/L/M�}/N/L o   � ��|�| 0 considercase considerCase/M P   � �/O/P�{/O r   � �/Q/R/Q n   � �/S/T/S 2   � ��z
�z 
citm/T o   � ��y�y 0 
sourcetext 
sourceTEXT/R l     /U�x�w/U o      �v�v 0 
parsedlist 
parsedList�x  �w  /P �u�t
�u conscase�t  �{  �}  /N P   � �/V�s/W/V r   � �/X/Y/X n   � �/Z/[/Z 2   � ��r
�r 
citm/[ o   � ��q�q 0 
sourcetext 
sourceTEXT/Y l     /\�p�o/\ o      �n�n 0 
parsedlist 
parsedList�p  �o  �s  /W �m�l
�m conscase�l  /K /]/^/] l  � ��k�j�i�k  �j  �i  /^ /_/`/_ r   � �/a/b/a o   � ��h�h 0 	olddelims 	oldDelims/b n     /c/d/c 1   � ��g
�g 
txdl/d 1   � ��f
�f 
ascr/` /e�e/e L   � �/f/f o   � ��d�d 0 
parsedlist 
parsedList�e  /: R      �c/g/h
�c .ascrerr ****      � ****/g o      �b�b 0 errmsg errMsg/h �a/i�`
�a 
errn/i o      �_�_ 0 errnum errNum�`  /; k   � �/j/j /k/l/k Q   � �/m/n�^/m r   � �/o/p/o o   � ��]�] 0 	olddelims 	oldDelims/p n     /q/r/q 1   � ��\
�\ 
txdl/r 1   � ��[
�[ 
ascr/n R      �Z�Y�X
�Z .ascrerr ****      � ****�Y  �X  �^  /l /s�W/s R   � ��V/t/u
�V .ascrerr ****      � ****/t b   � �/v/w/v m   � �/x/x �/y/y : E R R O R :   p a r s e C h a r s ( )   h a n d l e r :  /w o   � ��U�U 0 errmsg errMsg/u �T/z�S
�T 
errn/z o   � ��R�R 0 errnum errNum�S  �W  �  .� /{/|/{ l     �Q�P�O�Q  �P  �O  /| /}/~/} l     �N�M�L�N  �M  �L  /~ //�/ i  /�/�/� I      �K/��J�K 0 replacesimple replaceSimple/� /��I/� o      �H�H 	0 prefs  �I  �J  /� k     �/�/� /�/�/� l     �G/�/��G  /�   version 1.4   /� �/�/�    v e r s i o n   1 . 4/� /�/�/� l     �F�E�D�F  �E  �D  /� /�/�/� r     /�/�/� K     /�/� �C/��B�C 0 considercase considerCase/� m    �A
�A boovtrue�B  /� o      �@�@ 0 defaultprefs defaultPrefs/� /�/�/� l   �?�>�=�?  �>  �=  /� /�/�/� Z    e/�/�/��</� =   /�/�/� n    
/�/�/� m    
�;
�; 
pcls/� o    �:�: 	0 prefs  /� m   
 �9
�9 
list/� k    I/�/� /�/�/� Z    G/�/��8/�/� ?   /�/�/� l   /��7�6/� I   �5/��4
�5 .corecnte****       ****/� o    �3�3 	0 prefs  �4  �7  �6  /� m    �2�2 /� k    1/�/� /�/�/� l   �1/�/��1  /� - ' get any parameters after the initial 3   /� �/�/� N   g e t   a n y   p a r a m e t e r s   a f t e r   t h e   i n i t i a l   3/� /��0/� r    1/�/�/� K    //�/� �//�/��/ 0 
sourcetext 
sourceTEXT/� n    /�/�/� 4    �./�
�. 
cobj/� m    �-�- /� o    �,�, 	0 prefs  /� �+/�/��+ 0 oldchars oldChars/� n    #/�/�/� 4     #�*/�
�* 
cobj/� m   ! "�)�) /� o     �(�( 	0 prefs  /� �'/�/��' 0 newchars newChars/� n   $ (/�/�/� 4   % (�&/�
�& 
cobj/� m   & '�%�% /� o   $ %�$�$ 	0 prefs  /� �#/��"�# 0 considercase considerCase/� n   ) -/�/�/� 4   * -�!/�
�! 
cobj/� m   + ,� �  /� o   ) *�� 	0 prefs  �"  /� o      �� 	0 prefs  �0  �8  /� r   4 G/�/�/� K   4 E/�/� �/�/�� 0 
sourcetext 
sourceTEXT/� n   5 9/�/�/� 4   6 9�/�
� 
cobj/� m   7 8�� /� o   5 6�� 	0 prefs  /� �/�/�� 0 oldchars oldChars/� n   : >/�/�/� 4   ; >�/�
� 
cobj/� m   < =�� /� o   : ;�� 	0 prefs  /� �/��� 0 newchars newChars/� n   ? C/�/�/� 4   @ C�/�
� 
cobj/� m   A B�� /� o   ? @�� 	0 prefs  �  /� o      �� 	0 prefs  /� /��/� l  H H����  �  �  �  /� /�/�/� >  L V/�/�/� n   L O/�/�/� m   M O�
� 
pcls/� o   L M�
�
 	0 prefs  /� l  O U/��	�/� n   O U/�/�/� m   S U�
� 
pcls/� K   O S/�/� �/��� 0 somekey someKey/� m   P Q�� �  �	  �  /� /��/� k   Y a/�/� /�/�/� l  Y Y�/�/��  /� x r Test by matching class to something that IS a record to avoid FileMaker namespace conflict with the term "record"   /� �/�/� �   T e s t   b y   m a t c h i n g   c l a s s   t o   s o m e t h i n g   t h a t   I S   a   r e c o r d   t o   a v o i d   F i l e M a k e r   n a m e s p a c e   c o n f l i c t   w i t h   t h e   t e r m   " r e c o r d "/� /�/�/� l  Y Y�� ���  �   ��  /� /�/�/� R   Y _��/�/�
�� .ascrerr ****      � ****/� m   ] ^/�/� �/�/�J T h e   p a r a m e t e r   f o r   ' r e p l a c e S i m p l e ( ) '   s h o u l d   b e   a   r e c o r d   o r   a t   l e a s t   a   l i s t .   W r a p   t h e   p a r a m e t e r ( s )   i n   c u r l y   b r a c k e t s   f o r   e a s y   u p g r a d e   t o   ' r e p l a c e S i m p l e ( )   v e r s i o n   1 . 3 .  /� ��/���
�� 
errn/� m   [ \���� ��  /� /���/� l  ` `��������  ��  ��  ��  �  �<  /� /�/�/� l  f f��������  ��  ��  /� /�/�/� l  f f��������  ��  ��  /� /�/�/� r   f k/�/�/� b   f i/�/�/� o   f g���� 	0 prefs  /� o   g h���� 0 defaultprefs defaultPrefs/� o      ���� 	0 prefs  /� /�/�/� l  l l��������  ��  ��  /� /�0 /� l  l l��������  ��  ��  0  000 r   l q000 n   l o000 o   m o���� 0 considercase considerCase0 o   l m���� 	0 prefs  0 o      ���� 0 considercase considerCase0 000 r   r w0	0
0	 n   r u000 o   s u���� 0 
sourcetext 
sourceTEXT0 o   r s���� 	0 prefs  0
 o      ���� 0 
sourcetext 
sourceTEXT0 000 r   x }000 n   x {000 o   y {���� 0 oldchars oldChars0 o   x y���� 	0 prefs  0 o      ���� 0 oldchars oldChars0 000 r   ~ �000 n   ~ �000 o    ����� 0 newchars newChars0 o   ~ ���� 	0 prefs  0 o      ���� 0 newchars newChars0 000 l  � ���������  ��  ��  0 000 r   � �000 c   � �00 0 o   � ����� 0 
sourcetext 
sourceTEXT0  m   � ���
�� 
TEXT0 o      ���� 0 
sourcetext 
sourceTEXT0 0!0"0! l  � ���������  ��  ��  0" 0#0$0# r   � �0%0&0% n  � �0'0(0' 1   � ���
�� 
txdl0( 1   � ���
�� 
ascr0& o      ���� 0 	olddelims 	oldDelims0$ 0)0*0) r   � �0+0,0+ l  � �0-����0- o   � ����� 0 oldchars oldChars��  ��  0, n     0.0/0. 1   � ���
�� 
txdl0/ 1   � ���
�� 
ascr0* 000100 Z   � �0203��0402 o   � ����� 0 considercase considerCase03 P   � �0506��05 k   � �0707 080908 r   � �0:0;0: n   � �0<0=0< 2   � ���
�� 
citm0= o   � ����� 0 
sourcetext 
sourceTEXT0; l     0>����0> o      ���� 0 
parsedlist 
parsedList��  ��  09 0?0@0? r   � �0A0B0A l  � �0C����0C J   � �0D0D 0E��0E l  � �0F��0F c   � �0G0H0G o   � ��� 0 newchars newChars0H m   � ��
� 
TEXT�  �  ��  ��  ��  0B n     0I0J0I 1   � ��
� 
txdl0J 1   � ��
� 
ascr0@ 0K�0K r   � �0L0M0L c   � �0N0O0N l  � �0P��0P o   � ��� 0 
parsedlist 
parsedList�  �  0O m   � ��
� 
TEXT0M l     0Q��0Q o      �� 0 newtext newText�  �  �  06 ��
� conscase�  ��  ��  04 P   � �0R�0S0R k   � �0T0T 0U0V0U r   � �0W0X0W n   � �0Y0Z0Y 2   � ��
� 
citm0Z o   � ��� 0 
sourcetext 
sourceTEXT0X l     0[��0[ o      �� 0 
parsedlist 
parsedList�  �  0V 0\0]0\ r   � �0^0_0^ l  � �0`��0` J   � �0a0a 0b�0b l  � �0c��0c c   � �0d0e0d o   � ��� 0 newchars newChars0e m   � ��
� 
TEXT�  �  �  �  �  0_ n     0f0g0f 1   � ��
� 
txdl0g 1   � ��
� 
ascr0] 0h�0h r   � �0i0j0i c   � �0k0l0k l  � �0m��0m o   � ��� 0 
parsedlist 
parsedList�  �  0l m   � ��
� 
TEXT0j l     0n��0n o      �� 0 newtext newText�  �  �  �  0S ��
� conscase�  01 0o0p0o r   � �0q0r0q o   � ��� 0 	olddelims 	oldDelims0r n     0s0t0s 1   � ��
� 
txdl0t 1   � ��
� 
ascr0p 0u0v0u L   � �0w0w o   � ��� 0 newtext newText0v 0x�0x l  � �����  �  �  �  /� 0y0z0y l     ����  �  �  0z 0{0|0{ l     ����  �  �  0| 0}0~0} i  00�0 I      �0��� 0 unparsechars unParseChars0� 0�0�0� o      �� 0 thislist thisList0� 0��0� o      �� 0 newdelim newDelim�  �  0� k     C0�0� 0�0�0� l     �0�0��  0�   version 1.2   0� �0�0�    v e r s i o n   1 . 20� 0�0�0� l     ����  �  �  0� 0�0�0� r     0�0�0� n    0�0�0� 1    �
� 
txdl0� 1     �~
�~ 
ascr0� o      �}�} 0 	olddelims 	oldDelims0� 0��|0� Q    C0�0�0�0� k   	 !0�0� 0�0�0� r   	 0�0�0� l  	 0��{�z0� J   	 0�0� 0��y0� c   	 0�0�0� o   	 
�x�x 0 newdelim newDelim0� m   
 �w
�w 
TEXT�y  �{  �z  0� n     0�0�0� 1    �v
�v 
txdl0� 1    �u
�u 
ascr0� 0�0�0� r    0�0�0� c    0�0�0� o    �t�t 0 thislist thisList0� m    �s
�s 
TEXT0� l     0��r�q0� o      �p�p 0 unparsedtext unparsedText�r  �q  0� 0�0�0� r    0�0�0� o    �o�o 0 	olddelims 	oldDelims0� n     0�0�0� 1    �n
�n 
txdl0� 1    �m
�m 
ascr0� 0��l0� L    !0�0� o     �k�k 0 unparsedtext unparsedText�l  0� R      �j0�0�
�j .ascrerr ****      � ****0� o      �i�i 0 errmsg errMsg0� �h0��g
�h 
errn0� o      �f�f 0 errnum errNum�g  0� k   ) C0�0� 0�0�0� Q   ) :0�0��e0� r   , 10�0�0� o   , -�d�d 0 	olddelims 	oldDelims0� n     0�0�0� 1   . 0�c
�c 
txdl0� 1   - .�b
�b 
ascr0� R      �a�`�_
�a .ascrerr ****      � ****�`  �_  �e  0� 0��^0� R   ; C�]0�0�
�] .ascrerr ****      � ****0� b   ? B0�0�0� m   ? @0�0� �0�0� > E R R O R :   u n P a r s e C h a r s ( )   h a n d l e r :  0� o   @ A�\�\ 0 errmsg errMsg0� �[0��Z
�[ 
errn0� o   = >�Y�Y 0 errnum errNum�Z  �^  �|  0~ 0�0�0� l     �X�W�V�X  �W  �V  0� 0�0�0� l     �U�T�S�U  �T  �S  0� 0�0�0� i  "0�0�0� I      �R0��Q�R  0 versioncompare versionCompare0� 0��P0� o      �O�O 	0 prefs  �P  �Q  0� k    0�0� 0�0�0� l     �N�M�L�N  �M  �L  0� 0�0�0� r     
0�0�0� K     0�0� �K0�0��K 0 v1  0� m    �J
�J 
null0� �I0�0��I 0 v2  0� m    �H
�H 
null0� �G0��F�G 	0 delim  0� m    0�0� �0�0�  .�F  0� o      �E�E 0 defaultprefs defaultPrefs0� 0�0�0� r    0�0�0� b    0�0�0� o    �D�D 	0 prefs  0� o    �C�C 0 defaultprefs defaultPrefs0� o      �B�B 	0 prefs  0� 0�0�0� l   �A�@�?�A  �@  �?  0� 0�0�0� r    *0�0�0� J    0�0� 0�0�0� n   0�0�0� 1    �>
�> 
txdl0� 1    �=
�= 
ascr0� 0��<0� n    0�0�0� o    �;�; 	0 delim  0� o    �:�: 	0 prefs  �<  0� J      0�0� 0�0�0� o      �9�9 0 od  0� 0��80� n     0�0�0� 1   & (�7
�7 
txdl0� 1   % &�6
�6 
ascr�8  0� 0�0�0� r   + F0�0�0� J   + 70�0� 0�0�0� n   + 01 11  2   . 0�5
�5 
citm1 n   + .111 o   , .�4�4 0 v1  1 o   + ,�3�3 	0 prefs  0� 1�21 n   0 5111 2   3 5�1
�1 
citm1 n   0 3111 o   1 3�0�0 0 v2  1 o   0 1�/�/ 	0 prefs  �2  0� J      1	1	 1
11
 o      �.�. 0 v1_list  1 1�-1 o      �,�, 0 v2_list  �-  0� 111 r   G L111 o   G H�+�+ 0 od  1 n     111 1   I K�*
�* 
txdl1 1   H I�)
�) 
ascr1 111 l  M M�(�'�&�(  �'  �&  1 111 r   M h111 J   M Y11 111 I  M R�%1�$
�% .corecnte****       ****1 o   M N�#�# 0 v1_list  �$  1 1�"1 I  R W�!1� 
�! .corecnte****       ****1 o   R S�� 0 v2_list  �   �"  1 J      11 1 1!1  o      �� 0 v1_count  1! 1"�1" o      �� 0 v2_count  �  1 1#1$1# Z   i x1%1&�1'1% ?  i l1(1)1( o   i j�� 0 v1_count  1) o   j k�� 0 v2_count  1& r   o r1*1+1* o   o p�� 0 v1_count  1+ o      �� 0 maxcount maxCount�  1' r   u x1,1-1, o   u v�� 0 v2_count  1- o      �� 0 maxcount maxCount1$ 1.1/1. l  y y����  �  �  1/ 101110 r   y |121312 m   y z1414 �1515  13 o      �� 0 versionresult versionResult11 161716 Y   } �18�191:�18 k   � �1;1; 1<1=1< Z  � �1>1?��1> >  � �1@1A1@ o   � ��� 0 versionresult versionResult1A m   � �1B1B �1C1C  1?  S   � ��  �  1= 1D1E1D Z   � �1F1G�1H1F B   � �1I1J1I o   � ��
�
 0 i  1J o   � ��	�	 0 v1_count  1G r   � �1K1L1K n   � �1M1N1M 4   � ��1O
� 
cobj1O o   � ��� 0 i  1N o   � ��� 0 v1_list  1L o      �� 0 v1_part  �  1H r   � �1P1Q1P m   � ���  1Q o      �� 0 v1_part  1E 1R1S1R Z   � �1T1U�1V1T B   � �1W1X1W o   � ��� 0 i  1X o   � �� �  0 v2_count  1U r   � �1Y1Z1Y n   � �1[1\1[ 4   � ���1]
�� 
cobj1] o   � ����� 0 i  1\ o   � ����� 0 v2_list  1Z o      ���� 0 v2_part  �  1V r   � �1^1_1^ m   � �����  1_ o      ���� 0 v2_part  1S 1`1a1` l  � ���������  ��  ��  1a 1b1c1b l  � ���������  ��  ��  1c 1d1e1d Q   � �1f1g1h1f k   � �1i1i 1j1k1j l  � ���1l1m��  1l > 8log ("v1_part: " & v1_part & "   | v2_part: " & v2_part)   1m �1n1n p l o g   ( " v 1 _ p a r t :   "   &   v 1 _ p a r t   &   "       |   v 2 _ p a r t :   "   &   v 2 _ p a r t )1k 1o��1o Z   � �1p1q1r1s1p ?  � �1t1u1t l  � �1v����1v c   � �1w1x1w o   � ����� 0 v1_part  1x m   � ���
�� 
nmbr��  ��  1u l  � �1y����1y c   � �1z1{1z o   � ����� 0 v2_part  1{ m   � ���
�� 
nmbr��  ��  1q r   � �1|1}1| m   � ����� 1} o      ���� 0 versionresult versionResult1r 1~11~ A  � �1�1�1� l  � �1�����1� c   � �1�1�1� o   � ����� 0 v1_part  1� m   � ���
�� 
nmbr��  ��  1� l  � �1�����1� c   � �1�1�1� o   � ����� 0 v2_part  1� m   � ���
�� 
nmbr��  ��  1 1���1� r   � �1�1�1� m   � �������1� o      ���� 0 versionresult versionResult��  1s l  � ���1�1���  1� 1 + the two versions are the same, so continue   1� �1�1� V   t h e   t w o   v e r s i o n s   a r e   t h e   s a m e ,   s o   c o n t i n u e��  1g R      ������
�� .ascrerr ****      � ****��  ��  1h r   � �1�1�1� m   � �1�1� �1�1�  ?1� o      ���� 0 versionresult versionResult1e 1�1�1� l  � ���������  ��  ��  1� 1���1� l  � ���������  ��  ��  ��  � 0 i  19 m   � ����� 1: o   � ����� 0 maxcount maxCount�  17 1�1�1� l  � ���������  ��  ��  1� 1�1�1� Z  �1�1�����1� =  � �1�1�1� o   � ����� 0 versionresult versionResult1� m   � �1�1� �1�1�  1� r   � �1�1�1� m   � �����  1� o      ���� 0 versionresult versionResult��  ��  1� 1�1�1� l ��������  ��  ��  1� 1�1�1� L  1�1� o  ���� 0 versionresult versionResult1� 1���1� l �������  ��  �  ��  0� 1��1� l     ����  �  �  �       I�1�� (1�1�1�1�1�1�1�1�1�1�1�1�1�1�1�1�1�1�1�1�1�1�1�1�1�1�1�1�1�1�1�1�1�1�1�1�1�1�1�1�1�1�1�1�1�1�1�1�1�1�1�1�1�1�1�1�1�1�1�1�1�1�1�1�1�1�1�1�1��  1� G�������������������������������������������������������������������������������������������~�}�|�{�z�y�x�w�v�u�t�s�r� 0 	debugmode 	DebugMode� 0 
scriptname 
ScriptName� &0 clickcommandposix clickCommandPosix� $0 encodecharforurl encodeCharForURL� $0 encodetextforurl encodeTextForURL� 0 
getfromfmp 
getFromFMP� 0 	sendtofmp 	sendToFMP� 0 closedatabase closeDatabase� 40 displayfilemakerdatabase displayFileMakerDatabase� 20 ensurefilemakerdatabase ensureFileMakerDatabase� .0 openfilemakerdatabase openFileMakerDatabase� 0 sfr_dictget SFR_DictGet� 0 sfr_dictitem SFR_DictItem� 0 
sfr_escape 
SFR_Escape� 0 sfr_unescape SFR_Unescape� L0 $fmgui_managedatasources_ensureexists $fmGUI_ManageDataSources_EnsureExists� @0 fmgui_managedatasources_modify fmGUI_ManageDataSources_Modify� <0 fmgui_managedatasources_open fmGUI_ManageDataSources_Open� <0 fmgui_managedatasources_save fmGUI_ManageDataSources_Save� 60 fmgui_managedb_field_edit fmGUI_ManageDb_Field_Edit� :0 fmgui_managedb_field_select fmGUI_ManageDb_Field_Select� >0 fmgui_managedb_fieldlistfocus fmGUI_ManageDb_FieldListFocus� @0 fmgui_managedb_fieldspicktable fmGUI_ManageDb_FieldsPickTable� 00 fmgui_managedb_gototab fmGUI_ManageDb_GoToTab� >0 fmgui_managedb_gototab_fields fmGUI_ManageDb_GoToTab_Fields�� L0 $fmgui_managedb_gototab_relationships $fmGUI_ManageDb_GoToTab_Relationships�� >0 fmgui_managedb_gototab_tables fmGUI_ManageDb_GoToTab_Tables�� B0 fmgui_managedb_listoftablenames fmGUI_ManageDb_ListOfTableNames�� J0 #fmgui_managedb_listofxdbctablenames #fmGUI_ManageDb_ListOfXDBCTableNames�� *0 fmgui_managedb_open fmGUI_ManageDb_Open�� *0 fmgui_managedb_save fmGUI_ManageDB_Save�� N0 %fmgui_managedb_table_listoffieldnames %fmGUI_ManageDb_Table_ListOfFieldNames�� >0 fmgui_managedb_tablelistfocus fmGUI_ManageDb_TableListFocus�� .0 fmgui_managedb_to_add fmGUI_ManageDb_TO_Add�� 60 fmgui_managedb_to_listadd fmGUI_ManageDB_TO_ListAdd�� &0 fmgui_checkboxset fmGUI_CheckboxSet�� B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow�� 40 fmgui_pastefromclipboard fmGUI_PasteFromClipboard�� :0 fmgui_popup_selectbycommand fmGUI_Popup_SelectByCommand��  0 fmgui_popupset fmGUI_PopupSet�� 00 fmgui_selectallandcopy fmGUI_SelectAllAndCopy�� (0 fmgui_textfieldset fmGUI_TextFieldSet�� (0 fmgui_appfrontmost fmGUI_AppFrontMost�� 00 fmgui_dataviewer_close fmGUI_DataViewer_Close�� .0 fmgui_inspector_close fmGUI_Inspector_Close�� 00 fmgui_inspector_ensure fmGUI_Inspector_Ensure�� 20 fmgui_modeensure_browse fmGUI_ModeEnsure_Browse�� .0 fmgui_modeensure_find fmGUI_ModeEnsure_Find�� 20 fmgui_modeensure_layout fmGUI_ModeEnsure_Layout�� $0 fmgui_modeselect fmGUI_ModeSelect�� (0 fmgui_window_close fmGUI_Window_Close�� "0 windowwaituntil windowWaitUntil�� 20 windowwaituntil_frontis windowWaitUntil_FrontIS�� "0 indexoflistitem indexOfListItem�� 0 listcontains listContains�� $0 listuniquevalues listUniqueValues�� 0 sort  � 0 
logconsole 
logConsole�~ 0 loglevel logLEVEL�} 0 logmain logMAIN�| (0 systemnotification systemNotification�{ 0 writetofile writeToFile�z 0 clickatcoords clickAtCoords�y *0 clickobjectbycoords clickObjectByCoords�x  0 coercetostring coerceToString�w 0 gettextbefore getTextBefore�v  0 gettextbetween getTextBetween�u 0 
parsechars 
parseChars�t 0 replacesimple replaceSimple�s 0 unparsechars unParseChars�r  0 versioncompare versionCompare
� boovfals1� �1�1� � / U s e r s / e s h a g d a r / C o d e / a p p l e s c r i p t - f m - h e l p e r / v e n d o r / c l i c l i c k / c l i c l i c k1� �q @�p�o1�1��n�q $0 encodecharforurl encodeCharForURL�p �m1��m 1�  �l�l 0 	this_char  �o  1� �k�j�i�h�g�k 0 	this_char  �j 0 	ascii_num 	ASCII_num�i 0 hex_list  �h 0 x  �g 0 y  1� �f Z ^ b f j n r v z ~ � � � � � ��e�d ��c
�f .sysoctonshor       TEXT�e 
�d 
cobj
�c 
TEXT�n L�j  E�O���������������a a vE�O�a �a "k/E�O�a �a #k/E�Oa �%�%a &1� �b ��a�`1�1��_�b $0 encodetextforurl encodeTextForURL�a �^1��^ 1�  �]�\�[�] 0 	this_text  �\ 0 encode_url_a encode_URL_A�[ 0 encode_url_b encode_URL_B�`  1� 	�Z�Y�X�W�V�U�T�S�R�Z 0 	this_text  �Y 0 encode_url_a encode_URL_A�X 0 encode_url_b encode_URL_B�W 0 standard_characters  �V 0 url_a_chars URL_A_chars�U 0 url_b_chars URL_B_chars�T 0 acceptable_characters  �S 0 encoded_text  �R 0 	this_char  1� 	 � � ��Q�P�O�N�M
�Q 
kocl
�P 
cobj
�O .corecnte****       ****�N $0 encodecharforurl encodeCharForURL
�M 
TEXT�_ g�E�O�E�O�E�O�E�O�f  
��%E�Y hO�f  
��%E�Y hO�E�O .�[��l kh �� 
��%E�Y �*�k+ %�&E�[OY��O�1� �L@�K�J1�1��I�L 0 
getfromfmp 
getFromFMP�K �H1��H 1�  �G�G 	0 prefs  �J  1� 
�F�E�D�C�B�A�@�?�>�=�F 	0 prefs  �E 0 fmtype fmType�D 0 
astransfer 
asTransfer�C 0 fmpname fmpName�B 0 fmpactivename fmpActiveName�A 0 begintellfm beginTellFM�@ 0 	endtellfm 	endTellFM�? 0 	codetoget 	codeToGet�> 0 
sendsource 
sendSource�= 0 	inputdata 	inputData1� �<�;�:]ek�9��81��7����6����������5�< 0 fmtype fmType�;  �:  
�9 .earsffdralis        afdr
�8 
pcap1�  
�7 
dnam
�6 
ret 
�5 .sysodsct****        scpt�I � 
��,E�W 
X  �E�O�E�O�E�O)j � Y� *�k/�[�,\Z�>1�,E�UO��  �%�%�%E�Y %��  a �%E�Y �a   a �%E�Y hO�a %E�Y a E�Oa E�Oa �%a %E�O��%�%E�O�j E�O�1� �4��3�21�1��1�4 0 	sendtofmp 	sendToFMP�3 �01��0 1�  �/�/ 0 somedata someData�2  1� �.�-�,�+�*�)�(�'�&�%�$�#�. 0 somedata someData�- 0 fmtype fmType�, 0 
astransfer 
asTransfer�+ 0 fmpname fmpName�* 0 fmpactivename fmpActiveName�) 0 begintellfm beginTellFM�( 0 	endtellfm 	endTellFM�' "0 somedatacleaned someDataCleaned�& 0 	olddelims 	oldDelims�% 0 	backslash  �$ 0 	codetoset 	codeToSet�# 0 
sendsource 
sendSource1� #�"�!� �#�>�1��FPR�X`fmv}��������������" 0 fmtype fmType�! 0 somedata someData�   �  
� .earsffdralis        afdr
� 
pcap
� 
dnam
� 
ret 
� 
TEXT
� 
ascr
� 
txdl� \
� .sysontocTEXT       shor
� 
citm
� .sysodsct****        scpt�1* ��,E�O��,E�W 
X  �E�O�E�O�E�O)j � [� *�k/�[�,\Z�>1�,E�UO��  ��%�%�%E�Y '�a   a �%E�Y �a   a �%E�Y hO�a %E�Y a E�Oa E�O�a &E�O_ a ,E�Oa j E�O�_ a ,FO�a -E�O��%_ a ,FO�a &E�Oa _ a ,FO�a -E�O�a %_ a ,FO�a &E�O�_ a ,FOa �%a  %�%a !%E�O��%�%E�O�j "OP1� ���1�1��� 0 closedatabase closeDatabase� �1�� 1�  �� 	0 prefs  �  1� ����
�	�������� 	0 prefs  � 0 defaultprefs defaultPrefs� ,0 waitsavetotalseconds waitSaveTotalSeconds�
 .0 waitcycledelayseconds waitCycleDelaySeconds�	 0 dbname dbName� 0 waitcyclemax waitCycleMax� 0 errmsg errMsg� 0 errnum errNum� 0 fmprocessname fmProcessName� ,0 closewindowavailable closeWindowAvailable� "0 runscriptbutton runScriptButton� "0 frontwindowname frontWindowName1� ;�(� ������������3�����������������1������������a��������������������������1���%��������6����JOQ��i� 0 	fmapptype 	fmAppType�  .0 waitcycledelayseconds waitCycleDelaySeconds�� 
�� ,0 waitsavetotalseconds waitSaveTotalSeconds
�� 
min �� 0 dbname dbName
�� 
null�� "0 closescriptname closeScriptName
�� 
dire
�� olierndD
�� .sysorondlong        doub
�� 
cDB 
�� .coreclosnull���    obj �� 0 
logconsole 
logConsole�� 0 errmsg errMsg1� ������
�� 
errn�� 0 errnum errNum��  �� �� 0 loglevel logLEVEL�� (0 fmgui_appfrontmost fmGUI_AppFrontMost
�� 
pcap
�� 
mbar
�� 
mbri
�� 
menE
�� 
menI
�� 
enaB
�� .sysodelanull��� ��� nmbr�� 40 fmgui_managescripts_open fmGUI_ManageScripts_Open�� 0 fmscriptname fmScriptName�� J0 #fmgui_managescripts_fmscript_select #fmGUI_ManageScripts_FmScript_Select
�� 
cwin
�� 
butT
�� 
desc
�� .prcsclicnull��� ��� uiel
�� 
pnam
�� 
errn�� ��  ��  �� 60 fmgui_managescripts_close fmGUI_ManageScripts_Close��������� �����E�O��%E�O��,E�O��,E�O��,E�O��!��l E�O���,� _ 5� -*�/j Ob    )b  a �%a %l+ Y hOeUW &X  b    )a a �%a %�%l+ Y hY hO*j+ O��,a   
a E�Y a E�Oa  �*a �/ �fE�O :�kh*a k/a  a !/a "k/a #a $/a %,E�O� Y hO�j &[OY��O _� =)jvk+ 'O)a (��,lk+ )O*a *k/a +k/a ,[a -,\Za .81E�O�j /Y *a *k/a 0,E�O)a 1a 2la 3�%W FX 4 5b     *b  a 6��,%a 7%�%a 8%l+ Y hO)jvk+ 9O*a *k/a +k/j /OPUUW X  )a 1�la :�%OP1� ��t����2 2���� 40 displayfilemakerdatabase displayFileMakerDatabase�� ��2�� 2  ���� 	0 prefs  ��  2  �������������������������� 	0 prefs  �� 0 defaultprefs defaultPrefs�� 0 dbname dbName�� ,0 waitsavetotalseconds waitSaveTotalSeconds�� .0 waitcycledelayseconds waitCycleDelaySeconds�� 0 waitcyclemax waitCycleMax�� 0 fmappbundleid fmAppBundleID�� 0 doclist docList�� 0 errmsg errMsg�� 0 errnum errNum�� 0 onedoc oneDoc�� 0 docname docName2 0����������������߿߾߽߼߻���ߺ�߹߸߷߶2ߵߴ߲߳߱߰߯߮߭߬߫ߪߩEߨߧߦߥ_ߤ����� 0 	fmapptype 	fmAppType�� .0 waitcycledelayseconds waitCycleDelaySeconds�� �� ,0 waitsavetotalseconds waitSaveTotalSeconds
�� 
min �� ��  0 coercetostring coerceToString߿ 0 
logconsole 
logConsole߾ 0 dbname dbName
߽ 
dire
߼ olierndD
߻ .sysorondlong        doub
ߺ 
null
߹ 
capp
߸ kfrmID  
߷ 
docu߶ 0 errmsg errMsg2 ߣߢߡ
ߣ 
errnߢ 0 errnum errNumߡ  ߵ��
ߴ 
errn
߳ .sysodelanull��� ��� nmbr
߲ 
kocl
߱ 
cobj
߰ .corecnte****       ****
߯ 
pnam
߮ 
cha 
߭ 
rvse
߬ 
TEXT
߫ 
rslt
ߪ 
ctxt
ߩ 
psof
ߨ 
psinߧ 
ߦ .sysooffslong    ��� null
ߥ .ascrcmnt****      � ****
ߤ .miscmvisnull���    obj ���������l� �E�O��%E�Ob    *b  �*�k+ %l+ 	Y hO��,E�O��,E�O��,E�O��!��l E�O��,�  �E�Y a E�O b�kha E�O -a Z*a �a 0 	*a -E�UO�a  Y hOPW X  �a   hY )a �la �%O�j [OY��O ߧ[a a l kh 
�a ,E�O�a  -a !,a "&O_ #[a $\[Z*a %a &a '_ #a ( )k\Zi2EO_ #a  -a !,a "&E�Ob    
�j *Y hOb    
�j *Y hOga + Q�a "&�a "&  Aa Z*a �a 0 *�j ,Ob    )b  a -)�k+ %l+ 	Y hOPUOeY hV[OY�3OfOPW X  )a �la .�%a /%�%OP1� ߠ�ߟߞ22ߝߠ 20 ensurefilemakerdatabase ensureFileMakerDatabaseߟ ߜ2ߜ 2  ߛߛ 	0 prefs  ߞ  2 ߚߙߘߚ 	0 prefs  ߙ 0 dbname dbNameߘ 0 isdisplayed isDisplayed2 ߗߖ�ߕߔ�ߓߒߑ%1ߗ 0 dbname dbNameߖ 0 	fmapptype 	fmAppTypeߕ ߔ 40 displayfilemakerdatabase displayFileMakerDatabaseߓ 0 
logconsole 
logConsoleߒ .0 openfilemakerdatabase openFileMakerDatabase
ߑ .sysodelanull��� ��� nmbrߝ ���,E�O*����k+ E�Ob    *b  �%l+ Y hO� eY Zb    *b  �%l+ Y hO*�k+  5�j 
Ob    *b  �%l+ Y hO*����k+ E�O�Y f1� ߐDߏߎ22ߍߐ .0 openfilemakerdatabase openFileMakerDatabaseߏ ߌ2	ߌ 2	  ߋߋ 	0 prefs  ߎ  2 ߊ߉߈߇߆ߊ 	0 prefs  ߉ 0 	customurl 	customURL߈ 0 fmpurl fmpURL߇ 0 errmsg errMsg߆ 0 errnum errNum2 ]߅a�~߄�߃�߂�߁��߀�����~�}2
߅ 0 dbname dbName߄ 0 serverip serverIP߃ 0 
maindbname 
mainDbName߂ <0 customlinkreceiverscriptname customLinkReceiverScriptName߁ $0 encodetextforurl encodeTextForURL߀ 0 replacesimple replaceSimple� 0 
logconsole 
logConsole
�~ .GURLGURLnull��� ��� TEXT�} 0 errmsg errMsg2
 �|�{�z
�| 
errn�{ 0 errnum errNum�z  ߍ � w��,%�%E�O� `��,%�%��,%�%��,%�%)�efm+ %E�O)���mvk+ E�O)��a mvk+ E�Ob    )b  a �%l+ Y hO�j OPUOeOPW X  �OPOP1� �y��x�w22�v�y 0 sfr_dictget SFR_DictGet�x �u2�u 2  �t�s�t 0 somedict someDict�s 0 itemname itemName�w  2 �r�q�p�o�n�m�l�r 0 somedict someDict�q 0 itemname itemName�p 0 	keystring 	keyString�o 0 	endstring 	endString�n 0 	olddelims 	oldDelims�m 0 
keyremoved 
keyRemoved�l 0 	itemvalue 	itemValue2 
�k%�j�i�hE�g�k 0 
sfr_escape 
SFR_Escape
�j 
ascr
�i 
txdl
�h 
citm�g 0 sfr_unescape SFR_Unescape�v Y�*�k+ %�%E�O�E�O�� �Y 3��,E�O���,FO��l/E�O�� �Y ���,FO��k/E�O���,FO*�k+ 	OP1� �fl�e�d22�c�f 0 sfr_dictitem SFR_DictItem�e �b2�b 2  �a�`�a 0 itemname itemName�` 0 	itemvalue 	itemValue�d  2 �_�^�_ 0 itemname itemName�^ 0 	itemvalue 	itemValue2 ��]���] 0 
sfr_escape 
SFR_Escape�c �*�k+ %�%*�k+ %�%1� �\��[�Z22�Y�\ 0 
sfr_escape 
SFR_Escape�[ �X2�X 2  �W�W 0 
somestring 
someString�Z  2 �V�U�T�V 0 
somestring 
someString�U  0 escapecharlist escapeCharList�T 0 onechar oneChar2 
�����S�R�Q�P��O�S 
�R 
kocl
�Q 
cobj
�P .corecnte****       ****�O 0 replacesimple replaceSimple�Y 4�����vE�O $�[��l kh *���%mvk+ 	E�OP[OY��O�OP1� �N��M�L22�K�N 0 sfr_unescape SFR_Unescape�M �J2�J 2  �I�I 0 
somestring 
someString�L  2 �H�G�F�H 0 
somestring 
someString�G  0 escapecharlist escapeCharList�F 0 onechar oneChar2 
�����E�D�C�B�A�E 
�D 
kocl
�C 
cobj
�B .corecnte****       ****�A 0 replacesimple replaceSimple�K 4�����vE�O $�[��l kh *��%�mvk+ 	E�OP[OY��O�OP1� �@�?�>22�=�@ L0 $fmgui_managedatasources_ensureexists $fmGUI_ManageDataSources_EnsureExists�? �<2�< 2  �;�; 	0 prefs  �>  2 �:�9�8�7�6�5�: 	0 prefs  �9 0 defaultprefs defaultPrefs�8  0 datasourcename dataSourceName�7  0 datasourcepath dataSourcePath�6 0 errmsg errMsg�5 0 errnum errNum2 "�4�3�2�1T�0��/��.�-�,�+�*1��)�(�'�&��%��$�#�"�!���� 2����4  0 datasourcename dataSourceName
�3 
null�2  0 datasourcepath dataSourcePath�1 �0 <0 fmgui_managedatasources_open fmGUI_ManageDataSources_Open
�/ 
pcap�. (0 fmgui_appfrontmost fmGUI_AppFrontMost
�- 
cwin
�, 
scra
�+ 
tabB
�* 
crow
�) 
sttx
�( 
pnam
�' .coredoexnull���     ****
�& 
butT�% B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow
�$ .sysodelanull��� ��� nmbr
�# 
txtf
�" 
valL
�! 
txta�  0 errmsg errMsg2 ���
� 
errn� 0 errnum errNum�  
� 
errn�=�����E�O��%E�O��,E�O��,E�O��  
�%E�Y hO �*jvk+ O� �*��/ �)j+ 	O*�k/�k/�k/�k/�[�k/a ,\Z�81j  v)*�k/a k/�[a ,\Za >1k+ Oa j O�*�k/a k/a ,FO�*�k/�k/a k/a ,FO)*�k/a k/�[a ,\Za >1k+ Oa j Oa �%Y a �%UUOPW X  )a �la  �%a !%�%OP1� �	��22�� @0 fmgui_managedatasources_modify fmGUI_ManageDataSources_Modify� �2� 2  �� 	0 prefs  �  2 ������� 	0 prefs  � 0 defaultprefs defaultPrefs�  0 datasourcename dataSourceName�  0 datasourcepath dataSourcePath� 0 errmsg errMsg� 0 errnum errNum2 #����	?�	��
	��	����1������ 	���	���������	�	�	���2��	�	��  0 datasourcename dataSourceName
� 
null�  0 datasourcepath dataSourcePath� � <0 fmgui_managedatasources_open fmGUI_ManageDataSources_Open
�
 
pcap�	 (0 fmgui_appfrontmost fmGUI_AppFrontMost
� 
cwin
� 
scra
� 
tabB
� 
crow
� 
sttx
� 
pnam
� .coredoexnull���     ****
� .miscslctnull���     uiel
�  
butT�� B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow
�� .sysodelanull��� ��� nmbr
�� 
txtf
�� 
valL
�� 
txta�� 0 errmsg errMsg2 ������
�� 
errn�� 0 errnum errNum��  
�� 
errn�&�����E�O��%E�O��,E�O��,E�O��  
�%E�Y hO �*jvk+ O� �*��/ �)j+ 	O*�k/�k/�k/�k/�[�k/a ,\Z�81j  �*�k/�k/�k/�k/�[�k/a ,\Z�81j O)*�k/a k/�[a ,\Za >1k+ Oa j O�*�k/a k/a ,FO�*�k/�k/a k/a ,FO)*�k/a k/�[a ,\Za >1k+ Oa j Oa �%Y 
a �%OPUUOPW X  )a  �la !�%a "%�%OP1� ��
����22 ���� <0 fmgui_managedatasources_open fmGUI_ManageDataSources_Open�� ��2!�� 2!  ���� 	0 prefs  ��  2 �������� 	0 prefs  �� 0 errmsg errMsg�� 0 errnum errNum2  
T��
R������
-����
H����
@1�
M����2"��
\
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
�� .prcsclicnull��� ��� uiel�� 0 errmsg errMsg2" ������
�� 
errn�� 0 errnum errNum��  
�� 
errn�� ` K� C*��/ ;)j+ O*�k/�,� eY %*�k/��/�k/��/�k/�k/�[�,\Z�>1j OeUUW X  )a �la �%OP1� ��
g����2#2$���� <0 fmgui_managedatasources_save fmGUI_ManageDataSources_Save�� ��2%�� 2%  ���� 	0 prefs  ��  2# 	�������������������� 	0 prefs  �� 0 defaultprefs defaultPrefs�� 00 managewindownameprefix manageWindowNamePrefix�� .0 waitcycledelayseconds waitCycleDelaySeconds�� ,0 waitsavetotalseconds waitSaveTotalSeconds�� 0 waitcyclemax waitCycleMax�� $0 managewindowname manageWindowName�� 0 errmsg errMsg�� 0 errnum errNum2$ !��
�����������4����������
�������2&��
���
�޿޾޽޼޻޺޹<�� 40 notinmanagewindowiserror notInManageWindowIsError�� 
�� 
min 
�� 
dire
�� olierndD
�� .sysorondlong        doub
�� 
pcap�� (0 fmgui_appfrontmost fmGUI_AppFrontMost
�� 
cwin
�� 
pnam
�� 
butT
�� .prcsclicnull��� ��� uiel
�� .sysodelanull��� ��� nmbr�� 0 errmsg errMsg2& ޸޷޶
޸ 
errn޷ 0 errnum errNum޶  
�� 
errn�� ޿ 0 
windowname 
windowName޾  0 windownametest windowNameTest޽ 0 whichwindow whichWindow޼ .0 waitcycledelayseconds waitCycleDelaySeconds޻ 0 waitcyclemax waitCycleMax޺ 
޹ "0 windowwaituntil windowWaitUntil�� ��elE�O��%E�O�E�O�E�O�� E�O��!��l E�O �� �*��/ c)j+ 
O*�k/�,� 8 !*�k/�,E�O*�k/��/j Okj OPW X  )a �la �%Y ��,E )a a la Y eOPUO)a �a a a a a �a �a k+ Okj OeOPUW X  )a �la  �%OP1� ޵G޴޳2'2(޲޵ 60 fmgui_managedb_field_edit fmGUI_ManageDb_Field_Edit޴ ޱ2)ޱ 2)  ްް 	0 prefs  ޳  2' ޯޮޭެޫުީިާަޥޤޣޢޡޠޟޞޝޜޛޚޯ 	0 prefs  ޮ 0 defaultprefs defaultPrefsޭ 0 editmode editModeެ $0 fieldnowselected fieldNowSelectedޫ 0 changebutton changeButtonު  0 fieldtypepopup fieldTypePopupީ *0 notevaluatecheckbox notEvaluateCheckboxި 0 workingarea workingAreaާ .0 globalstoragecheckbox globalStorageCheckboxަ (0 donotstorecheckbox doNotStoreCheckboxޥ &0 autoindexcheckbox autoIndexCheckboxޤ 0 datatypepopup dataTypePopupޣ 0 fdsfdsf  ޢ 0 
menuchoice 
menuChoiceޡ 0 datacheckbox dataCheckboxޠ .0 autoentercalccheckbox autoEnterCalcCheckboxޟ 20 autoentercalccode_value autoEnterCalcCode_VALUEޞ @0 overwriteexistingvaluecheckbox overwriteExistingValueCheckboxޝ *0 prohibitmodcheckbox prohibitModCheckboxޜ 40 validationcalccode_value validationCalcCode_VALUEޛ 0 errmsg errMsgޚ 0 errnum errNum2( �ޙ`ޘޗޖޕޔޓޒޑސޏގލތދފމވއކޅބރނށހ��~�}�|�{
�z�y�x�w�v1��u�t5�s�rC�qN�p�oa�npt~���m�l�����k�j�i2Ch�ht�g��f�e�d���c �b#6P���a��`��_�^�����*7APZh������)~��4Egrvy��]��&�\ar��������'1?_��[���Z%�Y�X9CNY}���������������%-3;AIOW\ht�����Wf���W��FSWZ��*N����������V2* �U$ޙ 0 editmode editModeޘ 0 	tablename 	tableName
ޗ 
nullޖ 0 	fieldname 	fieldNameޕ 0 altpatterns altPatternsޔ 0 fieldcomment fieldCommentޓ 0 datatype dataTypeޒ 0 	fieldtype 	fieldTypeޑ 0 calccode calcCodeސ &0 autoentercalccode autoEnterCalcCodeޏ 20 autoentercalccontexttoc autoEnterCalcContextTOCގ  0 alwaysevaluate alwaysEvaluateލ  0 calccontexttoc calcContextTOCތ 0 storageglobal storageGlobalދ 20 storecalculationresults storeCalculationResultsފ (0 storageindexchoice storageIndexChoiceމ 0 	autoindex 	autoIndexވ 0 maxrepetition maxRepetitionއ 0 indexlanguage indexLanguageކ 0 allowediting allowEditingޅ 00 overwriteexistingvalue overwriteExistingValueބ *0 autoenterisconstant autoEnterIsConstantރ 00 autoenteriscalculation autoEnterIsCalculationނ &0 autoenterislookup autoEnterIsLookupށ .0 autoenterspecialvalue autoEnterSpecialValueހ 0 
autoserial 
autoSerial� .0 autoenterconstantdata autoEnterConstantData�~ (0 validationcalccode validationCalcCode�} 40 validationcalccontexttoc validationCalcContextTOC�| 8�{ :0 fmgui_managedb_field_select fmGUI_ManageDb_Field_Select
�z 
pcap�y (0 fmgui_appfrontmost fmGUI_AppFrontMost
�x 
cwin
�w 
tabg
�v 
butT
�u 
titl
�t 
txtf�s (0 fmgui_textfieldset fmGUI_TextFieldSet
�r .prcsclicnull��� ��� uiel
�q .sysodelanull��� ��� nmbr
�p 
bool
�o 
popB
�n 
valL
�m 
errn�l �k  0 fmgui_popupset fmGUI_PopupSet�j B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow
�i 
pnam�h 0 
windowname 
windowName�g 20 windowwaituntil_frontis windowWaitUntil_FrontIS
�f 
scra�e 
�d 
txta
�c 
chbx�b &0 fmgui_checkboxset fmGUI_CheckboxSet�a  0 windownametest windowNameTest�` 0 whichwindow whichWindow�_ �^ "0 windowwaituntil windowWaitUntil
�] 
radB�\ *0 clickobjectbycoords clickObjectByCoords
�[ 
pcls�Z 0 autonextvalue autoNextValue�Y 0 autoincrement autoIncrement�X 0 autogenerate autoGenerate
�W 
leng�V 0 errmsg errMsg2* �T�S�R
�T 
errn�S 0 errnum errNum�R  �U  0 coercetostring coerceToString޲�����������������������������a �a �a �a �a �a �a �a �a �a �a �a �a �a �a E�O��%E�O��,E�O��,� e�a ,FY hO*�k+ E�O� fY hOa  �*a !a "/�)j+ #O*a $k/a %k/a &k/a '[a (,\Za )81E�O��,� 3)*a $k/a %k/a *a +/��,l+ , 
�j -Y hOa .j /Y hO�a 0 	 ��,� a 1& M*a $k/a %k/a 2a 3/E�O�a 4,a 5  a 6��,FY �a 4,a 7  a 8��,FY 	a 9��,FY hO��,�  )a :a ;la <OPY��,a = D*a $k/a %k/a 2a >/E�O�a 4,a ? c)�a @l+ AO)*a $k/a %k/a &a B/k+ COa .j /O*a $k/a D,a E !)*a $k/a &a F/k+ COa .j /OPY hOPY 6)*a $k/a %k/a &k/a '[a D,\Za G>1k+ CO)a Ha Ilk+ JOPO�a K 
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
 �a ,�a 1&�a �a �/j -O)�a *k/a '[a D,\Za �@1�a ,l+ ,O�a Qk/a '[a D,\Za �@1E�O�a �  ��,�  )a :a ;la �Y hY hO��,E j�a 4,k Z)�k+ �Oa .j /O*a $k/a D,a � 5)*a $k/a &a �/k+ CO)a Ha �a Ya �a [a �a ]k+ ^OPY hY hOPY ƨa 4,j \)�k+ �Oa .j /O*a $k/a D,a � 5)*a $k/a &a �/k+ CO)a Ha �a Ya �a [a �a ]k+ ^OPY hOPY hO�a ,a �  )�a Qa �/kl+ SO�Y A�a ,a �  )�a Qa �/kl+ SOPY "�a ,a �  )�a Qa �/kl+ SOPY hO�a ,� $)�a 2k/a '[a D,\Za �@1�a ,l+ AY hO�a ,� 9�a Qk/a '[a D,\Za �@1E�O�a ,E )�kl+ SY 	)�jl+ SOPY hOPY hO*a $k/a %k/E�O�a �a �/j -O�a ,�  a ,a �,a 1  )�a Qa �/jl+ SY �)�a Qa �/kl+ SO)�a *k/a '[a D,\Za �@1�a ,a �,l+ ,O)�a *k/a '[a D,\Za �@1�a ,a �,l+ ,O�a ,a �,a �  )�a Qa �/kl+ SY $�a ,a �,a �  )�a Qa �/kl+ SY hOPY hO�a ,�ؠa ,a �  ")�a Qk/a '[a D,\Za �@1kl+ SOPY��a ,a � ��a ,a �  
a �E�Y g�a ,a �  
a �E�Y S�a ,a �  
a �E�Y ?�a ,a �  
a �E�Y +�a ,a �  
a �E�Y �a ,a �  
a �E�Y hO)�a 2a �/�l+ AOPY�a ,a � ��a ,a �  
a �E�Y g�a ,a �  
a �E�Y S�a ,a �  
a �E�Y ?�a ,a �  
a �E�Y +�a ,a �  
a �E�Y �a ,a �  
a �E�Y hO)�a 2a �/�l+ AOPY u�a ,a �  Z)�a Qk/a '[a (,\Za �81jl+ SO)�a Qk/a '[a (,\Za �81jl+ SO)�a Qk/a '[a D,\Za �@1jl+ SOPY �a ,�  hY hOPY hO�a ,� a�a Qk/a '[a D,\Za �@1E�O�a ,E 4)�kl+ SO�a ,�  hY )�a La �/a Na �/�a ,l+ ,Y 	)�jl+ SOPY hO�a ,� hY hO�a ,���a , )�a Qa �/jl+ SOPY�a Qa �/E�O�a 4,k )�k+ CY )�a &k/a '[a D,\Za �>1k+ CO)a Ha �lk+ JO*a $k/E�O��,a �,j  a �E^ Y 	��,E^ O)*a $k/a La M/a Nk/] l+ ,O��,� ")�a 2k/a '[a D,\Za �@1��,l+ AY hO��,� 5�a Qk/a '[a D,\Za �@1E�O��,E )�jl+ SY 	)�kl+ SY hO)�a &k/a '[a D,\Za �@1k+ CO)a Ha �a Ya �a [a �a ]k+ ^O*a $k/a %k/E�O�a ,� =�a Qk/a '[a D,\Za �@1E^ O�a ,E )] jl+ SY )] kl+ SY hOPOPY hO�a ,� =�a Qk/a '[a D,\Za �@1E^ O�a ,E )] jl+ SY )] kl+ SY hO�a �a �/j -O�a ,� �)�a &a �/k+ CO)a Ha �lk+ JO*a $k/E�O�a ,a �,j  a �E^ Y �a ,E^ O)*a $k/a La M/a Nk/] l+ ,O�a ,� $)�a 2k/a '[a D,\Za �@1�a ,l+ AY hO)�a &k/a '[a D,\Za �@1k+ CO)a Ha �a Ya �a [a �a ]k+ ^O*a $k/a %k/E�OPY hO)*a $k/a &k/a '[a D,\Za �@1k+ CO)a Ha �a Ya �a [a �a ]k+ ^OeOPY hOeOPUUOPW "X � �)a :] la �*�k+ �%a �%] %OP1� �Q1�P�O2+2,�N�Q :0 fmgui_managedb_field_select fmGUI_ManageDb_Field_Select�P �M2-�M 2-  �L�L 	0 prefs  �O  2+ �K�J�I�H�G�F�E�D�C�B�A�@�?�>�=�<�;�K 	0 prefs  �J 0 defaultprefs defaultPrefs�I  0 testcodeheader testCodeHeader�H 0 
selectcode 
selectCode�G 0 
rowrefcode 
rowRefCode�F 0 	whosecode 	whoseCode�E *0 fieldnameobjectcode fieldNameObjectCode�D $0 betweentestscode betweenTestsCode�C &0 afteralltestscode afterAllTestsCode�B  0 testcodefooter testCodeFooter�A 0 errmsg errMsg�@ 0 errnum errNum�? $0 fieldnowselected fieldNowSelected�> 0 onealtpattern oneAltPattern�= 0 testlist testList�< 0 testcode testCode�; 0 
onetestrec 
oneTestRec2, 4�:�9�8�7�6]�5`flrx�����4�3�2��1��0�/�.�-�,1��+�*�)�(2.�'�&�%�$�#�"�!8� <��V�l�����: 0 	fieldname 	fieldName
�9 
null�8 0 	tablename 	tableName�7 0 altpatterns altPatterns�6 
�5 
ret �4 >0 fmgui_managedb_fieldlistfocus fmGUI_ManageDb_FieldListFocus�3 @0 fmgui_managedb_fieldspicktable fmGUI_ManageDb_FieldsPickTable�2 (0 fmgui_appfrontmost fmGUI_AppFrontMost
�1 
pcap
�0 
cwin
�/ 
tabg
�. 
scra
�- 
tabB
�, 
crow
�+ 
sttx
�* 
valL
�) .miscslctnull���     uiel�( 0 errmsg errMsg2. ���
� 
errn� 0 errnum errNum�  �'�I
�& 
errn
�% 
kocl
�$ 
cobj
�# .corecnte****       ****�" 0 pattern  
�! 
pcnt�  0 testtype testType� 0 	testmatch 	testMatch� 0 quotestring quoteString� 0 unparsechars unParseChars
� .sysodsct****        scpt�  0 coercetostring coerceToString�N��������E�O��%E�O��%�%�%E�O�E�O�E�O�E�O�E�O�E�O�E�O��%�%�%E�O]*jvk+ O��,� *��,k+ Y hO*j+ O Ma  @*a a / 4*a k/a k/a k/a k/a k/a [a k/a ,\Z��,81j UUOeW �X   �a ! )a "�l�Y �fE�O à�,[a #a $l %kh �a &,a ',E�O jvE�O 7�[a #a $l %kh a (] a ),%a *%)] a +,k+ ,%�6G[OY��O)���%a -%l+ .E�O��%�%�%a /%�%�%E�O��%�%E�O) �j 0UOeE�OOPW X   �a ! )a "�l�Y hOPOP[OY�QO�OPOPW X   )a "�la 1*�k+ 2%a 3%�%OP1� ����2/20�� >0 fmgui_managedb_fieldlistfocus fmGUI_ManageDb_FieldListFocus� �21� 21  �� 	0 prefs  �  2/ ���� 	0 prefs  � 0 errmsg errMsg� 0 errnum errNum20 �����
�	���22�� >0 fmgui_managedb_gototab_fields fmGUI_ManageDb_GoToTab_Fields
� 
pcap� (0 fmgui_appfrontmost fmGUI_AppFrontMost
� 
cwin
�
 
tabg
�	 
scra
� 
tabB
� 
focu� 0 errmsg errMsg22 ���
� 
errn� 0 errnum errNum�  
� 
errn� G 6*jvk+  O� $*��/ )j+ Oe*�k/�k/�k/�k/�,FOeUUOPW X 
 )�l��%OP1� �%� ��2324��� @0 fmgui_managedb_fieldspicktable fmGUI_ManageDb_FieldsPickTable�  ��25�� 25  ���� 0 basetablename baseTableName��  23 �������� 0 basetablename baseTableName�� 0 errmsg errMsg�� 0 errnum errNum24 ��V��T������J����26��bd�� >0 fmgui_managedb_gototab_fields fmGUI_ManageDb_GoToTab_Fields
�� 
pcap
�� 
cwin
�� 
tabg
�� 
popB��  0 fmgui_popupset fmGUI_PopupSet�� 0 errmsg errMsg26 ������
�� 
errn�� 0 errnum errNum��  
�� 
errn�� B -*jvk+  O� *��/ )*�k/�k/��/�l+ OeUUW X 	 
)�l�%�%�%OP1� ��o����2728���� 00 fmgui_managedb_gototab fmGUI_ManageDb_GoToTab�� ��29�� 29  ���� 	0 prefs  ��  27 ������������ 	0 prefs  �� 0 defaultprefs defaultPrefs�� 0 	tabobject 	tabObject�� 0 errmsg errMsg�� 0 errnum errNum28 �����������������1���������2:������ 0 tabname tabName�� (0 fmgui_appfrontmost fmGUI_AppFrontMost�� *0 fmgui_managedb_open fmGUI_ManageDb_Open
�� 
pcap
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
�� .prcsclicnull��� ��� uiel�� 0 errmsg errMsg2: ������
�� 
errn�� 0 errnum errNum��  
�� 
errn�� w��lE�O��%E�O M*j+ O*jvk+ O� 7*��/ /*�k/�k/�k/�[�,\Z��,@1E�O��,k 
�j Y hOeUUW X  )a �la ��,%a %�%OP1� �������2;2<���� >0 fmgui_managedb_gototab_fields fmGUI_ManageDb_GoToTab_Fields�� ��2=�� 2=  ���� 	0 prefs  ��  2; ���� 	0 prefs  2< ������� 0 tabname tabName�� 00 fmgui_managedb_gototab fmGUI_ManageDb_GoToTab�� *��lk+ OP1� �������2>2?���� L0 $fmgui_managedb_gototab_relationships $fmGUI_ManageDb_GoToTab_Relationships�� ��2@�� 2@  ���� 	0 prefs  ��  2> ���� 	0 prefs  2? ������ 0 tabname tabName�� 00 fmgui_managedb_gototab fmGUI_ManageDb_GoToTab�� *��lk+ OP1� ����ݿ2A2Bݾ�� >0 fmgui_managedb_gototab_tables fmGUI_ManageDb_GoToTab_Tables�� ݽ2Cݽ 2C  ݼݼ 	0 prefs  ݿ  2A ݻݻ 	0 prefs  2B ݺ!ݹݺ 0 tabname tabNameݹ 00 fmgui_managedb_gototab fmGUI_ManageDb_GoToTabݾ *��lk+ OP1� ݸ+ݷݶ2D2Eݵݸ B0 fmgui_managedb_listoftablenames fmGUI_ManageDb_ListOfTableNamesݷ ݴ2Fݴ 2F  ݳݳ 	0 prefs  ݶ  2D ݲݱݰݯݲ 	0 prefs  ݱ 0 fmtablenames fmTableNamesݰ 0 errmsg errMsgݯ 0 errnum errNum2E ݮwݭuݬݫݪݩݨݧ1�ݦݥjݤݣ2Gݢݮ >0 fmgui_managedb_gototab_tables fmGUI_ManageDb_GoToTab_Tables
ݭ 
pcapݬ (0 fmgui_appfrontmost fmGUI_AppFrontMost
ݫ 
cwin
ݪ 
tabg
ݩ 
scra
ݨ 
tabB
ݧ 
crow
ݦ 
sttx
ݥ 
valLݤ *0 fmgui_managedb_save fmGUI_ManageDB_Saveݣ 0 errmsg errMsg2G ݡݠݟ
ݡ 
errnݠ 0 errnum errNumݟ  
ݢ 
errnݵ b M*jvk+  O� =*��/ 5)j+ O*�k/�k/�k/�k/�-�[�l/�,\Z�81�k/�,E�O)jvk+ O�UUW X  )a �la �%OP1� ݞ�ݝݜ2H2Iݛݞ J0 #fmgui_managedb_listofxdbctablenames #fmGUI_ManageDb_ListOfXDBCTableNamesݝ ݚ2Jݚ 2J  ݙݙ 	0 prefs  ݜ  2H ݘݗݖݕݘ 	0 prefs  ݗ  0 xdbctablenames xDBCTableNamesݖ 0 errmsg errMsgݕ 0 errnum errNum2I ݔ�ݓ�ݒݑݐݏݎݍ1�݌݋�݊݉2K݈�ݔ >0 fmgui_managedb_gototab_tables fmGUI_ManageDb_GoToTab_Tables
ݓ 
pcapݒ (0 fmgui_appfrontmost fmGUI_AppFrontMost
ݑ 
cwin
ݐ 
tabg
ݏ 
scra
ݎ 
tabB
ݍ 
crow
݌ 
sttx
݋ 
valL݊ *0 fmgui_managedb_save fmGUI_ManageDB_Save݉ 0 errmsg errMsg2K ݆݇݅
݇ 
errn݆ 0 errnum errNum݅  
݈ 
errnݛ b M*jvk+  O� =*��/ 5)j+ O*�k/�k/�k/�k/�-�[�l/�,\Z�91�k/�,E�O)jvk+ O�UUW X  )a �la �%OP1� ݄�݂݃2L2M݁݄ *0 fmgui_managedb_open fmGUI_ManageDb_Open݃ ݀2N݀ 2N  �� 	0 prefs  ݂  2L �~�}�|�{�z�~ 	0 prefs  �} *0 lookingforxdbcerror lookingForXDBCError�| 0 	zoomfield 	zoomField�{ 0 errmsg errMsg�z 0 errnum errNum2M (5�y3�x�w�v�u�t-�s�r%1�2�q�pR�oa�n����m�l�k���j�i�h��g�f�e�d2O�c=
�y 
pcap�x (0 fmgui_appfrontmost fmGUI_AppFrontMost
�w 
cwin
�v 
pnam
�u 
mbar
�t 
mbri
�s 
menE
�r 
menI
�q .prcsclicnull��� ��� uiel
�p .sysodelanull��� ��� nmbr
�o 
butT�n L0 $fmgui_managedb_gototab_relationships $fmGUI_ManageDb_GoToTab_Relationships
�m 
faal
�l eMdsKcmd
�k .prcskprsnull���     ctxt
�j 
tabg
�i 
txtf
�h 
focu
�g 
valL
�f 
scra
�e 
scrb�d 0 errmsg errMsg2O �b�a�`
�b 
errn�a 0 errnum errNum�`  
�c 
errn݁����*��/�)j+ O*�k/�,� eYs*�k/��/�k/��/�k/�k/�[�,\Z�>1j Okj OeE�O ;h�*�k/�,a  #*�k/a k/�[�,\Za 81j Okj Y fE�[OY��O)jvk+ Okj OeE�O ;h�*�k/�,a  #*�k/a k/�[�,\Za 81j Okj Y fE�[OY��Oa a a l Okj OeE�O 2h�*�k/�,a  *�k/a a /j Okj Y fE�[OY��O*�k/a k/a k/E�Oe�a ,FOa  �a !,FOe*�k/a k/a "k/a ,FOj*�k/a k/a "k/a #k/a !,FOj*�k/a k/a "k/a #l/a !,FOeUUW X $ %)a &�la '�%OP1� �_H�^�]2P2Q�\�_ *0 fmgui_managedb_save fmGUI_ManageDB_Save�^ �[2R�[ 2R  �Z�Z 	0 prefs  �]  2P 	�Y�X�W�V�U�T�S�R�Q�Y 	0 prefs  �X 0 defaultprefs defaultPrefs�W 40 managedbwindownameprefix manageDbWindowNamePrefix�V .0 waitcycledelayseconds waitCycleDelaySeconds�U ,0 waitsavetotalseconds waitSaveTotalSeconds�T 0 waitcyclemax waitCycleMax�S (0 managedbwindowname manageDbWindowName�R 0 errmsg errMsg�Q 0 errnum errNum2Q !�Pi�O�N�M�L�K�J�I��H�G�F�E��D�C�B2S�A��@��?�>��= �<�;�:�P ,0 notinmanagedbiserror notInManageDbIsError�O 
�N <
�M 
min 
�L 
dire
�K olierndD
�J .sysorondlong        doub
�I 
pcap�H (0 fmgui_appfrontmost fmGUI_AppFrontMost
�G 
cwin
�F 
pnam
�E 
butT
�D .prcsclicnull��� ��� uiel
�C .sysodelanull��� ��� nmbr�B 0 errmsg errMsg2S �9�8�7
�9 
errn�8 0 errnum errNum�7  
�A 
errn�@ �? 0 
windowname 
windowName�>  0 windownametest windowNameTest�= 0 whichwindow whichWindow�< .0 waitcycledelayseconds waitCycleDelaySeconds�; 0 waitcyclemax waitCycleMax�: "0 windowwaituntil windowWaitUntil�\ ��elE�O��%E�O�E�O�E�O�� E�O��!��l E�O �� �*��/ c)j+ O*�k/�,� 8 !*�k/�,E�O*�k/��/j Okj OPW X  )a �la �%Y ��,E )a a la Y eOPUO)a �a a a a a �a ��k+ Okj OeOPUOPW X  )a �la  �%OP1� �6*�5�42T2U�3�6 N0 %fmgui_managedb_table_listoffieldnames %fmGUI_ManageDb_Table_ListOfFieldNames�5 �22V�2 2V  �1�1 0 basetablename baseTableName�4  2T �0�/�.�0 0 basetablename baseTableName�/ 0 errmsg errMsg�. 0 errnum errNum2U �-_�,]�+�*�)�(�'�&�%�$�#2W�"km�- @0 fmgui_managedb_fieldspicktable fmGUI_ManageDb_FieldsPickTable
�, 
pcap
�+ 
cwin
�* 
tabg
�) 
scra
�( 
tabB
�' 
crow
�& 
sttx
�% 
valL
�$ 
rslt�# 0 errmsg errMsg2W �!� �
�! 
errn�  0 errnum errNum�  
�" 
errn�3 I 2*�k+  O� #*��/ *�k/�k/�k/�k/�-�k/�,EO�EUUW X  )�l�%a %�%OP1� �x��2X2Y�� >0 fmgui_managedb_tablelistfocus fmGUI_ManageDb_TableListFocus� �2Z� 2Z  �� 	0 prefs  �  2X ���� 	0 prefs  � 0 errmsg errMsg� 0 errnum errNum2Y ����������2[��� >0 fmgui_managedb_gototab_tables fmGUI_ManageDb_GoToTab_Tables
� 
pcap
� 
cwin
� 
tabg
� 
scra
� 
tabB
� 
focu� 0 errmsg errMsg2[ ���

� 
errn� 0 errnum errNum�
  
� 
errn� A 0*jvk+  O� *��/ e*�k/�k/�k/�k/�,FOeUUOPW X 	 
)�l�%OP1� �	���2\2]��	 .0 fmgui_managedb_to_add fmGUI_ManageDb_TO_Add� �2^� 2^  �� 	0 prefs  �  2\ ���� ��� 	0 prefs  � 0 defaultprefs defaultPrefs� 0 addtocbutton addTocButton�  0 errmsg errMsg�� 0 errnum errNum2] -�������������� ��� ���������1��� ������ #���������������������� ] a������ ��� � ���2_�� ��� 0 tocname tocName
�� 
null�� 0 dbname dbName�� *0 donotchangeexisting doNotChangeExisting�� 0 basetablename baseTableName�� �� L0 $fmgui_managedb_gototab_relationships $fmGUI_ManageDb_GoToTab_Relationships
�� 
pcap�� (0 fmgui_appfrontmost fmGUI_AppFrontMost
�� 
cwin
�� 
tabg
�� 
butT
�� 
desc�� B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow
�� .sysodelanull��� ��� nmbr
�� 
popB��  0 fmgui_popupset fmGUI_PopupSet
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
�� .miscslctnull���     uiel��  ��  �� 5
�� .prcskcodnull���     ****��  0 datasourcename dataSourceName�� L0 $fmgui_managedatasources_ensureexists $fmGUI_ManageDataSources_EnsureExists�� <0 fmgui_managedatasources_save fmGUI_ManageDataSources_Save
�� 
txtf�� 0 errmsg errMsg2_ ������
�� 
errn�� 0 errnum errNum��  
�� 
errn�P�����f���E�O��%E�O(*jvk+ O�*��/)j+ 
O*�k/�k/�k/�[�,\Za @1E�O)�k+ Okj O B)*�k/a a /��,l+ O*�k/a k/a k/a k/�[a k/a ,\Z��,81j W |X  a j O)*�k/a a  /a !l+ O)a "��,lk+ #O)jvk+ $Okj O)*�k/a a %/��,l+ O*�k/a k/a k/a k/�[a k/a ,\Z��,81j O��,*�k/a &a '/a ,FO)*�k/�a (/k+ OeUUW X ) *)a +�la ,�%OP1� �� �����2`2a���� 60 fmgui_managedb_to_listadd fmGUI_ManageDB_TO_ListAdd�� ��2b�� 2b  ���� 	0 prefs  ��  2` �������������������������� 	0 prefs  �� 0 defaultprefs defaultPrefs�� 0 tolist TOList�� 0 cr CR�� 0 lf LF�� 0 oneto oneTO�� 0 torec TORec�� 0 	onedbname 	oneDBName�� 0 onetablename oneTableName�� 0 toparam TOParam�� 0 errmsg errMsg�� 0 errnum errNum2a �� �����������������!7ܾܿܽ!Uܼܻܹܺ2cܸ!j�� 0 tolist TOList�� 0 replacesimple replaceSimple�� 0 
sourcetext 
sourceTEXT�� 0 parsestring parseString�� �� 0 
parsechars 
parseChars
�� .corecnte****       ****
�� 
kocl
�� 
cobjܿ 0 dbname dbNameܾ 0 basetablename baseTableNameܽ 0 toname TONameܼ ܻ .0 fmgui_managedb_to_add fmGUI_ManageDb_TO_Addܺ *0 fmgui_managedb_save fmGUI_ManageDB_Saveܹ 0 errmsg errMsg2c ܷܶܵ
ܷ 
errnܶ 0 errnum errNumܵ  
ܸ 
errn�� ���lE�O��%E�O ���,E�O*���mvk+ E�O*���k+ E�O�j j S E�[��l kh *����k+ E�O��k/E�O��l/E�O�����%�%�E�O*�k+ [OY��O*jvk+ Y hOeW X  )a �la �%OP1� ܴ!uܳܲ2d2eܱܴ &0 fmgui_checkboxset fmGUI_CheckboxSetܳ ܰ2fܰ 2f  ܯܮܯ  0 checkboxobject checkboxObjectܮ 0 checkboxvalue checkboxValueܲ  2d ܭܬܫܪܭ  0 checkboxobject checkboxObjectܬ 0 checkboxvalue checkboxValueܫ 0 errmsg errMsgܪ 0 errnum errNum2e 	!�ܩܨܧܦ2gܥ!�!�
ܩ 
null
ܨ 
valL
ܧ .prcsclicnull��� ��� uielܦ 0 errmsg errMsg2g ܤܣܢ
ܤ 
errnܣ 0 errnum errNumܢ  
ܥ 
errnܱ :�Z %�� ��,� 
�j Y hY hOeOPW X  )�l�%�%�%1� ܡ!�ܠܟ2h2iܞܡ B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindowܠ ܝ2jܝ 2j  ܜܜ 0 	buttonref 	buttonRefܟ  2h ܛܛ 0 	buttonref 	buttonRef2i !�ܚܚ *0 clickobjectbycoords clickObjectByCoordsܞ �Z)�k+ OP1� ܙ!�ܘܗ2k2lܖܙ 40 fmgui_pastefromclipboard fmGUI_PasteFromClipboardܘ  ܗ  2k ܕܔܓܒܕ (0 pasemenuitemexists paseMenuItemExistsܔ 0 pastemenuitem pasteMenuItemܓ 0 errmsg errMsgܒ 0 errnum errNum2l "0ܑ".ܐ܏܎!�܍܌1�܋!�܊܉2m܈"܇܆܅܄",܃
ܑ 
pcapܐ (0 fmgui_appfrontmost fmGUI_AppFrontMost
܏ 
mbar
܎ 
mbri
܍ 
menE
܌ 
menI
܋ 
pnam
܊ .prcsclicnull��� ��� uiel܉ 0 errmsg errMsg2m ܂܁܀
܂ 
errn܁ 0 errnum errNum܀  
܈ 
errn܇ 
܆ .coredoexnull���     ****܅  ܄  
܃ .sysodelanull��� ��� nmbrܖ �fE�O� w*��/ o)j+ O*�k/��/�k/�k/�[�,\Z�81E�O 
�j W X  )�la �%O 2a kh �j  
eE�OY hW X  hOa j [OY��UUO�OP1� �">�~�}2n2o�|� :0 fmgui_popup_selectbycommand fmGUI_Popup_SelectByCommand�~ �{2p�{ 2p  �z�z 	0 prefs  �}  2n 	�y�x�w�v�u�t�s�r�q�y 	0 prefs  �x 0 defaultprefs defaultPrefs�w 0 popupobject popupObject�v 0 selectcommand selectCommand�u 0 popupchoice popupChoice�t &0 clickifalreadyset clickIfAlreadySet�s 0 mustpick mustPick�r 0 errmsg errMsg�q 0 errnum errNum2o $�p�o�n�m"T�l�k�j"f�i�h"��g�f�e"��d"�#
##4#I�c#o�b�a1��`#�#�#��_2q#�#�#��p 0 popupobject popupObject
�o 
null�n 0 popupchoice popupChoice�m 0 selectcommand selectCommand�l &0 clickifalreadyset clickIfAlreadySet�k 
�j 
pcls
�i 
cobj�h 
�g .coredoexnull���     ****
�f 
errn�e 
�d 
valL
�c .prcsclicnull��� ��� uiel
�b 
menE
�a 
menI
�` 
pnam�_ 0 errmsg errMsg2q �^�]�\
�^ 
errn�] 0 errnum errNum�\  �|�������f�E�O��,�llv�,  ��k/��l/�E�Y hO��%E�O��,E�O��,E�O��,E�O��,E�O�Z��j  )��l�OPY�fE�O�a ,j  
eE�OPY �� 
eE�OPY ��a   �a ,� eE�Y hOPY �a   �a ,� eE�Y hOPY `�a   �a ,� eE�Y hOPY A�a   �a ,� eE�Y hOPY "�a   �a ,� eE�Y hOPY hO� ��� ��j O�a   !�a k/a k/a [a ,\Z�81j Y ~�a   #�a k/a k/a [a ,\Z�@1j OPY U�a   #�a k/a k/a [a ,\Z�>1j OPY ,�a   #�a k/a k/a [a ,\Z�?1j OPY hOPY hY hOeOPW X   )��la !�%a "%�%a #%�%1� �[#��Z�Y2r2s�X�[  0 fmgui_popupset fmGUI_PopupSet�Z �W2t�W 2t  �V�U�V 0 popupobject popupObject�U 0 popupchoice popupChoice�Y  2r �T�S�R�Q�T 0 popupobject popupObject�S 0 popupchoice popupChoice�R 0 errmsg errMsg�Q 0 errnum errNum2s #��P�O�N$�M�L�K�J2u�I$$�P 0 popupobject popupObject�O 0 popupchoice popupChoice�N 0 selectcommand selectCommand�M �L :0 fmgui_popup_selectbycommand fmGUI_Popup_SelectByCommand
�K 
rslt�J 0 errmsg errMsg2u �H�G�F
�H 
errn�G 0 errnum errNum�F  
�I 
errn�X -�Z *�����k+ O�EOPW X  	)�l�%�%�%1� �E$#�D�C2v2w�B�E 00 fmgui_selectallandcopy fmGUI_SelectAllAndCopy�D  �C  2v �A�@�?�A $0 clipboardchanged clipboardChanged�@ 0 errmsg errMsg�? 0 errnum errNum2w $/�>$��=$��<�;�:$V�9�81��7$[�6�52x�4$d${$s$��3�2�1�0�/�.�-�,�+
�> .JonspClpnull���     ****
�= 
pcap�< (0 fmgui_appfrontmost fmGUI_AppFrontMost
�; 
mbar
�: 
mbri
�9 
menE
�8 
menI
�7 
pnam
�6 .prcsclicnull��� ��� uiel�5 0 errmsg errMsg2x �*�)�(
�* 
errn�) 0 errnum errNum�(  
�4 
errn�3 

�2 
rtyp
�1 
utf8
�0 .JonsgClp****    ��� null
�/ 
rslt
�. 
leng�-  �,  
�+ .sysodelanull��� ��� nmbr�B ��j OfE�O� �*��/ �)j+ O *�k/��/�k/�k/�[�,\Z�81j W X  )a �la �%O *�k/�a /�k/�a /j W X  )a �la �%O Da kh &*a a l O_ a ,j 
eE�OY hW X  eE�OOkj [OY��OPUUO�OP1� �'$��&�%2y2z�$�' (0 fmgui_textfieldset fmGUI_TextFieldSet�& �#2{�# 2{  �"�!�" "0 textfieldobject textfieldObject�!  0 textfieldvalue textfieldValue�%  2y � ����  "0 textfieldobject textfieldObject�  0 textfieldvalue textfieldValue� 0 errmsg errMsg� 0 errnum errNum2z 	$�����2|�%
%
� 
null
� 
valL
� 
focu� 0 errmsg errMsg2| ���
� 
errn� 0 errnum errNum�  
� 
errn�$ A�Z ,�� ��,� e��,FO���,FY fY hOeOPW X  )�l�%�%�%1� �%��2}2~�� (0 fmgui_appfrontmost fmGUI_AppFrontMost�  �  2}  2~ 
%N�%L����%?��

� 
pcap
� 
pisf
� .sysodelanull��� ��� nmbr
� 
cwin
� 
pnam
� 
butT
�
 .prcsclicnull��� ��� uiel� F� B*��/ :*�,e 1e*�,FOkj O*�k/�,�  *�k/�k/j 	Okj Y hY hUU1� �	%V��22���	 00 fmgui_dataviewer_close fmGUI_DataViewer_Close�  �  2  2� %{�%y��1��%v�� ����
� 
pcap� (0 fmgui_appfrontmost fmGUI_AppFrontMost
� 
cwin
� 
pnam
� 
butT
�  .prcsclicnull��� ��� uiel��  ��  � 4� 0*��/ ()j+ O *�k/�[�,\Z�81�k/j 	W X 
 hUU1� ��%�����2�2����� .0 fmgui_inspector_close fmGUI_Inspector_Close��  ��  2�  2� %���%�����1���%�������%�����%�
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
hUU1� ��%�����2�2����� 00 fmgui_inspector_ensure fmGUI_Inspector_Ensure��  ��  2� ������ 0 errmsg errMsg�� 0 errnum errNum2� ��&��&����1���&������&����&����2���&$�� 20 fmgui_modeensure_layout fmGUI_ModeEnsure_Layout
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
�� .prcsclicnull��� ��� uiel�� 0 errmsg errMsg2� ������
�� 
errn�� 0 errnum errNum��  
�� 
errn�� i T*j+  O� F*��/ >)j+ O*�k/�[�,\Z�@1j 	 *�k/��/�k/�k/�[�,\Z�81j Y hOeUUW X  )a �la �%OP1� ��&/����2�2����� 20 fmgui_modeensure_browse fmGUI_ModeEnsure_Browse��  ��  2� ������ 0 errmsg errMsg�� 0 errnum errNum2� &B����2���&L�� $0 fmgui_modeselect fmGUI_ModeSelect�� 0 errmsg errMsg2� ������
�� 
errn�� 0 errnum errNum��  
�� 
errn��  *�k+ OPW X  )�l�%OP1� ��&Y����2�2����� .0 fmgui_modeensure_find fmGUI_ModeEnsure_Find��  ��  2� ������ 0 errmsg errMsg�� 0 errnum errNum2� &l����2���&v�� $0 fmgui_modeselect fmGUI_ModeSelect�� 0 errmsg errMsg2� ������
�� 
errn�� 0 errnum errNum��  
�� 
errn��  *�k+ OPW X  )�l�%OP1� ��&�����2�2�ۿ�� 20 fmgui_modeensure_layout fmGUI_ModeEnsure_Layout��  ��  2� ۾۽۾ 0 errmsg errMsg۽ 0 errnum errNum2� &�ۼۻ2�ۺ&�ۼ $0 fmgui_modeselect fmGUI_ModeSelectۻ 0 errmsg errMsg2� ۹۸۷
۹ 
errn۸ 0 errnum errNum۷  
ۺ 
errnۿ  *�k+ OPW X  )�l�%OP1� ۶&�۵۴2�2�۳۶ $0 fmgui_modeselect fmGUI_ModeSelect۵ ۲2�۲ 2�  ۱۱ 0 modetoselect modeToSelect۴  2� ۰ۯۮۭ۪۬۫۩۰ 0 modetoselect modeToSelectۯ 0 
modewindow 
modeWindowۮ "0 modecontentarea modeContentAreaۭ *0 modecontentareadesc modeContentAreaDesc۬ 0 currentmode currentMode۫ 0 menuitemname menuItemName۪ 0 errmsg errMsg۩ 0 errnum errNum2� 'ۨ'ۧۦۥۤ1�ۣ&�ۢ&�ۡ' ۠۟'۞۝ۜۛ2�ۚ'&'(
ۨ 
pcapۧ (0 fmgui_appfrontmost fmGUI_AppFrontMostۦ .0 fmgui_inspector_close fmGUI_Inspector_Close
ۥ 
cwin
ۤ 
sgrp
ۣ 
desc
ۢ 
cwor
ۡ .sysodelanull��� ��� nmbr
۠ 
mbar
۟ 
mbri
۞ 
menE
۝ 
menI
ۜ .prcsclicnull��� ��� uielۛ 0 errmsg errMsg2� ۙۘۗ
ۙ 
errnۘ 0 errnum errNumۗ  
ۚ 
errn۳ � t� l*��/ d)j+ O)j+ O*�k/E�O��k/�[�,\Z�?1E�O��,E�O��k/E�O�� (�j O��%E�O*�k/�a /a k/a �/j Y hOeOPUUW X  )a �la �%a %�%1� ۖ'2ە۔2�2�ۓۖ (0 fmgui_window_close fmGUI_Window_Closeە ے2�ے 2�  ۑۑ  0 somewindowname someWindowName۔  2� ېې  0 somewindowname someWindowName2� ۏ'Jێۍی
ۏ 
capp
ێ kfrmID  
ۍ 
cwin
ی .coreclosnull���    obj ۓ )���0 *�/j OPUOeOP1� ۋ'Yۊۉ2�2�ۈۋ "0 windowwaituntil windowWaitUntilۊ ۇ2�ۇ 2�  ۆۆ 	0 prefs  ۉ  2� ۅۄۃۂہۀ��~ۅ 	0 prefs  ۄ 0 defaultprefs defaultPrefsۃ 0 
windowname 
windowNameۂ  0 windownametest windowNameTestہ 0 whichwindow whichWindowۀ 0 checkresult checkResult� "0 windownamecheck windowNameCheck�~ 0 windowindex windowIndex2� �}�|�{'m�z'q�y'u�x�w�v'�'��u'��t�s'�'��r'�'�'�((()(:(L(](k�q�} 0 
windowname 
windowName
�| 
null�{  0 windownametest windowNameTest�z 0 whichwindow whichWindow�y .0 waitcycledelayseconds waitCycleDelaySeconds�x 0 waitcyclemax waitCycleMax�w �v 

�u 
pcap
�t 
cwin
�s 
pnam
�r 
nmbr
�q .sysodelanull��� ��� nmbrۈD�����������E�O��%E�O��,E�O��,E�O��,E�OfE�O��,Ekh� H��  *��/�-a ,E�Y 3�a   *�a /�k/a ,E�Y �a &E�O*�a /�/a ,E�UO�a   ��E�OPY ��a   ��E�OPY ��a   �� E�OPY o�a   �� E�OPY ]�a   ��E�OPY K�a   ��E�OPY 8�a   ��E�OPY &�a   ��E�Y �a   ��E�OPY hO� Y hO��,j OP[OY��O�OP1� �p(��o�n2�2��m�p 20 windowwaituntil_frontis windowWaitUntil_FrontIS�o �l2��l 2�  �k�k 	0 prefs  �n  2� �j�i�j 	0 prefs  �i 0 defaultprefs defaultPrefs2� �h�g�f(��e(��d(��c�b�a�`�h 0 
windowname 
windowName
�g 
null�f  0 windownametest windowNameTest�e 0 whichwindow whichWindow�d .0 waitcycledelayseconds waitCycleDelaySeconds�c 0 waitcyclemax waitCycleMax�b d�a 
�` "0 windowwaituntil windowWaitUntil�m �����������E�O��%E�O*�k+ OP1� �_(��^�]2�2��\�_ "0 indexoflistitem indexOfListItem�^ �[2��[ 2�  �Z�Y�Z 0 somelist someList�Y 0 somelistitem someListItem�]  2� �X�W�V�U�X 0 somelist someList�W 0 somelistitem someListItem�V 0 i  �U 0 onelistitem oneListItem2� �T�S
�T .corecnte****       ****
�S 
cobj�\ 9�� iY hO 'k�j  kh ��/E�O��  �Y hOP[OY��OP1� �R)�Q�P2�2��O�R 0 listcontains listContains�Q �N2��N 2�  �M�L�M 0 somelist someList�L "0 somecomplexitem someComplexItem�P  2� �K�J�I�K 0 somelist someList�J "0 somecomplexitem someComplexItem�I 0 oneitem oneItem2� �H�G�F�E
�H 
kocl
�G 
cobj
�F .corecnte****       ****
�E 
pcnt�O 1 *�[��l kh ��,E�O��  	eOPY hOP[OY��OfOP1� �D)7�C�B2�2��A�D $0 listuniquevalues listUniqueValues�C �@2��@ 2�  �?�? 	0 prefs  �B  2� �>�=�<�;�> 	0 prefs  �= 0 	inputlist 	inputList�< 0 
uniquelist 
uniqueList�; 0 oneitem oneItem2� �:�9�8�7�6�: 0 	inputlist 	inputList
�9 
kocl
�8 
cobj
�7 .corecnte****       ****
�6 
pcnt�A ;��,E�OjvE�O )�[��l kh ��,E�O�� 	��6GY h[OY��O�OP1� �5)t�4�32�2��2�5 0 sort  �4 �12��1 2�  �0�0 0 oldlist oldList�3  2� �/�.�-�,�+�/ 0 oldlist oldList�. 0 od  �- 0 	textblock 	textBlock�, 0 sortedblock sortedBlock�+ 0 
sortedlist 
sortedList2� �*�)�(�'�&�%)��$)��#�"�!
�* 
ascr
�) 
txdl�( 

�' .sysontocTEXT       shor
�& 
cobj
�% 
TEXT
�$ 
strq
�# .sysoexecTEXT���     TEXT
�" 
ret 
�! 
citm�2 E��,�j lvE[�k/E�Z[�l/��,FZO��&E�O��,%�%j 	E�O���,FO��-E�O���,FO�1� � )���2�2���  0 
logconsole 
logConsole� �2�� 2�  ��� 0 processname processName� 0 
consolemsg 
consoleMsg�  2� ���� 0 processname processName� 0 
consolemsg 
consoleMsg� 0 shellcommand shellCommand2� ��)���)�*�*���  0 coercetostring coerceToString
� .sysontocTEXT       shor� 0 replacesimple replaceSimple
� 
leng
� 
spac
� 
strq
� .sysoexecTEXT���     TEXT� I*�k+  E�O*�jj �mvk+ E�O��,j  �E�Y hO��%�%�%��,%�%��,%E�O�j 
O�OP1� �*#��2�2��� 0 loglevel logLEVEL� �2�� 2�  �
�	�
 	0 level  �	 0 somemsg someMsg�  2� ������� 	0 level  � 0 somemsg someMsg� 0 	maxxcount 	maxXcount� 0 logname logName� 0 xcount xCount� 0 i  2� �*:*O�� � 0 
logconsole 
logConsole� 5�E�Ob  �%E�O��kE�O k�kh ��%E�[OY��O*��l+ OP1� � *a����2�2����  0 logmain logMAIN�� ��2��� 2�  ���� 0 somemsg someMsg��  2� ���� 0 somemsg someMsg2� ���� 0 loglevel logLEVEL�� *j�l+  1� ��*|����2�2����� (0 systemnotification systemNotification�� ��2��� 2�  ���� 	0 prefs  ��  2� ������ 	0 prefs  �� 0 defaultprefs defaultPrefs2� ��*���*���*���*��������������������� 0 msg  �� 0 msgtitle msgTitle�� 0 msgsubtitle msgSubtitle�� 0 msgsound msgSound�� 0 nosound noSound
�� 
null�� 

�� 
appr
�� 
subt�� 
�� .sysonotfnull��� ��� TEXT
�� 
nsou�� �� G�����������E�O��%E�O��,� ��,��,��,� Y ��,��,��,��,a  OP1� ��*�����2�2����� 0 writetofile writeToFile�� ��2��� 2�  ���� 	0 prefs  ��  2� ���������� 	0 prefs  �� 0 defaultprefs defaultPrefs�� 0 
outputfile 
outputFile�� 0 filereference fileReference2� ������������������+ ������������������ 0 fullfilepath fullFilePath
�� 
null�� 0 filename fileName�� 0 filedirectory fileDirectory
�� afdrdesk
�� .earsffdralis        afdr
�� 
TEXT�� 0 
outputtext 
outputText�� 
�� 
file
�� 
perm
�� .rdwropenshor       file
�� 
refn
�� .rdwrwritnull���     ****
�� .rdwrclosnull���     ****��  ��  �� �������j �&���E�O��%E�O��,� 
��,E�Y !��,� ��,��,%E�Y �j �&�%E�O !*�/�el E�O��,��l O�j W X   *�/j W X  h1� ��+L����2�2����� 0 clickatcoords clickAtCoords�� ��2��� 2�  ������ 0 xclick xClick�� 0 yclick yClick��  2� ������ 0 xclick xClick�� 0 yclick yClick2� 	ڿھڽڼ+t+vڻں+�
ڿ 
dire
ھ olierndD
ڽ .sysorondlong        doub
ڼ 
strq
ڻ .sysoexecTEXT���     TEXT
ں 
TEXT�� 1���l E�O���l E�Ob  �,�%�%�%�%j O��&�%�%1� ڹ+�ڸڷ2�2�ڶڹ *0 clickobjectbycoords clickObjectByCoordsڸ ڵ2�ڵ 2�  ڴڴ 0 
someobject 
someObjectڷ  2� ڳڲڱڰگڮڭڳ 0 
someobject 
someObjectڲ 0 xcoord xCoordڱ 0 ycoord yCoordڰ 0 xsize xSizeگ 0 ysize ySizeڮ 0 xclick xClickڭ 0 yclick yClick2� +�ڬګڪکڨڧڦ
ڬ 
posn
ګ 
cobj
ڪ 
ptsz
ک 
dire
ڨ olierndD
ڧ .sysorondlong        doubڦ 0 clickatcoords clickAtCoordsڶ N�Z��,E[�k/E�Z[�l/E�ZO��,E[�k/E�Z[�l/E�ZO��l!��l E�O��l!��l E�O*��l+ OP1� ڥ+�ڤڣ2�2�ڢڥ  0 coercetostring coerceToStringڤ ڡ2�ڡ 2�  ڠڠ  0 incomingobject incomingObjectڣ  2� ڟڞڝڜڛښڙژڟ  0 incomingobject incomingObjectڞ 0 errmsg errMsgڝ 0 errnum errNumڜ 0 	olddelims 	oldDelimsڛ 0 
errmsglead 
errMsgLeadښ 0 errmsgtrail errMsgTrailڙ 0 od  ژ 0 objectstring objectString2� ڗږڕڔړڒ,W,[ڑڐ2�ڏڎ,xڍڌ,�ڋ,�,�ڊ,�,�
ڗ 
pcls
ږ 
TEXT
ڕ 
ctxt
ڔ 
long
ړ 
doub
ڒ 
utxtڑ j0 3some_uuid_property_54f827c7379e4073b5a216bb9cde575d 3some_UUID_Property_54F827C7379E4073B5A216BB9CDE575Dڐ 0 errmsg errMsg2� ډڈڇ
ډ 
errnڈ 0 errnum errNumڇ  
ڏ 
ascr
ڎ 
txdl
ڍ 
cobj
ڌ 
citmڋ  
ڊ 
boolڢ���,�  ��&E[�,E�ZO�Yk��,�  ��&E[�,E�ZO��&YQ��,�  ��&E[�,E�ZO��&Y7��,�  ��&E[�,E�ZO��&Y S ���,FOPW 9X 	 
��,�kvlvE[�k/E�Z[�l/��,FZO��-E[�k/E�Z[�l/E�ZO���,FOa ��,FOPW �X 	 �a 	 �a a & Da E�Oa E�O��,�lvE[�k/E�Z[�l/��,FZO��l/E�O���,FO��k/E�O���,FOPY k�E�O�� )��,�lvE[�k/E�Z[�l/��,FZO��l/E�O���,FY hO�� /��,�lvE[�k/E�Z[�l/��,FZO���,FO��k/E�O���,FY hOPO�1� چ-\څڄ2�2�ڃچ 0 gettextbefore getTextBeforeڅ ڂ2�ڂ 2�  ځڀځ 0 
sourcetext 
sourceTEXTڀ 0 stophere stopHereڄ  2� ��~�}�|�{�z� 0 
sourcetext 
sourceTEXT�~ 0 stophere stopHere�} 0 	olddelims 	oldDelims�| 0 finalresult finalResult�{ 0 errmsg errMsg�z 0 errnum errNum2� 	�y�x�w�v�u-��t2�-�
�y 
ascr
�x 
txdl
�w 
cobj
�v 
citm
�u .corecnte****       ****�t 0 errmsg errMsg2� �s�r�q
�s 
errn�r 0 errnum errNum�q  ڃ R C��,�lvE[�k/E�Z[�l/��,FZO��-j k  ���,FO�Y ��k/E�O���,FO�W X  ���,FO�1� �p-��o�n2�2��m�p  0 gettextbetween getTextBetween�o �l2��l 2�  �k�k 	0 prefs  �n  2� �j�i�h�g�f�e�d�c�b�a�`�_�j 	0 prefs  �i 0 defaultprefs defaultPrefs�h 0 
sourcetext 
sourceTEXT�g 0 
beforetext 
beforeText�f 0 	aftertext 	afterText�e 0 textitemnum textItemNum�d  0 includemarkers includeMarkers�c 0 	olddelims 	oldDelims�b 0 prefixremoved prefixRemoved�a 0 finalresult finalResult�` 0 errmsg errMsg�_ 0 errnum errNum2� �^�]�\�[�Z�Y-��X�W�V-��U�T�S�R�Q�P�O�N�M�L2�.��^ 0 textitemnum textItemNum�]  0 includemarkers includeMarkers�\ 
�[ 
pcls
�Z 
list
�Y 
TEXT
�X 
bool
�W 
errn�V 
�U .corecnte****       ****
�T 
cobj�S 0 
sourcetext 
sourceTEXT�R 0 
beforetext 
beforeText�Q 0 	aftertext 	afterText�P 
�O 
ascr
�N 
txdl
�M 
citm�L 0 errmsg errMsg2� �K�J�I
�K 
errn�J 0 errnum errNum�I  �m ��l�f�E�O��,�	 ��,�&��& )��l�Y hO��,�  1�j �  ���/��,FY hO���k/��l/��m/a E�Y hO��%E�O��,E�O��,E�O��,E�O��,E�O��,E�O \_ a ,�lvE[�k/E�Z[�l/_ a ,FZO�a �/E�O�_ a ,FO�a k/E�O�_ a ,FO� ��%�%E�Y hOPW X  �_ a ,FOa E�O�OP1� �H.��G�F2�2��E�H 0 
parsechars 
parseChars�G �D2��D 2�  �C�C 	0 prefs  �F  2� 	�B�A�@�?�>�=�<�;�:�B 	0 prefs  �A 0 defaultprefs defaultPrefs�@ 0 
sourcetext 
sourceTEXT�? 0 parsestring parseString�> 0 considercase considerCase�= 0 	olddelims 	oldDelims�< 0 
parsedlist 
parsedList�; 0 errmsg errMsg�: 0 errnum errNum2� �9�8�7�6�5�4�3�2�1�0�/�./
�-�,�+/P�*�)2��(�'/x�9 0 considercase considerCase
�8 
pcls
�7 
list
�6 .corecnte****       ****�5 0 
sourcetext 
sourceTEXT
�4 
cobj�3 0 parsestring parseString�2 �1 �0 0 somekey someKey
�/ 
errn�. 
�- 
ascr
�, 
txdl
�+ 
TEXT
�* 
citm�) 0 errmsg errMsg2� �&�%�$
�& 
errn�% 0 errnum errNum�$  �(  �'  �E ��elE�O��,�  5�j l ��k/��l/��m/�E�Y ��k/��l/�E�OPY ��,�ml�, )��l�OPY hO��%E�O��,E�O��,E�O��,E�O��,E�O =��&kv��,FO� a g 
�a -E�VY ga  
�a -E�VO���,FO�W #X   
���,FW X  hO)�la �%1� �#/��"�!2�2�� �# 0 replacesimple replaceSimple�" �2�� 2�  �� 	0 prefs  �!  2� 	���������� 	0 prefs  � 0 defaultprefs defaultPrefs� 0 considercase considerCase� 0 
sourcetext 
sourceTEXT� 0 oldchars oldChars� 0 newchars newChars� 0 	olddelims 	oldDelims� 0 
parsedlist 
parsedList� 0 newtext newText2� �����������
�	��/����06�� 0 considercase considerCase
� 
pcls
� 
list
� .corecnte****       ****� 0 
sourcetext 
sourceTEXT
� 
cobj� 0 oldchars oldChars� 0 newchars newChars� � �
 �	 0 somekey someKey
� 
errn� 
� 
TEXT
� 
ascr
� 
txdl
� 
citm�  ��elE�O��,�  ?�j m ��k/��l/��m/���/�E�Y ��k/��l/��m/�E�OPY ��,�ml�, )��l�OPY hO��%E�O��,E�O��,E�O��,E�O��,E�O��&E�O_ a ,E�O�_ a ,FO� (a g �a -E�O��&kv_ a ,FO��&E�VY %ga  �a -E�O��&kv_ a ,FO��&E�VO�_ a ,FO�OP1� �0��� 2�2���� 0 unparsechars unParseChars� ��2��� 2�  ������ 0 thislist thisList�� 0 newdelim newDelim�   2� �������������� 0 thislist thisList�� 0 newdelim newDelim�� 0 	olddelims 	oldDelims�� 0 unparsedtext unparsedText�� 0 errmsg errMsg�� 0 errnum errNum2� 	��������2�������0�
�� 
ascr
�� 
txdl
�� 
TEXT�� 0 errmsg errMsg2� ������
�� 
errn�� 0 errnum errNum��  ��  ��  
�� 
errn�� D��,E�O ��&kv��,FO��&E�O���,FO�W !X   
���,FW X  hO)�l�%1� ��0�����2�2�����  0 versioncompare versionCompare�� ��2��� 2�  ���� 	0 prefs  ��  2� �������������������������� 	0 prefs  �� 0 defaultprefs defaultPrefs�� 0 od  �� 0 v1_list  �� 0 v2_list  �� 0 v1_count  �� 0 v2_count  �� 0 maxcount maxCount�� 0 versionresult versionResult�� 0 i  �� 0 v1_part  �� 0 v2_part  2� ��������0�������������141B������1�1��� 0 v1  
�� 
null�� 0 v2  �� 	0 delim  �� 
�� 
ascr
�� 
txdl
�� 
cobj
�� 
citm
�� .corecnte****       ****
�� 
nmbr��  ��  ���������E�O��%E�O��,��,lvE[�k/E�Z[�l/��,FZO��,�-��,�-lvE[�k/E�Z[�l/E�ZO���,FO�j 
�j 
lvE[�k/E�Z[�l/E�ZO�� �E�Y �E�O�E�O sk�kh 	�� Y hO�� ��/E�Y jE�O�� ��/E�Y jE�O &��&��& kE�Y ��&��& iE�Y hW X  a E�OP[OY��O�a   jE�Y hO�OP ascr  ��ޭ