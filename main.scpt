FasdUAS 1.101.10   ��   ��    k             l     ��  ��      main script     � 	 	    m a i n   s c r i p t   
  
 l     ��  ��      Erik Shagdar, NYHTC     �   (   E r i k   S h a g d a r ,   N Y H T C      l     ��������  ��  ��        l     ��  ��    %  Generated: 2016-07-20 16:29:38     �   >   G e n e r a t e d :   2 0 1 6 - 0 7 - 2 0   1 6 : 2 9 : 3 8      l     ��  ��    n h Run 'main_helper.applescript' to after making changes in any .applescript file and after each git pull.     �   �   R u n   ' m a i n _ h e l p e r . a p p l e s c r i p t '   t o   a f t e r   m a k i n g   c h a n g e s   i n   a n y   . a p p l e s c r i p t   f i l e   a n d   a f t e r   e a c h   g i t   p u l l .      l     ��  ��    � � Assumes file is located at '~/Code/applescript-fm-helper/'. If it is not, make sure to update clickCommandPosix property and 'vendor.sh' script.     �  "   A s s u m e s   f i l e   i s   l o c a t e d   a t   ' ~ / C o d e / a p p l e s c r i p t - f m - h e l p e r / ' .   I f   i t   i s   n o t ,   m a k e   s u r e   t o   u p d a t e   c l i c k C o m m a n d P o s i x   p r o p e r t y   a n d   ' v e n d o r . s h '   s c r i p t .     !   l     ��������  ��  ��   !  " # " j     �� $�� 0 	debugmode 	DebugMode $ m     ��
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
errn!l o   � ����� 0 errnum errNum��   � !m��!m l  � ���������  ��  ��  ��   � !n!o!n l     ��������  ��  ��  !o !p!q!p l     ��������  ��  ��  !q !r!s!r i   � �!t!u!t I      ��!v���� N0 %fmgui_managescripts_listofscriptnames %fmGUI_ManageScripts_ListOfScriptNames!v !w��!w o      ���� 0 
somedbname 
someDbName��  ��  !u k     7!x!x !y!z!y l     ��!{!|��  !{   version 1.2   !| �!}!}    v e r s i o n   1 . 2!z !~!!~ l     ��������  ��  ��  ! !�!�!� O     5!�!�!� k    4!�!� !�!�!� l   ��������  ��  ��  !� !�!�!� Z    '!�!���!�!� =   !�!�!� l   !�����!� I   ��!���
�� .corecnte****       ****!� n    !�!�!� 2    ��
�� 
cSCP!� 4    ��!�
�� 
cDB !� o   
 ���� 0 
somedbname 
someDbName��  ��  ��  !� m    ����  !� L    !�!� J    ����  ��  !� L    '!�!� n    &!�!�!� 1   # %��
�� 
pnam!� n    #!�!�!� 2   ! #��
�� 
cSCP!� 4    !��!�
�� 
cDB !� o     ���� 0 
somedbname 
someDbName!� !�!�!� l  ( (��������  ��  ��  !� !�!�!� R   ( 2��!�!�
�� .ascrerr ****      � ****!� b   , 1!�!�!� b   , /!�!�!� m   , -!�!� �!�!� � C o u l d   n o t   g e t   M a n a g e S c r i p t s _ L i s t O f S c r i p t N a m e s   o f   d a t a b a s e   s p e c i f i e d :  !� o   - .���� 0 
somedbname 
someDbName!� m   / 0!�!� �!�!�  .!� ��!���
�� 
errn!� m   * +���� ��  !� !���!� l  3 3��������  ��  ��  ��  !� 5     ��!���
�� 
capp!� m    !�!� �!�!� > c o m . f i l e m a k e r . c l i e n t . a d v a n c e d 1 2
�� kfrmID  !� !���!� l  6 6��������  ��  ��  ��  !s !�!�!� l     ��������  ��  ��  !� !�!�!� l     ������  �  �  !� !�!�!� i   � �!�!�!� I      �!��� <0 fmgui_managesecurity_gototab fmGUI_ManageSecurity_GoToTab!� !��!� o      �� 	0 prefs  �  �  !� k     ]!�!� !�!�!� l     �!�!��  !�   version 1.2   !� �!�!�    v e r s i o n   1 . 2!� !�!�!� l     ����  �  �  !� !�!�!� r     !�!�!� K     !�!� �!��� 0 tabname tabName!� m    !�!� �!�!�  A c c o u n t s�  !� o      �� 0 defaultprefs defaultPrefs!� !�!�!� r    !�!�!� b    
!�!�!� o    �� 	0 prefs  !� o    	�� 0 defaultprefs defaultPrefs!� o      �� 	0 prefs  !� !�!�!� l   ����  �  �  !� !�!�!� Q    [!�!�!�!� k    I!�!� !�!�!� I    ���� (0 fmgui_appfrontmost fmGUI_AppFrontMost�  �  !� !�!�!� I    �!��� 60 fmgui_managesecurity_open fmGUI_ManageSecurity_Open!� !��!� J    ��  �  �  !� !�!�!� l   ����  �  �  !� !��!� O    I!�!�!� O   " H!�!�!� k   ) G!�!� !�!�!� l  ) )����  �  �  !� !�!�!� I  ) B�!��
� .prcsclicnull��� ��� uiel!� l  ) >!���!� 6  ) >!�!�!� n   ) 3!�!�!� 4  0 3�!�
� 
radB!� m   1 2�� !� n   ) 0!�!�!� 4   - 0�!�
� 
tabg!� m   . /�� !� 4   ) -�!�
� 
cwin!� m   + ,�� !� =  4 =!�!�!� 1   5 7�
� 
pnam!� n   8 <!�!�!� o   : <�� 0 tabname tabName!� o   8 :�� 	0 prefs  �  �  �  !� !�!�!� L   C E!�!� m   C D�
� boovtrue!� !��!� l  F F����  �  �  �  !� 4   " &�!�
� 
pcap!� m   $ %!�!� �!�!� , F i l e M a k e r   P r o   A d v a n c e d!� m    !�!��                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  �  !� R      �!�" 
� .ascrerr ****      � ****!� o      �� 0 errmsg errMsg"  �"�
� 
errn" o      �� 0 errnum errNum�  !� R   Q [�""
� .ascrerr ****      � ****" b   U Z""" m   U X"" �"" P C o u l d n ' t   g o   t o   t a b   i n   M a n a g e   S e c u r i t y   -  " o   X Y�� 0 errmsg errMsg" �"�
� 
errn" o   S T�� 0 errnum errNum�  !� "	�"	 l  \ \���~�  �  �~  �  !� "
""
 l     �}�|�{�}  �|  �{  " """ l     �z�y�x�z  �y  �x  " """ i   � �""" I      �w"�v�w N0 %fmgui_managesecurity_gototab_accounts %fmGUI_ManageSecurity_GoToTab_Accounts" "�u" o      �t�t 	0 prefs  �u  �v  " k     "" """ l     �s""�s  "   version 1.1   " �""    v e r s i o n   1 . 1" """ l     �r�q�p�r  �q  �p  " """ Q     """ " I    �o"!�n�o <0 fmgui_managesecurity_gototab fmGUI_ManageSecurity_GoToTab"! ""�m"" K    "#"# �l"$�k�l 0 tabname tabName"$ m    "%"% �"&"&  A c c o u n t s�k  �m  �n  " R      �j"'"(
�j .ascrerr ****      � ****"' o      �i�i 0 errmsg errMsg"( �h")�g
�h 
errn") o      �f�f 0 errnum errNum�g  "  R    �e"*"+
�e .ascrerr ****      � ****"* b    ","-", m    ".". �"/"/ < C o u l d n ' t   g o   t o   A c c o u n t s   t a b   -  "- o    �d�d 0 errmsg errMsg"+ �c"0�b
�c 
errn"0 o    �a�a 0 errnum errNum�b  " "1�`"1 l   �_�^�]�_  �^  �]  �`  " "2"3"2 l     �\�[�Z�\  �[  �Z  "3 "4"5"4 l     �Y�X�W�Y  �X  �W  "5 "6"7"6 i   � �"8"9"8 I      �V":�U�V N0 %fmgui_managesecurity_gototab_privsets %fmGUI_ManageSecurity_GoToTab_PrivSets": ";�T"; o      �S�S 	0 prefs  �T  �U  "9 k     "<"< "=">"= l     �R"?"@�R  "?   version 1.1   "@ �"A"A    v e r s i o n   1 . 1"> "B"C"B l     �Q�P�O�Q  �P  �O  "C "D"E"D Q     "F"G"H"F I    �N"I�M�N <0 fmgui_managesecurity_gototab fmGUI_ManageSecurity_GoToTab"I "J�L"J K    "K"K �K"L�J�K 0 tabname tabName"L m    "M"M �"N"N  P r i v i l e g e   S e t s�J  �L  �M  "G R      �I"O"P
�I .ascrerr ****      � ****"O o      �H�H 0 errmsg errMsg"P �G"Q�F
�G 
errn"Q o      �E�E 0 errnum errNum�F  "H R    �D"R"S
�D .ascrerr ****      � ****"R b    "T"U"T m    "V"V �"W"W < C o u l d n ' t   g o   t o   A c c o u n t s   t a b   -  "U o    �C�C 0 errmsg errMsg"S �B"X�A
�B 
errn"X o    �@�@ 0 errnum errNum�A  "E "Y�?"Y l   �>�=�<�>  �=  �<  �?  "7 "Z"["Z l     �;�:�9�;  �:  �9  "[ "\"]"\ l     �8�7�6�8  �7  �6  "] "^"_"^ i   � �"`"a"` I      �5"b�4�5 d0 0fmgui_managesecurity_listofaccountsandprivileges 0fmGUI_ManageSecurity_ListOfAccountsAndPrivileges"b "c�3"c o      �2�2 	0 prefs  �3  �4  "a k     �"d"d "e"f"e l     �1"g"h�1  "g   version 1.0   "h �"i"i    v e r s i o n   1 . 0"f "j"k"j l     �0�/�.�0  �/  �.  "k "l"m"l Q     �"n"o"p"n k    r"q"q "r"s"r I    �-�,�+�- (0 fmgui_appfrontmost fmGUI_AppFrontMost�,  �+  "s "t"u"t I   	 �*"v�)�* N0 %fmgui_managesecurity_gototab_accounts %fmGUI_ManageSecurity_GoToTab_Accounts"v "w�("w J   
 �'�'  �(  �)  "u "x"y"x l   �&�%�$�&  �%  �$  "y "z�#"z O    r"{"|"{ O    q"}"~"} k    p"" "�"�"� r    +"�"�"� n    )"�"�"� 4   & )�""�
�" 
tabB"� m   ' (�!�! "� n    &"�"�"� 4   # &� "�
�  
scra"� m   $ %�� "� n    #"�"�"� 4     #�"�
� 
tabg"� m   ! "�� "� 4     �"�
� 
cwin"� m    �� "� o      �� 0 accountstable accountsTable"� "�"�"� l  , ,����  �  �  "� "�"�"� r   , 6"�"�"� n   , 4"�"�"� 1   2 4�
� 
valL"� n   , 2"�"�"� 4   / 2�"�
� 
sttx"� m   0 1�� "� n   , /"�"�"� 2   - /�
� 
crow"� o   , -�� 0 accountstable accountsTable"� o      �� $0 accountnameslist accountNamesList"� "�"�"� r   7 A"�"�"� n   7 ?"�"�"� 1   = ?�
� 
valL"� n   7 ="�"�"� 4   : =�"�
� 
sttx"� m   ; <�� "� n   7 :"�"�"� 2   8 :�
� 
crow"� o   7 8�� 0 accountstable accountsTable"� o      �� 0 privnameslist privNamesList"� "�"�"� l  B B�
�	��
  �	  �  "� "�"�"� r   B F"�"�"� J   B D��  "� o      �� 0 accountslist accountsList"� "�"�"� Y   G k"��"�"��"� k   U f"�"� "�"�"� r   U a"�"�"� J   U _"�"� "�"�"� n   U Y"�"�"� 4   V Y�"�
� 
cobj"� o   W X�� 0 i  "� o   U V�� $0 accountnameslist accountNamesList"� "�� "� n   Y ]"�"�"� 4   Z ]��"�
�� 
cobj"� o   [ \���� 0 i  "� o   Y Z���� 0 privnameslist privNamesList�   "� o      ���� 0 oneaccountrow oneAccountRow"� "���"� r   b f"�"�"� o   b c���� 0 oneaccountrow oneAccountRow"� n      "�"�"�  ;   d e"� o   c d���� 0 accountslist accountsList��  � 0 i  "� m   J K���� "� I  K P��"���
�� .corecnte****       ****"� o   K L���� $0 accountnameslist accountNamesList��  �  "� "�"�"� l  l l��������  ��  ��  "� "�"�"� L   l n"�"� o   l m���� 0 accountslist accountsList"� "���"� l  o o��������  ��  ��  ��  "~ 4    ��"�
�� 
prcs"� m    "�"� �"�"�  F i l e M a k e r   P r o"| m    "�"��                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  �#  "o R      ��"�"�
�� .ascrerr ****      � ****"� o      ���� 0 errmsg errMsg"� ��"���
�� 
errn"� o      ���� 0 errnum errNum��  "p R   z ���"�"�
�� .ascrerr ****      � ****"� b   � �"�"�"� m   � �"�"� �"�"� p C o u l d n ' t   g e t   l i s t   o f   a c c o u n t   N a m e   P r i v i l e g e   S e t   l i s t s   -  "� o   � ����� 0 errmsg errMsg"� ��"���
�� 
errn"� o   ~ ���� 0 errnum errNum��  "m "���"� l  � ���������  ��  ��  ��  "_ "�"�"� l     ��������  ��  ��  "� "�"�"� l     ��������  ��  ��  "� "�"�"� i   � �"�"�"� I      ��"����� 60 fmgui_managesecurity_open fmGUI_ManageSecurity_Open"� "���"� o      ���� 	0 prefs  ��  ��  "� k     _"�"� "�"�"� l     ��"�"���  "�   version 1.1   "� �"�"�    v e r s i o n   1 . 1"� "�"�"� l     ��������  ��  ��  "� "�"�"� Q     ]"�"�"�"� O    I"�"�"� O    H"�"�"� k    G"�"� "�"�"� n   "�"�"� I    �������� (0 fmgui_appfrontmost fmGUI_AppFrontMost��  ��  "�  f    "� "�"�"� l   ��������  ��  ��  "� "���"� Z    G"�"�����"� H    # #  E    ### n    ### 1    ��
�� 
pnam# 4    ��#
�� 
cwin# m    ���� # m    ## �## & M a n a g e   S e c u r i t y   f o r"� k     C## #	#
#	 I    @��#��
�� .prcsclicnull��� ��� uiel# l    <#����# 6    <### n     3### 4  0 3�#
� 
menI# m   1 2�� # n     0### 4   - 0�#
� 
menE# m   . /�� # n     -### 4   * -�#
� 
menI# m   + ,## �##  M a n a g e# n     *### 4   ' *�#
� 
menE# m   ( )�� # n     '### 4   $ '�#
� 
mbri# m   % &# #  �#!#!  F i l e# 4     $�#"
� 
mbar#" m   " #�� # C   4 ;###$## 1   5 7�
� 
pnam#$ m   8 :#%#% �#&#&  S e c u r i t y��  ��  ��  #
 #'�#' L   A C#(#( m   A B�
� boovtrue�  ��  ��  ��  "� 4    �#)
� 
pcap#) m   	 
#*#* �#+#+ , F i l e M a k e r   P r o   A d v a n c e d"� m    #,#,�                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  "� R      �#-#.
� .ascrerr ****      � ****#- o      �� 0 errmsg errMsg#. �#/�
� 
errn#/ o      �� 0 errnum errNum�  "� R   Q ]�#0#1
� .ascrerr ****      � ****#0 b   W \#2#3#2 m   W Z#4#4 �#5#5 @ C o u l d n ' t   o p e n   M a n a g e   S e c u r i t y   -  #3 o   Z [�� 0 errmsg errMsg#1 �#6�
� 
errn#6 o   U V�� 0 errnum errNum�  "� #7�#7 l  ^ ^����  �  �  �  "� #8#9#8 l     ����  �  �  #9 #:#;#: l     ����  �  �  #; #<#=#< i   � �#>#?#> I      �#@�� 60 fmgui_managesecurity_save fmGUI_ManageSecurity_Save#@ #A�#A o      �� 	0 prefs  �  �  #? k     �#B#B #C#D#C l     �#E#F�  #E  version 1.3   #F �#G#G  v e r s i o n   1 . 3#D #H#I#H l     ����  �  �  #I #J#K#J r     #L#M#L K     #N#N �#O#P� 0 fullaccount fullAccount#O m    �
� 
null#P �#Q�� 0 fullpassword fullPassword#Q m    �
� 
null�  #M o      �� 0 defaulprefs defaulPrefs#K #R#S#R r   	 #T#U#T b   	 #V#W#V o   	 
�� 	0 prefs  #W o   
 �� 0 defaulprefs defaulPrefs#U o      �� 	0 prefs  #S #X#Y#X l   ����  �  �  #Y #Z#[#Z Q    �#\#]#^#\ O    �#_#`#_ O    �#a#b#a k    �#c#c #d#e#d n   "#f#g#f I    "���� (0 fmgui_appfrontmost fmGUI_AppFrontMost�  �  #g  f    #e #h#i#h l  # #����  �  �  #i #j#k#j Z   # 9#l#m��#l H   # ,#n#n E   # +#o#p#o n   # )#q#r#q 1   ' )�
� 
pnam#r 4   # '�#s
� 
cwin#s m   % &�� #p m   ) *#t#t �#u#u & M a n a g e   S e c u r i t y   f o r#m R   / 5�~#v#w
�~ .ascrerr ****      � ****#v m   3 4#x#x �#y#y F N o t   i n   m a i n   M a n a g e   S e c u r i t y   w i n d o w .#w �}#z�|
�} 
errn#z m   1 2�{�{ �|  �  �  #k #{#|#{ l  : :�z�y�x�z  �y  �x  #| #}#~#} l  : :�w##��w  #   SAVE edits: click OK   #� �#�#� *   S A V E   e d i t s :   c l i c k   O K#~ #�#�#� U   : y#�#�#� k   A t#�#� #�#�#� l  A A�v#�#��v  #� + % give a bit of extra time, if needed:   #� �#�#� J   g i v e   a   b i t   o f   e x t r a   t i m e ,   i f   n e e d e d :#� #�#�#� n  A Z#�#�#� I   B Z�u#��t�u *0 clickobjectbycoords clickObjectByCoords#� #��s#� 6  B V#�#�#� n   B I#�#�#� 4  F I�r#�
�r 
butT#� m   G H�q�q #� 4   B F�p#�
�p 
cwin#� m   D E�o�o #� =  L U#�#�#� 1   M O�n
�n 
pnam#� m   P T#�#� �#�#�  O K�s  �t  #�  f   A B#� #�#�#� Z   [ n#�#��m�l#� H   [ f#�#� C   [ e#�#�#� n   [ a#�#�#� 1   _ a�k
�k 
pnam#� 4   [ _�j#�
�j 
cwin#� m   ] ^�i�i #� m   a d#�#� �#�#� & M a n a g e   S e c u r i t y   f o r#� k   i j#�#� #�#�#� l  i i�h#�#��h  #� . ( finished closing the window, can leave.   #� �#�#� P   f i n i s h e d   c l o s i n g   t h e   w i n d o w ,   c a n   l e a v e .#� #��g#�  S   i j�g  �m  �l  #� #��f#� I  o t�e#��d
�e .sysodelanull��� ��� nmbr#� m   o p�c�c �d  �f  #� m   = >�b�b #� #�#�#� l  z z�a�`�_�a  �`  �_  #� #�#�#� I  z ��^#��]
�^ .sysodelanull��� ��� nmbr#� m   z }#�#� ?�      �]  #� #�#�#� l  � ��\�[�Z�\  �[  �Z  #� #�#�#� Z   � �#�#��Y�X#� =  � �#�#�#� n   � �#�#�#� 1   � ��W
�W 
pnam#� 4   � ��V#�
�V 
cwin#� m   � ��U�U #� m   � �#�#� �#�#� 2 C o n f i r m   F u l l   a c c e s s   L o g i n#� k   � �#�#� #�#�#� r   � �#�#�#� n   � �#�#�#� o   � ��T�T 0 fullaccount fullAccount#� o   � ��S�S 	0 prefs  #� n      #�#�#� 1   � ��R
�R 
valL#� n   � �#�#�#� 4   � ��Q#�
�Q 
txtf#� m   � �#�#� �#�#� ( F u l l   A c c e s s   A c c o u n t :#� 4   � ��P#�
�P 
cwin#� m   � ��O�O #� #�#�#� r   � �#�#�#� n   � �#�#�#� o   � ��N�N 0 fullpassword fullPassword#� o   � ��M�M 	0 prefs  #� n      #�#�#� 1   � ��L
�L 
valL#� n   � �#�#�#� 4   � ��K#�
�K 
txtf#� m   � �#�#� �#�#�  P a s s w o r d :#� 4   � ��J#�
�J 
cwin#� m   � ��I�I #� #�#�#� l  � ��H�G�F�H  �G  �F  #� #�#�#� n  � �#�#�#� I   � ��E#��D�E *0 clickobjectbycoords clickObjectByCoords#� #��C#� 6  � �#�#�#� n   � �#�#�#� 4  � ��B#�
�B 
butT#� m   � ��A�A #� 4   � ��@#�
�@ 
cwin#� m   � ��?�? #� =  � �#�#�#� 1   � ��>
�> 
pnam#� m   � �#�#� �#�#�  O K�C  �D  #�  f   � �#� #��=#� I  � ��<#��;
�< .sysodelanull��� ��� nmbr#� m   � �#�#� ?�      �;  �=  �Y  �X  #� #�#�#� l  � ��:�9�8�:  �9  �8  #� #��7#� l  � ��6�5�4�6  �5  �4  �7  #b 4    �3#�
�3 
pcap#� m    #�#� �#�#� , F i l e M a k e r   P r o   A d v a n c e d#` m    #�#��                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  #] R      �2#�#�
�2 .ascrerr ****      � ****#� o      �1�1 0 errmsg errMsg#� �0#��/
�0 
errn#� o      �.�. 0 errnum errNum�/  #^ R   � ��-$ $
�- .ascrerr ****      � ****$  b   � �$$$ m   � �$$ �$$ @ C o u l d n ' t   s a v e   M a n a g e   S e c u r i t y   -  $ o   � ��,�, 0 errmsg errMsg$ �+$�*
�+ 
errn$ o   � ��)�) 0 errnum errNum�*  #[ $�($ l  � ��'�&�%�'  �&  �%  �(  #= $$	$ l     �$�#�"�$  �#  �"  $	 $
$$
 l     �!� ��!  �   �  $ $$$ i   � �$$$ I      �$�� &0 fmgui_checkboxset fmGUI_CheckboxSet$ $$$ o      ��  0 checkboxobject checkboxObject$ $�$ o      �� 0 checkboxvalue checkboxValue�  �  $ k     9$$ $$$ l     �$$�  $   version 1.0   $ �$$    v e r s i o n   1 . 0$ $$$ l     ����  �  �  $ $�$ w     9$$$ Q    9$$ $!$ k    %$"$" $#$$$# Z     $%$&��$% >   $'$($' o    �� 0 checkboxvalue checkboxValue$( m    �
� 
null$& Z    $)$*��$) >   $+$,$+ n    $-$.$- 1    �
� 
valL$. o    ��  0 checkboxobject checkboxObject$, o    �� 0 checkboxvalue checkboxValue$* I   �$/�

� .prcsclicnull��� ��� uiel$/ o    �	�	  0 checkboxobject checkboxObject�
  �  �  �  �  $$ $0$1$0 L   ! #$2$2 m   ! "�
� boovtrue$1 $3�$3 l  $ $����  �  �  �  $  R      �$4$5
� .ascrerr ****      � ****$4 o      �� 0 errmsg errMsg$5 �$6� 
� 
errn$6 o      ���� 0 errnum errNum�   $! R   - 9��$7$8
�� .ascrerr ****      � ****$7 b   1 8$9$:$9 b   1 6$;$<$; b   1 4$=$>$= m   1 2$?$? �$@$@ " C o u l d n ' t   s e l e c t   '$> o   2 3���� 0 checkboxvalue checkboxValue$< m   4 5$A$A �$B$B " '   f o r   c h e c k b o x   -  $: o   6 7���� 0 errmsg errMsg$8 ��$C��
�� 
errn$C o   / 0���� 0 errnum errNum��  $�                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  �  $ $D$E$D l     ��������  ��  ��  $E $F$G$F l     ��������  ��  ��  $G $H$I$H i   � �$J$K$J I      ��$L���� B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow$L $M��$M o      ���� 0 	buttonref 	buttonRef��  ��  $K k     
$N$N $O$P$O l     ��$Q$R��  $Q   version 1.0   $R �$S$S    v e r s i o n   1 . 0$P $T$U$T l     ��������  ��  ��  $U $V$W$V w     $X$Y$X n   $Z$[$Z I    ��$\���� *0 clickobjectbycoords clickObjectByCoords$\ $]��$] o    ���� 0 	buttonref 	buttonRef��  ��  $[  f    $Y�                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  $W $^��$^ l  	 	��������  ��  ��  ��  $I $_$`$_ l     ��������  ��  ��  $` $a$b$a l     ��������  ��  ��  $b $c$d$c i   � �$e$f$e I      �������� 40 fmgui_pastefromclipboard fmGUI_PasteFromClipboard��  ��  $f k     �$g$g $h$i$h l     ��$j$k��  $j    version 1.0, Erik Shagdar   $k �$l$l 4   v e r s i o n   1 . 0 ,   E r i k   S h a g d a r$i $m$n$m l     ��������  ��  ��  $n $o$p$o r     $q$r$q m     ��
�� boovfals$r o      ���� (0 pasemenuitemexists paseMenuItemExists$p $s$t$s l   ��������  ��  ��  $t $u$v$u O    ~$w$x$w O    }$y$z$y k    |${${ $|$}$| l   ��������  ��  ��  $} $~$$~ n   $�$�$� I    �������� (0 fmgui_appfrontmost fmGUI_AppFrontMost��  ��  $�  f    $ $�$�$� l   ��������  ��  ��  $� $�$�$� r    -$�$�$� 6   +$�$�$� n    "$�$�$� 4   "��$�
�� 
menI$� m     !���� $� n    $�$�$� 4    ��$�
�� 
menE$� m    ���� $� n    $�$�$� 4    ��$�
�� 
mbri$� m    $�$� �$�$�  E d i t$� 4    ��$�
�� 
mbar$� m    ���� $� =  # *$�$�$� 1   $ &��
�� 
pnam$� m   ' )$�$� �$�$� 
 P a s t e$� o      �� 0 pastemenuitem pasteMenuItem$� $�$�$� Q   . H$�$�$�$� I  1 6�$��
� .prcsclicnull��� ��� uiel$� o   1 2�� 0 pastemenuitem pasteMenuItem�  $� R      �$�$�
� .ascrerr ****      � ****$� o      �� 0 errmsg errMsg$� �$��
� 
errn$� o      �� 0 errnum errNum�  $� R   > H�$�$�
� .ascrerr ****      � ****$� b   B G$�$�$� m   B E$�$� �$�$� R U n a b l e   t o   c l i c k   ' S e l e c t   A l l '   m e n u   i t e m   -  $� o   E F�� 0 errmsg errMsg$� �$��
� 
errn$� o   @ A�� 0 errnum errNum�  $� $�$�$� l  I I����  �  �  $� $�$�$� l  I I����  �  �  $� $�$�$� l  I I�$�$��  $� G A waiting until the paste item exists suggests the paste completed   $� �$�$� �   w a i t i n g   u n t i l   t h e   p a s t e   i t e m   e x i s t s   s u g g e s t s   t h e   p a s t e   c o m p l e t e d$� $��$� U   I |$�$�$� k   R w$�$� $�$�$� Q   R o$�$��$� Z   U f$�$���$� I  U Z�$��
� .coredoexnull���     ****$� o   U V�� 0 pastemenuitem pasteMenuItem�  $� k   ] b$�$� $�$�$� r   ] `$�$�$� m   ] ^�
� boovtrue$� o      �� (0 pasemenuitemexists paseMenuItemExists$� $��$�  S   a b�  �  �  $� R      ���
� .ascrerr ****      � ****�  �  �  $� $��$� I  p w�$��
� .sysodelanull��� ��� nmbr$� m   p s$�$� ?�      �  �  $� m   L O�� �  $z 4    �$�
� 
pcap$� m   
 $�$� �$�$� , F i l e M a k e r   P r o   A d v a n c e d$x m    $�$��                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  $v $�$�$� l   ����  �  �  $� $�$�$� L    �$�$� o    ��� (0 pasemenuitemexists paseMenuItemExists$� $��$� l  � �����  �  �  �  $d $�$�$� l     ����  �  �  $� $�$�$� l     ����  �  �  $� $�$�$� i   � �$�$�$� I      �$��� :0 fmgui_popup_selectbycommand fmGUI_Popup_SelectByCommand$� $��$� o      �� 	0 prefs  �  �  $� k    $�$� $�$�$� l     �$�$��  $�   version 1.0   $� �$�$�    v e r s i o n   1 . 0$� $�$�$� l     ����  �  �  $� $�$�$� r     $�$�$� K     
$�$� �$�$�� 0 popupobject popupObject$� m    �
� 
null$� �$�$�� 0 popupchoice popupChoice$� m    �
� 
null$� �~$�$��~ 0 selectcommand selectCommand$� m    $�$� �$�$�  i s$� �}$��|�} &0 clickifalreadyset clickIfAlreadySet$� m    �{
�{ boovfals�|  $� o      �z�z 0 defaultprefs defaultPrefs$� $�$�$� l   �y�x�w�y  �x  �w  $� $�$�$� Z    ,$�$��v�u$� =   $�$�$� n    $�$�$� m    �t
�t 
pcls$� o    �s�s 	0 prefs  $� n    $�$�$� m    �r
�r 
pcls$� J    $�$� $�$�$� m    % %  �%%  a$� %�q% m    �p�p �q  $� r    (%%% K    &%% �o%%�o 0 popupobject popupObject% n    %%	% 4    �n%

�n 
cobj%
 m    �m�m %	 o    �l�l 	0 prefs  % �k%�j�k 0 popupchoice popupChoice% n     $%%% 4   ! $�i%
�i 
cobj% m   " #�h�h % o     !�g�g 	0 prefs  �j  % o      �f�f 	0 prefs  �v  �u  $� %%% l  - -�e�d�c�e  �d  �c  % %%% l  - -�b�a�`�b  �a  �`  % %%% r   - 2%%% b   - 0%%% o   - .�_�_ 	0 prefs  % o   . /�^�^ 0 defaultprefs defaultPrefs% o      �]�] 	0 prefs  % %%% l  3 3�\�[�Z�\  �[  �Z  % %%% r   3 8%%% n   3 6%% % o   4 6�Y�Y 0 popupobject popupObject%  o   3 4�X�X 	0 prefs  % o      �W�W 0 popupobject popupObject% %!%"%! r   9 >%#%$%# n   9 <%%%&%% o   : <�V�V 0 selectcommand selectCommand%& o   9 :�U�U 	0 prefs  %$ o      �T�T 0 selectcommand selectCommand%" %'%(%' r   ? D%)%*%) n   ? B%+%,%+ o   @ B�S�S 0 popupchoice popupChoice%, o   ? @�R�R 	0 prefs  %* o      �Q�Q 0 popupchoice popupChoice%( %-%.%- l  E J%/%0%1%/ r   E J%2%3%2 n   E H%4%5%4 o   F H�P�P &0 clickifalreadyset clickIfAlreadySet%5 o   E F�O�O 	0 prefs  %3 o      �N�N &0 clickifalreadyset clickIfAlreadySet%0 6 0 re-select even if popup is the requested value.   %1 �%6%6 `   r e - s e l e c t   e v e n   i f   p o p u p   i s   t h e   r e q u e s t e d   v a l u e .%. %7%8%7 l  K K�M�L�K�M  �L  �K  %8 %9%:%9 l  K K�J�I�H�J  �I  �H  %: %;�G%; w   K%<%=%< Q   M%>%?%@%> Z   P�%A%B�F%C%A H   P V%D%D l  P U%E�E�D%E I  P U�C%F�B
�C .coredoexnull���     ****%F o   P Q�A�A 0 popupobject popupObject�B  �E  �D  %B k   Y a%G%G %H%I%H l  Y Y�@%J%K�@  %J * $ does NOT exist, so error with that:   %K �%L%L H   d o e s   N O T   e x i s t ,   s o   e r r o r   w i t h   t h a t :%I %M%N%M R   Y _�?%O%P
�? .ascrerr ****      � ****%O m   ] ^%Q%Q �%R%R R T h e   s p e c i f i e d   p o p u p O b j e c t   d o e s   n o t   e x i s t .%P �>%S�=
�> 
errn%S m   [ \�<�< �=  %N %T�;%T l  ` `�:�9�8�:  �9  �8  �;  �F  %C k   d�%U%U %V%W%V l  d d�7%X%Y�7  %X !  the popupObject DOES exist   %Y �%Z%Z 6   t h e   p o p u p O b j e c t   D O E S   e x i s t%W %[%\%[ r   d g%]%^%] m   d e�6
�6 boovfals%^ o      �5�5 0 mustpick mustPick%\ %_%`%_ Z   h$%a%b�4%c%a H   h r%d%d l  h q%e�3�2%e I  h q�1%f�0
�1 .coredoexnull���     ****%f n   h m%g%h%g 1   i m�/
�/ 
valL%h o   h i�.�. 0 popupobject popupObject�0  �3  �2  %b k   u z%i%i %j%k%j l  u u�-%l%m�-  %l i c first check if the value of the popupObject exists - if it doesn't, then we can't test it directly   %m �%n%n �   f i r s t   c h e c k   i f   t h e   v a l u e   o f   t h e   p o p u p O b j e c t   e x i s t s   -   i f   i t   d o e s n ' t ,   t h e n   w e   c a n ' t   t e s t   i t   d i r e c t l y%k %o%p%o r   u x%q%r%q m   u v�,
�, boovtrue%r o      �+�+ 0 mustpick mustPick%p %s�*%s l  y y�)�(�'�)  �(  �'  �*  �4  %c l  }$%t%u%v%t k   }$%w%w %x%y%x l  } }�&%z%{�&  %z K E note that our selection might be one of several 'matching' commands:   %{ �%|%| �   n o t e   t h a t   o u r   s e l e c t i o n   m i g h t   b e   o n e   o f   s e v e r a l   ' m a t c h i n g '   c o m m a n d s :%y %}�%%} Z   }$%~%%��$%~ o   } ~�#�# &0 clickifalreadyset clickIfAlreadySet% k   � �%�%� %�%�%� l  � ��"%�%��"  %� > 8 RE-SELECT even if popup already is the requested value.   %� �%�%� p   R E - S E L E C T   e v e n   i f   p o p u p   a l r e a d y   i s   t h e   r e q u e s t e d   v a l u e .%� %�%�%� r   � �%�%�%� m   � ��!
�! boovtrue%� o      � �  0 mustpick mustPick%� %��%� l  � �����  �  �  �  %� %�%�%� =  � �%�%�%� o   � ��� 0 selectcommand selectCommand%� m   � �%�%� �%�%�  i s%� %�%�%� k   � �%�%� %�%�%� Z   � �%�%���%� >  � �%�%�%� n   � �%�%�%� 1   � ��
� 
valL%� o   � ��� 0 popupobject popupObject%� o   � ��� 0 popupchoice popupChoice%� r   � �%�%�%� m   � ��
� boovtrue%� o      �� 0 mustpick mustPick�  �  %� %��%� l  � �����  �  �  �  %� %�%�%� =  � �%�%�%� o   � ��� 0 selectcommand selectCommand%� m   � �%�%� �%�%�  c o n t a i n s%� %�%�%� k   � �%�%� %�%�%� Z   � �%�%���%� H   � �%�%� E   � �%�%�%� n   � �%�%�%� 1   � ��
� 
valL%� o   � ��� 0 popupobject popupObject%� o   � ��
�
 0 popupchoice popupChoice%� r   � �%�%�%� m   � ��	
�	 boovtrue%� o      �� 0 mustpick mustPick�  �  %� %��%� l  � �����  �  �  �  %� %�%�%� =  � �%�%�%� o   � ��� 0 selectcommand selectCommand%� m   � �%�%� �%�%�  s t a r t s W i t h%� %�%�%� k   � �%�%� %�%�%� Z   � �%�%���%� H   � �%�%� C   � �%�%�%� n   � �%�%�%� 1   � �� 
�  
valL%� o   � ����� 0 popupobject popupObject%� o   � ����� 0 popupchoice popupChoice%� r   � �%�%�%� m   � ���
�� boovtrue%� o      ���� 0 mustpick mustPick�  �  %� %���%� l  � ���������  ��  ��  ��  %� %�%�%� =  � �%�%�%� o   � ����� 0 selectcommand selectCommand%� m   � �%�%� �%�%�  b e g i n s W i t h%� %�%�%� k   �%�%� %�%�%� Z   � �%�%�����%� H   � �%�%� C   � �%�%�%� n   � �%�%�%� 1   � ���
�� 
valL%� o   � ����� 0 popupobject popupObject%� o   � ����� 0 popupchoice popupChoice%� r   � �%�%�%� m   � ���
�� boovtrue%� o      ���� 0 mustpick mustPick��  ��  %� %���%� l   ��������  ��  ��  ��  %� %�%�%� = 	%�%�%� o  ���� 0 selectcommand selectCommand%� m  %�%� �%�%�  e n d s W i t h%� %���%� k   %�%� %�%�%� Z  %�%�����%� H  %�%� D  %�%�%� n  %�%�%� 1  ��
�� 
valL%� o  ���� 0 popupobject popupObject%� o  ���� 0 popupchoice popupChoice%� r  %�%�%� m  ��
�� boovtrue%� o      ���� 0 mustpick mustPick��  ��  %� %���%� l ��������  ��  ��  ��  ��  �$  �%  %u C = we can see the value without 'picking' the menu, so test it:   %v �%�%� z   w e   c a n   s e e   t h e   v a l u e   w i t h o u t   ' p i c k i n g '   t h e   m e n u ,   s o   t e s t   i t :%` %�%�%� l %%��������  ��  ��  %� %�%�%� Z  %�%�%�����%� o  %&���� 0 mustpick mustPick%� Z  )�%�%�����%� > ),%�%�%� o  )*���� 0 popupchoice popupChoice%� m  *+��
�� 
null%� k  /�%�%� %�& %� I /4��&��
�� .prcsclicnull��� ��� uiel& o  /0���� 0 popupobject popupObject��  &  &&& Z  5�&&&��& = 5:&&& o  56���� 0 selectcommand selectCommand& m  69&	&	 �&
&
  i s& I =Y��&��
�� .prcsclicnull��� ��� uiel& l =U&����& 6 =U&&& n  =H&&& 4 CH��&
�� 
menI& m  FG���� & n  =C&&& 4  >C��&
�� 
menE& m  AB���� & o  =>���� 0 popupobject popupObject& = KT&&& 1  LP��
�� 
pnam& o  QS���� 0 popupchoice popupChoice��  ��  ��  & &&& = \a&&& o  \]���� 0 selectcommand selectCommand& m  ]`&& �&&  c o n t a i n s& &&& k  d�&& & &!&  I d���&"��
�� .prcsclicnull��� ��� uiel&" l d|&#����&# 6 d|&$&%&$ n  do&&&'&& 4 jo�&(
� 
menI&( m  mn�� &' n  dj&)&*&) 4  ej�&+
� 
menE&+ m  hi�� &* o  de�� 0 popupobject popupObject&% E  r{&,&-&, 1  sw�
� 
pnam&- o  xz�� 0 popupchoice popupChoice��  ��  ��  &! &.�&. l ������  �  �  �  & &/&0&/ = ��&1&2&1 o  ���� 0 selectcommand selectCommand&2 m  ��&3&3 �&4&4  b e g i n s W i t h&0 &5&6&5 k  ��&7&7 &8&9&8 I ���&:�
� .prcsclicnull��� ��� uiel&: l ��&;��&; 6 ��&<&=&< n  ��&>&?&> 4 ���&@
� 
menI&@ m  ���� &? n  ��&A&B&A 4  ���&C
� 
menE&C m  ���� &B o  ���� 0 popupobject popupObject&= C  ��&D&E&D 1  ���
� 
pnam&E o  ���� 0 popupchoice popupChoice�  �  �  &9 &F�&F l ������  �  �  �  &6 &G&H&G = ��&I&J&I o  ���� 0 selectcommand selectCommand&J m  ��&K&K �&L&L  e n d s W i t h&H &M�&M k  ��&N&N &O&P&O I ���&Q�
� .prcsclicnull��� ��� uiel&Q l ��&R��&R 6 ��&S&T&S n  ��&U&V&U 4 ���&W
� 
menI&W m  ���� &V n  ��&X&Y&X 4  ���&Z
� 
menE&Z m  ���� &Y o  ���� 0 popupobject popupObject&T D  ��&[&\&[ 1  ���
� 
pnam&\ o  ���� 0 popupchoice popupChoice�  �  �  &P &]�&] l ������  �  �  �  �  ��  & &^�&^ l ������  �  �  �  ��  ��  ��  ��  %� &_&`&_ l ������  �  �  &` &a&b&a L  ��&c&c m  ���
� boovtrue&b &d�&d l ������  �  �  �  %? R      �&e&f
� .ascrerr ****      � ****&e o      �� 0 errmsg errMsg&f �&g�
� 
errn&g o      �� 0 errnum errNum�  %@ R  ��&h&i
� .ascrerr ****      � ****&h b  �&j&k&j b  �&l&m&l b  ��&n&o&n b  ��&p&q&p b  ��&r&s&r m  ��&t&t �&u&u N C o u l d n ' t   s e l e c t   m e n u   i t e m   w h o s e   v a l u e   _&s o  ���� 0 selectcommand selectCommand&q m  ��&v&v �&w&w  _   '&o o  ���� 0 popupchoice popupChoice&m m  �&x&x �&y&y  '   i n   p o p u p   -  &k o  �� 0 errmsg errMsg&i �~&z�}
�~ 
errn&z o  ���|�| 0 errnum errNum�}  %=�                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  �G  $� &{&|&{ l     �{�z�y�{  �z  �y  &| &}&~&} l     �x�w�v�x  �w  �v  &~ &&�& i   � �&�&�&� I      �u&��t�u  0 fmgui_popupset fmGUI_PopupSet&� &�&�&� o      �s�s 0 popupobject popupObject&� &��r&� o      �q�q 0 popupchoice popupChoice�r  �t  &� k     ,&�&� &�&�&� l     �p&�&��p  &�   version 1.0   &� �&�&�    v e r s i o n   1 . 0&� &�&�&� l     �o�n�m�o  �n  �m  &� &��l&� w     ,&�&�&� Q    ,&�&�&�&� k    &�&� &�&�&� I    �k&��j�k :0 fmgui_popup_selectbycommand fmGUI_Popup_SelectByCommand&� &��i&� K    &�&� �h&�&��h 0 popupobject popupObject&� o    �g�g 0 popupobject popupObject&� �f&�&��f 0 popupchoice popupChoice&� o   	 
�e�e 0 popupchoice popupChoice&� �d&��c�d 0 selectcommand selectCommand&� m    &�&� �&�&�  c o n t a i n s�c  �i  �j  &� &�&�&� L    &�&� 1    �b
�b 
rslt&� &��a&� l   �`�_�^�`  �_  �^  �a  &� R      �]&�&�
�] .ascrerr ****      � ****&� o      �\�\ 0 errmsg errMsg&� �[&��Z
�[ 
errn&� o      �Y�Y 0 errnum errNum�Z  &� R     ,�X&�&�
�X .ascrerr ****      � ****&� b   $ +&�&�&� b   $ )&�&�&� b   $ '&�&�&� m   $ %&�&� �&�&� " C o u l d n ' t   s e l e c t   '&� o   % &�W�W 0 popupchoice popupChoice&� m   ' (&�&� �&�&�  '   i n   p o p u p   -  &� o   ) *�V�V 0 errmsg errMsg&� �U&��T
�U 
errn&� o   " #�S�S 0 errnum errNum�T  &��                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  �l  &� &�&�&� l     �R�Q�P�R  �Q  �P  &� &�&�&� l     �O�N�M�O  �N  �M  &� &�&�&� i   � �&�&�&� I      �L�K�J�L 00 fmgui_selectallandcopy fmGUI_SelectAllAndCopy�K  �J  &� k     �&�&� &�&�&� l     �I&�&��I  &�   version 1.0   &� �&�&�    v e r s i o n   1 . 0&� &�&�&� l     �H�G�F�H  �G  �F  &� &�&�&� I    �E&��D
�E .JonspClpnull���     ****&� m     &�&� �&�&�  �D  &� &�&�&� r    	&�&�&� m    �C
�C boovfals&� o      �B�B $0 clipboardchanged clipboardChanged&� &�&�&� l  
 
�A�@�?�A  �@  �?  &� &�&�&� O   
 �&�&�&� O    �&�&�&� k    �&�&� &�&�&� n   &�&�&� I    �>�=�<�> (0 fmgui_appfrontmost fmGUI_AppFrontMost�=  �<  &�  f    &� &�&�&� l   �;�:�9�;  �:  �9  &� &�&�&� Q    L&�&�&�&� I   8�8&��7
�8 .prcsclicnull��� ��� uiel&� l   4&��6�5&� 6   4&�&�&� n    +&�&�&� 4  ( +�4&�
�4 
menI&� m   ) *�3�3 &� n    (&�&�&� 4   % (�2&�
�2 
menE&� m   & '�1�1 &� n    %&�&�&� 4   " %�0&�
�0 
mbri&� m   # $&�&� �&�&�  E d i t&� 4    "�/&�
�/ 
mbar&� m     !�.�. &� =  , 3&�&�&� 1   - /�-
�- 
pnam&� m   0 2&�&� �&�&�  S e l e c t   A l l�6  �5  �7  &� R      �,&�&�
�, .ascrerr ****      � ****&� o      �+�+ 0 errmsg errMsg&� �*&��)
�* 
errn&� o      �(�( 0 errnum errNum�)  &� R   @ L�'&�&�
�' .ascrerr ****      � ****&� b   F K&�&�&� m   F I&�&� �&�&� R U n a b l e   t o   c l i c k   ' S e l e c t   A l l '   m e n u   i t e m   -  &� o   I J�&�& 0 errmsg errMsg&� �%' �$
�% 
errn'  o   D E�#�# 0 errnum errNum�$  &� ''' l  M M�"�!� �"  �!  �   ' ''' Q   M y'''' I  P e�'�
� .prcsclicnull��� ��� uiel' l  P a'	��'	 n   P a'
''
 4   \ a�'
� 
menI' m   ] `'' �''  C o p y' n   P \''' 4   Y \�'
� 
menE' m   Z [�� ' n   P Y''' 4   T Y�'
� 
mbri' m   U X'' �''  E d i t' 4   P T�'
� 
mbar' m   R S�� �  �  �  ' R      �''
� .ascrerr ****      � ****' o      �� 0 errmsg errMsg' �'�
� 
errn' o      �� 0 errnum errNum�  ' R   m y�''
� .ascrerr ****      � ****' b   s x''' m   s v'' �' '  F U n a b l e   t o   c l i c k   ' C o p y '   m e n u   i t e m   -  ' o   v w�� 0 errmsg errMsg' �'!�
� 
errn'! o   q r�� 0 errnum errNum�  ' '"'#'" l  z z��
�	�  �
  �	  '# '$'%'$ l  z z����  �  �  '% '&'''& U   z �'(')'( k   � �'*'* '+','+ Q   � �'-'.'/'- k   � �'0'0 '1'2'1 l  � ��'3'4�  '3 � � We set the clipboard to an empty string. Once utf8 is no longer in it (or isn't empty), we must have picked up the objects copied above.   '4 �'5'5   W e   s e t   t h e   c l i p b o a r d   t o   a n   e m p t y   s t r i n g .   O n c e   u t f 8   i s   n o   l o n g e r   i n   i t   ( o r   i s n ' t   e m p t y ) ,   w e   m u s t   h a v e   p i c k e d   u p   t h e   o b j e c t s   c o p i e d   a b o v e .'2 '6'7'6 e   � �'8'8 I  � ���'9
� .JonsgClp****    ��� null�  '9 �':�
� 
rtyp': m   � �� 
�  
utf8�  '7 ';��'; Z   � �'<'=����'< ?  � �'>'?'> n   � �'@'A'@ 1   � ���
�� 
leng'A 1   � ���
�� 
rslt'? m   � �����  '= k   � �'B'B 'C'D'C r   � �'E'F'E m   � ���
�� boovtrue'F o      ���� $0 clipboardchanged clipboardChanged'D 'G��'G  S   � ���  ��  ��  ��  '. R      ������
�� .ascrerr ****      � ****��  ��  '/ k   � �'H'H 'I'J'I r   � �'K'L'K m   � ���
�� boovtrue'L o      ���� $0 clipboardchanged clipboardChanged'J 'M��'M  S   � ���  ', 'N��'N I  � ���'O��
�� .sysodelanull��� ��� nmbr'O m   � ����� ��  ��  ') m   } ����� 
'' 'P��'P l  � ���������  ��  ��  ��  &� 4    ��'Q
�� 
pcap'Q m    'R'R �'S'S , F i l e M a k e r   P r o   A d v a n c e d&� m   
 'T'T�                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  &� 'U'V'U l  � ���������  ��  ��  'V 'W'X'W L   � �'Y'Y o   � ����� $0 clipboardchanged clipboardChanged'X 'Z��'Z l  � ���������  ��  ��  ��  &� '['\'[ l     ��������  ��  ��  '\ ']'^'] l     ��������  ��  ��  '^ '_'`'_ i   � �'a'b'a I      ��'c���� (0 fmgui_textfieldset fmGUI_TextFieldSet'c 'd'e'd o      ���� "0 textfieldobject textfieldObject'e 'f��'f o      ����  0 textfieldvalue textfieldValue��  ��  'b k     @'g'g 'h'i'h l     ��'j'k��  'j   version 1.0   'k �'l'l    v e r s i o n   1 . 0'i 'm'n'm l     ��������  ��  ��  'n 'o��'o w     @'p'q'p Q    @'r's't'r k    ,'u'u 'v'w'v Z    ''x'y����'x >   'z'{'z o    ����  0 textfieldvalue textfieldValue'{ m    ��
�� 
null'y Z    #'|'}��'~'| >   ''�' n    '�'�'� 1    ��
�� 
valL'� o    ���� "0 textfieldobject textfieldObject'� l   '�����'� o    ����  0 textfieldvalue textfieldValue��  ��  '} k    '�'� '�'�'� r    '�'�'� m    ��
�� boovtrue'� n      '�'�'� 1    ��
�� 
focu'� o    ���� "0 textfieldobject textfieldObject'� '���'� r    '�'�'� o    ����  0 textfieldvalue textfieldValue'� n      '�'�'� 1    �
� 
valL'� o    �� "0 textfieldobject textfieldObject��  ��  '~ l  ! #'�'�'�'� L   ! #'�'� m   ! "�
� boovfals'�   did not need to change.   '� �'�'� 0   d i d   n o t   n e e d   t o   c h a n g e .��  ��  'w '�'�'� L   ( *'�'� m   ( )�
� boovtrue'� '��'� l  + +����  �  �  �  's R      �'�'�
� .ascrerr ****      � ****'� o      �� 0 errmsg errMsg'� �'��
� 
errn'� o      �� 0 errnum errNum�  't R   4 @�'�'�
� .ascrerr ****      � ****'� b   8 ?'�'�'� b   8 ='�'�'� b   8 ;'�'�'� m   8 9'�'� �'�'� " C o u l d n ' t   s e l e c t   ''� o   9 :��  0 textfieldvalue textfieldValue'� m   ; <'�'� �'�'� & '   f o r   t e x t   f i e l d   -  '� o   = >�� 0 errmsg errMsg'� �'��
� 
errn'� o   6 7�� 0 errnum errNum�  'q�                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  ��  '` '�'�'� l     ����  �  �  '� '�'�'� l     ����  �  �  '� '�'�'� i   � �'�'�'� I      ���� (0 fmgui_appfrontmost fmGUI_AppFrontMost�  �  '� k     E'�'� '�'�'� l     �'�'��  '�   version 1.1   '� �'�'�    v e r s i o n   1 . 1'� '�'�'� l     ����  �  �  '� '��'� O     E'�'�'� O    D'�'�'� Z    C'�'���'� >   '�'�'� 1    �
� 
pisf'� m    �
� boovtrue'� k    ?'�'� '�'�'� r    '�'�'� m    �
� boovtrue'� 1    �
� 
pisf'� '�'�'� I   �'��
� .sysodelanull��� ��� nmbr'� m    �� �  '� '�'�'� l   ����  �  �  '� '�'�'� l   �'�'��  '� ) #close FMEmpower window if it's open   '� �'�'� F c l o s e   F M E m p o w e r   w i n d o w   i f   i t ' s   o p e n'� '��'� Z    ?'�'���'� =   ''�'�'� n    %'�'�'� 1   # %�
� 
pnam'� 4    #�'�
� 
cwin'� m   ! "�� '� m   % &'�'� �'�'� $ 2 e m p o w e r F M   T o o l b o x'� k   * ;'�'� '�'�'� I  * 5�'��
� .prcsclicnull��� ��� uiel'� n   * 1'�'�'� 4   . 1�'�
� 
butT'� m   / 0�� '� 4   * .�'�
� 
cwin'� m   , -�� �  '� '��'� I  6 ;�'��
� .sysodelanull��� ��� nmbr'� m   6 7�� �  �  �  �  �  �  �  '� 4    �'�
� 
pcap'� m    '�'� �'�'� , F i l e M a k e r   P r o   A d v a n c e d'� m     '�'��                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  �  '� '�'�'� l     ���~�  �  �~  '� '�'�'� l     �}�|�{�}  �|  �{  '� '�'�'� i   � �'�'�'� I      �z�y�x�z 00 fmgui_dataviewer_close fmGUI_DataViewer_Close�y  �x  '� k     3'�'� '�'�'� l     �w'�'��w  '�   version 1.0   '� �'�'�    v e r s i o n   1 . 0'� '�'�'� l     �v�u�t�v  �u  �t  '� '��s'� O     3'�'�'� O    2'�'�'� k    1'�'� '�( '� n   ((( I    �r�q�p�r (0 fmgui_appfrontmost fmGUI_AppFrontMost�q  �p  (  f    (  (�o( Q    1((�n( I   (�m(�l
�m .prcsclicnull��� ��� uiel( n    $((( 4   ! $�k(	
�k 
butT(	 m   " #�j�j ( l   !(
�i�h(
 6   !((( 4   �g(
�g 
cwin( m    �f�f ( =    ((( 1    �e
�e 
pnam( m    (( �((  D a t a   V i e w e r�i  �h  �l  ( R      �d�c�b
�d .ascrerr ****      � ****�c  �b  �n  �o  '� 4    �a(
�a 
pcap( m    (( �(( , F i l e M a k e r   P r o   A d v a n c e d'� m     ((�                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  �s  '� ((( l     �`�_�^�`  �_  �^  ( ((( l     �]�\�[�]  �\  �[  ( ((( i   � �((( I      �Z�Y�X�Z .0 fmgui_inspector_close fmGUI_Inspector_Close�Y  �X  ( k     r(( (( ( l     �W(!("�W  (!   version 1.0   (" �(#(#    v e r s i o n   1 . 0(  ($(%($ l     �V�U�T�V  �U  �T  (% (&�S(& O     r('(((' O    q()(*() k    p(+(+ (,(-(, n   (.(/(. I    �R�Q�P�R (0 fmgui_appfrontmost fmGUI_AppFrontMost�Q  �P  (/  f    (- (0(1(0 l   �O(2(3�O  (2 I C try the click twice in case the first only brings window to front.   (3 �(4(4 �   t r y   t h e   c l i c k   t w i c e   i n   c a s e   t h e   f i r s t   o n l y   b r i n g s   w i n d o w   t o   f r o n t .(1 (5(6(5 Q    .(7(8�N(7 r    %(9(:(9 m    �M�M (: n      (;(<(; 1   " $�L
�L 
pidx(< l   "(=�K�J(= 6   "(>(?(> 4   �I(@
�I 
cwin(@ m    �H�H (? =   !(A(B(A 1    �G
�G 
pnam(B m     (C(C �(D(D  I n s p e c t o r�K  �J  (8 R      �F�E�D
�F .ascrerr ****      � ****�E  �D  �N  (6 (E(F(E Q   / O(G(H�C(G I  2 F�B(I�A
�B .prcsclicnull��� ��� uiel(I n   2 B(J(K(J 4   ? B�@(L
�@ 
butT(L m   @ A�?�? (K l  2 ?(M�>�=(M 6  2 ?(N(O(N 4  2 6�<(P
�< 
cwin(P m   4 5�;�; (O =  7 >(Q(R(Q 1   8 :�:
�: 
pnam(R m   ; =(S(S �(T(T  I n s p e c t o r�>  �=  �A  (H R      �9�8�7
�9 .ascrerr ****      � ****�8  �7  �C  (F (U�6(U Q   P p(V(W�5(V I  S g�4(X�3
�4 .prcsclicnull��� ��� uiel(X n   S c(Y(Z(Y 4   ` c�2([
�2 
butT([ m   a b�1�1 (Z l  S `(\�0�/(\ 6  S `(](^(] 4  S W�.(_
�. 
cwin(_ m   U V�-�- (^ =  X _(`(a(` 1   Y [�,
�, 
pnam(a m   \ ^(b(b �(c(c  I n s p e c t o r�0  �/  �3  (W R      �+�*�)
�+ .ascrerr ****      � ****�*  �)  �5  �6  (* 4    �((d
�( 
pcap(d m    (e(e �(f(f , F i l e M a k e r   P r o   A d v a n c e d(( m     (g(g�                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  �S  ( (h(i(h l     �'�&�%�'  �&  �%  (i (j(k(j l     �$�#�"�$  �#  �"  (k (l(m(l i   � �(n(o(n I      �!� ��! 00 fmgui_inspector_ensure fmGUI_Inspector_Ensure�   �  (o k     h(p(p (q(r(q l     �(s(t�  (s   version 1.1   (t �(u(u    v e r s i o n   1 . 1(r (v(w(v l     ����  �  �  (w (x(y(x Q     f(z({(|(z k    R(}(} (~((~ I    ���� 20 fmgui_modeensure_layout fmGUI_ModeEnsure_Layout�  �  ( (��(� O   	 R(�(�(� O    Q(�(�(� k    P(�(� (�(�(� l   ����  �  �  (� (�(�(� n   (�(�(� I    ���� (0 fmgui_appfrontmost fmGUI_AppFrontMost�  �  (�  f    (� (�(�(� l   ����  �  �  (� (�(�(� Z    M(�(���(� H    ,(�(� l   +(���
(� I   +�	(��
�	 .coredoexnull���     ****(� l   '(���(� 6   '(�(�(� 4   �(�
� 
cwin(� m    �� (� E    &(�(�(� 1     "�
� 
pnam(� m   # %(�(� �(�(�  I n s p e c t o r�  �  �  �  �
  (� I  / I�(��
� .prcsclicnull��� ��� uiel(� l  / E(�� ��(� 6  / E(�(�(� n   / <(�(�(� 4  9 <��(�
�� 
menI(� m   : ;���� (� n   / 9(�(�(� 4   6 9��(�
�� 
menE(� m   7 8���� (� n   / 6(�(�(� 4   3 6��(�
�� 
mbri(� m   4 5(�(� �(�(�  V i e w(� 4   / 3��(�
�� 
mbar(� m   1 2���� (� =  = D(�(�(� 1   > @��
�� 
pnam(� m   A C(�(� �(�(�  I n s p e c t o r�   ��  �  �  �  (� (���(� L   N P(�(� m   N O��
�� boovtrue��  (� 4    ��(�
�� 
pcap(� m    (�(� �(�(� , F i l e M a k e r   P r o   A d v a n c e d(� m   	 
(�(��                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  �  ({ R      ��(�(�
�� .ascrerr ****      � ****(� o      ���� 0 errmsg errMsg(� ��(���
�� 
errn(� o      ���� 0 errnum errNum��  (| R   Z f��(�(�
�� .ascrerr ****      � ****(� b   ` e(�(�(� m   ` c(�(� �(�(� 4 C o u l d n ' t   o p e n   I n s p e c t o r   -  (� o   c d���� 0 errmsg errMsg(� ��(���
�� 
errn(� o   ^ _���� 0 errnum errNum��  (y (���(� l  g g��������  ��  ��  ��  (m (�(�(� l     ��������  ��  ��  (� (�(�(� l     ��������  ��  ��  (� (�(�(� i   � �(�(�(� I      �������� 20 fmgui_modeensure_browse fmGUI_ModeEnsure_Browse��  ��  (� k     (�(� (�(�(� l     ��(�(���  (�   version 1.0   (� �(�(�    v e r s i o n   1 . 0(� (�(�(� l     ��������  ��  ��  (� (�(�(� Q     (�(�(�(� k    (�(� (�(�(� I    	��(����� $0 fmgui_modeselect fmGUI_ModeSelect(� (���(� m    (�(� �(�(�  B r o w s e��  ��  (� (���(� l  
 
��������  ��  ��  ��  (� R      ��(�(�
�� .ascrerr ****      � ****(� o      ���� 0 errmsg errMsg(� ��(���
�� 
errn(� o      ���� 0 errnum errNum��  (� R    ��(�(�
�� .ascrerr ****      � ****(� b    (�(�(� m    (�(� �(�(� B C o u l d n ' t   e n s u r e   i n   B r o w s e   M o d e   -  (� o    ���� 0 errmsg errMsg(� ��(���
�� 
errn(� o    ���� 0 errnum errNum��  (� (�(�(� l   ��������  ��  ��  (� (���(� l   ��������  ��  ��  ��  (� (�(�(� l     ������  �  �  (� (�(�(� l     ����  �  �  (� (�(�(� i   � �(�(�(� I      ���� .0 fmgui_modeensure_find fmGUI_ModeEnsure_Find�  �  (� k     (�(� (�(�(� l     �(�(��  (�   version 1.0   (� �(�(�    v e r s i o n   1 . 0(� (�(�(� l     ����  �  �  (� (�(�(� Q     (�(�) (� k    )) ))) I    	�)�� $0 fmgui_modeselect fmGUI_ModeSelect) )�) m    )) �))  F i n d�  �  ) )�) l  
 
����  �  �  �  (� R      �)	)

� .ascrerr ****      � ****)	 o      �� 0 errmsg errMsg)
 �)�
� 
errn) o      �� 0 errnum errNum�  )  R    �))
� .ascrerr ****      � ****) b    ))) m    )) �)) B C o u l d n ' t   e n s u r e   i n   B r o w s e   M o d e   -  ) o    �� 0 errmsg errMsg) �)�
� 
errn) o    �� 0 errnum errNum�  (� ))) l   ����  �  �  ) )�) l   ����  �  �  �  (� ))) l     ����  �  �  ) ))) l     ����  �  �  ) ))) i   � �))) I      ���� 20 fmgui_modeensure_layout fmGUI_ModeEnsure_Layout�  �  ) k     )) )) ) l     �)!)"�  )!   version 1.0   )" �)#)#    v e r s i o n   1 . 0)  )$)%)$ l     ����  �  �  )% )&)')& Q     )()))*)( k    )+)+ ),)-), I    	�).�� $0 fmgui_modeselect fmGUI_ModeSelect). )/�)/ m    )0)0 �)1)1  L a y o u t�  �  )- )2�)2 l  
 
����  �  �  �  )) R      �)3)4
� .ascrerr ****      � ****)3 o      �� 0 errmsg errMsg)4 �)5�
� 
errn)5 o      �� 0 errnum errNum�  )* R    �)6)7
� .ascrerr ****      � ****)6 b    )8)9)8 m    ):): �);); B C o u l d n ' t   e n s u r e   i n   B r o w s e   M o d e   -  )9 o    �� 0 errmsg errMsg)7 �)<�
� 
errn)< o    �~�~ 0 errnum errNum�  )' )=�})= l   �|�{�z�|  �{  �z  �}  ) )>)?)> l     �y�x�w�y  �x  �w  )? )@)A)@ l     �v�u�t�v  �u  �t  )A )B)C)B i   � �)D)E)D I      �s)F�r�s $0 fmgui_modeselect fmGUI_ModeSelect)F )G�q)G o      �p�p 0 modetoselect modeToSelect�q  �r  )E k     �)H)H )I)J)I l     �o)K)L�o  )K   version 1.0   )L �)M)M    v e r s i o n   1 . 0)J )N)O)N l     �n�m�l�n  �m  �l  )O )P�k)P Q     �)Q)R)S)Q O    r)T)U)T O    q)V)W)V k    p)X)X )Y)Z)Y n   )[)\)[ I    �j�i�h�j (0 fmgui_appfrontmost fmGUI_AppFrontMost�i  �h  )\  f    )Z )])^)] n   )_)`)_ I    �g�f�e�g .0 fmgui_inspector_close fmGUI_Inspector_Close�f  �e  )`  f    )^ )a)b)a l   �d�c�b�d  �c  �b  )b )c)d)c l   �a)e)f�a  )e @ : Need to click in upper-left corner of area before pasting   )f �)g)g t   N e e d   t o   c l i c k   i n   u p p e r - l e f t   c o r n e r   o f   a r e a   b e f o r e   p a s t i n g)d )h)i)h r     )j)k)j 4    �`)l
�` 
cwin)l m    �_�_ )k o      �^�^ 0 
modewindow 
modeWindow)i )m)n)m r   ! 0)o)p)o 6  ! .)q)r)q n   ! %)s)t)s 4  " %�])u
�] 
sgrp)u m   # $�\�\ )t o   ! "�[�[ 0 
modewindow 
modeWindow)r D   & -)v)w)v 1   ' )�Z
�Z 
desc)w m   * ,)x)x �)y)y " M o d e   C o n t e n t   A r e a)p o      �Y�Y "0 modecontentarea modeContentArea)n )z){)z r   1 6)|)})| n   1 4)~))~ 1   2 4�X
�X 
desc) o   1 2�W�W "0 modecontentarea modeContentArea)} o      �V�V *0 modecontentareadesc modeContentAreaDesc){ )�)�)� r   7 =)�)�)� n   7 ;)�)�)� 4  8 ;�U)�
�U 
cwor)� m   9 :�T�T )� o   7 8�S�S *0 modecontentareadesc modeContentAreaDesc)� o      �R�R 0 currentmode currentMode)� )�)�)� l  > >�Q�P�O�Q  �P  �O  )� )�)�)� Z   > k)�)��N�M)� >  > A)�)�)� o   > ?�L�L 0 currentmode currentMode)� o   ? @�K�K 0 modetoselect modeToSelect)� k   D g)�)� )�)�)� I  D I�J)��I
�J .sysodelanull��� ��� nmbr)� m   D E)�)� ?�      �I  )� )�)�)� r   J O)�)�)� b   J M)�)�)� o   J K�H�H 0 modetoselect modeToSelect)� m   K L)�)� �)�)� 
   M o d e)� o      �G�G 0 menuitemname menuItemName)� )��F)� I  P g�E)��D
�E .prcsclicnull��� ��� uiel)� l  P c)��C�B)� n   P c)�)�)� 4   ^ c�A)�
�A 
menI)� o   a b�@�@ 0 menuitemname menuItemName)� n   P ^)�)�)� 4   Y ^�?)�
�? 
menE)� m   \ ]�>�> )� n   P Y)�)�)� 4   T Y�=)�
�= 
mbri)� m   U X)�)� �)�)�  V i e w)� 4   P T�<)�
�< 
mbar)� m   R S�;�; �C  �B  �D  �F  �N  �M  )� )�)�)� l  l l�:�9�8�:  �9  �8  )� )�)�)� L   l n)�)� m   l m�7
�7 boovtrue)� )��6)� l  o o�5�4�3�5  �4  �3  �6  )W 4    �2)�
�2 
pcap)� m   	 
)�)� �)�)� , F i l e M a k e r   P r o   A d v a n c e d)U m    )�)��                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  )R R      �1)�)�
�1 .ascrerr ****      � ****)� o      �0�0 0 errmsg errMsg)� �/)��.
�/ 
errn)� o      �-�- 0 errnum errNum�.  )S R   z ��,)�)�
�, .ascrerr ****      � ****)� b   � �)�)�)� b   � �)�)�)� b   � �)�)�)� m   � �)�)� �)�)� 2 C o u l d n ' t   s w i t c h   t o   m o d e   ')� o   � ��+�+ 0 modetoselect modeToSelect)� m   � �)�)� �)�)�  '   -  )� o   � ��*�* 0 errmsg errMsg)� �))��(
�) 
errn)� o   ~ �'�' 0 errnum errNum�(  �k  )C )�)�)� l     �&�%�$�&  �%  �$  )� )�)�)� l     �#�"�!�#  �"  �!  )� )�)�)� i   � �)�)�)� I      � )���  (0 fmgui_window_close fmGUI_Window_Close)� )��)� o      ��  0 somewindowname someWindowName�  �  )� k     )�)� )�)�)� l     �)�)��  )�   version 1.1   )� �)�)�    v e r s i o n   1 . 1)� )�)�)� l     ����  �  �  )� )�)�)� O     )�)�)� k    )�)� )�)�)� l   ����  �  �  )� )�)�)� I   �)��
� .coreclosnull���    obj )� 4    �)�
� 
cwin)� o   
 ��  0 somewindowname someWindowName�  )� )��)� l   ����  �  �  �  )� 5     �)��
� 
capp)� m    )�)� �)�)� > c o m . f i l e m a k e r . c l i e n t . a d v a n c e d 1 2
� kfrmID  )� )�)�)� l   ��
�	�  �
  �	  )� )�)�)� L    )�)� m    �
� boovtrue)� )��)� l   ����  �  �  �  )� )�)�)� l     ����  �  �  )� )�)�)� l     � �����   ��  ��  )� )�)�)� i   � �)�)�)� I      ��)����� "0 windowwaituntil windowWaitUntil)� )���)� o      ���� 	0 prefs  ��  ��  )� k    C)�)� )�)�)� l     ��)�)���  )�   version 1.2   )� �)�)�    v e r s i o n   1 . 2)� )�)�)� l     ��������  ��  ��  )� )�)�)� r     * **  K     ** ��**�� 0 
windowname 
windowName* m    ��
�� 
null* ��**��  0 windownametest windowNameTest* m    ** �**  c o n t a i n s* ��*	*
�� 0 whichwindow whichWindow*	 m    ** �**  a n y*
 ��**�� .0 waitcycledelayseconds waitCycleDelaySeconds* m    ** ?�      * ��*���� 0 waitcyclemax waitCycleMax* m   	 
���� ��  * o      ���� 0 defaultprefs defaultPrefs)� *** r    *** b    *** o    ���� 	0 prefs  * o    ���� 0 defaultprefs defaultPrefs* o      ���� 	0 prefs  * *** l   ��������  ��  ��  * *** r    *** n    *** o    ���� 0 
windowname 
windowName* o    ���� 	0 prefs  * o      ���� 0 
windowname 
windowName* ** * r     *!*"*! n    *#*$*# o    ����  0 windownametest windowNameTest*$ o    ���� 	0 prefs  *" o      ����  0 windownametest windowNameTest*  *%*&*% r   ! &*'*(*' n   ! $*)***) o   " $���� 0 whichwindow whichWindow** o   ! "���� 	0 prefs  *( o      ���� 0 whichwindow whichWindow*& *+*,*+ l  ' '��������  ��  ��  *, *-*.*- r   ' **/*0*/ m   ' (��
�� boovfals*0 o      ���� 0 checkresult checkResult*. *1*2*1 l  + +��������  ��  ��  *2 *3*4*3 U   +>*5*6*5 k   59*7*7 *8*9*8 O   5 �*:*;*: Z   9 *<*=*>*?*< =  9 <*@*A*@ o   9 :���� 0 whichwindow whichWindow*A m   : ;*B*B �*C*C  a n y*= r   ? K*D*E*D n   ? I*F*G*F 1   E I��
�� 
pnam*G n   ? E*H*I*H 2   C E��
�� 
cwin*I 4   ? C��*J
�� 
pcap*J m   A B*K*K �*L*L , F i l e M a k e r   P r o   A d v a n c e d*E o      ���� "0 windownamecheck windowNameCheck*> *M*N*M =  N S*O*P*O o   N O���� 0 whichwindow whichWindow*P m   O R*Q*Q �*R*R 
 f r o n t*N *S��*S r   V e*T*U*T n   V c*V*W*V 1   _ c��
�� 
pnam*W n   V _*X*Y*X 4   \ _��*Z
�� 
cwin*Z m   ] ^���� *Y 4   V \��*[
�� 
pcap*[ m   X [*\*\ �*]*] , F i l e M a k e r   P r o   A d v a n c e d*U o      ���� "0 windownamecheck windowNameCheck��  *? l  h *^*_*`*^ k   h *a*a *b*c*b r   h o*d*e*d c   h m*f*g*f o   h i���� 0 whichwindow whichWindow*g m   i l��
�� 
nmbr*e o      ���� 0 windowindex windowIndex*c *h��*h r   p *i*j*i n   p }*k*l*k 1   y }��
�� 
pnam*l n   p y*m*n*m 4   v y��*o
�� 
cwin*o o   w x���� 0 windowindex windowIndex*n 4   p v��*p
�� 
pcap*p m   r u*q*q �*r*r , F i l e M a k e r   P r o   A d v a n c e d*j o      ���� "0 windownamecheck windowNameCheck��  *_ + % whichWindow  is window index number:   *` �*s*s J   w h i c h W i n d o w     i s   w i n d o w   i n d e x   n u m b e r :*; m   5 6*t*t�                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  *9 *u*v*u l  � �������  �  �  *v *w*x*w l  � �����  �  �  *x *y*z*y Z   �%*{*|*}�*{ =  � �*~**~ o   � ���  0 windownametest windowNameTest* m   � �*�*� �*�*�  c o n t a i n s*| k   � �*�*� *�*�*� r   � �*�*�*� l  � �*���*� E   � �*�*�*� o   � ��� "0 windownamecheck windowNameCheck*� o   � ��� 0 
windowname 
windowName�  �  *� o      �� 0 checkresult checkResult*� *��*� l  � �����  �  �  �  *} *�*�*� =  � �*�*�*� o   � ���  0 windownametest windowNameTest*� m   � �*�*� �*�*�   d o e s   n o t   c o n t a i n*� *�*�*� k   � �*�*� *�*�*� r   � �*�*�*� l  � �*���*� H   � �*�*� E   � �*�*�*� o   � ��� "0 windownamecheck windowNameCheck*� o   � ��� 0 
windowname 
windowName�  �  *� o      �� 0 checkresult checkResult*� *��*� l  � �����  �  �  �  *� *�*�*� =  � �*�*�*� o   � ���  0 windownametest windowNameTest*� m   � �*�*� �*�*�  e q u a l s*� *�*�*� k   � �*�*� *�*�*� r   � �*�*�*� l  � �*���*� =  � �*�*�*� o   � ��� "0 windownamecheck windowNameCheck*� o   � ��� 0 
windowname 
windowName�  �  *� o      �� 0 checkresult checkResult*� *��*� l  � �����  �  �  �  *� *�*�*� =  � �*�*�*� o   � ���  0 windownametest windowNameTest*� m   � �*�*� �*�*�  i s*� *�*�*� k   � �*�*� *�*�*� r   � �*�*�*� l  � �*���*� =  � �*�*�*� o   � ��� "0 windownamecheck windowNameCheck*� o   � ��� 0 
windowname 
windowName�  �  *� o      �� 0 checkresult checkResult*� *��*� l  � �����  �  �  �  *� *�*�*� =  � �*�*�*� o   � ���  0 windownametest windowNameTest*� m   � �*�*� �*�*�  s t a r t s   w i t h*� *�*�*� k   � �*�*� *�*�*� r   � �*�*�*� l  � �*���*� C   � �*�*�*� o   � ��� "0 windownamecheck windowNameCheck*� o   � ��� 0 
windowname 
windowName�  �  *� o      �� 0 checkresult checkResult*� *��*� l  � �����  �  �  �  *� *�*�*� =  � �*�*�*� o   � ���  0 windownametest windowNameTest*� m   � �*�*� �*�*� & d o e s   n o t   s t a r t   w i t h*� *�*�*� k   � �*�*� *�*�*� r   � �*�*�*� l  � �*���*� H   � �*�*� C   � �*�*�*� o   � ��� "0 windownamecheck windowNameCheck*� o   � ��� 0 
windowname 
windowName�  �  *� o      �� 0 checkresult checkResult*� *��*� l  � ����~�  �  �~  �  *� *�*�*� =  � �*�*�*� o   � ��}�}  0 windownametest windowNameTest*� m   � �*�*� �*�*�  e n d s   w i t h*� *�*�*� k   � �*�*� *�*�*� r   � �*�*�*� l  � �*��|�{*� D   � �*�*�*� o   � ��z�z "0 windownamecheck windowNameCheck*� o   � ��y�y 0 
windowname 
windowName�|  �{  *� o      �x�x 0 checkresult checkResult*� *��w*� l  � ��v�u�t�v  �u  �t  �w  *� *�*�*� = *�*�*� o  �s�s  0 windownametest windowNameTest*� m  *�*� �*�*� " d o e s   n o t   e n d   w i t h*� *�*�*� r  	*�*�*� l 	*��r�q*� H  	*�*� D  	*�+ *� o  	
�p�p "0 windownamecheck windowNameCheck+  o  
�o�o 0 
windowname 
windowName�r  �q  *� o      �n�n 0 checkresult checkResult*� +++ = +++ o  �m�m  0 windownametest windowNameTest+ m  ++ �++  i s   n o t+ +�l+ k  !++ +	+
+	 r  +++ l +�k�j+ > +++ o  �i�i "0 windownamecheck windowNameCheck+ o  �h�h 0 
windowname 
windowName�k  �j  + o      �g�g 0 checkresult checkResult+
 +�f+ l   �e�d�c�e  �d  �c  �f  �l  �  *z +++ l &&�b�a�`�b  �a  �`  + +++ Z &/++�_�^+ o  &'�]�] 0 checkresult checkResult+  S  *+�_  �^  + +++ l 00�\�[�Z�\  �[  �Z  + +++ I 07�Y+�X
�Y .sysodelanull��� ��� nmbr+ n  03+++ o  13�W�W .0 waitcycledelayseconds waitCycleDelaySeconds+ o  01�V�V 	0 prefs  �X  + +++ l 88�U�T�S�U  �T  �S  + + �R+  l 88�Q�P�O�Q  �P  �O  �R  *6 n   . 2+!+"+! o   / 1�N�N 0 waitcyclemax waitCycleMax+" o   . /�M�M 	0 prefs  *4 +#+$+# l ??�L�K�J�L  �K  �J  +$ +%+&+% L  ?A+'+' o  ?@�I�I 0 checkresult checkResult+& +(�H+( l BB�G�F�E�G  �F  �E  �H  )� +)+*+) l     �D�C�B�D  �C  �B  +* +++,++ l     �A�@�?�A  �@  �?  +, +-+.+- i   � �+/+0+/ I      �>+1�=�> 20 windowwaituntil_frontis windowWaitUntil_FrontIS+1 +2�<+2 o      �;�; 	0 prefs  �<  �=  +0 k     +3+3 +4+5+4 l     �:+6+7�:  +6   version 1.0   +7 �+8+8    v e r s i o n   1 . 0+5 +9+:+9 l     �9�8�7�9  �8  �7  +: +;+<+; r     +=+>+= K     +?+? �6+@+A�6 0 
windowname 
windowName+@ m    �5
�5 
null+A �4+B+C�4  0 windownametest windowNameTest+B m    +D+D �+E+E  i s+C �3+F+G�3 0 whichwindow whichWindow+F m    +H+H �+I+I 
 f r o n t+G �2+J+K�2 .0 waitcycledelayseconds waitCycleDelaySeconds+J m    +L+L ?�������+K �1+M�0�1 0 waitcyclemax waitCycleMax+M m   	 
�/�/ d�0  +> o      �.�. 0 defaultprefs defaultPrefs+< +N+O+N r    +P+Q+P b    +R+S+R o    �-�- 	0 prefs  +S o    �,�, 0 defaultprefs defaultPrefs+Q o      �+�+ 	0 prefs  +O +T+U+T l   �*�)�(�*  �)  �(  +U +V+W+V L    +X+X I    �'+Y�&�' "0 windowwaituntil windowWaitUntil+Y +Z�%+Z o    �$�$ 	0 prefs  �%  �&  +W +[+\+[ l   �#�"�!�#  �"  �!  +\ +]� +] l   ����  �  �  �   +. +^+_+^ l     ����  �  �  +_ +`+a+` l     ����  �  �  +a +b+c+b i   � �+d+e+d I      �+f�� "0 indexoflistitem indexOfListItem+f +g+h+g o      �� 0 somelist someList+h +i�+i o      �� 0 somelistitem someListItem�  �  +e k     8+j+j +k+l+k l     �+m+n�  +m   version 1.0   +n �+o+o    v e r s i o n   1 . 0+l +p+q+p l     ����  �  �  +q +r+s+r Z    +t+u��+t H     +v+v E     +w+x+w o     �� 0 somelist someList+x o    �
�
 0 somelistitem someListItem+u L    	+y+y m    �	�	���  �  +s +z+{+z l   ����  �  �  +{ +|+}+| Y    6+~�++��+~ k    1+�+� +�+�+� r    "+�+�+� n     +�+�+� 4     �+�
� 
cobj+� o    �� 0 i  +� o    �� 0 somelist someList+� o      � �  0 onelistitem oneListItem+� +�+�+� l  # #��������  ��  ��  +� +�+�+� Z  # /+�+�����+� =  # &+�+�+� o   # $���� 0 onelistitem oneListItem+� o   $ %���� 0 somelistitem someListItem+� L   ) ++�+� o   ) *���� 0 i  ��  ��  +� +���+� l  0 0��������  ��  ��  ��  � 0 i  + m    ���� +� I   ��+���
�� .corecnte****       ****+� o    ���� 0 somelist someList��  �  +} +���+� l  7 7��������  ��  ��  ��  +c +�+�+� l     ��������  ��  ��  +� +�+�+� l     ��������  ��  ��  +� +�+�+� i   � �+�+�+� I      ��+����� 0 listcontains listContains+� +�+�+� o      ���� 0 somelist someList+� +���+� o      ���� "0 somecomplexitem someComplexItem��  ��  +� k     0+�+� +�+�+� l     ��+�+���  +�   version 1.0   +� �+�+�    v e r s i o n   1 . 0+� +�+�+� l     ��������  ��  ��  +� +�+�+� X     ++���+�+� k    &+�+� +�+�+� r    +�+�+� n    +�+�+� 1    ��
�� 
pcnt+� o    ���� 0 oneitem oneItem+� o      ���� 0 oneitem oneItem+� +�+�+� Z    $+�+�����+� =   +�+�+� o    ���� 0 oneitem oneItem+� o    ���� "0 somecomplexitem someComplexItem+� k     +�+� +�+�+� l   ��������  ��  ��  +� +�+�+� L    +�+� m    ��
�� boovtrue+� +���+� l   ��������  ��  ��  ��  ��  ��  +� +�+�+� l  % %��������  ��  ��  +� +���+� l  % %��������  ��  ��  ��  �� 0 oneitem oneItem+� o    ���� 0 somelist someList+� +�+�+� l  , ,��������  ��  ��  +� +�+�+� L   , .+�+� m   , -��
�� boovfals+� +���+� l  / /����  �  �  ��  +� +�+�+� l     ����  �  �  +� +�+�+� l     ����  �  �  +� +�+�+� i   �+�+�+� I      �+��� $0 listuniquevalues listUniqueValues+� +��+� o      �� 	0 prefs  �  �  +� k     :+�+� +�+�+� l     �+�+��  +�   version 1.0   +� �+�+�    v e r s i o n   1 . 0+� +�+�+� l     ����  �  �  +� +�+�+� r     +�+�+� n     +�+�+� o    �� 0 	inputlist 	inputList+� o     �� 	0 prefs  +� o      �� 0 	inputlist 	inputList+� +�+�+� l   ����  �  �  +� +�+�+� r    
+�+�+� J    ��  +� o      �� 0 
uniquelist 
uniqueList+� +�+�+� l   ����  �  �  +� +�+�+� l   ����  �  �  +� +�+�+� X    5+��+�+� k    0+�+� +�+�+� r     +�+�+� n    +�+�+� 1    �
� 
pcnt+� o    �� 0 oneitem oneItem+� o      �� 0 oneitem oneItem+� +��+� Z   ! 0+�+���+� H   ! %+�+� E   ! $+�+�+� o   ! "�� 0 
uniquelist 
uniqueList+� o   " #�� 0 oneitem oneItem+� s   ( ,+�+�+� o   ( )�� 0 oneitem oneItem+� n      +�, +�  ;   * +,  o   ) *�� 0 
uniquelist 
uniqueList�  �  �  � 0 oneitem oneItem+� o    �� 0 	inputlist 	inputList+� ,,, l  6 6����  �  �  , ,,, L   6 8,, o   6 7�� 0 
uniquelist 
uniqueList, ,�, l  9 9����  �  �  �  +� ,,, l     ����  �  �  , ,	,
,	 l     ����  �  �  ,
 ,,, i  ,,, I      �,�� 0 sort  , ,�, o      �� 0 oldlist oldList�  �  , k     D,, ,,, l     �,,�  ,   version 1.0   , �,,    v e r s i o n   1 . 0, ,,, l     ����  �  �  , ,,, r     ,,, J     
,, ,,, n    , ,!,  1    �~
�~ 
txdl,! 1     �}
�} 
ascr, ,"�|," I   �{,#�z
�{ .sysontocTEXT       shor,# m    �y�y 
�z  �|  , J      ,$,$ ,%,&,% o      �x�x 0 od  ,& ,'�w,' n     ,(,),( 1    �v
�v 
txdl,) 1    �u
�u 
ascr�w  , ,*,+,* r    !,,,-,, c    ,.,/,. o    �t�t 0 oldlist oldList,/ m    �s
�s 
TEXT,- o      �r�r 0 	textblock 	textBlock,+ ,0,1,0 r   " /,2,3,2 I  " -�q,4�p
�q .sysoexecTEXT���     TEXT,4 b   " ),5,6,5 b   " ',7,8,7 m   " #,9,9 �,:,: 
 e c h o  ,8 n   # &,;,<,; 1   $ &�o
�o 
strq,< o   # $�n�n 0 	textblock 	textBlock,6 m   ' (,=,= �,>,>    |   s o r t�p  ,3 o      �m�m 0 sortedblock sortedBlock,1 ,?,@,? r   0 5,A,B,A o   0 1�l
�l 
ret ,B n     ,C,D,C 1   2 4�k
�k 
txdl,D 1   1 2�j
�j 
ascr,@ ,E,F,E r   6 ;,G,H,G n   6 9,I,J,I 2   7 9�i
�i 
citm,J o   6 7�h�h 0 sortedblock sortedBlock,H o      �g�g 0 
sortedlist 
sortedList,F ,K,L,K r   < A,M,N,M o   < =�f�f 0 od  ,N n     ,O,P,O 1   > @�e
�e 
txdl,P 1   = >�d
�d 
ascr,L ,Q,R,Q l  B B�c�b�a�c  �b  �a  ,R ,S�`,S L   B D,T,T o   B C�_�_ 0 
sortedlist 
sortedList�`  , ,U,V,U l     �^�]�\�^  �]  �\  ,V ,W,X,W l     �[�Z�Y�[  �Z  �Y  ,X ,Y,Z,Y i  
,[,\,[ I      �X,]�W�X 0 
logconsole 
logConsole,] ,^,_,^ o      �V�V 0 processname processName,_ ,`�U,` o      �T�T 0 
consolemsg 
consoleMsg�U  �W  ,\ k     H,a,a ,b,c,b l     �S,d,e�S  ,d   version 2.0   ,e �,f,f    v e r s i o n   2 . 0,c ,g,h,g l     �R�Q�P�R  �Q  �P  ,h ,i,j,i r     ,k,l,k I     �O,m�N�O  0 coercetostring coerceToString,m ,n�M,n o    �L�L 0 
consolemsg 
consoleMsg�M  �N  ,l o      �K�K 0 
consolemsg 
consoleMsg,j ,o,p,o l  	 ,q,r,s,q r   	 ,t,u,t I   	 �J,v�I�J 0 replacesimple replaceSimple,v ,w�H,w J   
 ,x,x ,y,z,y o   
 �G�G 0 
consolemsg 
consoleMsg,z ,{,|,{ I   �F,}�E
�F .sysontocTEXT       shor,} m    �D�D  �E  ,| ,~�C,~ m    ,, �,�,�  �C  �H  �I  ,u o      �B�B 0 
consolemsg 
consoleMsg,r %  ASCII 0 breaks shell scripting   ,s �,�,� >   A S C I I   0   b r e a k s   s h e l l   s c r i p t i n g,p ,�,�,� Z    ),�,��A�@,� =   ,�,�,� n    ,�,�,� 1    �?
�? 
leng,� o    �>�> 0 
consolemsg 
consoleMsg,� m    �=�=  ,� k   " %,�,� ,�,�,� l  " "�<,�,��<  ,� H B we still want this function to log that an empty string was sent:   ,� �,�,� �   w e   s t i l l   w a n t   t h i s   f u n c t i o n   t o   l o g   t h a t   a n   e m p t y   s t r i n g   w a s   s e n t :,� ,��;,� r   " %,�,�,� m   " #,�,� �,�,�  [ E M P T Y   S T R I N G ],� o      �:�: 0 
consolemsg 
consoleMsg�;  �A  �@  ,� ,�,�,� r   * =,�,�,� b   * ;,�,�,� b   * 7,�,�,� b   * 5,�,�,� b   * 1,�,�,� b   * /,�,�,� b   * -,�,�,� m   * +,�,� �,�,�  l o g g e r,� 1   + ,�9
�9 
spac,� m   - .,�,� �,�,�  - t,� 1   / 0�8
�8 
spac,� n   1 4,�,�,� 1   2 4�7
�7 
strq,� o   1 2�6�6 0 processname processName,� 1   5 6�5
�5 
spac,� n   7 :,�,�,� 1   8 :�4
�4 
strq,� o   7 8�3�3 0 
consolemsg 
consoleMsg,� o      �2�2 0 shellcommand shellCommand,� ,�,�,� l  > >�1�0�/�1  �0  �/  ,� ,�,�,� I  > C�.,��-
�. .sysoexecTEXT���     TEXT,� o   > ?�,�, 0 shellcommand shellCommand�-  ,� ,�,�,� L   D F,�,� o   D E�+�+ 0 shellcommand shellCommand,� ,��*,� l  G G�)�(�'�)  �(  �'  �*  ,Z ,�,�,� l     �&�%�$�&  �%  �$  ,� ,�,�,� l     �#�"�!�#  �"  �!  ,� ,�,�,� i  ,�,�,� I      � ,���  0 loglevel logLEVEL,� ,�,�,� o      �� 	0 level  ,� ,��,� o      �� 0 somemsg someMsg�  �  ,� k     4,�,� ,�,�,� l     �,�,��  ,�   version 1.0   ,� �,�,�    v e r s i o n   1 . 0,� ,�,�,� l     ����  �  �  ,� ,�,�,� r     ,�,�,� m     �� ,� o      �� 0 	maxxcount 	maxXcount,� ,�,�,� r    ,�,�,� b    ,�,�,� o    	�� 0 
scriptname 
ScriptName,� m   	 
,�,� �,�,�  _,� o      �� 0 logname logName,� ,�,�,� r    ,�,�,� [    ,�,�,� \    ,�,�,� o    �� 0 	maxxcount 	maxXcount,� o    �� 	0 level  ,� m    �� ,� o      �� 0 xcount xCount,� ,�,�,� l   ����  �  �  ,� ,�,�,� Y    *,��,�,��,� r     %,�,�,� b     #,�,�,� o     !�
�
 0 logname logName,� m   ! ",�,� �,�,�  X,� o      �	�	 0 logname logName� 0 i  ,� m    �� ,� o    �� 0 xcount xCount�  ,� ,�,�,� l  + +����  �  �  ,� ,�,�,� I   + 2�,��� 0 
logconsole 
logConsole,� ,�,�,� o   , -�� 0 logname logName,� ,�� ,� o   - .���� 0 somemsg someMsg�   �  ,� ,���,� l  3 3��������  ��  ��  ��  ,� ,�,�,� l     ��������  ��  ��  ,� ,�,�,� l     ��������  ��  ��  ,� ,�,�,� i  ,�,�,� I      ��,����� 0 logmain logMAIN,� ,���,� o      ���� 0 somemsg someMsg��  ��  ,� k     ,�,� ,�- ,� l     ��--��  -   version 1.0   - �--    v e r s i o n   1 . 0-  --- l     ��������  ��  ��  - -��- l    ---	- I     ��-
���� 0 loglevel logLEVEL-
 --- m    ����  - -��- o    ���� 0 somemsg someMsg��  ��  -    log at highest importance   -	 �-- 4   l o g   a t   h i g h e s t   i m p o r t a n c e��  ,� --- l     ��������  ��  ��  - --- l     ��������  ��  ��  - --- i  --- I      ��-���� (0 systemnotification systemNotification- -��- o      ���� 	0 prefs  ��  ��  - k     F-- --- l     ��--��  -   version 1.0   - �--    v e r s i o n   1 . 0- -- - l     ��������  ��  ��  -  -!-"-! r     -#-$-# K     -%-% ��-&-'�� 0 msg  -& m    -(-( �-)-)  -' ��-*-+�� 0 msgtitle msgTitle-* m    -,-, �----  -+ ��-.-/�� 0 msgsubtitle msgSubtitle-. m    -0-0 �-1-1  -/ ��-2-3�� 0 msgsound msgSound-2 m    -4-4 �-5-5  d e f a u l t-3 ��-6���� 0 nosound noSound-6 m   	 
��
�� 
null��  -$ o      ���� 0 defaultprefs defaultPrefs-" -7-8-7 r    -9-:-9 b    -;-<-; o    ���� 	0 prefs  -< o    ���� 0 defaultprefs defaultPrefs-: o      ���� 	0 prefs  -8 -=->-= l   ��������  ��  ��  -> -?-@-? Z    D-A-B��-C-A >   -D-E-D n    -F-G-F o    ���� 0 nosound noSound-G o    ���� 	0 prefs  -E m    ��
�� 
null-B I   ,��-H-I
�� .sysonotfnull��� ��� TEXT-H n     -J-K-J o     ���� 0 msg  -K o    ���� 	0 prefs  -I ��-L-M
�� 
appr-L n   ! $-N-O-N o   " $���� 0 msgtitle msgTitle-O o   ! "���� 	0 prefs  -M ��-P�
�� 
subt-P n   % (-Q-R-Q o   & (�� 0 msgsubtitle msgSubtitle-R o   % &�� 	0 prefs  �  ��  -C I  / D�-S-T
� .sysonotfnull��� ��� TEXT-S n   / 2-U-V-U o   0 2�� 0 msg  -V o   / 0�� 	0 prefs  -T �-W-X
� 
appr-W n   3 6-Y-Z-Y o   4 6�� 0 msgtitle msgTitle-Z o   3 4�� 	0 prefs  -X �-[-\
� 
subt-[ n   7 :-]-^-] o   8 :�� 0 msgsubtitle msgSubtitle-^ o   7 8�� 	0 prefs  -\ �-_�
� 
nsou-_ n   ; >-`-a-` o   < >�� 0 msgsound msgSound-a o   ; <�� 	0 prefs  �  -@ -b-c-b l  E E����  �  �  -c -d�-d l  E E����  �  �  �  - -e-f-e l     ����  �  �  -f -g-h-g l     ����  �  �  -h -i-j-i i  -k-l-k I      �-m�� 0 writetofile writeToFile-m -n�-n o      �� 	0 prefs  �  �  -l k     �-o-o -p-q-p l     �-r-s�  -r   version 1.0   -s �-t-t    v e r s i o n   1 . 0-q -u-v-u l     ����  �  �  -v -w-x-w r     -y-z-y K     -{-{ �-|-}� 0 fullfilepath fullFilePath-| m    �
� 
null-} �-~-� 0 filename fileName-~ m    �
� 
null- �-�-�� 0 filedirectory fileDirectory-� c    -�-�-� l   
-���-� I   
�-��
� .earsffdralis        afdr-� m    �
� afdrdesk�  �  �  -� m   
 �
� 
TEXT-� �-��� 0 
outputtext 
outputText-� m    �
� 
null�  -z o      �� 0 defaultprefs defaultPrefs-x -�-�-� r    -�-�-� b    -�-�-� o    �� 	0 prefs  -� o    �� 0 defaultprefs defaultPrefs-� o      �� 	0 prefs  -� -�-�-� l   ����  �  �  -� -�-�-� l   �-�-��  -�   determine file path   -� �-�-� (   d e t e r m i n e   f i l e   p a t h-� -�-�-� Z    H-�-�-�-�-� >   -�-�-� n    -�-�-� o    �� 0 fullfilepath fullFilePath-� o    �� 	0 prefs  -� m    �
� 
null-� r   ! &-�-�-� n   ! $-�-�-� o   " $�� 0 fullfilepath fullFilePath-� o   ! "�� 	0 prefs  -� o      �� 0 
outputfile 
outputFile-� -�-�-� >  ) .-�-�-� n   ) ,-�-�-� o   * ,�~�~ 0 filename fileName-� o   ) *�}�} 	0 prefs  -� m   , -�|
�| 
null-� -��{-� r   1 :-�-�-� b   1 8-�-�-� n   1 4-�-�-� o   2 4�z�z 0 filedirectory fileDirectory-� o   1 2�y�y 	0 prefs  -� n   4 7-�-�-� o   5 7�x�x 0 filename fileName-� o   4 5�w�w 	0 prefs  -� o      �v�v 0 
outputfile 
outputFile�{  -� r   = H-�-�-� b   = F-�-�-� l  = D-��u�t-� c   = D-�-�-� l  = B-��s�r-� I  = B�q-��p
�q .earsffdralis        afdr-� m   = >�o
�o afdrdesk�p  �s  �r  -� m   B C�n
�n 
TEXT�u  �t  -� m   D E-�-� �-�-� 2 A S F i l e W r i t t e n B y _ f m G U I . t x t-� o      �m�m 0 
outputfile 
outputFile-� -�-�-� l  I I�l�k�j�l  �k  �j  -� -�-�-� l  I I�i�h�g�i  �h  �g  -� -�-�-� l  I I�f-�-��f  -� $  now write output text to file   -� �-�-� <   n o w   w r i t e   o u t p u t   t e x t   t o   f i l e-� -��e-� Q   I �-�-�-�-� k   L h-�-� -�-�-� r   L X-�-�-� I  L V�d-�-�
�d .rdwropenshor       file-� 4   L P�c-�
�c 
file-� o   N O�b�b 0 
outputfile 
outputFile-� �a-��`
�a 
perm-� m   Q R�_
�_ boovtrue�`  -� o      �^�^ 0 filereference fileReference-� -�-�-� I  Y b�]-�-�
�] .rdwrwritnull���     ****-� n   Y \-�-�-� o   Z \�\�\ 0 
outputtext 
outputText-� o   Y Z�[�[ 	0 prefs  -� �Z-��Y
�Z 
refn-� o   ] ^�X�X 0 filereference fileReference�Y  -� -��W-� I  c h�V-��U
�V .rdwrclosnull���     ****-� o   c d�T�T 0 filereference fileReference�U  �W  -� R      �S�R�Q
�S .ascrerr ****      � ****�R  �Q  -� Q   p �-�-��P-� I  s {�O-��N
�O .rdwrclosnull���     ****-� 4   s w�M-�
�M 
file-� o   u v�L�L 0 
outputfile 
outputFile�N  -� R      �K�J�I
�K .ascrerr ****      � ****�J  �I  �P  �e  -j -�-�-� l     �H�G�F�H  �G  �F  -� -�-�-� l     �E�D�C�E  �D  �C  -� -�-�-� i  -�-�-� I      �B-��A�B 0 clickatcoords clickAtCoords-� -�-�-� o      �@�@ 0 xclick xClick-� -��?-� o      �>�> 0 yclick yClick�?  �A  -� k     0-�-� -�-�-� l     �=-�-��=  -�   version 1.0   -� �-�-�    v e r s i o n   1 . 0-� -�-�-� l     �<�;�:�<  �;  �:  -� -�-�-� r     	-�-�-� I    �9-�-�
�9 .sysorondlong        doub-� o     �8�8 0 xclick xClick-� �7-��6
�7 
dire-� m    �5
�5 olierndD�6  -� o      �4�4 0 xclick xClick-� -�-�-� r   
 -�-�-� I  
 �3-�-�
�3 .sysorondlong        doub-� o   
 �2�2 0 yclick yClick-� �1. �0
�1 
dire.  m    �/
�/ olierndD�0  -� o      �.�. 0 yclick yClick-� ... I   '�-.�,
�- .sysoexecTEXT���     TEXT. b    #... b    !... b    ..	. b    .
..
 n    ... 1    �+
�+ 
strq. o    �*�* &0 clickcommandposix clickCommandPosix. m    .. �..    - r   c :.	 o    �)�) 0 xclick xClick. m     .. �..  ,. o   ! "�(�( 0 yclick yClick�,  . .�'. L   ( 0.. l  ( /.�&�%. b   ( /... b   ( -... l  ( +.�$�#. c   ( +... o   ( )�"�" 0 xclick xClick. m   ) *�!
�! 
TEXT�$  �#  . m   + ,.. �..  ,. o   - .� �  0 yclick yClick�&  �%  �'  -� ... l     ����  �  �  . . .!.  l     ����  �  �  .! .".#." i  ".$.%.$ I      �.&�� *0 clickobjectbycoords clickObjectByCoords.& .'�.' o      �� 0 
someobject 
someObject�  �  .% k     M.(.( .).*.) l     �.+.,�  .+   version 1.0   ., �.-.-    v e r s i o n   1 . 0.* .../.. l     ����  �  �  ./ .0.1.0 w     '.2.3.2 k    '.4.4 .5.6.5 r    .7.8.7 n    .9.:.9 1    �
� 
posn.: o    �� 0 
someobject 
someObject.8 J      .;.; .<.=.< o      �� 0 xcoord xCoord.= .>�.> o      �� 0 ycoord yCoord�  .6 .?�.? r    '.@.A.@ n    .B.C.B 1    �
� 
ptsz.C o    �
�
 0 
someobject 
someObject.A J      .D.D .E.F.E o      �	�	 0 xsize xSize.F .G�.G o      �� 0 ysize ySize�  �  .3�                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  .1 .H.I.H l  ( (����  �  �  .I .J.K.J l  ( 5.L.M.N.L r   ( 5.O.P.O I  ( 3�.Q.R
� .sysorondlong        doub.Q l  ( -.S��.S [   ( -.T.U.T o   ( )� �  0 xcoord xCoord.U ^   ) ,.V.W.V o   ) *���� 0 xsize xSize.W m   * +���� �  �  .R ��.X��
�� 
dire.X m   . /��
�� olierndD��  .P o      ���� 0 xclick xClick.M   middle   .N �.Y.Y    m i d d l e.K .Z.[.Z l  6 C.\.].^.\ r   6 C._.`._ I  6 A��.a.b
�� .sysorondlong        doub.a l  6 ;.c����.c [   6 ;.d.e.d o   6 7���� 0 ycoord yCoord.e ^   7 :.f.g.f o   7 8���� 0 ysize ySize.g m   8 9���� ��  ��  .b ��.h��
�� 
dire.h m   < =��
�� olierndD��  .` o      ���� 0 yclick yClick.]   middle   .^ �.i.i    m i d d l e.[ .j.k.j l  D D��������  ��  ��  .k .l.m.l I   D K��.n���� 0 clickatcoords clickAtCoords.n .o.p.o o   E F���� 0 xclick xClick.p .q��.q o   F G���� 0 yclick yClick��  ��  .m .r��.r l  L L��������  ��  ��  ��  .# .s.t.s l     ��������  ��  ��  .t .u.v.u l     ��������  ��  ��  .v .w.x.w i  #&.y.z.y I      ��.{����  0 coercetostring coerceToString.{ .|��.| o      ����  0 incomingobject incomingObject��  ��  .z k    �.}.} .~..~ l     ��.�.���  .�   version 2.2   .� �.�.�    v e r s i o n   2 . 2. .�.�.� l     ��������  ��  ��  .� .���.� Z    �.�.�.�.�.� =    .�.�.� n     .�.�.� m    ��
�� 
pcls.� o     ����  0 incomingobject incomingObject.� m    ��
�� 
TEXT.� k    .�.� .�.�.� r    .�.�.� l   .�����.� c    .�.�.� o    	����  0 incomingobject incomingObject.� m   	 
��
�� 
TEXT��  ��  .� K      .�.� ��.���
�� 
ctxt.� o      ����  0 incomingobject incomingObject��  .� .���.� L    .�.� o    ����  0 incomingobject incomingObject��  .� .�.�.� =   .�.�.� n    .�.�.� m    ��
�� 
pcls.� o    ����  0 incomingobject incomingObject.� m    ��
�� 
long.� .�.�.� k     /.�.� .�.�.� r     *.�.�.� l    #.�����.� c     #.�.�.� o     !����  0 incomingobject incomingObject.� m   ! "��
�� 
TEXT��  ��  .� K      .�.� ��.���
�� 
ctxt.� o      ��  0 incomingobject incomingObject��  .� .��.� L   + /.�.� c   + ..�.�.� o   + ,��  0 incomingobject incomingObject.� m   , -�
� 
TEXT�  .� .�.�.� =  2 7.�.�.� n   2 5.�.�.� m   3 5�
� 
pcls.� o   2 3��  0 incomingobject incomingObject.� m   5 6�
� 
doub.� .�.�.� k   : I.�.� .�.�.� r   : D.�.�.� l  : =.���.� c   : =.�.�.� o   : ;��  0 incomingobject incomingObject.� m   ; <�
� 
TEXT�  �  .� K      .�.� �.��
� 
ctxt.� o      ��  0 incomingobject incomingObject�  .� .��.� L   E I.�.� c   E H.�.�.� o   E F��  0 incomingobject incomingObject.� m   F G�
� 
TEXT�  .� .�.�.� =  L Q.�.�.� n   L O.�.�.� m   M O�
� 
pcls.� o   L M��  0 incomingobject incomingObject.� m   O P�
� 
utxt.� .��.� k   T c.�.� .�.�.� r   T ^.�.�.� l  T W.���.� c   T W.�.�.� o   T U��  0 incomingobject incomingObject.� m   U V�
� 
TEXT�  �  .� K      .�.� �.��
� 
ctxt.� o      ��  0 incomingobject incomingObject�  .� .��.� L   _ c.�.� c   _ b.�.�.� o   _ `��  0 incomingobject incomingObject.� m   ` a�
� 
TEXT�  �  .� k   f�.�.� .�.�.� l  f f�.�.��  .� , & LIST, RECORD, styled text, or unknown   .� �.�.� L   L I S T ,   R E C O R D ,   s t y l e d   t e x t ,   o r   u n k n o w n.� .�.�.� Q   f~.�.�.�.� k   i �.�.� .�.�.� Q   i �.�.�.�.� k   l s.�.� .�.�.� r   l q.�.�.� m   l m.�.� �.�.� ` s o m e _ U U I D _ V a l u e _ 5 4 F 8 2 7 C 7 3 7 9 E 4 0 7 3 B 5 A 2 1 6 B B 9 C D E 5 7 5 D.� n      .�.�.� o   n p�� j0 3some_uuid_property_54f827c7379e4073b5a216bb9cde575d 3some_UUID_Property_54F827C7379E4073B5A216BB9CDE575D.� m   m n.�.� �.�.�  X X X X.� .�.�.� l  r r����  �  �  .� .�.�.� l  r r�.�.��  .� V P GENERATE the error message for a known 'object' (here, a string) so we can get    .� �.�.� �   G E N E R A T E   t h e   e r r o r   m e s s a g e   f o r   a   k n o w n   ' o b j e c t '   ( h e r e ,   a   s t r i n g )   s o   w e   c a n   g e t  .� .��.� l  r r�.�/ �  .� 7 1 the 'lead' and 'trail' part of the error message   /  �// b   t h e   ' l e a d '   a n d   ' t r a i l '   p a r t   o f   t h e   e r r o r   m e s s a g e�  .� R      �//
� .ascrerr ****      � ****/ o      �� 0 errmsg errMsg/ �/�
� 
errn/ o      �� 0 errnum errNum�  .� k   { �// /// r   { �//	/ J   { �/
/
 /// n  { ~/// 1   | ~�
� 
txdl/ 1   { |�
� 
ascr/ /�/ J   ~ �// /�/ m   ~ // �//  " X X X X "�  �  /	 J      // /// o      �� 0 	olddelims 	oldDelims/ /�/ n     /// 1   � ��
� 
txdl/ 1   � ��
� 
ascr�  / /// r   � �/// n   � �/// 2  � ��
� 
citm/ o   � ��� 0 errmsg errMsg/ J      / /  /!/"/! o      �� 0 
errmsglead 
errMsgLead/" /#�/# o      �� 0 errmsgtrail errMsgTrail�  / /$�/$ r   � �/%/&/% o   � ��� 0 	olddelims 	oldDelims/& n     /'/(/' 1   � ��
� 
txdl/( 1   � ��
� 
ascr�  .� /)/*/) l  � �����  �  �  /* /+/,/+ l  � ��/-/.�  /- = 7 now, generate error message for the SPECIFIED object:    /. �//// n   n o w ,   g e n e r a t e   e r r o r   m e s s a g e   f o r   t h e   S P E C I F I E D   o b j e c t :  /, /0/1/0 r   � �/2/3/2 m   � �/4/4 �/5/5 ` s o m e _ U U I D _ V a l u e _ 5 4 F 8 2 7 C 7 3 7 9 E 4 0 7 3 B 5 A 2 1 6 B B 9 C D E 5 7 5 D/3 n      /6/7/6 o   � ��~�~ j0 3some_uuid_property_54f827c7379e4073b5a216bb9cde575d 3some_UUID_Property_54F827C7379E4073B5A216BB9CDE575D/7 o   � ��}�}  0 incomingobject incomingObject/1 /8/9/8 l  � ��|�{�z�|  �{  �z  /9 /:�y/: l  � ��x�w�v�x  �w  �v  �y  .� R      �u/;�t
�u .ascrerr ****      � ****/; o      �s�s 0 errmsg errMsg�t  .� Z   �~/</=�r/>/< F   � �/?/@/? C   � �/A/B/A o   � ��q�q 0 errmsg errMsg/B m   � �/C/C �/D/D � S y s t e m   E v e n t s   g o t   a n   e r r o r :   C a n  t   m a k e   s o m e _ U U I D _ P r o p e r t y _ 5 4 F 8 2 7 C 7 3 7 9 E 4 0 7 3 B 5 A 2 1 6 B B 9 C D E 5 7 5 D   o f  /@ D   � �/E/F/E o   � ��p�p 0 errmsg errMsg/F m   � �/G/G �/H/H ( i n t o   t y p e   s p e c i f i e r ./= k   �/I/I /J/K/J r   � �/L/M/L m   � �/N/N �/O/O � S y s t e m   E v e n t s   g o t   a n   e r r o r :   C a n  t   m a k e   s o m e _ U U I D _ P r o p e r t y _ 5 4 F 8 2 7 C 7 3 7 9 E 4 0 7 3 B 5 A 2 1 6 B B 9 C D E 5 7 5 D   o f  /M o      �o�o 0 
errmsglead 
errMsgLead/K /P/Q/P r   � �/R/S/R m   � �/T/T �/U/U *   i n t o   t y p e   s p e c i f i e r ./S o      �n�n 0 errmsgtrail errMsgTrail/Q /V/W/V l  � ��m�l�k�m  �l  �k  /W /X/Y/X r   � �/Z/[/Z J   � �/\/\ /]/^/] n  � �/_/`/_ 1   � ��j
�j 
txdl/` 1   � ��i
�i 
ascr/^ /a�h/a o   � ��g�g 0 
errmsglead 
errMsgLead�h  /[ J      /b/b /c/d/c o      �f�f 0 od  /d /e�e/e n     /f/g/f 1   � ��d
�d 
txdl/g 1   � ��c
�c 
ascr�e  /Y /h/i/h l  � ��b�a�`�b  �a  �`  /i /j/k/j r   � �/l/m/l n   � �/n/o/n 4   � ��_/p
�_ 
citm/p m   � ��^�^ /o o   � ��]�] 0 errmsg errMsg/m o      �\�\ 0 objectstring objectString/k /q/r/q r   �/s/t/s o   � ��[�[ 0 errmsgtrail errMsgTrail/t n     /u/v/u 1   �Z
�Z 
txdl/v 1   � �Y
�Y 
ascr/r /w/x/w l �X�W�V�X  �W  �V  /x /y/z/y r  
/{/|/{ n  /}/~/} 4  �U/
�U 
citm/ m  �T�T /~ o  �S�S 0 objectstring objectString/| o      �R�R 0 objectstring objectString/z /�/�/� r  /�/�/� o  �Q�Q 0 od  /� n     /�/�/� 1  �P
�P 
txdl/� 1  �O
�O 
ascr/� /�/�/� l �N�M�L�N  �M  �L  /� /�/�/� l �K�J�I�K  �J  �I  /� /��H/� l �G�F�E�G  �F  �E  �H  �r  /> k  ~/�/� /�/�/� l �D/�/��D  /�  tell me to log errMsg   /� �/�/� * t e l l   m e   t o   l o g   e r r M s g/� /�/�/� r  /�/�/� o  �C�C 0 errmsg errMsg/� o      �B�B 0 objectstring objectString/� /�/�/� l �A�@�?�A  �@  �?  /� /�/�/� Z  G/�/��>�=/� E  /�/�/� o  �<�< 0 objectstring objectString/� o  �;�; 0 
errmsglead 
errMsgLead/� k  C/�/� /�/�/� r  6/�/�/� J  %/�/� /�/�/� n "/�/�/� 1   "�:
�: 
txdl/� 1   �9
�9 
ascr/� /��8/� o  "#�7�7 0 
errmsglead 
errMsgLead�8  /� J      /�/� /�/�/� o      �6�6 0 od  /� /��5/� n     /�/�/� 1  24�4
�4 
txdl/� 1  12�3
�3 
ascr�5  /� /�/�/� r  7=/�/�/� n  7;/�/�/� 4  8;�2/�
�2 
citm/� m  9:�1�1 /� o  78�0�0 0 objectstring objectString/� o      �/�/ 0 objectstring objectString/� /��./� r  >C/�/�/� o  >?�-�- 0 od  /� n     /�/�/� 1  @B�,
�, 
txdl/� 1  ?@�+
�+ 
ascr�.  �>  �=  /� /�/�/� l HH�*�)�(�*  �)  �(  /� /�/�/� Z  H|/�/��'�&/� E  HK/�/�/� o  HI�%�% 0 objectstring objectString/� o  IJ�$�$ 0 errmsgtrail errMsgTrail/� k  Nx/�/� /�/�/� r  Ne/�/�/� J  NT/�/� /�/�/� n NQ/�/�/� 1  OQ�#
�# 
txdl/� 1  NO�"
�" 
ascr/� /��!/� o  QR� �  0 errmsgtrail errMsgTrail�!  /� J      /�/� /�/�/� o      �� 0 od  /� /��/� n     /�/�/� 1  ac�
� 
txdl/� 1  `a�
� 
ascr�  /� /�/�/� r  fk/�/�/� o  fg�� 0 errmsgtrail errMsgTrail/� n     /�/�/� 1  hj�
� 
txdl/� 1  gh�
� 
ascr/� /�/�/� r  lr/�/�/� n  lp/�/�/� 4  mp�/�
� 
citm/� m  no�� /� o  lm�� 0 objectstring objectString/� o      �� 0 objectstring objectString/� /��/� r  sx/�/�/� o  st�� 0 od  /� n     /�/�/� 1  uw�
� 
txdl/� 1  tu�
� 
ascr�  �'  �&  /� /�/�/� l }}����  �  �  /� /��/� l }}�/�/��  /� O Iset {text:objectString} to (objectString as string) -- what does THIS do?   /� �/�/� � s e t   { t e x t : o b j e c t S t r i n g }   t o   ( o b j e c t S t r i n g   a s   s t r i n g )   - -   w h a t   d o e s   T H I S   d o ?�  .� /�/�/� l ��
�	�  �
  �	  /� /��/� L  �/�/� o  ��� 0 objectstring objectString�  ��  .x /�/�/� l     ����  �  �  /� /�/�/� l     ����  �  �  /� /�/�/� i  '*/�/�/� I      � /����  0 gettextbefore getTextBefore/� /�/�/� o      ���� 0 
sourcetext 
sourceTEXT/� /���/� o      ���� 0 stophere stopHere��  ��  /� k     Q/�/� /�/�/� l     ��/�/���  /�   version 1.1   /� �0 0     v e r s i o n   1 . 1/� 000 l     ��������  ��  ��  0 0��0 Q     Q0000 k    A00 00	0 r    0
00
 J    	00 000 n   000 1    ��
�� 
txdl0 1    ��
�� 
ascr0 0��0 o    ���� 0 stophere stopHere��  0 J      00 000 o      ���� 0 	olddelims 	oldDelims0 0��0 n     000 1    ��
�� 
txdl0 1    ��
�� 
ascr��  0	 000 Z    800��00 =   $000 l   "0����0 I   "��0 ��
�� .corecnte****       ****0  n    0!0"0! 2   ��
�� 
citm0" o    ���� 0 
sourcetext 
sourceTEXT��  ��  ��  0 m   " #���� 0 k   ' /0#0# 0$0%0$ r   ' ,0&0'0& o   ' (���� 0 	olddelims 	oldDelims0' n     0(0)0( 1   ) +��
�� 
txdl0) 1   ( )��
�� 
ascr0% 0*��0* L   - /0+0+ m   - .0,0, �0-0-  ��  ��  0 r   2 80.0/0. n   2 6000100 4   3 6��02
�� 
citm02 m   4 5���� 01 o   2 3���� 0 
sourcetext 
sourceTEXT0/ l     03����03 o      ���� 0 finalresult finalResult��  ��  0 040504 r   9 >060706 o   9 :���� 0 	olddelims 	oldDelims07 n     080908 1   ; =��
�� 
txdl09 1   : ;��
�� 
ascr05 0:��0: L   ? A0;0; o   ? @���� 0 finalresult finalResult��  0 R      ��0<0=
�� .ascrerr ****      � ****0< o      ���� 0 errmsg errMsg0= ��0>��
�� 
errn0> o      ���� 0 errnum errNum��  0 k   I Q0?0? 0@0A0@ r   I N0B0C0B o   I J���� 0 	olddelims 	oldDelims0C n     0D0E0D 1   K M��
�� 
txdl0E 1   J K��
�� 
ascr0A 0F��0F l  O Q0G0H0I0G L   O Q0J0J m   O P0K0K �0L0L  0H 3 - return nothing if the stop text is not found   0I �0M0M Z   r e t u r n   n o t h i n g   i f   t h e   s t o p   t e x t   i s   n o t   f o u n d��  ��  /� 0N0O0N l     ��������  ��  ��  0O 0P0Q0P l     ��������  ��  ��  0Q 0R0S0R i  +.0T0U0T I      ��0V����  0 gettextbetween getTextBetween0V 0W��0W o      ���� 	0 prefs  ��  ��  0U k     �0X0X 0Y0Z0Y l     ��0[0\��  0[   version 1.6   0\ �0]0]    v e r s i o n   1 . 60Z 0^0_0^ l     ��������  ��  ��  0_ 0`0a0` r     0b0c0b K     0d0d ��0e0f�� 0 textitemnum textItemNum0e m    �� 0f �0g��  0 includemarkers includeMarkers0g m    �
� boovfals�  0c o      �� 0 defaultprefs defaultPrefs0a 0h0i0h l  	 	����  �  �  0i 0j0k0j Z   	 '0l0m��0l F   	 0n0o0n l  	 0p��0p >  	 0q0r0q n   	 0s0t0s m   
 �
� 
pcls0t o   	 
�� 	0 prefs  0r m    �
� 
list�  �  0o l   0u��0u >   0v0w0v c    0x0y0x l   0z��0z n    0{0|0{ m    �
� 
pcls0| o    �� 	0 prefs  �  �  0y m    �
� 
TEXT0w m    0}0} �0~0~  r e c o r d�  �  0m R    #�00�
� .ascrerr ****      � ****0 m   ! "0�0� �0�0� g e t T e x t B e t w e e n   F A I L E D :   p a r a m e t e r   s h o u l d   b e   a   r e c o r d   o r   l i s t .   I f   i t   i s   m u l t i p l e   i t e m s ,   j u s t   m a k e   i t   i n t o   a   l i s t   t o   u p g r a d e   t o   t h i s   h a n d l e r .0� �0��
� 
errn0� m     �� �  �  �  0k 0�0�0� Z   ( `0�0���0� =  ( -0�0�0� n   ( +0�0�0� m   ) +�
� 
pcls0� o   ( )�� 	0 prefs  0� m   + ,�
� 
list0� k   0 \0�0� 0�0�0� Z   0 F0�0���0� =  0 70�0�0� l  0 50���0� I  0 5�0��
� .corecnte****       ****0� o   0 1�� 	0 prefs  �  �  �  0� m   5 6�� 0� r   : B0�0�0� n   : >0�0�0� 4   ; >�0�
� 
cobj0� m   < =�� 0� o   : ;�� 	0 prefs  0� n      0�0�0� o   ? A�� 0 textitemnum textItemNum0� o   > ?�� 0 defaultprefs defaultPrefs�  �  0� 0��0� r   G \0�0�0� K   G Z0�0� �0�0�� 0 
sourcetext 
sourceTEXT0� n   H L0�0�0� 4   I L�0�
� 
cobj0� m   J K�� 0� o   H I�� 	0 prefs  0� �0�0�� 0 
beforetext 
beforeText0� n   M Q0�0�0� 4   N Q�0�
� 
cobj0� m   O P�� 0� o   M N�� 	0 prefs  0� �0��� 0 	aftertext 	afterText0� n   R V0�0�0� 4   S V�0�
� 
cobj0� m   T U�� 0� o   R S�� 	0 prefs  �  0� o      �� 	0 prefs  �  �  �  0� 0�0�0� l  a f0�0�0�0� r   a f0�0�0� b   a d0�0�0� o   a b�� 	0 prefs  0� o   b c�� 0 defaultprefs defaultPrefs0� o      �� 	0 prefs  0� , & add on default preferences, if needed   0� �0�0� L   a d d   o n   d e f a u l t   p r e f e r e n c e s ,   i f   n e e d e d0� 0�0�0� r   g l0�0�0� n   g j0�0�0� o   h j�� 0 
sourcetext 
sourceTEXT0� o   g h�� 	0 prefs  0� o      �� 0 
sourcetext 
sourceTEXT0� 0�0�0� r   m r0�0�0� n   m p0�0�0� o   n p�~�~ 0 
beforetext 
beforeText0� o   m n�}�} 	0 prefs  0� o      �|�| 0 
beforetext 
beforeText0� 0�0�0� r   s x0�0�0� n   s v0�0�0� o   t v�{�{ 0 	aftertext 	afterText0� o   s t�z�z 	0 prefs  0� o      �y�y 0 	aftertext 	afterText0� 0�0�0� r   y ~0�0�0� n   y |0�0�0� o   z |�x�x 0 textitemnum textItemNum0� o   y z�w�w 	0 prefs  0� o      �v�v 0 textitemnum textItemNum0� 0�0�0� r    �0�0�0� n    �0�0�0� o   � ��u�u  0 includemarkers includeMarkers0� o    ��t�t 	0 prefs  0� o      �s�s  0 includemarkers includeMarkers0� 0�0�0� l  � ��r�q�p�r  �q  �p  0� 0�0�0� Q   � �0�0�0�0� k   � �0�0� 0�0�0� r   � �0�0�0� J   � �0�0� 0�0�0� n  � �0�0�0� 1   � ��o
�o 
txdl0� 1   � ��n
�n 
ascr0� 0��m0� o   � ��l�l 0 
beforetext 
beforeText�m  0� J      0�0� 0�0�0� o      �k�k 0 	olddelims 	oldDelims0� 0��j0� n     0�0�0� 1   � ��i
�i 
txdl0� 1   � ��h
�h 
ascr�j  0� 0�0�0� r   � �0�0�0� n   � �0�0�0� 4   � ��g0�
�g 
citm0� o   � ��f�f 0 textitemnum textItemNum0� o   � ��e�e 0 
sourcetext 
sourceTEXT0� l     0��d�c0� o      �b�b 0 prefixremoved prefixRemoved�d  �c  0� 0�0�0� r   � �0�0�0� o   � ��a�a 0 	aftertext 	afterText0� n     0�0�0� 1   � ��`
�` 
txdl0� 1   � ��_
�_ 
ascr0� 0�0�0� r   � �0�0�0� n   � �1 11  4   � ��^1
�^ 
citm1 m   � ��]�] 1 o   � ��\�\ 0 prefixremoved prefixRemoved0� l     1�[�Z1 o      �Y�Y 0 finalresult finalResult�[  �Z  0� 111 r   � �111 o   � ��X�X 0 	olddelims 	oldDelims1 n     11	1 1   � ��W
�W 
txdl1	 1   � ��V
�V 
ascr1 1
11
 l  � ��U�T�S�U  �T  �S  1 111 Z  � �11�R�Q1 o   � ��P�P  0 includemarkers includeMarkers1 r   � �111 b   � �111 b   � �111 o   � ��O�O 0 
beforetext 
beforeText1 o   � ��N�N 0 finalresult finalResult1 o   � ��M�M 0 	aftertext 	afterText1 o      �L�L 0 finalresult finalResult�R  �Q  1 1�K1 l  � ��J�I�H�J  �I  �H  �K  0� R      �G11
�G .ascrerr ****      � ****1 o      �F�F 0 errmsg errMsg1 �E1�D
�E 
errn1 o      �C�C 0 errnum errNum�D  0� k   � �11 111 r   � �111 o   � ��B�B 0 	olddelims 	oldDelims1 n     11 1 1   � ��A
�A 
txdl1  1   � ��@
�@ 
ascr1 1!1"1! l  � ��?1#1$�?  1# > 8 	tell me to log "Error in getTextBetween() : " & errMsg   1$ �1%1% p   	 t e l l   m e   t o   l o g   " E r r o r   i n   g e t T e x t B e t w e e n ( )   :   "   &   e r r M s g1" 1&�>1& l  � �1'1(1)1' r   � �1*1+1* m   � �1,1, �1-1-  1+ l     1.�=�<1. o      �;�; 0 finalresult finalResult�=  �<  1( : 4 return nothing if the surrounding text is not found   1) �1/1/ h   r e t u r n   n o t h i n g   i f   t h e   s u r r o u n d i n g   t e x t   i s   n o t   f o u n d�>  0� 101110 l  � ��:�9�8�:  �9  �8  11 121312 l  � ��7�6�5�7  �6  �5  13 141514 L   � �1616 o   � ��4�4 0 finalresult finalResult15 17�317 l  � ��2�1�0�2  �1  �0  �3  0S 181918 l     �/�.�-�/  �.  �-  19 1:1;1: l     �,�+�*�,  �+  �*  1; 1<1=1< i  /21>1?1> I      �)1@�(�) 0 
parsechars 
parseChars1@ 1A�'1A o      �&�& 	0 prefs  �'  �(  1? k     �1B1B 1C1D1C l     �%1E1F�%  1E   version 1.3   1F �1G1G    v e r s i o n   1 . 31D 1H1I1H l     �$�#�"�$  �#  �"  1I 1J1K1J r     1L1M1L K     1N1N �!1O� �! 0 considercase considerCase1O m    �
� boovtrue�   1M o      �� 0 defaultprefs defaultPrefs1K 1P1Q1P l   ����  �  �  1Q 1R1S1R l   ����  �  �  1S 1T1U1T Z    [1V1W1X�1V =   1Y1Z1Y n    
1[1\1[ m    
�
� 
pcls1\ o    �� 	0 prefs  1Z m   
 �
� 
list1W k    ?1]1] 1^1_1^ Z    =1`1a�1b1` ?   1c1d1c l   1e��1e I   �1f�
� .corecnte****       ****1f o    �� 	0 prefs  �  �  �  1d m    �� 1a k    ,1g1g 1h1i1h l   �1j1k�  1j - ' get any parameters after the initial 3   1k �1l1l N   g e t   a n y   p a r a m e t e r s   a f t e r   t h e   i n i t i a l   31i 1m�1m r    ,1n1o1n K    *1p1p �
1q1r�
 0 
sourcetext 
sourceTEXT1q n    1s1t1s 4    �	1u
�	 
cobj1u m    �� 1t o    �� 	0 prefs  1r �1v1w� 0 parsestring parseString1v n    #1x1y1x 4     #�1z
� 
cobj1z m   ! "�� 1y o     �� 	0 prefs  1w �1{�� 0 considercase considerCase1{ n   $ (1|1}1| 4   % (� 1~
�  
cobj1~ m   & '���� 1} o   $ %���� 	0 prefs  �  1o o      ���� 	0 prefs  �  �  1b r   / =11�1 K   / ;1�1� ��1�1��� 0 
sourcetext 
sourceTEXT1� n   0 41�1�1� 4   1 4��1�
�� 
cobj1� m   2 3���� 1� o   0 1���� 	0 prefs  1� ��1����� 0 parsestring parseString1� n   5 91�1�1� 4   6 9��1�
�� 
cobj1� m   7 8���� 1� o   5 6���� 	0 prefs  ��  1� o      ���� 	0 prefs  1_ 1���1� l  > >��������  ��  ��  ��  1X 1�1�1� >  B L1�1�1� n   B E1�1�1� m   C E��
�� 
pcls1� o   B C���� 	0 prefs  1� l  E K1�����1� n   E K1�1�1� m   I K��
�� 
pcls1� K   E I1�1� ��1����� 0 somekey someKey1� m   F G���� ��  ��  ��  1� 1���1� k   O W1�1� 1�1�1� l  O O��1�1���  1� x r Test by matching class to something that IS a record to avoid FileMaker namespace conflict with the term "record"   1� �1�1� �   T e s t   b y   m a t c h i n g   c l a s s   t o   s o m e t h i n g   t h a t   I S   a   r e c o r d   t o   a v o i d   F i l e M a k e r   n a m e s p a c e   c o n f l i c t   w i t h   t h e   t e r m   " r e c o r d "1� 1�1�1� l  O O��������  ��  ��  1� 1�1�1� R   O U��1�1�
�� .ascrerr ****      � ****1� m   S T1�1� �1�1�> T h e   p a r a m e t e r   f o r   ' p a r s e C h a r s ( ) '   s h o u l d   b e   a   r e c o r d   o r   a t   l e a s t   a   l i s t .   W r a p   t h e   p a r a m e t e r ( s )   i n   c u r l y   b r a c k e t s   f o r   e a s y   u p g r a d e   t o   ' p a r s e C h a r s ( )   v e r s i o n   1 . 3 .  1� ��1���
�� 
errn1� m   Q R���� ��  1� 1���1� l  V V��������  ��  ��  ��  ��  �  1U 1�1�1� l  \ \��������  ��  ��  1� 1�1�1� l  \ \��������  ��  ��  1� 1�1�1� r   \ a1�1�1� b   \ _1�1�1� o   \ ]���� 	0 prefs  1� o   ] ^���� 0 defaultprefs defaultPrefs1� o      ���� 	0 prefs  1� 1�1�1� l  b b��������  ��  ��  1� 1�1�1� l  b b��������  ��  ��  1� 1�1�1� r   b g1�1�1� n   b e1�1�1� o   c e���� 0 
sourcetext 
sourceTEXT1� o   b c���� 	0 prefs  1� o      ���� 0 
sourcetext 
sourceTEXT1� 1�1�1� r   h m1�1�1� n   h k1�1�1� o   i k���� 0 parsestring parseString1� o   h i���� 	0 prefs  1� o      ���� 0 parsestring parseString1� 1�1�1� r   n s1�1�1� n   n q1�1�1� o   o q���� 0 considercase considerCase1� o   n o���� 	0 prefs  1� o      ���� 0 considercase considerCase1� 1�1�1� l  t t�������  ��  �  1� 1�1�1� l  t t����  �  �  1� 1�1�1� r   t y1�1�1� n  t w1�1�1� 1   u w�
� 
txdl1� 1   t u�
� 
ascr1� o      �� 0 	olddelims 	oldDelims1� 1��1� Q   z �1�1�1�1� k   } �1�1� 1�1�1� r   } �1�1�1� l  } �1���1� J   } �1�1� 1��1� c   } �1�1�1� o   } ~�� 0 parsestring parseString1� m   ~ �
� 
TEXT�  �  �  1� n     1�1�1� 1   � ��
� 
txdl1� 1   � ��
� 
ascr1� 1�1�1� l  � �����  �  �  1� 1�1�1� Z   � �1�1��1�1� o   � ��� 0 considercase considerCase1� P   � �1�1��1� r   � �1�1�1� n   � �1�1�1� 2   � ��
� 
citm1� o   � ��� 0 
sourcetext 
sourceTEXT1� l     1���1� o      �� 0 
parsedlist 
parsedList�  �  1� ��
� conscase�  �  �  1� P   � �1��1�1� r   � �1�1�1� n   � �1�1�1� 2   � ��
� 
citm1� o   � ��� 0 
sourcetext 
sourceTEXT1� l     1����1� o      ���� 0 
parsedlist 
parsedList�  ��  �  1� ����
�� conscase��  1� 1�1�1� l  � ���������  ��  ��  1� 1�1�1� r   � �1�1�1� o   � ����� 0 	olddelims 	oldDelims1� n     1�1�1� 1   � ���
�� 
txdl1� 1   � ���
�� 
ascr1� 1���1� L   � �2 2  o   � ����� 0 
parsedlist 
parsedList��  1� R      ��22
�� .ascrerr ****      � ****2 o      ���� 0 errmsg errMsg2 ��2��
�� 
errn2 o      ���� 0 errnum errNum��  1� k   � �22 222 Q   � �22��2 r   � �2	2
2	 o   � ����� 0 	olddelims 	oldDelims2
 n     222 1   � ���
�� 
txdl2 1   � ���
�� 
ascr2 R      ������
�� .ascrerr ****      � ****��  ��  ��  2 2��2 R   � ���22
�� .ascrerr ****      � ****2 b   � �222 m   � �22 �22 : E R R O R :   p a r s e C h a r s ( )   h a n d l e r :  2 o   � ����� 0 errmsg errMsg2 ��2��
�� 
errn2 o   � ����� 0 errnum errNum��  ��  �  1= 222 l     �������  ��  �  2 222 l     �~�}�|�~  �}  �|  2 222 i  36222 I      �{2�z�{ 0 replacesimple replaceSimple2 2�y2 o      �x�x 	0 prefs  �y  �z  2 k     �22 2 2!2  l     �w2"2#�w  2"   version 1.4   2# �2$2$    v e r s i o n   1 . 42! 2%2&2% l     �v�u�t�v  �u  �t  2& 2'2(2' r     2)2*2) K     2+2+ �s2,�r�s 0 considercase considerCase2, m    �q
�q boovtrue�r  2* o      �p�p 0 defaultprefs defaultPrefs2( 2-2.2- l   �o�n�m�o  �n  �m  2. 2/202/ Z    e212223�l21 =   242524 n    
262726 m    
�k
�k 
pcls27 o    �j�j 	0 prefs  25 m   
 �i
�i 
list22 k    I2828 292:29 Z    G2;2<�h2=2; ?   2>2?2> l   2@�g�f2@ I   �e2A�d
�e .corecnte****       ****2A o    �c�c 	0 prefs  �d  �g  �f  2? m    �b�b 2< k    12B2B 2C2D2C l   �a2E2F�a  2E - ' get any parameters after the initial 3   2F �2G2G N   g e t   a n y   p a r a m e t e r s   a f t e r   t h e   i n i t i a l   32D 2H�`2H r    12I2J2I K    /2K2K �_2L2M�_ 0 
sourcetext 
sourceTEXT2L n    2N2O2N 4    �^2P
�^ 
cobj2P m    �]�] 2O o    �\�\ 	0 prefs  2M �[2Q2R�[ 0 oldchars oldChars2Q n    #2S2T2S 4     #�Z2U
�Z 
cobj2U m   ! "�Y�Y 2T o     �X�X 	0 prefs  2R �W2V2W�W 0 newchars newChars2V n   $ (2X2Y2X 4   % (�V2Z
�V 
cobj2Z m   & '�U�U 2Y o   $ %�T�T 	0 prefs  2W �S2[�R�S 0 considercase considerCase2[ n   ) -2\2]2\ 4   * -�Q2^
�Q 
cobj2^ m   + ,�P�P 2] o   ) *�O�O 	0 prefs  �R  2J o      �N�N 	0 prefs  �`  �h  2= r   4 G2_2`2_ K   4 E2a2a �M2b2c�M 0 
sourcetext 
sourceTEXT2b n   5 92d2e2d 4   6 9�L2f
�L 
cobj2f m   7 8�K�K 2e o   5 6�J�J 	0 prefs  2c �I2g2h�I 0 oldchars oldChars2g n   : >2i2j2i 4   ; >�H2k
�H 
cobj2k m   < =�G�G 2j o   : ;�F�F 	0 prefs  2h �E2l�D�E 0 newchars newChars2l n   ? C2m2n2m 4   @ C�C2o
�C 
cobj2o m   A B�B�B 2n o   ? @�A�A 	0 prefs  �D  2` o      �@�@ 	0 prefs  2: 2p�?2p l  H H�>�=�<�>  �=  �<  �?  23 2q2r2q >  L V2s2t2s n   L O2u2v2u m   M O�;
�; 
pcls2v o   L M�:�: 	0 prefs  2t l  O U2w�9�82w n   O U2x2y2x m   S U�7
�7 
pcls2y K   O S2z2z �62{�5�6 0 somekey someKey2{ m   P Q�4�4 �5  �9  �8  2r 2|�32| k   Y a2}2} 2~22~ l  Y Y�22�2��2  2� x r Test by matching class to something that IS a record to avoid FileMaker namespace conflict with the term "record"   2� �2�2� �   T e s t   b y   m a t c h i n g   c l a s s   t o   s o m e t h i n g   t h a t   I S   a   r e c o r d   t o   a v o i d   F i l e M a k e r   n a m e s p a c e   c o n f l i c t   w i t h   t h e   t e r m   " r e c o r d "2 2�2�2� l  Y Y�1�0�/�1  �0  �/  2� 2�2�2� R   Y _�.2�2�
�. .ascrerr ****      � ****2� m   ] ^2�2� �2�2�J T h e   p a r a m e t e r   f o r   ' r e p l a c e S i m p l e ( ) '   s h o u l d   b e   a   r e c o r d   o r   a t   l e a s t   a   l i s t .   W r a p   t h e   p a r a m e t e r ( s )   i n   c u r l y   b r a c k e t s   f o r   e a s y   u p g r a d e   t o   ' r e p l a c e S i m p l e ( )   v e r s i o n   1 . 3 .  2� �-2��,
�- 
errn2� m   [ \�+�+ �,  2� 2��*2� l  ` `�)�(�'�)  �(  �'  �*  �3  �l  20 2�2�2� l  f f�&�%�$�&  �%  �$  2� 2�2�2� l  f f�#�"�!�#  �"  �!  2� 2�2�2� r   f k2�2�2� b   f i2�2�2� o   f g� �  	0 prefs  2� o   g h�� 0 defaultprefs defaultPrefs2� o      �� 	0 prefs  2� 2�2�2� l  l l����  �  �  2� 2�2�2� l  l l����  �  �  2� 2�2�2� r   l q2�2�2� n   l o2�2�2� o   m o�� 0 considercase considerCase2� o   l m�� 	0 prefs  2� o      �� 0 considercase considerCase2� 2�2�2� r   r w2�2�2� n   r u2�2�2� o   s u�� 0 
sourcetext 
sourceTEXT2� o   r s�� 	0 prefs  2� o      �� 0 
sourcetext 
sourceTEXT2� 2�2�2� r   x }2�2�2� n   x {2�2�2� o   y {�� 0 oldchars oldChars2� o   x y�� 	0 prefs  2� o      �� 0 oldchars oldChars2� 2�2�2� r   ~ �2�2�2� n   ~ �2�2�2� o    ��� 0 newchars newChars2� o   ~ �� 	0 prefs  2� o      �� 0 newchars newChars2� 2�2�2� l  � ���
�	�  �
  �	  2� 2�2�2� r   � �2�2�2� c   � �2�2�2� o   � ��� 0 
sourcetext 
sourceTEXT2� m   � ��
� 
TEXT2� o      �� 0 
sourcetext 
sourceTEXT2� 2�2�2� l  � �����  �  �  2� 2�2�2� r   � �2�2�2� n  � �2�2�2� 1   � ��
� 
txdl2� 1   � ��
� 
ascr2� o      � �  0 	olddelims 	oldDelims2� 2�2�2� r   � �2�2�2� l  � �2�����2� o   � ����� 0 oldchars oldChars��  ��  2� n     2�2�2� 1   � ���
�� 
txdl2� 1   � ���
�� 
ascr2� 2�2�2� Z   � �2�2���2�2� o   � ����� 0 considercase considerCase2� P   � �2�2���2� k   � �2�2� 2�2�2� r   � �2�2�2� n   � �2�2�2� 2   � ���
�� 
citm2� o   � ����� 0 
sourcetext 
sourceTEXT2� l     2�����2� o      ���� 0 
parsedlist 
parsedList��  ��  2� 2�2�2� r   � �2�2�2� l  � �2�����2� J   � �2�2� 2���2� l  � �2�����2� c   � �2�2�2� o   � ����� 0 newchars newChars2� m   � ���
�� 
TEXT��  ��  ��  ��  ��  2� n     2�2�2� 1   � ���
�� 
txdl2� 1   � ���
�� 
ascr2� 2���2� r   � �2�2�2� c   � �2�2�2� l  � �2�����2� o   � ����� 0 
parsedlist 
parsedList��  ��  2� m   � ���
�� 
TEXT2� l     2�����2� o      ���� 0 newtext newText��  ��  ��  2� ����
�� conscase��  ��  ��  2� P   � �2���2�2� k   � �2�2� 2�2�2� r   � �2�2�2� n   � �2�2�2� 2   � ���
�� 
citm2� o   � ����� 0 
sourcetext 
sourceTEXT2� l     2�����2� o      ���� 0 
parsedlist 
parsedList��  ��  2� 2�2�2� r   � �2�2�2� l  � �2�����2� J   � �2�2� 2���2� l  � �2�����2� c   � �2�2�2� o   � ����� 0 newchars newChars2� m   � ���
�� 
TEXT��  ��  ��  ��  ��  2� n     3 33  1   � ���
�� 
txdl3 1   � ���
�� 
ascr2� 3��3 r   � �333 c   � �333 l  � �3����3 o   � ����� 0 
parsedlist 
parsedList��  ��  3 m   � ���
�� 
TEXT3 l     3����3 o      ���� 0 newtext newText��  ��  ��  ��  2� ����
�� conscase��  2� 3	3
3	 r   � �333 o   � ����� 0 	olddelims 	oldDelims3 n     333 1   � ���
�� 
txdl3 1   � ���
�� 
ascr3
 333 L   � �33 o   � ����� 0 newtext newText3 3��3 l  � �����߿��  ��  ߿  ��  2 333 l     ߾߽߼߾  ߽  ߼  3 333 l     ߻ߺ߹߻  ߺ  ߹  3 333 i  7:333 I      ߸3߷߸ 0 unparsechars unParseChars3 333 o      ߶߶ 0 thislist thisList3 3ߵ3 o      ߴߴ 0 newdelim newDelimߵ  ߷  3 k     C33 3 3!3  l     ߳3"3#߳  3"   version 1.2   3# �3$3$    v e r s i o n   1 . 23! 3%3&3% l     ߲߱߰߲  ߱  ߰  3& 3'3(3' r     3)3*3) n    3+3,3+ 1    ߯
߯ 
txdl3, 1     ߮
߮ 
ascr3* o      ߭߭ 0 	olddelims 	oldDelims3( 3-߬3- Q    C3.3/303. k   	 !3131 323332 r   	 343534 l  	 36߫ߪ36 J   	 3737 38ߩ38 c   	 393:39 o   	 
ߨߨ 0 newdelim newDelim3: m   
 ߧ
ߧ 
TEXTߩ  ߫  ߪ  35 n     3;3<3; 1    ߦ
ߦ 
txdl3< 1    ߥ
ߥ 
ascr33 3=3>3= r    3?3@3? c    3A3B3A o    ߤߤ 0 thislist thisList3B m    ߣ
ߣ 
TEXT3@ l     3Cߢߡ3C o      ߠߠ 0 unparsedtext unparsedTextߢ  ߡ  3> 3D3E3D r    3F3G3F o    ߟߟ 0 	olddelims 	oldDelims3G n     3H3I3H 1    ߞ
ߞ 
txdl3I 1    ߝ
ߝ 
ascr3E 3Jߜ3J L    !3K3K o     ߛߛ 0 unparsedtext unparsedTextߜ  3/ R      ߚ3L3M
ߚ .ascrerr ****      � ****3L o      ߙߙ 0 errmsg errMsg3M ߘ3Nߗ
ߘ 
errn3N o      ߖߖ 0 errnum errNumߗ  30 k   ) C3O3O 3P3Q3P Q   ) :3R3Sߕ3R r   , 13T3U3T o   , -ߔߔ 0 	olddelims 	oldDelims3U n     3V3W3V 1   . 0ߓ
ߓ 
txdl3W 1   - .ߒ
ߒ 
ascr3S R      ߑߐߏ
ߑ .ascrerr ****      � ****ߐ  ߏ  ߕ  3Q 3Xߎ3X R   ; Cߍ3Y3Z
ߍ .ascrerr ****      � ****3Y b   ? B3[3\3[ m   ? @3]3] �3^3^ > E R R O R :   u n P a r s e C h a r s ( )   h a n d l e r :  3\ o   @ Aߌߌ 0 errmsg errMsg3Z ߋ3_ߊ
ߋ 
errn3_ o   = >߉߉ 0 errnum errNumߊ  ߎ  ߬  3 3`3a3` l     ߈߇߆߈  ߇  ߆  3a 3b3c3b l     ߅߄߃߅  ߄  ߃  3c 3d3e3d i  ;>3f3g3f I      ߂3h߁߂  0 versioncompare versionCompare3h 3i߀3i o      �� 	0 prefs  ߀  ߁  3g k    3j3j 3k3l3k l     �~�}�|�~  �}  �|  3l 3m3n3m r     
3o3p3o K     3q3q �{3r3s�{ 0 v1  3r m    �z
�z 
null3s �y3t3u�y 0 v2  3t m    �x
�x 
null3u �w3v�v�w 	0 delim  3v m    3w3w �3x3x  .�v  3p o      �u�u 0 defaultprefs defaultPrefs3n 3y3z3y r    3{3|3{ b    3}3~3} o    �t�t 	0 prefs  3~ o    �s�s 0 defaultprefs defaultPrefs3| o      �r�r 	0 prefs  3z 33�3 l   �q�p�o�q  �p  �o  3� 3�3�3� r    *3�3�3� J    3�3� 3�3�3� n   3�3�3� 1    �n
�n 
txdl3� 1    �m
�m 
ascr3� 3��l3� n    3�3�3� o    �k�k 	0 delim  3� o    �j�j 	0 prefs  �l  3� J      3�3� 3�3�3� o      �i�i 0 od  3� 3��h3� n     3�3�3� 1   & (�g
�g 
txdl3� 1   % &�f
�f 
ascr�h  3� 3�3�3� r   + F3�3�3� J   + 73�3� 3�3�3� n   + 03�3�3� 2   . 0�e
�e 
citm3� n   + .3�3�3� o   , .�d�d 0 v1  3� o   + ,�c�c 	0 prefs  3� 3��b3� n   0 53�3�3� 2   3 5�a
�a 
citm3� n   0 33�3�3� o   1 3�`�` 0 v2  3� o   0 1�_�_ 	0 prefs  �b  3� J      3�3� 3�3�3� o      �^�^ 0 v1_list  3� 3��]3� o      �\�\ 0 v2_list  �]  3� 3�3�3� r   G L3�3�3� o   G H�[�[ 0 od  3� n     3�3�3� 1   I K�Z
�Z 
txdl3� 1   H I�Y
�Y 
ascr3� 3�3�3� l  M M�X�W�V�X  �W  �V  3� 3�3�3� r   M h3�3�3� J   M Y3�3� 3�3�3� I  M R�U3��T
�U .corecnte****       ****3� o   M N�S�S 0 v1_list  �T  3� 3��R3� I  R W�Q3��P
�Q .corecnte****       ****3� o   R S�O�O 0 v2_list  �P  �R  3� J      3�3� 3�3�3� o      �N�N 0 v1_count  3� 3��M3� o      �L�L 0 v2_count  �M  3� 3�3�3� Z   i x3�3��K3�3� ?  i l3�3�3� o   i j�J�J 0 v1_count  3� o   j k�I�I 0 v2_count  3� r   o r3�3�3� o   o p�H�H 0 v1_count  3� o      �G�G 0 maxcount maxCount�K  3� r   u x3�3�3� o   u v�F�F 0 v2_count  3� o      �E�E 0 maxcount maxCount3� 3�3�3� l  y y�D�C�B�D  �C  �B  3� 3�3�3� r   y |3�3�3� m   y z3�3� �3�3�  3� o      �A�A 0 versionresult versionResult3� 3�3�3� Y   } �3��@3�3��?3� k   � �3�3� 3�3�3� Z  � �3�3��>�=3� >  � �3�3�3� o   � ��<�< 0 versionresult versionResult3� m   � �3�3� �3�3�  3�  S   � ��>  �=  3� 3�3�3� Z   � �3�3��;3�3� B   � �3�3�3� o   � ��:�: 0 i  3� o   � ��9�9 0 v1_count  3� r   � �3�3�3� n   � �3�3�3� 4   � ��83�
�8 
cobj3� o   � ��7�7 0 i  3� o   � ��6�6 0 v1_list  3� o      �5�5 0 v1_part  �;  3� r   � �3�3�3� m   � ��4�4  3� o      �3�3 0 v1_part  3� 3�3�3� Z   � �3�3��23�3� B   � �3�3�3� o   � ��1�1 0 i  3� o   � ��0�0 0 v2_count  3� r   � �3�3�3� n   � �3�3�3� 4   � ��/3�
�/ 
cobj3� o   � ��.�. 0 i  3� o   � ��-�- 0 v2_list  3� o      �,�, 0 v2_part  �2  3� r   � �3�3�3� m   � ��+�+  3� o      �*�* 0 v2_part  3� 3�3�3� l  � ��)�(�'�)  �(  �'  3� 3�3�3� l  � ��&�%�$�&  �%  �$  3� 3�3�3� Q   � �4 444  k   � �44 444 l  � ��#44�#  4 > 8log ("v1_part: " & v1_part & "   | v2_part: " & v2_part)   4 �44 p l o g   ( " v 1 _ p a r t :   "   &   v 1 _ p a r t   &   "       |   v 2 _ p a r t :   "   &   v 2 _ p a r t )4 4	�"4	 Z   � �4
4444
 ?  � �444 l  � �4�!� 4 c   � �444 o   � ��� 0 v1_part  4 m   � ��
� 
nmbr�!  �   4 l  � �4��4 c   � �444 o   � ��� 0 v2_part  4 m   � ��
� 
nmbr�  �  4 r   � �444 m   � ��� 4 o      �� 0 versionresult versionResult4 444 A  � �444 l  � �4��4 c   � �444 o   � ��� 0 v1_part  4 m   � ��
� 
nmbr�  �  4 l  � �4��4 c   � �4 4!4  o   � ��� 0 v2_part  4! m   � ��
� 
nmbr�  �  4 4"�4" r   � �4#4$4# m   � �����4$ o      �� 0 versionresult versionResult�  4 l  � ��4%4&�  4% 1 + the two versions are the same, so continue   4& �4'4' V   t h e   t w o   v e r s i o n s   a r e   t h e   s a m e ,   s o   c o n t i n u e�"  4 R      ��
�	
� .ascrerr ****      � ****�
  �	  4 r   � �4(4)4( m   � �4*4* �4+4+  ?4) o      �� 0 versionresult versionResult3� 4,4-4, l  � �����  �  �  4- 4.�4. l  � �����  �  �  �  �@ 0 i  3� m   � �� �  3� o   � ����� 0 maxcount maxCount�?  3� 4/404/ l  � ���������  ��  ��  40 414241 Z  �4344����43 =  � �454645 o   � ����� 0 versionresult versionResult46 m   � �4747 �4848  44 r   � �494:49 m   � �����  4: o      ���� 0 versionresult versionResult��  ��  42 4;4<4; l ��������  ��  ��  4< 4=4>4= L  4?4? o  ���� 0 versionresult versionResult4> 4@��4@ l ��������  ��  ��  ��  3e 4A��4A l     ��������  ��  ��  ��       P��4B�� (4C4D4E4F4G4H4I4J4K4L4M4N4O4P4Q4R4S4T4U4V4W4X4Y4Z4[4\4]4^4_4`4a4b4c4d4e4f4g4h4i4j4k4l4m4n4o4p4q4r4s4t4u4v4w4x4y4z4{4|4}4~44�4�4�4�4�4�4�4�4�4�4�4�4�4�4���  4B N����������������������������������������������������������������������������������޿޾޽޼޻޺޹޸޷޶޵޴޳޲ޱްޯޮޭެޫުީިާަޥޤޣޢޡޠޟޞޝޜޛ�� 0 	debugmode 	DebugMode�� 0 
scriptname 
ScriptName�� &0 clickcommandposix clickCommandPosix�� $0 encodecharforurl encodeCharForURL�� $0 encodetextforurl encodeTextForURL�� 0 
getfromfmp 
getFromFMP�� 0 	sendtofmp 	sendToFMP�� 0 closedatabase closeDatabase�� 40 displayfilemakerdatabase displayFileMakerDatabase�� 20 ensurefilemakerdatabase ensureFileMakerDatabase�� .0 openfilemakerdatabase openFileMakerDatabase�� 0 sfr_dictget SFR_DictGet�� 0 sfr_dictitem SFR_DictItem�� 0 
sfr_escape 
SFR_Escape�� 0 sfr_unescape SFR_Unescape�� L0 $fmgui_managedatasources_ensureexists $fmGUI_ManageDataSources_EnsureExists�� @0 fmgui_managedatasources_modify fmGUI_ManageDataSources_Modify�� <0 fmgui_managedatasources_open fmGUI_ManageDataSources_Open�� <0 fmgui_managedatasources_save fmGUI_ManageDataSources_Save�� 60 fmgui_managedb_field_edit fmGUI_ManageDb_Field_Edit�� :0 fmgui_managedb_field_select fmGUI_ManageDb_Field_Select�� >0 fmgui_managedb_fieldlistfocus fmGUI_ManageDb_FieldListFocus�� @0 fmgui_managedb_fieldspicktable fmGUI_ManageDb_FieldsPickTable�� 00 fmgui_managedb_gototab fmGUI_ManageDb_GoToTab�� >0 fmgui_managedb_gototab_fields fmGUI_ManageDb_GoToTab_Fields�� L0 $fmgui_managedb_gototab_relationships $fmGUI_ManageDb_GoToTab_Relationships�� >0 fmgui_managedb_gototab_tables fmGUI_ManageDb_GoToTab_Tables�� B0 fmgui_managedb_listoftablenames fmGUI_ManageDb_ListOfTableNames�� J0 #fmgui_managedb_listofxdbctablenames #fmGUI_ManageDb_ListOfXDBCTableNames�� *0 fmgui_managedb_open fmGUI_ManageDb_Open�� *0 fmgui_managedb_save fmGUI_ManageDB_Save�� N0 %fmgui_managedb_table_listoffieldnames %fmGUI_ManageDb_Table_ListOfFieldNames�� >0 fmgui_managedb_tablelistfocus fmGUI_ManageDb_TableListFocus�� .0 fmgui_managedb_to_add fmGUI_ManageDb_TO_Add�� 60 fmgui_managedb_to_listadd fmGUI_ManageDB_TO_ListAdd�� N0 %fmgui_managescripts_listofscriptnames %fmGUI_ManageScripts_ListOfScriptNames�� <0 fmgui_managesecurity_gototab fmGUI_ManageSecurity_GoToTab�� N0 %fmgui_managesecurity_gototab_accounts %fmGUI_ManageSecurity_GoToTab_Accounts�� N0 %fmgui_managesecurity_gototab_privsets %fmGUI_ManageSecurity_GoToTab_PrivSets�� d0 0fmgui_managesecurity_listofaccountsandprivileges 0fmGUI_ManageSecurity_ListOfAccountsAndPrivileges�� 60 fmgui_managesecurity_open fmGUI_ManageSecurity_Open޿ 60 fmgui_managesecurity_save fmGUI_ManageSecurity_Save޾ &0 fmgui_checkboxset fmGUI_CheckboxSet޽ B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow޼ 40 fmgui_pastefromclipboard fmGUI_PasteFromClipboard޻ :0 fmgui_popup_selectbycommand fmGUI_Popup_SelectByCommand޺  0 fmgui_popupset fmGUI_PopupSet޹ 00 fmgui_selectallandcopy fmGUI_SelectAllAndCopy޸ (0 fmgui_textfieldset fmGUI_TextFieldSet޷ (0 fmgui_appfrontmost fmGUI_AppFrontMost޶ 00 fmgui_dataviewer_close fmGUI_DataViewer_Close޵ .0 fmgui_inspector_close fmGUI_Inspector_Close޴ 00 fmgui_inspector_ensure fmGUI_Inspector_Ensure޳ 20 fmgui_modeensure_browse fmGUI_ModeEnsure_Browse޲ .0 fmgui_modeensure_find fmGUI_ModeEnsure_Findޱ 20 fmgui_modeensure_layout fmGUI_ModeEnsure_Layoutް $0 fmgui_modeselect fmGUI_ModeSelectޯ (0 fmgui_window_close fmGUI_Window_Closeޮ "0 windowwaituntil windowWaitUntilޭ 20 windowwaituntil_frontis windowWaitUntil_FrontISެ "0 indexoflistitem indexOfListItemޫ 0 listcontains listContainsު $0 listuniquevalues listUniqueValuesީ 0 sort  ި 0 
logconsole 
logConsoleާ 0 loglevel logLEVELަ 0 logmain logMAINޥ (0 systemnotification systemNotificationޤ 0 writetofile writeToFileޣ 0 clickatcoords clickAtCoordsޢ *0 clickobjectbycoords clickObjectByCoordsޡ  0 coercetostring coerceToStringޠ 0 gettextbefore getTextBeforeޟ  0 gettextbetween getTextBetweenޞ 0 
parsechars 
parseCharsޝ 0 replacesimple replaceSimpleޜ 0 unparsechars unParseCharsޛ  0 versioncompare versionCompare
�� boovfals4C �4�4� � / U s e r s / e s h a g d a r / C o d e / a p p l e s c r i p t - f m - h e l p e r / v e n d o r / c l i c l i c k / c l i c l i c k4D ޚ @ޙޘ4�4�ޗޚ $0 encodecharforurl encodeCharForURLޙ ޖ4�ޖ 4�  ޕޕ 0 	this_char  ޘ  4� ޔޓޒޑސޔ 0 	this_char  ޓ 0 	ascii_num 	ASCII_numޒ 0 hex_list  ޑ 0 x  ސ 0 y  4� ޏ Z ^ b f j n r v z ~ � � � � � �ގލ �ތ
ޏ .sysoctonshor       TEXTގ 
ލ 
cobj
ތ 
TEXTޗ L�j  E�O���������������a a vE�O�a �a "k/E�O�a �a #k/E�Oa �%�%a &4E ދ �ފމ4�4�ވދ $0 encodetextforurl encodeTextForURLފ އ4�އ 4�  ކޅބކ 0 	this_text  ޅ 0 encode_url_a encode_URL_Aބ 0 encode_url_b encode_URL_Bމ  4� 	ރނށހ��~�}�|�{ރ 0 	this_text  ނ 0 encode_url_a encode_URL_Aށ 0 encode_url_b encode_URL_Bހ 0 standard_characters  � 0 url_a_chars URL_A_chars�~ 0 url_b_chars URL_B_chars�} 0 acceptable_characters  �| 0 encoded_text  �{ 0 	this_char  4� 	 � � ��z�y�x�w�v
�z 
kocl
�y 
cobj
�x .corecnte****       ****�w $0 encodecharforurl encodeCharForURL
�v 
TEXTވ g�E�O�E�O�E�O�E�O�f  
��%E�Y hO�f  
��%E�Y hO�E�O .�[��l kh �� 
��%E�Y �*�k+ %�&E�[OY��O�4F �u@�t�s4�4��r�u 0 
getfromfmp 
getFromFMP�t �q4��q 4�  �p�p 	0 prefs  �s  4� 
�o�n�m�l�k�j�i�h�g�f�o 	0 prefs  �n 0 fmtype fmType�m 0 
astransfer 
asTransfer�l 0 fmpname fmpName�k 0 fmpactivename fmpActiveName�j 0 begintellfm beginTellFM�i 0 	endtellfm 	endTellFM�h 0 	codetoget 	codeToGet�g 0 
sendsource 
sendSource�f 0 	inputdata 	inputData4� �e�d�c]ek�b��a4��`����_����������^�e 0 fmtype fmType�d  �c  
�b .earsffdralis        afdr
�a 
pcap4�  
�` 
dnam
�_ 
ret 
�^ .sysodsct****        scpt�r � 
��,E�W 
X  �E�O�E�O�E�O)j � Y� *�k/�[�,\Z�>1�,E�UO��  �%�%�%E�Y %��  a �%E�Y �a   a �%E�Y hO�a %E�Y a E�Oa E�Oa �%a %E�O��%�%E�O�j E�O�4G �]��\�[4�4��Z�] 0 	sendtofmp 	sendToFMP�\ �Y4��Y 4�  �X�X 0 somedata someData�[  4� �W�V�U�T�S�R�Q�P�O�N�M�L�W 0 somedata someData�V 0 fmtype fmType�U 0 
astransfer 
asTransfer�T 0 fmpname fmpName�S 0 fmpactivename fmpActiveName�R 0 begintellfm beginTellFM�Q 0 	endtellfm 	endTellFM�P "0 somedatacleaned someDataCleaned�O 0 	olddelims 	oldDelims�N 0 	backslash  �M 0 	codetoset 	codeToSet�L 0 
sendsource 
sendSource4� #�K�J�I�H#�G>�F4��EFPR�DX`fmv}��C�B�A�@�?�>������=�K 0 fmtype fmType�J 0 somedata someData�I  �H  
�G .earsffdralis        afdr
�F 
pcap
�E 
dnam
�D 
ret 
�C 
TEXT
�B 
ascr
�A 
txdl�@ \
�? .sysontocTEXT       shor
�> 
citm
�= .sysodsct****        scpt�Z* ��,E�O��,E�W 
X  �E�O�E�O�E�O)j � [� *�k/�[�,\Z�>1�,E�UO��  ��%�%�%E�Y '�a   a �%E�Y �a   a �%E�Y hO�a %E�Y a E�Oa E�O�a &E�O_ a ,E�Oa j E�O�_ a ,FO�a -E�O��%_ a ,FO�a &E�Oa _ a ,FO�a -E�O�a %_ a ,FO�a &E�O�_ a ,FOa �%a  %�%a !%E�O��%�%E�O�j "OP4H �<�;�:4�4��9�< 0 closedatabase closeDatabase�; �84��8 4�  �7�7 	0 prefs  �:  4� �6�5�4�3�2�1�0�/�.�-�,�+�6 	0 prefs  �5 0 defaultprefs defaultPrefs�4 ,0 waitsavetotalseconds waitSaveTotalSeconds�3 .0 waitcycledelayseconds waitCycleDelaySeconds�2 0 dbname dbName�1 0 waitcyclemax waitCycleMax�0 0 errmsg errMsg�/ 0 errnum errNum�. 0 fmprocessname fmProcessName�- ,0 closewindowavailable closeWindowAvailable�, "0 runscriptbutton runScriptButton�+ "0 frontwindowname frontWindowName4� ;�*(�)�(�'�&�%�$�#3�"�!� �������4���������a��������������4��%��
�	�6��JOQ�i�* 0 	fmapptype 	fmAppType�) .0 waitcycledelayseconds waitCycleDelaySeconds�( 
�' ,0 waitsavetotalseconds waitSaveTotalSeconds
�& 
min �% 0 dbname dbName
�$ 
null�# "0 closescriptname closeScriptName
�" 
dire
�! olierndD
�  .sysorondlong        doub
� 
cDB 
� .coreclosnull���    obj � 0 
logconsole 
logConsole� 0 errmsg errMsg4� ���
� 
errn� 0 errnum errNum�  � � 0 loglevel logLEVEL� (0 fmgui_appfrontmost fmGUI_AppFrontMost
� 
pcap
� 
mbar
� 
mbri
� 
menE
� 
menI
� 
enaB
� .sysodelanull��� ��� nmbr� 40 fmgui_managescripts_open fmGUI_ManageScripts_Open� 0 fmscriptname fmScriptName� J0 #fmgui_managescripts_fmscript_select #fmGUI_ManageScripts_FmScript_Select
� 
cwin
� 
butT
� 
desc
� .prcsclicnull��� ��� uiel
�
 
pnam
�	 
errn� �  �  � 60 fmgui_managescripts_close fmGUI_ManageScripts_Close�9�������� �����E�O��%E�O��,E�O��,E�O��,E�O��!��l E�O���,� _ 5� -*�/j Ob    )b  a �%a %l+ Y hOeUW &X  b    )a a �%a %�%l+ Y hY hO*j+ O��,a   
a E�Y a E�Oa  �*a �/ �fE�O :�kh*a k/a  a !/a "k/a #a $/a %,E�O� Y hO�j &[OY��O _� =)jvk+ 'O)a (��,lk+ )O*a *k/a +k/a ,[a -,\Za .81E�O�j /Y *a *k/a 0,E�O)a 1a 2la 3�%W FX 4 5b     *b  a 6��,%a 7%�%a 8%l+ Y hO)jvk+ 9O*a *k/a +k/j /OPUUW X  )a 1�la :�%OP4I �t� ��4�4���� 40 displayfilemakerdatabase displayFileMakerDatabase�  ��4��� 4�  ���� 	0 prefs  ��  4� �������������������������� 	0 prefs  �� 0 defaultprefs defaultPrefs�� 0 dbname dbName�� ,0 waitsavetotalseconds waitSaveTotalSeconds�� .0 waitcycledelayseconds waitCycleDelaySeconds�� 0 waitcyclemax waitCycleMax�� 0 fmappbundleid fmAppBundleID�� 0 doclist docList�� 0 errmsg errMsg�� 0 errnum errNum�� 0 onedoc oneDoc�� 0 docname docName4� 0����������������������������������������4���������������������������E��������_������� 0 	fmapptype 	fmAppType�� .0 waitcycledelayseconds waitCycleDelaySeconds�� �� ,0 waitsavetotalseconds waitSaveTotalSeconds
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
docu�� 0 errmsg errMsg4� ������
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
�j *Y hOga + Q�a "&�a "&  Aa Z*a �a 0 *�j ,Ob    )b  a -)�k+ %l+ 	Y hOPUOeY hV[OY�3OfOPW X  )a �la .�%a /%�%OP4J �������4�4����� 20 ensurefilemakerdatabase ensureFileMakerDatabase�� ��4��� 4�  ���� 	0 prefs  ��  4� �������� 	0 prefs  �� 0 dbname dbName�� 0 isdisplayed isDisplayed4� ��ݿ�ݾݽ�ݼݻݺ%1�� 0 dbname dbNameݿ 0 	fmapptype 	fmAppTypeݾ ݽ 40 displayfilemakerdatabase displayFileMakerDatabaseݼ 0 
logconsole 
logConsoleݻ .0 openfilemakerdatabase openFileMakerDatabase
ݺ .sysodelanull��� ��� nmbr�� ���,E�O*����k+ E�Ob    *b  �%l+ Y hO� eY Zb    *b  �%l+ Y hO*�k+  5�j 
Ob    *b  �%l+ Y hO*����k+ E�O�Y f4K ݹDݸݷ4�4�ݶݹ .0 openfilemakerdatabase openFileMakerDatabaseݸ ݵ4�ݵ 4�  ݴݴ 	0 prefs  ݷ  4� ݳݲݱݰݯݳ 	0 prefs  ݲ 0 	customurl 	customURLݱ 0 fmpurl fmpURLݰ 0 errmsg errMsgݯ 0 errnum errNum4� ]ݮa�~ݭ�ݬ�ݫ�ݪ��ݩ���ݨݧݦ4�ݮ 0 dbname dbNameݭ 0 serverip serverIPݬ 0 
maindbname 
mainDbNameݫ <0 customlinkreceiverscriptname customLinkReceiverScriptNameݪ $0 encodetextforurl encodeTextForURLݩ 0 replacesimple replaceSimpleݨ 0 
logconsole 
logConsole
ݧ .GURLGURLnull��� ��� TEXTݦ 0 errmsg errMsg4� ݥݤݣ
ݥ 
errnݤ 0 errnum errNumݣ  ݶ � w��,%�%E�O� `��,%�%��,%�%��,%�%)�efm+ %E�O)���mvk+ E�O)��a mvk+ E�Ob    )b  a �%l+ Y hO�j OPUOeOPW X  �OPOP4L ݢ�ݡݠ4�4�ݟݢ 0 sfr_dictget SFR_DictGetݡ ݞ4�ݞ 4�  ݝݜݝ 0 somedict someDictݜ 0 itemname itemNameݠ  4� ݛݚݙݘݗݖݕݛ 0 somedict someDictݚ 0 itemname itemNameݙ 0 	keystring 	keyStringݘ 0 	endstring 	endStringݗ 0 	olddelims 	oldDelimsݖ 0 
keyremoved 
keyRemovedݕ 0 	itemvalue 	itemValue4� 
ݔ%ݓݒݑEݐݔ 0 
sfr_escape 
SFR_Escape
ݓ 
ascr
ݒ 
txdl
ݑ 
citmݐ 0 sfr_unescape SFR_Unescapeݟ Y�*�k+ %�%E�O�E�O�� �Y 3��,E�O���,FO��l/E�O�� �Y ���,FO��k/E�O���,FO*�k+ 	OP4M ݏlݎݍ4�4�݌ݏ 0 sfr_dictitem SFR_DictItemݎ ݋4�݋ 4�  ݊݉݊ 0 itemname itemName݉ 0 	itemvalue 	itemValueݍ  4� ݈݇݈ 0 itemname itemName݇ 0 	itemvalue 	itemValue4� �݆��݆ 0 
sfr_escape 
SFR_Escape݌ �*�k+ %�%*�k+ %�%4N ݅�݄݃4�4�݂݅ 0 
sfr_escape 
SFR_Escape݄ ݁4�݁ 4�  ݀݀ 0 
somestring 
someString݃  4� ��~�}� 0 
somestring 
someString�~  0 escapecharlist escapeCharList�} 0 onechar oneChar4� 
�����|�{�z�y��x�| 
�{ 
kocl
�z 
cobj
�y .corecnte****       ****�x 0 replacesimple replaceSimple݂ 4�����vE�O $�[��l kh *���%mvk+ 	E�OP[OY��O�OP4O �w��v�u4�4��t�w 0 sfr_unescape SFR_Unescape�v �s4��s 4�  �r�r 0 
somestring 
someString�u  4� �q�p�o�q 0 
somestring 
someString�p  0 escapecharlist escapeCharList�o 0 onechar oneChar4� 
�����n�m�l�k�j�n 
�m 
kocl
�l 
cobj
�k .corecnte****       ****�j 0 replacesimple replaceSimple�t 4�����vE�O $�[��l kh *��%�mvk+ 	E�OP[OY��O�OP4P �i�h�g4�4��f�i L0 $fmgui_managedatasources_ensureexists $fmGUI_ManageDataSources_EnsureExists�h �e4��e 4�  �d�d 	0 prefs  �g  4� �c�b�a�`�_�^�c 	0 prefs  �b 0 defaultprefs defaultPrefs�a  0 datasourcename dataSourceName�`  0 datasourcepath dataSourcePath�_ 0 errmsg errMsg�^ 0 errnum errNum4� "�]�\�[�ZT�Y��X��W�V�U�T�S4��R�Q�P�O��N��M�L�K�J����I4��H���]  0 datasourcename dataSourceName
�\ 
null�[  0 datasourcepath dataSourcePath�Z �Y <0 fmgui_managedatasources_open fmGUI_ManageDataSources_Open
�X 
pcap�W (0 fmgui_appfrontmost fmGUI_AppFrontMost
�V 
cwin
�U 
scra
�T 
tabB
�S 
crow
�R 
sttx
�Q 
pnam
�P .coredoexnull���     ****
�O 
butT�N B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow
�M .sysodelanull��� ��� nmbr
�L 
txtf
�K 
valL
�J 
txta�I 0 errmsg errMsg4� �G�F�E
�G 
errn�F 0 errnum errNum�E  
�H 
errn�f�����E�O��%E�O��,E�O��,E�O��  
�%E�Y hO �*jvk+ O� �*��/ �)j+ 	O*�k/�k/�k/�k/�[�k/a ,\Z�81j  v)*�k/a k/�[a ,\Za >1k+ Oa j O�*�k/a k/a ,FO�*�k/�k/a k/a ,FO)*�k/a k/�[a ,\Za >1k+ Oa j Oa �%Y a �%UUOPW X  )a �la  �%a !%�%OP4Q �D	�C�B4�4��A�D @0 fmgui_managedatasources_modify fmGUI_ManageDataSources_Modify�C �@4��@ 4�  �?�? 	0 prefs  �B  4� �>�=�<�;�:�9�> 	0 prefs  �= 0 defaultprefs defaultPrefs�<  0 datasourcename dataSourceName�;  0 datasourcepath dataSourcePath�: 0 errmsg errMsg�9 0 errnum errNum4� #�8�7�6�5	?�4	��3	��2�1�0�/�.4��-�,�+�*�)	��(	��'�&�%�$	�	�	��#4��"	�	��8  0 datasourcename dataSourceName
�7 
null�6  0 datasourcepath dataSourcePath�5 �4 <0 fmgui_managedatasources_open fmGUI_ManageDataSources_Open
�3 
pcap�2 (0 fmgui_appfrontmost fmGUI_AppFrontMost
�1 
cwin
�0 
scra
�/ 
tabB
�. 
crow
�- 
sttx
�, 
pnam
�+ .coredoexnull���     ****
�* .miscslctnull���     uiel
�) 
butT�( B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow
�' .sysodelanull��� ��� nmbr
�& 
txtf
�% 
valL
�$ 
txta�# 0 errmsg errMsg4� �!� �
�! 
errn�  0 errnum errNum�  
�" 
errn�A&�����E�O��%E�O��,E�O��,E�O��  
�%E�Y hO �*jvk+ O� �*��/ �)j+ 	O*�k/�k/�k/�k/�[�k/a ,\Z�81j  �*�k/�k/�k/�k/�[�k/a ,\Z�81j O)*�k/a k/�[a ,\Za >1k+ Oa j O�*�k/a k/a ,FO�*�k/�k/a k/a ,FO)*�k/a k/�[a ,\Za >1k+ Oa j Oa �%Y 
a �%OPUUOPW X  )a  �la !�%a "%�%OP4R �
��4�4��� <0 fmgui_managedatasources_open fmGUI_ManageDataSources_Open� �4�� 4�  �� 	0 prefs  �  4� ���� 	0 prefs  � 0 errmsg errMsg� 0 errnum errNum4� 
T�
R���
-��
H��
@4�
M��4��
\
� 
pcap� (0 fmgui_appfrontmost fmGUI_AppFrontMost
� 
cwin
� 
pnam
� 
mbar
� 
mbri
� 
menE
� 
menI
� .prcsclicnull��� ��� uiel� 0 errmsg errMsg4� �
�	�
�
 
errn�	 0 errnum errNum�  
� 
errn� ` K� C*��/ ;)j+ O*�k/�,� eY %*�k/��/�k/��/�k/�k/�[�,\Z�>1j OeUUW X  )a �la �%OP4S �
g��4�4��� <0 fmgui_managedatasources_save fmGUI_ManageDataSources_Save� �4�� 4�  �� 	0 prefs  �  4� 	�� ��������������� 	0 prefs  �  0 defaultprefs defaultPrefs�� 00 managewindownameprefix manageWindowNamePrefix�� .0 waitcycledelayseconds waitCycleDelaySeconds�� ,0 waitsavetotalseconds waitSaveTotalSeconds�� 0 waitcyclemax waitCycleMax�� $0 managewindowname manageWindowName�� 0 errmsg errMsg�� 0 errnum errNum4� !��
�����������4����������
�������4���
���
���������������<�� 40 notinmanagewindowiserror notInManageWindowIsError�� 
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
�� .sysodelanull��� ��� nmbr�� 0 errmsg errMsg4� ������
�� 
errn�� 0 errnum errNum��  
�� 
errn�� �� 0 
windowname 
windowName��  0 windownametest windowNameTest�� 0 whichwindow whichWindow�� .0 waitcycledelayseconds waitCycleDelaySeconds�� 0 waitcyclemax waitCycleMax�� 
�� "0 windowwaituntil windowWaitUntil� ��elE�O��%E�O�E�O�E�O�� E�O��!��l E�O �� �*��/ c)j+ 
O*�k/�,� 8 !*�k/�,E�O*�k/��/j Okj OPW X  )a �la �%Y ��,E )a a la Y eOPUO)a �a a a a a �a �a k+ Okj OeOPUW X  )a �la  �%OP4T ��G����4�4����� 60 fmgui_managedb_field_edit fmGUI_ManageDb_Field_Edit�� ��4��� 4�  ���� 	0 prefs  ��  4� ���������������������������������������������� 	0 prefs  �� 0 defaultprefs defaultPrefs�� 0 editmode editMode�� $0 fieldnowselected fieldNowSelected�� 0 changebutton changeButton��  0 fieldtypepopup fieldTypePopup�� *0 notevaluatecheckbox notEvaluateCheckbox�� 0 workingarea workingArea�� .0 globalstoragecheckbox globalStorageCheckbox�� (0 donotstorecheckbox doNotStoreCheckbox�� &0 autoindexcheckbox autoIndexCheckbox�� 0 datatypepopup dataTypePopup�� 0 fdsfdsf  �� 0 
menuchoice 
menuChoice�� 0 datacheckbox dataCheckbox�� .0 autoentercalccheckbox autoEnterCalcCheckbox�� 20 autoentercalccode_value autoEnterCalcCode_VALUE�� @0 overwriteexistingvaluecheckbox overwriteExistingValueCheckbox�� *0 prohibitmodcheckbox prohibitModCheckbox�� 40 validationcalccode_value validationCalcCode_VALUE�� 0 errmsg errMsg�� 0 errnum errNum4� ���`����ܾܼܻܹܸܷܴܱܿܽܺܶܵܳܲܰܯܮܭܬܫܪܩܨܧܦܥܤ
ܣܢܡܠܟ4�ܞܝ5ܜܛCܚNܙܘaܗpt~��ܖܕ����ܔܓܒ2Chܑtܐ�܏܎܍��܌ ܋#6P��܊�܉�܈܇�����*7APZh������)~��4Egrvy�܆��&܅ar��������'1?_�܄��܃%܂܁9CNY}���������������%-3;AIOW\ht�����Wf��܀��FSWZ��*N����������4� �~$�� 0 editmode editMode�� 0 	tablename 	tableName
�� 
nullܿ 0 	fieldname 	fieldNameܾ 0 altpatterns altPatternsܽ 0 fieldcomment fieldCommentܼ 0 datatype dataTypeܻ 0 	fieldtype 	fieldTypeܺ 0 calccode calcCodeܹ &0 autoentercalccode autoEnterCalcCodeܸ 20 autoentercalccontexttoc autoEnterCalcContextTOCܷ  0 alwaysevaluate alwaysEvaluateܶ  0 calccontexttoc calcContextTOCܵ 0 storageglobal storageGlobalܴ 20 storecalculationresults storeCalculationResultsܳ (0 storageindexchoice storageIndexChoiceܲ 0 	autoindex 	autoIndexܱ 0 maxrepetition maxRepetitionܰ 0 indexlanguage indexLanguageܯ 0 allowediting allowEditingܮ 00 overwriteexistingvalue overwriteExistingValueܭ *0 autoenterisconstant autoEnterIsConstantܬ 00 autoenteriscalculation autoEnterIsCalculationܫ &0 autoenterislookup autoEnterIsLookupܪ .0 autoenterspecialvalue autoEnterSpecialValueܩ 0 
autoserial 
autoSerialܨ .0 autoenterconstantdata autoEnterConstantDataܧ (0 validationcalccode validationCalcCodeܦ 40 validationcalccontexttoc validationCalcContextTOCܥ 8ܤ :0 fmgui_managedb_field_select fmGUI_ManageDb_Field_Select
ܣ 
pcapܢ (0 fmgui_appfrontmost fmGUI_AppFrontMost
ܡ 
cwin
ܠ 
tabg
ܟ 
butT
ܞ 
titl
ܝ 
txtfܜ (0 fmgui_textfieldset fmGUI_TextFieldSet
ܛ .prcsclicnull��� ��� uiel
ܚ .sysodelanull��� ��� nmbr
ܙ 
bool
ܘ 
popB
ܗ 
valL
ܖ 
errnܕ ܔ  0 fmgui_popupset fmGUI_PopupSetܓ B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow
ܒ 
pnamܑ 0 
windowname 
windowNameܐ 20 windowwaituntil_frontis windowWaitUntil_FrontIS
܏ 
scra܎ 
܍ 
txta
܌ 
chbx܋ &0 fmgui_checkboxset fmGUI_CheckboxSet܊  0 windownametest windowNameTest܉ 0 whichwindow whichWindow܈ ܇ "0 windowwaituntil windowWaitUntil
܆ 
radB܅ *0 clickobjectbycoords clickObjectByCoords
܄ 
pcls܃ 0 autonextvalue autoNextValue܂ 0 autoincrement autoIncrement܁ 0 autogenerate autoGenerate
܀ 
leng� 0 errmsg errMsg4� �}�|�{
�} 
errn�| 0 errnum errNum�{  �~  0 coercetostring coerceToString�������������������������������a �a �a �a �a �a �a �a �a �a �a �a �a �a �a E�O��%E�O��,E�O��,� e�a ,FY hO*�k+ E�O� fY hOa  �*a !a "/�)j+ #O*a $k/a %k/a &k/a '[a (,\Za )81E�O��,� 3)*a $k/a %k/a *a +/��,l+ , 
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
a �E�Y hO)�a 2a �/�l+ AOPY u�a ,a �  Z)�a Qk/a '[a (,\Za �81jl+ SO)�a Qk/a '[a (,\Za �81jl+ SO)�a Qk/a '[a D,\Za �@1jl+ SOPY �a ,�  hY hOPY hO�a ,� a�a Qk/a '[a D,\Za �@1E�O�a ,E 4)�kl+ SO�a ,�  hY )�a La �/a Na �/�a ,l+ ,Y 	)�jl+ SOPY hO�a ,� hY hO�a ,���a , )�a Qa �/jl+ SOPY�a Qa �/E�O�a 4,k )�k+ CY )�a &k/a '[a D,\Za �>1k+ CO)a Ha �lk+ JO*a $k/E�O��,a �,j  a �E^ Y 	��,E^ O)*a $k/a La M/a Nk/] l+ ,O��,� ")�a 2k/a '[a D,\Za �@1��,l+ AY hO��,� 5�a Qk/a '[a D,\Za �@1E�O��,E )�jl+ SY 	)�kl+ SY hO)�a &k/a '[a D,\Za �@1k+ CO)a Ha �a Ya �a [a �a ]k+ ^O*a $k/a %k/E�O�a ,� =�a Qk/a '[a D,\Za �@1E^ O�a ,E )] jl+ SY )] kl+ SY hOPOPY hO�a ,� =�a Qk/a '[a D,\Za �@1E^ O�a ,E )] jl+ SY )] kl+ SY hO�a �a �/j -O�a ,� �)�a &a �/k+ CO)a Ha �lk+ JO*a $k/E�O�a ,a �,j  a �E^ Y �a ,E^ O)*a $k/a La M/a Nk/] l+ ,O�a ,� $)�a 2k/a '[a D,\Za �@1�a ,l+ AY hO)�a &k/a '[a D,\Za �@1k+ CO)a Ha �a Ya �a [a �a ]k+ ^O*a $k/a %k/E�OPY hO)*a $k/a &k/a '[a D,\Za �@1k+ CO)a Ha �a Ya �a [a �a ]k+ ^OeOPY hOeOPUUOPW "X � �)a :] la �*�k+ �%a �%] %OP4U �z1�y�x4�4��w�z :0 fmgui_managedb_field_select fmGUI_ManageDb_Field_Select�y �v4��v 4�  �u�u 	0 prefs  �x  4� �t�s�r�q�p�o�n�m�l�k�j�i�h�g�f�e�d�t 	0 prefs  �s 0 defaultprefs defaultPrefs�r  0 testcodeheader testCodeHeader�q 0 
selectcode 
selectCode�p 0 
rowrefcode 
rowRefCode�o 0 	whosecode 	whoseCode�n *0 fieldnameobjectcode fieldNameObjectCode�m $0 betweentestscode betweenTestsCode�l &0 afteralltestscode afterAllTestsCode�k  0 testcodefooter testCodeFooter�j 0 errmsg errMsg�i 0 errnum errNum�h $0 fieldnowselected fieldNowSelected�g 0 onealtpattern oneAltPattern�f 0 testlist testList�e 0 testcode testCode�d 0 
onetestrec 
oneTestRec4� 4�c�b�a�`�_]�^`flrx�����]�\�[��Z��Y�X�W�V�U4��T�S�R�Q4��P�O�N�M�L�K�J8�I<�H�GV�Fl�E��D��c 0 	fieldname 	fieldName
�b 
null�a 0 	tablename 	tableName�` 0 altpatterns altPatterns�_ 
�^ 
ret �] >0 fmgui_managedb_fieldlistfocus fmGUI_ManageDb_FieldListFocus�\ @0 fmgui_managedb_fieldspicktable fmGUI_ManageDb_FieldsPickTable�[ (0 fmgui_appfrontmost fmGUI_AppFrontMost
�Z 
pcap
�Y 
cwin
�X 
tabg
�W 
scra
�V 
tabB
�U 
crow
�T 
sttx
�S 
valL
�R .miscslctnull���     uiel�Q 0 errmsg errMsg4� �C�B�A
�C 
errn�B 0 errnum errNum�A  �P�I
�O 
errn
�N 
kocl
�M 
cobj
�L .corecnte****       ****�K 0 pattern  
�J 
pcnt�I 0 testtype testType�H 0 	testmatch 	testMatch�G 0 quotestring quoteString�F 0 unparsechars unParseChars
�E .sysodsct****        scpt�D  0 coercetostring coerceToString�w��������E�O��%E�O��%�%�%E�O�E�O�E�O�E�O�E�O�E�O�E�O��%�%�%E�O]*jvk+ O��,� *��,k+ Y hO*j+ O Ma  @*a a / 4*a k/a k/a k/a k/a k/a [a k/a ,\Z��,81j UUOeW �X   �a ! )a "�l�Y �fE�O à�,[a #a $l %kh �a &,a ',E�O jvE�O 7�[a #a $l %kh a (] a ),%a *%)] a +,k+ ,%�6G[OY��O)���%a -%l+ .E�O��%�%�%a /%�%�%E�O��%�%E�O) �j 0UOeE�OOPW X   �a ! )a "�l�Y hOPOP[OY�QO�OPOPW X   )a "�la 1*�k+ 2%a 3%�%OP4V �@��?�>4�4��=�@ >0 fmgui_managedb_fieldlistfocus fmGUI_ManageDb_FieldListFocus�? �<4��< 4�  �;�; 	0 prefs  �>  4� �:�9�8�: 	0 prefs  �9 0 errmsg errMsg�8 0 errnum errNum4� �7�6�5�4�3�2�1�0�/4��.�7 >0 fmgui_managedb_gototab_fields fmGUI_ManageDb_GoToTab_Fields
�6 
pcap�5 (0 fmgui_appfrontmost fmGUI_AppFrontMost
�4 
cwin
�3 
tabg
�2 
scra
�1 
tabB
�0 
focu�/ 0 errmsg errMsg4� �-�,�+
�- 
errn�, 0 errnum errNum�+  
�. 
errn�= G 6*jvk+  O� $*��/ )j+ Oe*�k/�k/�k/�k/�,FOeUUOPW X 
 )�l��%OP4W �*%�)�(4�4��'�* @0 fmgui_managedb_fieldspicktable fmGUI_ManageDb_FieldsPickTable�) �&4��& 4�  �%�% 0 basetablename baseTableName�(  4� �$�#�"�$ 0 basetablename baseTableName�# 0 errmsg errMsg�" 0 errnum errNum4� �!V� T���J��4��bd�! >0 fmgui_managedb_gototab_fields fmGUI_ManageDb_GoToTab_Fields
�  
pcap
� 
cwin
� 
tabg
� 
popB�  0 fmgui_popupset fmGUI_PopupSet� 0 errmsg errMsg4� ���
� 
errn� 0 errnum errNum�  
� 
errn�' B -*jvk+  O� *��/ )*�k/�k/��/�l+ OeUUW X 	 
)�l�%�%�%OP4X �o��4�4��� 00 fmgui_managedb_gototab fmGUI_ManageDb_GoToTab� �4�� 4�  �� 	0 prefs  �  4� ������ 	0 prefs  � 0 defaultprefs defaultPrefs� 0 	tabobject 	tabObject� 0 errmsg errMsg� 0 errnum errNum4� ���
�	������4�����4�� ��� 0 tabname tabName�
 (0 fmgui_appfrontmost fmGUI_AppFrontMost�	 *0 fmgui_managedb_open fmGUI_ManageDb_Open
� 
pcap
� 
cwin
� 
tabg
� 
radB
� 
titl
� 
valL
� .prcsclicnull��� ��� uiel� 0 errmsg errMsg4� ������
�� 
errn�� 0 errnum errNum��  
�  
errn� w��lE�O��%E�O M*j+ O*jvk+ O� 7*��/ /*�k/�k/�k/�[�,\Z��,@1E�O��,k 
�j Y hOeUUW X  )a �la ��,%a %�%OP4Y �������4�4����� >0 fmgui_managedb_gototab_fields fmGUI_ManageDb_GoToTab_Fields�� ��4��� 4�  ���� 	0 prefs  ��  4� ���� 	0 prefs  4� ������� 0 tabname tabName�� 00 fmgui_managedb_gototab fmGUI_ManageDb_GoToTab�� *��lk+ OP4Z �������4�4����� L0 $fmgui_managedb_gototab_relationships $fmGUI_ManageDb_GoToTab_Relationships�� ��4��� 4�  ���� 	0 prefs  ��  4� ���� 	0 prefs  4� ������ 0 tabname tabName�� 00 fmgui_managedb_gototab fmGUI_ManageDb_GoToTab�� *��lk+ OP4[ ������4�4����� >0 fmgui_managedb_gototab_tables fmGUI_ManageDb_GoToTab_Tables�� ��4��� 4�  ���� 	0 prefs  ��  4� ���� 	0 prefs  4� ��!���� 0 tabname tabName�� 00 fmgui_managedb_gototab fmGUI_ManageDb_GoToTab�� *��lk+ OP4\ ��+����4�4����� B0 fmgui_managedb_listoftablenames fmGUI_ManageDb_ListOfTableNames�� ��4��� 4�  ���� 	0 prefs  ��  4� ���������� 	0 prefs  �� 0 fmtablenames fmTableNames�� 0 errmsg errMsg�� 0 errnum errNum4� ��w��u������������4�����j����4����� >0 fmgui_managedb_gototab_tables fmGUI_ManageDb_GoToTab_Tables
�� 
pcap�� (0 fmgui_appfrontmost fmGUI_AppFrontMost
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
valL�� *0 fmgui_managedb_save fmGUI_ManageDB_Save�� 0 errmsg errMsg4� ������
�� 
errn�� 0 errnum errNum��  
�� 
errn�� b M*jvk+  O� =*��/ 5)j+ O*�k/�k/�k/�k/�-�[�l/�,\Z�81�k/�,E�O)jvk+ O�UUW X  )a �la �%OP4] �������4�4����� J0 #fmgui_managedb_listofxdbctablenames #fmGUI_ManageDb_ListOfXDBCTableNames�� ��4��� 4�  ���� 	0 prefs  ��  4� ����ۿ۾�� 	0 prefs  ��  0 xdbctablenames xDBCTableNamesۿ 0 errmsg errMsg۾ 0 errnum errNum4� ۽�ۼ�ۻۺ۹۸۷۶4�۵۴�۳۲4�۱�۽ >0 fmgui_managedb_gototab_tables fmGUI_ManageDb_GoToTab_Tables
ۼ 
pcapۻ (0 fmgui_appfrontmost fmGUI_AppFrontMost
ۺ 
cwin
۹ 
tabg
۸ 
scra
۷ 
tabB
۶ 
crow
۵ 
sttx
۴ 
valL۳ *0 fmgui_managedb_save fmGUI_ManageDB_Save۲ 0 errmsg errMsg4� ۰ۯۮ
۰ 
errnۯ 0 errnum errNumۮ  
۱ 
errn�� b M*jvk+  O� =*��/ 5)j+ O*�k/�k/�k/�k/�-�[�l/�,\Z�91�k/�,E�O)jvk+ O�UUW X  )a �la �%OP4^ ۭ�۬۫4�4�۪ۭ *0 fmgui_managedb_open fmGUI_ManageDb_Open۬ ۩4�۩ 4�  ۨۨ 	0 prefs  ۫  4� ۧۦۥۣۤۧ 	0 prefs  ۦ *0 lookingforxdbcerror lookingForXDBCErrorۥ 0 	zoomfield 	zoomFieldۤ 0 errmsg errMsgۣ 0 errnum errNum4� (5ۢ3ۡ۠۟۞۝-ۜۛ%4�2ۚۙRۘaۗ���ۖە۔��ۓےۑ�ېۏێۍ4�ی=
ۢ 
pcapۡ (0 fmgui_appfrontmost fmGUI_AppFrontMost
۠ 
cwin
۟ 
pnam
۞ 
mbar
۝ 
mbri
ۜ 
menE
ۛ 
menI
ۚ .prcsclicnull��� ��� uiel
ۙ .sysodelanull��� ��� nmbr
ۘ 
butTۗ L0 $fmgui_managedb_gototab_relationships $fmGUI_ManageDb_GoToTab_Relationships
ۖ 
faal
ە eMdsKcmd
۔ .prcskprsnull���     ctxt
ۓ 
tabg
ے 
txtf
ۑ 
focu
ې 
valL
ۏ 
scra
ێ 
scrbۍ 0 errmsg errMsg4� ۋۊۉ
ۋ 
errnۊ 0 errnum errNumۉ  
ی 
errn۪����*��/�)j+ O*�k/�,� eYs*�k/��/�k/��/�k/�k/�[�,\Z�>1j Okj OeE�O ;h�*�k/�,a  #*�k/a k/�[�,\Za 81j Okj Y fE�[OY��O)jvk+ Okj OeE�O ;h�*�k/�,a  #*�k/a k/�[�,\Za 81j Okj Y fE�[OY��Oa a a l Okj OeE�O 2h�*�k/�,a  *�k/a a /j Okj Y fE�[OY��O*�k/a k/a k/E�Oe�a ,FOa  �a !,FOe*�k/a k/a "k/a ,FOj*�k/a k/a "k/a #k/a !,FOj*�k/a k/a "k/a #l/a !,FOeUUW X $ %)a &�la '�%OP4_ ۈHۇۆ4�4�ۅۈ *0 fmgui_managedb_save fmGUI_ManageDB_Saveۇ ۄ4�ۄ 4�  ۃۃ 	0 prefs  ۆ  4� 	ۂہۀ��~�}�|�{�zۂ 	0 prefs  ہ 0 defaultprefs defaultPrefsۀ 40 managedbwindownameprefix manageDbWindowNamePrefix� .0 waitcycledelayseconds waitCycleDelaySeconds�~ ,0 waitsavetotalseconds waitSaveTotalSeconds�} 0 waitcyclemax waitCycleMax�| (0 managedbwindowname manageDbWindowName�{ 0 errmsg errMsg�z 0 errnum errNum4� !�yi�x�w�v�u�t�s�r��q�p�o�n��m�l�k4��j��i��h�g��f �e�d�c�y ,0 notinmanagedbiserror notInManageDbIsError�x 
�w <
�v 
min 
�u 
dire
�t olierndD
�s .sysorondlong        doub
�r 
pcap�q (0 fmgui_appfrontmost fmGUI_AppFrontMost
�p 
cwin
�o 
pnam
�n 
butT
�m .prcsclicnull��� ��� uiel
�l .sysodelanull��� ��� nmbr�k 0 errmsg errMsg4� �b�a�`
�b 
errn�a 0 errnum errNum�`  
�j 
errn�i �h 0 
windowname 
windowName�g  0 windownametest windowNameTest�f 0 whichwindow whichWindow�e .0 waitcycledelayseconds waitCycleDelaySeconds�d 0 waitcyclemax waitCycleMax�c "0 windowwaituntil windowWaitUntilۅ ��elE�O��%E�O�E�O�E�O�� E�O��!��l E�O �� �*��/ c)j+ O*�k/�,� 8 !*�k/�,E�O*�k/��/j Okj OPW X  )a �la �%Y ��,E )a a la Y eOPUO)a �a a a a a �a ��k+ Okj OeOPUOPW X  )a �la  �%OP4` �_*�^�]4�4��\�_ N0 %fmgui_managedb_table_listoffieldnames %fmGUI_ManageDb_Table_ListOfFieldNames�^ �[4��[ 4�  �Z�Z 0 basetablename baseTableName�]  4� �Y�X�W�Y 0 basetablename baseTableName�X 0 errmsg errMsg�W 0 errnum errNum4� �V_�U]�T�S�R�Q�P�O�N�M�L4��Kkm�V @0 fmgui_managedb_fieldspicktable fmGUI_ManageDb_FieldsPickTable
�U 
pcap
�T 
cwin
�S 
tabg
�R 
scra
�Q 
tabB
�P 
crow
�O 
sttx
�N 
valL
�M 
rslt�L 0 errmsg errMsg4� �J�I�H
�J 
errn�I 0 errnum errNum�H  
�K 
errn�\ I 2*�k+  O� #*��/ *�k/�k/�k/�k/�-�k/�,EO�EUUW X  )�l�%a %�%OP4a �Gx�F�E4�4��D�G >0 fmgui_managedb_tablelistfocus fmGUI_ManageDb_TableListFocus�F �C4��C 4�  �B�B 	0 prefs  �E  4� �A�@�?�A 	0 prefs  �@ 0 errmsg errMsg�? 0 errnum errNum4� �>��=��<�;�:�9�8�74��6��> >0 fmgui_managedb_gototab_tables fmGUI_ManageDb_GoToTab_Tables
�= 
pcap
�< 
cwin
�; 
tabg
�: 
scra
�9 
tabB
�8 
focu�7 0 errmsg errMsg4� �5�4�3
�5 
errn�4 0 errnum errNum�3  
�6 
errn�D A 0*jvk+  O� *��/ e*�k/�k/�k/�k/�,FOeUUOPW X 	 
)�l�%OP4b �2��1�04�4��/�2 .0 fmgui_managedb_to_add fmGUI_ManageDb_TO_Add�1 �.4��. 4�  �-�- 	0 prefs  �0  4� �,�+�*�)�(�, 	0 prefs  �+ 0 defaultprefs defaultPrefs�* 0 addtocbutton addTocButton�) 0 errmsg errMsg�( 0 errnum errNum4� -�'�&�%�$�#�"�! ��  �����4�� ��� #����������� ] a���
 ��	 � ��5 � ��' 0 tocname tocName
�& 
null�% 0 dbname dbName�$ *0 donotchangeexisting doNotChangeExisting�# 0 basetablename baseTableName�" �! L0 $fmgui_managedb_gototab_relationships $fmGUI_ManageDb_GoToTab_Relationships
�  
pcap� (0 fmgui_appfrontmost fmGUI_AppFrontMost
� 
cwin
� 
tabg
� 
butT
� 
desc� B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow
� .sysodelanull��� ��� nmbr
� 
popB�  0 fmgui_popupset fmGUI_PopupSet
� 
scra
� 
tabB
� 
crow
� 
sttx
� 
valL
� .miscslctnull���     uiel�  �  � 5
� .prcskcodnull���     ****�  0 datasourcename dataSourceName� L0 $fmgui_managedatasources_ensureexists $fmGUI_ManageDataSources_EnsureExists�
 <0 fmgui_managedatasources_save fmGUI_ManageDataSources_Save
�	 
txtf� 0 errmsg errMsg5  ���
� 
errn� 0 errnum errNum�  
� 
errn�/P�����f���E�O��%E�O(*jvk+ O�*��/)j+ 
O*�k/�k/�k/�[�,\Za @1E�O)�k+ Okj O B)*�k/a a /��,l+ O*�k/a k/a k/a k/�[a k/a ,\Z��,81j W |X  a j O)*�k/a a  /a !l+ O)a "��,lk+ #O)jvk+ $Okj O)*�k/a a %/��,l+ O*�k/a k/a k/a k/�[a k/a ,\Z��,81j O��,*�k/a &a '/a ,FO)*�k/�a (/k+ OeUUW X ) *)a +�la ,�%OP4c � ���55� � 60 fmgui_managedb_to_listadd fmGUI_ManageDB_TO_ListAdd� ��5�� 5  ���� 	0 prefs  �  5 �������������������������� 	0 prefs  �� 0 defaultprefs defaultPrefs�� 0 tolist TOList�� 0 cr CR�� 0 lf LF�� 0 oneto oneTO�� 0 torec TORec�� 0 	onedbname 	oneDBName�� 0 onetablename oneTableName�� 0 toparam TOParam�� 0 errmsg errMsg�� 0 errnum errNum5 �� �����������������!7������!U��������5��!j�� 0 tolist TOList�� 0 replacesimple replaceSimple�� 0 
sourcetext 
sourceTEXT�� 0 parsestring parseString�� �� 0 
parsechars 
parseChars
�� .corecnte****       ****
�� 
kocl
�� 
cobj�� 0 dbname dbName�� 0 basetablename baseTableName�� 0 toname TOName�� �� .0 fmgui_managedb_to_add fmGUI_ManageDb_TO_Add�� *0 fmgui_managedb_save fmGUI_ManageDB_Save�� 0 errmsg errMsg5 ������
�� 
errn�� 0 errnum errNum��  
�� 
errn�  ���lE�O��%E�O ���,E�O*���mvk+ E�O*���k+ E�O�j j S E�[��l kh *����k+ E�O��k/E�O��l/E�O�����%�%�E�O*�k+ [OY��O*jvk+ Y hOeW X  )a �la �%OP4d ��!u����55���� N0 %fmgui_managescripts_listofscriptnames %fmGUI_ManageScripts_ListOfScriptNames�� ��5�� 5  ���� 0 
somedbname 
someDbName��  5 ���� 0 
somedbname 
someDbName5 ��!���������������!�!�
�� 
capp
�� kfrmID  
�� 
cDB 
�� 
cSCP
�� .corecnte****       ****
�� 
pnam
�� 
errn�� �� 8)���0 .*�/�-j j  jvY *�/�-�,EO)��l�%�%OPUOP4e ��!�����55	���� <0 fmgui_managesecurity_gototab fmGUI_ManageSecurity_GoToTab�� ��5
�� 5
  ���� 	0 prefs  ��  5 ���������� 	0 prefs  �� 0 defaultprefs defaultPrefs�� 0 errmsg errMsg�� 0 errnum errNum5	 ��!�����!���!���ڿھ4�ڽڼڻ5ں"�� 0 tabname tabName�� (0 fmgui_appfrontmost fmGUI_AppFrontMost�� 60 fmgui_managesecurity_open fmGUI_ManageSecurity_Open
�� 
pcap
�� 
cwin
ڿ 
tabg
ھ 
radB
ڽ 
pnam
ڼ .prcsclicnull��� ��� uielڻ 0 errmsg errMsg5 ڹڸڷ
ڹ 
errnڸ 0 errnum errNumڷ  
ں 
errn�� ^��lE�O��%E�O >*j+ O*jvk+ O� (*��/  *�k/�k/�k/�[�,\Z��,81j OeOPUUW X  )�la �%OP4f ڶ"ڵڴ55ڳڶ N0 %fmgui_managesecurity_gototab_accounts %fmGUI_ManageSecurity_GoToTab_Accountsڵ ڲ5ڲ 5  ڱڱ 	0 prefs  ڴ  5 ڰگڮڰ 	0 prefs  گ 0 errmsg errMsgڮ 0 errnum errNum5 ڭ"%ڬګ5ڪ".ڭ 0 tabname tabNameڬ <0 fmgui_managesecurity_gototab fmGUI_ManageSecurity_GoToTabګ 0 errmsg errMsg5 کڨڧ
ک 
errnڨ 0 errnum errNumڧ  
ڪ 
errnڳ  *��lk+ W X  )�l�%OP4g ڦ"9ڥڤ55ڣڦ N0 %fmgui_managesecurity_gototab_privsets %fmGUI_ManageSecurity_GoToTab_PrivSetsڥ ڢ5ڢ 5  ڡڡ 	0 prefs  ڤ  5 ڠڟڞڠ 	0 prefs  ڟ 0 errmsg errMsgڞ 0 errnum errNum5 ڝ"Mڜڛ5ښ"Vڝ 0 tabname tabNameڜ <0 fmgui_managesecurity_gototab fmGUI_ManageSecurity_GoToTabڛ 0 errmsg errMsg5 ڙژڗ
ڙ 
errnژ 0 errnum errNumڗ  
ښ 
errnڣ  *��lk+ W X  )�l�%OP4h ږ"aڕڔ55ړږ d0 0fmgui_managesecurity_listofaccountsandprivileges 0fmGUI_ManageSecurity_ListOfAccountsAndPrivilegesڕ ڒ5ڒ 5  ڑڑ 	0 prefs  ڔ  5 	ڐڏڎڍڌڋڊډڈڐ 	0 prefs  ڏ 0 accountstable accountsTableڎ $0 accountnameslist accountNamesListڍ 0 privnameslist privNamesListڌ 0 accountslist accountsListڋ 0 i  ڊ 0 oneaccountrow oneAccountRowډ 0 errmsg errMsgڈ 0 errnum errNum5 ڇچ"�څ"�ڄڃڂځڀ��~�}�|�{5�z"�ڇ (0 fmgui_appfrontmost fmGUI_AppFrontMostچ N0 %fmgui_managesecurity_gototab_accounts %fmGUI_ManageSecurity_GoToTab_Accounts
څ 
prcs
ڄ 
cwin
ڃ 
tabg
ڂ 
scra
ځ 
tabB
ڀ 
crow
� 
sttx
�~ 
valL
�} .corecnte****       ****
�| 
cobj�{ 0 errmsg errMsg5 �y�x�w
�y 
errn�x 0 errnum errNum�w  
�z 
errnړ � t*j+  O*jvk+ O� ^*��/ V*�k/�k/�k/�k/E�O��-�k/�,E�O��-�m/�,E�OjvE�O #k�j kh ���/���/lvE�O��6F[OY��O�OPUUW X  )a �la �%OP4i �v"��u�t55�s�v 60 fmgui_managesecurity_open fmGUI_ManageSecurity_Open�u �r5�r 5  �q�q 	0 prefs  �t  5 �p�o�n�p 	0 prefs  �o 0 errmsg errMsg�n 0 errnum errNum5 #,�m#*�l�k�j#�i�h# �g�f#4�#%�e�d5�c#4
�m 
pcap�l (0 fmgui_appfrontmost fmGUI_AppFrontMost
�k 
cwin
�j 
pnam
�i 
mbar
�h 
mbri
�g 
menE
�f 
menI
�e .prcsclicnull��� ��� uiel�d 0 errmsg errMsg5 �b�a�`
�b 
errn�a 0 errnum errNum�`  
�c 
errn�s ` K� C*��/ ;)j+ O*�k/�,� (*�k/��/�k/��/�k/�k/�[�,\Z�>1j OeY hUUW X  )a �la �%OP4j �_#?�^�]55�\�_ 60 fmgui_managesecurity_save fmGUI_ManageSecurity_Save�^ �[5�[ 5  �Z�Z 	0 prefs  �]  5 �Y�X�W�V�Y 	0 prefs  �X 0 defaulprefs defaulPrefs�W 0 errmsg errMsg�V 0 errnum errNum5 �U�T�S�R#��Q#��P�O�N#t�M�L#x�K�J4�#��I#��H#�#��G#��F#�#��E5$�U 0 fullaccount fullAccount
�T 
null�S 0 fullpassword fullPassword�R 
�Q 
pcap�P (0 fmgui_appfrontmost fmGUI_AppFrontMost
�O 
cwin
�N 
pnam
�M 
errn�L �K 
�J 
butT�I *0 clickobjectbycoords clickObjectByCoords
�H .sysodelanull��� ��� nmbr
�G 
txtf
�F 
valL�E 0 errmsg errMsg5 �D�C�B
�D 
errn�C 0 errnum errNum�B  �\ ������E�O��%E�O �� �*��/ �)j+ O*�k/�,� )��l�Y hO >�kh)*�k/�k/a [�,\Za 81k+ O*�k/�,a  Y hOkj [OY��Oa j O*�k/�,a   N��,*�k/a a /a ,FO��,*�k/a a /a ,FO)*�k/�k/a [�,\Za 81k+ Oa j Y hOPUUW X  )�la �%OP4k �A$�@�?5 5!�>�A &0 fmgui_checkboxset fmGUI_CheckboxSet�@ �=5"�= 5"  �<�;�<  0 checkboxobject checkboxObject�; 0 checkboxvalue checkboxValue�?  5  �:�9�8�7�:  0 checkboxobject checkboxObject�9 0 checkboxvalue checkboxValue�8 0 errmsg errMsg�7 0 errnum errNum5! 	$�6�5�4�35#�2$?$A
�6 
null
�5 
valL
�4 .prcsclicnull��� ��� uiel�3 0 errmsg errMsg5# �1�0�/
�1 
errn�0 0 errnum errNum�/  
�2 
errn�> :�Z %�� ��,� 
�j Y hY hOeOPW X  )�l�%�%�%4l �.$K�-�,5$5%�+�. B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow�- �*5&�* 5&  �)�) 0 	buttonref 	buttonRef�,  5$ �(�( 0 	buttonref 	buttonRef5% $Y�'�' *0 clickobjectbycoords clickObjectByCoords�+ �Z)�k+ OP4m �&$f�%�$5'5(�#�& 40 fmgui_pastefromclipboard fmGUI_PasteFromClipboard�%  �$  5' �"�!� ��" (0 pasemenuitemexists paseMenuItemExists�! 0 pastemenuitem pasteMenuItem�  0 errmsg errMsg� 0 errnum errNum5( $��$����$���4��$���5)�$�����$��
� 
pcap� (0 fmgui_appfrontmost fmGUI_AppFrontMost
� 
mbar
� 
mbri
� 
menE
� 
menI
� 
pnam
� .prcsclicnull��� ��� uiel� 0 errmsg errMsg5) ���
� 
errn� 0 errnum errNum�  
� 
errn� 
� .coredoexnull���     ****�  �  
� .sysodelanull��� ��� nmbr�# �fE�O� w*��/ o)j+ O*�k/��/�k/�k/�[�,\Z�81E�O 
�j W X  )�la �%O 2a kh �j  
eE�OY hW X  hOa j [OY��UUO�OP4n �$���
5*5+�	� :0 fmgui_popup_selectbycommand fmGUI_Popup_SelectByCommand� �5,� 5,  �� 	0 prefs  �
  5* 	������� ����� 	0 prefs  � 0 defaultprefs defaultPrefs� 0 popupobject popupObject� 0 selectcommand selectCommand� 0 popupchoice popupChoice� &0 clickifalreadyset clickIfAlreadySet�  0 mustpick mustPick�� 0 errmsg errMsg�� 0 errnum errNum5+ $��������$�������% ����%=������%Q��%�%�%�%�%���&	����4���&&3&K��5-&t&v&x�� 0 popupobject popupObject
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
pnam�� 0 errmsg errMsg5- ������
�� 
errn�� 0 errnum errNum��  �	�������f�E�O��,�llv�,  ��k/��l/�E�Y hO��%E�O��,E�O��,E�O��,E�O��,E�O�Z��j  )��l�OPY�fE�O�a ,j  
eE�OPY �� 
eE�OPY ��a   �a ,� eE�Y hOPY �a   �a ,� eE�Y hOPY `�a   �a ,� eE�Y hOPY A�a   �a ,� eE�Y hOPY "�a   �a ,� eE�Y hOPY hO� ��� ��j O�a   !�a k/a k/a [a ,\Z�81j Y ~�a   #�a k/a k/a [a ,\Z�@1j OPY U�a   #�a k/a k/a [a ,\Z�>1j OPY ,�a   #�a k/a k/a [a ,\Z�?1j OPY hOPY hY hOeOPW X   )��la !�%a "%�%a #%�%4o ��&�����5.5/����  0 fmgui_popupset fmGUI_PopupSet�� ��50�� 50  ������ 0 popupobject popupObject�� 0 popupchoice popupChoice��  5. ���������� 0 popupobject popupObject�� 0 popupchoice popupChoice�� 0 errmsg errMsg�� 0 errnum errNum5/ &�������&���������51��&�&��� 0 popupobject popupObject�� 0 popupchoice popupChoice�� 0 selectcommand selectCommand�� �� :0 fmgui_popup_selectbycommand fmGUI_Popup_SelectByCommand
�� 
rslt�� 0 errmsg errMsg51 ������
�� 
errn�� 0 errnum errNum��  
�� 
errn�� -�Z *�����k+ O�EOPW X  	)�l�%�%�%4p ��&�����5253���� 00 fmgui_selectallandcopy fmGUI_SelectAllAndCopy��  ��  52 �������� $0 clipboardchanged clipboardChanged�� 0 errmsg errMsg�� 0 errnum errNum53 &���'T��'R������&�����4���&�����54��&�'''��ٿپٽټٻٺٹٸ
�� .JonspClpnull���     ****
�� 
pcap�� (0 fmgui_appfrontmost fmGUI_AppFrontMost
�� 
mbar
�� 
mbri
�� 
menE
�� 
menI
�� 
pnam
�� .prcsclicnull��� ��� uiel�� 0 errmsg errMsg54 ٷٶٵ
ٷ 
errnٶ 0 errnum errNumٵ  
�� 
errn�� 

ٿ 
rtyp
پ 
utf8
ٽ .JonsgClp****    ��� null
ټ 
rslt
ٻ 
lengٺ  ٹ  
ٸ .sysodelanull��� ��� nmbr�� ��j OfE�O� �*��/ �)j+ O *�k/��/�k/�k/�[�,\Z�81j W X  )a �la �%O *�k/�a /�k/�a /j W X  )a �la �%O Da kh &*a a l O_ a ,j 
eE�OY hW X  eE�OOkj [OY��OPUUO�OP4q ٴ'bٳٲ5556ٱٴ (0 fmgui_textfieldset fmGUI_TextFieldSetٳ ٰ57ٰ 57  ٯٮٯ "0 textfieldobject textfieldObjectٮ  0 textfieldvalue textfieldValueٲ  55 ٭٬٫٪٭ "0 textfieldobject textfieldObject٬  0 textfieldvalue textfieldValue٫ 0 errmsg errMsg٪ 0 errnum errNum56 	'q٩٨٧٦58٥'�'�
٩ 
null
٨ 
valL
٧ 
focu٦ 0 errmsg errMsg58 ٤٣٢
٤ 
errn٣ 0 errnum errNum٢  
٥ 
errnٱ A�Z ,�� ��,� e��,FO���,FY fY hOeOPW X  )�l�%�%�%4r ١'�٠ٟ595:ٞ١ (0 fmgui_appfrontmost fmGUI_AppFrontMost٠  ٟ  59  5: 
'�ٝ'�ٜٛٚٙ'�٘ٗ
ٝ 
pcap
ٜ 
pisf
ٛ .sysodelanull��� ��� nmbr
ٚ 
cwin
ٙ 
pnam
٘ 
butT
ٗ .prcsclicnull��� ��� uielٞ F� B*��/ :*�,e 1e*�,FOkj O*�k/�,�  *�k/�k/j 	Okj Y hY hUU4s ٖ'�ٕٔ5;5<ٓٖ 00 fmgui_dataviewer_close fmGUI_DataViewer_Closeٕ  ٔ  5;  5< (ْ(ِّ4�ُ(ًٌٍَ
ْ 
pcapّ (0 fmgui_appfrontmost fmGUI_AppFrontMost
ِ 
cwin
ُ 
pnam
َ 
butT
ٍ .prcsclicnull��� ��� uielٌ  ً  ٓ 4� 0*��/ ()j+ O *�k/�[�,\Z�81�k/j 	W X 
 hUU4t ي(ىو5=5>هي .0 fmgui_inspector_close fmGUI_Inspector_Closeى  و  5=  5> (gن(eمل4�ك(Cقفـ(S��~(b
ن 
pcapم (0 fmgui_appfrontmost fmGUI_AppFrontMost
ل 
cwin
ك 
pnam
ق 
pidxف  ـ  
� 
butT
�~ .prcsclicnull��� ��� uielه s� o*��/ g)j+ O k*�k/�[�,\Z�81�,FW X 	 
hO *�k/�[�,\Z�81�k/j W X 	 
hO *�k/�[�,\Z�81�k/j W X 	 
hUU4u �}(o�|�{5?5@�z�} 00 fmgui_inspector_ensure fmGUI_Inspector_Ensure�|  �{  5? �y�x�y 0 errmsg errMsg�x 0 errnum errNum5@ �w(��v(��u�t4��s(��r�q�p(��o�n(��m�l5A�k(��w 20 fmgui_modeensure_layout fmGUI_ModeEnsure_Layout
�v 
pcap�u (0 fmgui_appfrontmost fmGUI_AppFrontMost
�t 
cwin
�s 
pnam
�r .coredoexnull���     ****
�q 
mbar
�p 
mbri
�o 
menE
�n 
menI
�m .prcsclicnull��� ��� uiel�l 0 errmsg errMsg5A �j�i�h
�j 
errn�i 0 errnum errNum�h  
�k 
errn�z i T*j+  O� F*��/ >)j+ O*�k/�[�,\Z�@1j 	 *�k/��/�k/�k/�[�,\Z�81j Y hOeUUW X  )a �la �%OP4v �g(��f�e5B5C�d�g 20 fmgui_modeensure_browse fmGUI_ModeEnsure_Browse�f  �e  5B �c�b�c 0 errmsg errMsg�b 0 errnum errNum5C (��a�`5D�_(��a $0 fmgui_modeselect fmGUI_ModeSelect�` 0 errmsg errMsg5D �^�]�\
�^ 
errn�] 0 errnum errNum�\  
�_ 
errn�d  *�k+ OPW X  )�l�%OP4w �[(��Z�Y5E5F�X�[ .0 fmgui_modeensure_find fmGUI_ModeEnsure_Find�Z  �Y  5E �W�V�W 0 errmsg errMsg�V 0 errnum errNum5F )�U�T5G�S)�U $0 fmgui_modeselect fmGUI_ModeSelect�T 0 errmsg errMsg5G �R�Q�P
�R 
errn�Q 0 errnum errNum�P  
�S 
errn�X  *�k+ OPW X  )�l�%OP4x �O)�N�M5H5I�L�O 20 fmgui_modeensure_layout fmGUI_ModeEnsure_Layout�N  �M  5H �K�J�K 0 errmsg errMsg�J 0 errnum errNum5I )0�I�H5J�G):�I $0 fmgui_modeselect fmGUI_ModeSelect�H 0 errmsg errMsg5J �F�E�D
�F 
errn�E 0 errnum errNum�D  
�G 
errn�L  *�k+ OPW X  )�l�%OP4y �C)E�B�A5K5L�@�C $0 fmgui_modeselect fmGUI_ModeSelect�B �?5M�? 5M  �>�> 0 modetoselect modeToSelect�A  5K �=�<�;�:�9�8�7�6�= 0 modetoselect modeToSelect�< 0 
modewindow 
modeWindow�; "0 modecontentarea modeContentArea�: *0 modecontentareadesc modeContentAreaDesc�9 0 currentmode currentMode�8 0 menuitemname menuItemName�7 0 errmsg errMsg�6 0 errnum errNum5L )��5)��4�3�2�14��0)x�/)��.)��-�,)��+�*�)�(5N�')�)�
�5 
pcap�4 (0 fmgui_appfrontmost fmGUI_AppFrontMost�3 .0 fmgui_inspector_close fmGUI_Inspector_Close
�2 
cwin
�1 
sgrp
�0 
desc
�/ 
cwor
�. .sysodelanull��� ��� nmbr
�- 
mbar
�, 
mbri
�+ 
menE
�* 
menI
�) .prcsclicnull��� ��� uiel�( 0 errmsg errMsg5N �&�%�$
�& 
errn�% 0 errnum errNum�$  
�' 
errn�@ � t� l*��/ d)j+ O)j+ O*�k/E�O��k/�[�,\Z�?1E�O��,E�O��k/E�O�� (�j O��%E�O*�k/�a /a k/a �/j Y hOeOPUUW X  )a �la �%a %�%4z �#)��"�!5O5P� �# (0 fmgui_window_close fmGUI_Window_Close�" �5Q� 5Q  ��  0 somewindowname someWindowName�!  5O ��  0 somewindowname someWindowName5P �)����
� 
capp
� kfrmID  
� 
cwin
� .coreclosnull���    obj �  )���0 *�/j OPUOeOP4{ �)���5R5S�� "0 windowwaituntil windowWaitUntil� �5T� 5T  �� 	0 prefs  �  5R ��������� 	0 prefs  � 0 defaultprefs defaultPrefs� 0 
windowname 
windowName�  0 windownametest windowNameTest� 0 whichwindow whichWindow� 0 checkresult checkResult� "0 windownamecheck windowNameCheck� 0 windowindex windowIndex5S �
�	�*�*�*���*t*B�*K�� *Q*\��*q*�*�*�*�*�*�*�*�+���
 0 
windowname 
windowName
�	 
null�  0 windownametest windowNameTest� 0 whichwindow whichWindow� .0 waitcycledelayseconds waitCycleDelaySeconds� 0 waitcyclemax waitCycleMax� � 

� 
pcap
� 
cwin
�  
pnam
�� 
nmbr
�� .sysodelanull��� ��� nmbr�D�����������E�O��%E�O��,E�O��,E�O��,E�OfE�O��,Ekh� H��  *��/�-a ,E�Y 3�a   *�a /�k/a ,E�Y �a &E�O*�a /�/a ,E�UO�a   ��E�OPY ��a   ��E�OPY ��a   �� E�OPY o�a   �� E�OPY ]�a   ��E�OPY K�a   ��E�OPY 8�a   ��E�OPY &�a   ��E�Y �a   ��E�OPY hO� Y hO��,j OP[OY��O�OP4| ��+0����5U5V���� 20 windowwaituntil_frontis windowWaitUntil_FrontIS�� ��5W�� 5W  ���� 	0 prefs  ��  5U ������ 	0 prefs  �� 0 defaultprefs defaultPrefs5V ������+D��+H��+L���������� 0 
windowname 
windowName
�� 
null��  0 windownametest windowNameTest�� 0 whichwindow whichWindow�� .0 waitcycledelayseconds waitCycleDelaySeconds�� 0 waitcyclemax waitCycleMax�� d�� 
�� "0 windowwaituntil windowWaitUntil�� �����������E�O��%E�O*�k+ OP4} ��+e����5X5Y���� "0 indexoflistitem indexOfListItem�� ��5Z�� 5Z  ������ 0 somelist someList�� 0 somelistitem someListItem��  5X ���������� 0 somelist someList�� 0 somelistitem someListItem�� 0 i  �� 0 onelistitem oneListItem5Y ����
�� .corecnte****       ****
�� 
cobj�� 9�� iY hO 'k�j  kh ��/E�O��  �Y hOP[OY��OP4~ ��+�����5[5\���� 0 listcontains listContains�� ��5]�� 5]  ������ 0 somelist someList�� "0 somecomplexitem someComplexItem��  5[ �������� 0 somelist someList�� "0 somecomplexitem someComplexItem�� 0 oneitem oneItem5\ ��������
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
pcnt�� 1 *�[��l kh ��,E�O��  	eOPY hOP[OY��OfOP4 ��+�����5^5_���� $0 listuniquevalues listUniqueValues�� ��5`�� 5`  ���� 	0 prefs  ��  5^ ���������� 	0 prefs  �� 0 	inputlist 	inputList�� 0 
uniquelist 
uniqueList�� 0 oneitem oneItem5_ ������������ 0 	inputlist 	inputList
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
pcnt�� ;��,E�OjvE�O )�[��l kh ��,E�O�� 	��6GY h[OY��O�OP4� ��,����5a5bؿ�� 0 sort  �� ؾ5cؾ 5c  ؽؽ 0 oldlist oldList��  5a ؼػغعظؼ 0 oldlist oldListػ 0 od  غ 0 	textblock 	textBlockع 0 sortedblock sortedBlockظ 0 
sortedlist 
sortedList5b طضصشسز,9ر,=ذدخ
ط 
ascr
ض 
txdlص 

ش .sysontocTEXT       shor
س 
cobj
ز 
TEXT
ر 
strq
ذ .sysoexecTEXT���     TEXT
د 
ret 
خ 
citmؿ E��,�j lvE[�k/E�Z[�l/��,FZO��&E�O��,%�%j 	E�O���,FO��-E�O���,FO�4� ح,\جث5d5eتح 0 
logconsole 
logConsoleج ة5fة 5f  باب 0 processname processNameا 0 
consolemsg 
consoleMsgث  5d ئإؤئ 0 processname processNameإ 0 
consolemsg 
consoleMsgؤ 0 shellcommand shellCommand5e أآ,ءؠ,�,�؟,�؞؝أ  0 coercetostring coerceToString
آ .sysontocTEXT       shorء 0 replacesimple replaceSimple
ؠ 
leng
؟ 
spac
؞ 
strq
؝ .sysoexecTEXT���     TEXTت I*�k+  E�O*�jj �mvk+ E�O��,j  �E�Y hO��%�%�%��,%�%��,%E�O�j 
O�OP4� ؜,�؛ؚ5g5hؙ؜ 0 loglevel logLEVEL؛ ؘ5iؘ 5i  ؗؖؗ 	0 level  ؖ 0 somemsg someMsgؚ  5g ؕؔؓؒؑؐؕ 	0 level  ؔ 0 somemsg someMsgؓ 0 	maxxcount 	maxXcountؒ 0 logname logNameؑ 0 xcount xCountؐ 0 i  5h ؏,�,�؎؏ ؎ 0 
logconsole 
logConsoleؙ 5�E�Ob  �%E�O��kE�O k�kh ��%E�[OY��O*��l+ OP4� ؍,�،؋5j5k؊؍ 0 logmain logMAIN، ؉5l؉ 5l  ؈؈ 0 somemsg someMsg؋  5j ؇؇ 0 somemsg someMsg5k ؆؆ 0 loglevel logLEVEL؊ *j�l+  4� ؅-؄؃5m5n؂؅ (0 systemnotification systemNotification؄ ؁5o؁ 5o  ؀؀ 	0 prefs  ؃  5m ��~� 	0 prefs  �~ 0 defaultprefs defaultPrefs5n �}-(�|-,�{-0�z-4�y�x�w�v�u�t�s�r�q�} 0 msg  �| 0 msgtitle msgTitle�{ 0 msgsubtitle msgSubtitle�z 0 msgsound msgSound�y 0 nosound noSound
�x 
null�w 

�v 
appr
�u 
subt�t 
�s .sysonotfnull��� ��� TEXT
�r 
nsou�q ؂ G�����������E�O��%E�O��,� ��,��,��,� Y ��,��,��,��,a  OP4� �p-l�o�n5p5q�m�p 0 writetofile writeToFile�o �l5r�l 5r  �k�k 	0 prefs  �n  5p �j�i�h�g�j 	0 prefs  �i 0 defaultprefs defaultPrefs�h 0 
outputfile 
outputFile�g 0 filereference fileReference5q �f�e�d�c�b�a�`�_�^-��]�\�[�Z�Y�X�W�V�f 0 fullfilepath fullFilePath
�e 
null�d 0 filename fileName�c 0 filedirectory fileDirectory
�b afdrdesk
�a .earsffdralis        afdr
�` 
TEXT�_ 0 
outputtext 
outputText�^ 
�] 
file
�\ 
perm
�[ .rdwropenshor       file
�Z 
refn
�Y .rdwrwritnull���     ****
�X .rdwrclosnull���     ****�W  �V  �m �������j �&���E�O��%E�O��,� 
��,E�Y !��,� ��,��,%E�Y �j �&�%E�O !*�/�el E�O��,��l O�j W X   *�/j W X  h4� �U-��T�S5s5t�R�U 0 clickatcoords clickAtCoords�T �Q5u�Q 5u  �P�O�P 0 xclick xClick�O 0 yclick yClick�S  5s �N�M�N 0 xclick xClick�M 0 yclick yClick5t 	�L�K�J�I..�H�G.
�L 
dire
�K olierndD
�J .sysorondlong        doub
�I 
strq
�H .sysoexecTEXT���     TEXT
�G 
TEXT�R 1���l E�O���l E�Ob  �,�%�%�%�%j O��&�%�%4� �F.%�E�D5v5w�C�F *0 clickobjectbycoords clickObjectByCoords�E �B5x�B 5x  �A�A 0 
someobject 
someObject�D  5v �@�?�>�=�<�;�:�@ 0 
someobject 
someObject�? 0 xcoord xCoord�> 0 ycoord yCoord�= 0 xsize xSize�< 0 ysize ySize�; 0 xclick xClick�: 0 yclick yClick5w .3�9�8�7�6�5�4�3
�9 
posn
�8 
cobj
�7 
ptsz
�6 
dire
�5 olierndD
�4 .sysorondlong        doub�3 0 clickatcoords clickAtCoords�C N�Z��,E[�k/E�Z[�l/E�ZO��,E[�k/E�Z[�l/E�ZO��l!��l E�O��l!��l E�O*��l+ OP4� �2.z�1�05y5z�/�2  0 coercetostring coerceToString�1 �.5{�. 5{  �-�-  0 incomingobject incomingObject�0  5y �,�+�*�)�(�'�&�%�,  0 incomingobject incomingObject�+ 0 errmsg errMsg�* 0 errnum errNum�) 0 	olddelims 	oldDelims�( 0 
errmsglead 
errMsgLead�' 0 errmsgtrail errMsgTrail�& 0 od  �% 0 objectstring objectString5z �$�#�"�!� �.�.���5|��/��/4�/C/G�/N/T
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
utxt� j0 3some_uuid_property_54f827c7379e4073b5a216bb9cde575d 3some_UUID_Property_54F827C7379E4073B5A216BB9CDE575D� 0 errmsg errMsg5| ���
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
��,�kvlvE[�k/E�Z[�l/��,FZO��-E[�k/E�Z[�l/E�ZO���,FOa ��,FOPW �X 	 �a 	 �a a & Da E�Oa E�O��,�lvE[�k/E�Z[�l/��,FZO��l/E�O���,FO��k/E�O���,FOPY k�E�O�� )��,�lvE[�k/E�Z[�l/��,FZO��l/E�O���,FY hO�� /��,�lvE[�k/E�Z[�l/��,FZO���,FO��k/E�O���,FY hOPO�4� �/���5}5~�� 0 gettextbefore getTextBefore� �5� 5  ��� 0 
sourcetext 
sourceTEXT� 0 stophere stopHere�  5} ���
�	��� 0 
sourcetext 
sourceTEXT� 0 stophere stopHere�
 0 	olddelims 	oldDelims�	 0 finalresult finalResult� 0 errmsg errMsg� 0 errnum errNum5~ 	�����0,�5�0K
� 
ascr
� 
txdl
� 
cobj
� 
citm
� .corecnte****       ****� 0 errmsg errMsg5� � ����
�  
errn�� 0 errnum errNum��  � R C��,�lvE[�k/E�Z[�l/��,FZO��-j k  ���,FO�Y ��k/E�O���,FO�W X  ���,FO�4� ��0U����5�5�����  0 gettextbetween getTextBetween�� ��5��� 5�  ���� 	0 prefs  ��  5� �������������������������� 	0 prefs  �� 0 defaultprefs defaultPrefs�� 0 
sourcetext 
sourceTEXT�� 0 
beforetext 
beforeText�� 0 	aftertext 	afterText�� 0 textitemnum textItemNum��  0 includemarkers includeMarkers�� 0 	olddelims 	oldDelims�� 0 prefixremoved prefixRemoved�� 0 finalresult finalResult�� 0 errmsg errMsg�� 0 errnum errNum5� ������������0}������0���������������������5�1,�� 0 textitemnum textItemNum��  0 includemarkers includeMarkers�� 
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
citm�� 0 errmsg errMsg5� ������
�� 
errn�� 0 errnum errNum��  �� ��l�f�E�O��,�	 ��,�&��& )��l�Y hO��,�  1�j �  ���/��,FY hO���k/��l/��m/a E�Y hO��%E�O��,E�O��,E�O��,E�O��,E�O��,E�O \_ a ,�lvE[�k/E�Z[�l/_ a ,FZO�a �/E�O�_ a ,FO�a k/E�O�_ a ,FO� ��%�%E�Y hOPW X  �_ a ,FOa E�O�OP4� ��1?����5�5����� 0 
parsechars 
parseChars�� ��5��� 5�  ���� 	0 prefs  ��  5� 	�������������������� 	0 prefs  �� 0 defaultprefs defaultPrefs�� 0 
sourcetext 
sourceTEXT�� 0 parsestring parseString�� 0 considercase considerCase�� 0 	olddelims 	oldDelims�� 0 
parsedlist 
parsedList�� 0 errmsg errMsg�� 0 errnum errNum5� ��������������׿׾׽׼׻1�׺׹׸1�׷׶5�׵״2�� 0 considercase considerCase
�� 
pcls
�� 
list
�� .corecnte****       ****�� 0 
sourcetext 
sourceTEXT
�� 
cobj�� 0 parsestring parseString׿ ׾ ׽ 0 somekey someKey
׼ 
errn׻ 
׺ 
ascr
׹ 
txdl
׸ 
TEXT
׷ 
citm׶ 0 errmsg errMsg5� ׳ײױ
׳ 
errnײ 0 errnum errNumױ  ׵  ״  �� ��elE�O��,�  5�j l ��k/��l/��m/�E�Y ��k/��l/�E�OPY ��,�ml�, )��l�OPY hO��%E�O��,E�O��,E�O��,E�O��,E�O =��&kv��,FO� a g 
�a -E�VY ga  
�a -E�VO���,FO�W #X   
���,FW X  hO)�la �%4� װ2ׯ׮5�5�׭װ 0 replacesimple replaceSimpleׯ ׬5�׬ 5�  ׫׫ 	0 prefs  ׮  5� 	תשרקצץפףעת 	0 prefs  ש 0 defaultprefs defaultPrefsר 0 considercase considerCaseק 0 
sourcetext 
sourceTEXTצ 0 oldchars oldCharsץ 0 newchars newCharsפ 0 	olddelims 	oldDelimsף 0 
parsedlist 
parsedListע 0 newtext newText5� סנןמםלכךיטחזוה2�דגב2�אס 0 considercase considerCase
נ 
pcls
ן 
list
מ .corecnte****       ****ם 0 
sourcetext 
sourceTEXT
ל 
cobjכ 0 oldchars oldCharsך 0 newchars newCharsי ט ח ז 0 somekey someKey
ו 
errnה 
ד 
TEXT
ג 
ascr
ב 
txdl
א 
citm׭ ��elE�O��,�  ?�j m ��k/��l/��m/���/�E�Y ��k/��l/��m/�E�OPY ��,�ml�, )��l�OPY hO��%E�O��,E�O��,E�O��,E�O��,E�O��&E�O_ a ,E�O�_ a ,FO� (a g �a -E�O��&kv_ a ,FO��&E�VY %ga  �a -E�O��&kv_ a ,FO��&E�VO�_ a ,FO�OP4� ׏3׎׍5�5�׌׏ 0 unparsechars unParseChars׎ ׋5�׋ 5�  ׊׉׊ 0 thislist thisList׉ 0 newdelim newDelim׍  5� ׈ׇ׆ׅׄ׃׈ 0 thislist thisListׇ 0 newdelim newDelim׆ 0 	olddelims 	oldDelimsׅ 0 unparsedtext unparsedTextׄ 0 errmsg errMsg׃ 0 errnum errNum5� 	ׁׂ׀�5��~�}�|3]
ׂ 
ascr
ׁ 
txdl
׀ 
TEXT� 0 errmsg errMsg5� �{�z�y
�{ 
errn�z 0 errnum errNum�y  �~  �}  
�| 
errn׌ D��,E�O ��&kv��,FO��&E�O���,FO�W !X   
���,FW X  hO)�l�%4� �x3g�w�v5�5��u�x  0 versioncompare versionCompare�w �t5��t 5�  �s�s 	0 prefs  �v  5� �r�q�p�o�n�m�l�k�j�i�h�g�r 	0 prefs  �q 0 defaultprefs defaultPrefs�p 0 od  �o 0 v1_list  �n 0 v2_list  �m 0 v1_count  �l 0 v2_count  �k 0 maxcount maxCount�j 0 versionresult versionResult�i 0 i  �h 0 v1_part  �g 0 v2_part  5� �f�e�d�c3w�b�a�`�_�^�]3�3��\�[�Z4*47�f 0 v1  
�e 
null�d 0 v2  �c 	0 delim  �b 
�a 
ascr
�` 
txdl
�_ 
cobj
�^ 
citm
�] .corecnte****       ****
�\ 
nmbr�[  �Z  �u�������E�O��%E�O��,��,lvE[�k/E�Z[�l/��,FZO��,�-��,�-lvE[�k/E�Z[�l/E�ZO���,FO�j 
�j 
lvE[�k/E�Z[�l/E�ZO�� �E�Y �E�O�E�O sk�kh 	�� Y hO�� ��/E�Y jE�O�� ��/E�Y jE�O &��&��& kE�Y ��&��& iE�Y hW X  a E�OP[OY��O�a   jE�Y hO�OP ascr  ��ޭ