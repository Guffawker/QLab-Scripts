FasdUAS 1.101.10   ��   ��    k             l     ��  ��   :4This cue was created by Johnny Bartlett! If you are having any issues with it, please let me know over at https://github.com/Guffawker/QLab-Scripts and I'll do my best to help resolve the issues! You can also find my other scripts there or donate over at https://www.buymeacoffee.com/guffawker to support me!     � 	 	h T h i s   c u e   w a s   c r e a t e d   b y   J o h n n y   B a r t l e t t !   I f   y o u   a r e   h a v i n g   a n y   i s s u e s   w i t h   i t ,   p l e a s e   l e t   m e   k n o w   o v e r   a t   h t t p s : / / g i t h u b . c o m / G u f f a w k e r / Q L a b - S c r i p t s   a n d   I ' l l   d o   m y   b e s t   t o   h e l p   r e s o l v e   t h e   i s s u e s !   Y o u   c a n   a l s o   f i n d   m y   o t h e r   s c r i p t s   t h e r e   o r   d o n a t e   o v e r   a t   h t t p s : / / w w w . b u y m e a c o f f e e . c o m / g u f f a w k e r   t o   s u p p o r t   m e !   
  
 l     ��  ��    O IThe two OSC commands used to query the ETC console for the cues to create     �   � T h e   t w o   O S C   c o m m a n d s   u s e d   t o   q u e r y   t h e   E T C   c o n s o l e   f o r   t h e   c u e s   t o   c r e a t e      l     ����  r         m        �    / e o s / g e t / c u e /  o      ���� 0 getcuecount getCueCount��  ��        l    ����  r        m       �   * / e o s / g e t / c u e / 1 / i n d e x /  o      ���� 0 
getcueinfo 
getCueInfo��  ��        l     ��������  ��  ��         l     ��������  ��  ��      ! " ! l  � #���� # O  � $ % $ O   � & ' & k   � ( (  ) * ) l   �� + ,��   + J DVariables used to track the cues created and data through the script    , � - - � V a r i a b l e s   u s e d   t o   t r a c k   t h e   c u e s   c r e a t e d   a n d   d a t a   t h r o u g h   t h e   s c r i p t *  . / . r     0 1 0 J    ����   1 o      ���� 0 savedata saveData /  2 3 2 r      4 5 4 J    ����   5 o      ���� 0 createdcues createdCues 3  6 7 6 r   ! % 8 9 8 J   ! #����   9 o      ���� &0 createdcuetracker createdCueTracker 7  : ; : l  & &�� < =��   < ? 9Checks the notes section of the cue for saved information    = � > > r C h e c k s   t h e   n o t e s   s e c t i o n   o f   t h e   c u e   f o r   s a v e d   i n f o r m a t i o n ;  ? @ ? n  & , A B A I   ' ,�� C���� 0 getsavedinfo getSavedInfo C  D�� D o   ' (���� 0 savedata saveData��  ��   B  f   & ' @  E F E r   - 3 G H G n   - 1 I J I 4   . 1�� K
�� 
cobj K m   / 0����  J o   - .���� 0 savedata saveData H o      ���� 0 
infoneeded 
infoNeeded F  L M L r   4 : N O N n   4 8 P Q P 4   5 8�� R
�� 
cobj R m   6 7����  Q o   4 5���� 0 savedata saveData O o      ���� 0 	consoleip 	consoleIP M  S T S r   ; A U V U n   ; ? W X W 4   < ?�� Y
�� 
cobj Y m   = >����  X o   ; <���� 0 savedata saveData V o      ���� 0 	oscrxport 	oscRXPort T  Z [ Z r   B L \ ] \ n   B H ^ _ ^ 4   C H�� `
�� 
cobj ` m   D G����  _ o   B C���� 0 savedata saveData ] o      ���� 0 	osctxport 	oscTXPort [  a b a r   M W c d c n   M S e f e 4   N S�� g
�� 
cobj g m   O R����  f o   M N���� 0 savedata saveData d o      ���� 0 networkpatch networkPatch b  h i h r   X b j k j n   X ^ l m l 4   Y ^�� n
�� 
cobj n m   Z ]����  m o   X Y���� 0 savedata saveData k o      ���� 0 brewdirectory brewDirectory i  o p o r   c m q r q n   c i s t s 4   d i�� u
�� 
cobj u m   e h����  t o   c d���� 0 savedata saveData r o      ���� 0 	delaytime 	delayTime p  v w v r   n x x y x n   n t z { z 4   o t�� |
�� 
cobj | m   p s����  { o   n o���� 0 savedata saveData y o      ���� .0 dependenciesinstalled dependenciesInstalled w  } ~ } r   y �  �  m   y | � � � � �  1 � o      ���� 0 cuelist cueList ~  � � � r   � � � � � m   � ���
�� boovfals � o      ����  0 donationprompt donationPrompt �  � � � l  � ���������  ��  ��   �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   � n hDisplays prompts to the user to get the necessary information to query the ETC board and create the cues    � � � � � D i s p l a y s   p r o m p t s   t o   t h e   u s e r   t o   g e t   t h e   n e c e s s a r y   i n f o r m a t i o n   t o   q u e r y   t h e   E T C   b o a r d   a n d   c r e a t e   t h e   c u e s �  � � � Z   � � ����� � =  � � � � � o   � ����� 0 
infoneeded 
infoNeeded � m   � ���
�� boovtrue � k   � � �  � � � r   � � � � � I  � ��� � �
�� .sysodlogaskr        TEXT � m   � � � � � � � . E T C   c o n s o l e   I P   A d d r e s s : � �� ���
�� 
dtxt � o   � ����� 0 	consoleip 	consoleIP��   � o      ���� 0 	consoleip 	consoleIP �  � � � r   � � � � � n   � � � � � 1   � ���
�� 
ttxt � o   � ����� 0 	consoleip 	consoleIP � o      ���� 0 	consoleip 	consoleIP �  � � � r   � � � � � I  � ��� � �
�� .sysodlogaskr        TEXT � m   � � � � � � �   E T C   O S C   R X   P o r t : � �� ���
�� 
dtxt � o   � ����� 0 	oscrxport 	oscRXPort��   � o      ���� 0 	oscrxport 	oscRXPort �  � � � r   � � � � � n   � � � � � 1   � ���
�� 
ttxt � o   � ����� 0 	oscrxport 	oscRXPort � o      ���� 0 	oscrxport 	oscRXPort �  � � � r   � � � � � I  � ��� � �
�� .sysodlogaskr        TEXT � m   � � � � � � �   E T C   O S C   T X   P o r t : � �� ���
�� 
dtxt � o   � ����� 0 	osctxport 	oscTXPort��   � o      ���� 0 	osctxport 	oscTXPort �  � � � r   � � � � � n   � � � � � 1   � ���
�� 
ttxt � o   � ����� 0 	osctxport 	oscTXPort � o      ���� 0 	osctxport 	oscTXPort �  � � � r   � � � � I  � ��� � �
�� .gtqpchltns    @   @ ns   � J   � � � �  � � � m   � �����  �  � � � m   � �����  �  � � � m   � �����  �  � � � m   � �����  �  � � � m   � �����  �  � � � m   � �����  �  � � � m   � �����  �  � � � m   � �����  �  � � � m   � ����� 	 �  ��� � m   � ����� 
��   � �� ���
�� 
prmp � m   � � � � � � � 8 Q L a b   N e t w o r k   P a t h   t o   L i g h t s :��   � o      ���� 0 networkpatch networkPatch �  � � � r   � � � I �� � �
�� .sysodlogaskr        TEXT � m   � � � � � ( E T C   C u e   L i s t   N u m b e r : � �� ���
�� 
dtxt � o  ���� 0 cuelist cueList��   � o      ���� 0 cuelist cueList �  � � � r   � � � n   � � � 1  ��
�� 
ttxt � o  ���� 0 cuelist cueList � o      ���� 0 cuelist cueList �  � � � l   ��������  ��  ��   �  � � � l   �� � ���   � W QPormpts the user to install any necessary dependencies required to run the script    � � � � � P o r m p t s   t h e   u s e r   t o   i n s t a l l   a n y   n e c e s s a r y   d e p e n d e n c i e s   r e q u i r e d   t o   r u n   t h e   s c r i p t �  � � � Z   � � ����� � =  % � � � o   #�� .0 dependenciesinstalled dependenciesInstalled � m  #$�~
�~ boovfals � k  (� � �  � � � r  (-   m  ()�}
�} boovtrue o      �|�|  0 donationprompt donationPrompt �  r  .� I .��{
�{ .sysodisAaleR        TEXT b  .�	 b  .}

 b  .y b  .u b  .q b  .m b  .i b  .e b  .a b  .] b  .Y b  .U b  .Q !  b  .M"#" b  .I$%$ b  .E&'& b  .A()( b  .=*+* b  .9,-, b  .5./. m  .100 �11 P L E A S E   E N S U R E   Y O U   H A V E   D O N E   Y O U R   D U E   D I L I G E N C E   T O   M A K E   S U R E   T H I S   S C R I P T   H A S N ' T   B E N   A L T E R E D   T O   I N S T A L L   A N Y T H I N G   M A L I C I O U S   O N   Y O U R   C O M P U T E R !   O N L Y   T H E   L I S T E D   D E P E N D E N C I E S   S H O U L D   I N S T A L L ,   A N D   T H E   T E R M I N A L   W I N D O W   W I L L   S P E L L   O U T   W H A T   I T   I S   I N S T A L L I N G   A T   E A C H   S T E P !/ o  14�z
�z 
ret - m  5822 �33� W o u l d   y o u   l i k e   t o   i n s t a l l   a n y   n e c e s s a r y   d e p e n d e n c i e s   b e f o r e   r u n n i n g   t h e   s c r i p t .   Y o u   m a y   a l r e a d y   h a v e   s o m e   o f   t h e s e   i n s t a l l e d .   S e l e c t i n g   Y e s   s h o u l d   r e i n s t a l l   t h e   r e s t   w i t h o u t   i n t e r f e r i n g   w i t h   e x i s t i n g   i n s t a l l a t i o n s .   T h e s e   i n c l u d e   t h e   f o l l o w i n g :+ o  9<�y
�y 
ret ) m  =@44 �55 8 C o m m a n d   L i n e   T o o l s   f o r   X c o d e' o  AD�x
�x 
ret % m  EH66 �77  h o m e b r e w# o  IL�w
�w 
ret ! m  MP88 �99  s w i g o  QT�v
�v 
ret  m  UX:: �;;  o p e n S S L o  Y\�u
�u 
ret  m  ]`<< �==  p y t h o n o  ad�t
�t 
ret  m  eh>> �?? 
 l i b l o o  il�s
�s 
ret  m  mp@@ �AA  o s c o  qt�r
�r 
ret  m  uxBB �CC� A   t e r m i n a l   w i l l   l a u n c h   t o   i n s t a l l   e a c h   o f   t h e   d e p e n d e n c i e s   r e q u i r e d .   T h e   f i r s t   o n e   ( h o m e b r e w )   w i l l   r e q u i r e   a n   a d m i n i s t r a t i v e   p a s s w o r d .   I f   y o u   a l r e a d y   h a v e   i t   i n s t a l l e d ,   y o u   c a n   s i m p l y   p r e s s   C t r l   +   C   t o   t e r m i n a t e   t h e   i n s t a l l   a n d   m o v e   o n   t o   t h e   n e x t   o n e s .   F o l l o w   a n y   p r o m p t s   b y   t h e   t e r m i n a l   t o   e n s u r e   t h e   i n s t a l l   o f   e a c h   d e p e n d e n c y ! o  y|�q
�q 
ret 	 m  }�DD �EE* T h i s   w i l l   b e   t h e   o n l y   t i m e   t h i s   p r o m p t   i s   s h o w .   I f   y o u   n e e d   t o   i n s t a l l   d e p e n d e n c i e s   l a t e r ,   c h a n g e   t h e   c o l o r   t a g   o f   t h i s   c u e   t o   n o n e   t o   b e   r e p o r m p t e d . �pF�o
�p 
btnsF J  ��GG HIH m  ��JJ �KK  N oI L�nL m  ��MM �NN  Y e s�n  �o   o      �m�m (0 installdependencis installDependencis OPO r  ��QRQ n  ��STS 1  ���l
�l 
bhitT o  ���k�k (0 installdependencis installDependencisR o      �j�j 0 installchoice  P UVU Z  ��WX�i�hW = ��YZY o  ���g�g 0 installchoice  Z m  ��[[ �\\  Y e sX n ��]^] I  ���f_�e�f *0 installdependencies installDependencies_ `�d` o  ���c�c 0 brewdirectory brewDirectory�d  �e  ^  f  ���i  �h  V a�ba r  ��bcb m  ��dd �ee  P u r p l ec n      fgf 1  ���a
�a 
qColg 4  ���`h
�` 
aCueh m  ��ii �jj  G E T C U E S�b  ��  ��   � klk l ���_�^�]�_  �^  �]  l mnm l ���\op�\  o X RSaves the inputed information to the notes of the cue for reference in future runs   p �qq � S a v e s   t h e   i n p u t e d   i n f o r m a t i o n   t o   t h e   n o t e s   o f   t h e   c u e   f o r   r e f e r e n c e   i n   f u t u r e   r u n sn r�[r r  �sts b  �uvu b  � wxw b  ��yzy b  ��{|{ b  ��}~} b  ��� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� m  ���� ���L Y o u   c a n   c h a n g e   t h i s   c u e s   c o l o r   t o   B l u e   t o   b y p a s s   a n y   p r o m p t s   a n d   j u s t   u s e   t h e   i n f o r m a t i o n   s a v e d   i n   t h e   N o t e s .   B y p a s s i n g   i n p u t   w i l l   a l w a y s   u s e   a   d e f a u l t   c u e   l i s t   o f   1 .� o  ���Z
�Z 
ret � m  ���� ���   E T C   I P   A d d r e s s :  � o  ���Y�Y 0 	consoleip 	consoleIP� o  ���X
�X 
ret � m  ���� ��� " E T C   O S C   R X   P o r t :  � o  ���W�W 0 	oscrxport 	oscRXPort� o  ���V
�V 
ret � m  ���� ��� " E T C   O S C   T X   P o r t :  � o  ���U�U 0 	osctxport 	oscTXPort~ o  ���T
�T 
ret | m  ���� ��� < Q L a b   N e t w o r k   P a t c h   t o   L i g h t s :  z o  ���S�S 0 networkpatch networkPatchx o  ���R
�R 
ret v m   �� ���4 T h i s   s c r i p t   w a s   c r e a t e d   b y   J o h h n y   B a r t l e t t .   T o   s e e   m o r e   o f   m y   w o r k ,   d o n a t e   t o   a l l o w   m e   t o   c r e a t e   m o r e   s c r i p t s   l i k e   t h i s ,   o r   c o m m i s s i o n   a   s c r i p t   f o r   y o u r   s p a c e   o r   s h o w   v i s i t   h t t p s : / / g i t h u b . c o m / G u f f a w k e r / Q L a b - S c r i p t s   o r   v i s i t   h t t p s : / / w w w . b u y m e a c o f f e e . c o m / g u f f a w k e r   t o   d o n a t e   d i r e c t l y !t n      ��� 1  �Q
�Q 
qNot� 4  �P�
�P 
aCue� m  �� ���  G E T C U E S�[  ��  ��   � ��� l �O�N�M�O  �N  �M  � ��� r  !��� b  ��� b  ��� o  �L�L 0 	consoleip 	consoleIP� m  �� ���   � o  �K�K 0 	oscrxport 	oscRXPort� o      �J�J 0 etcsendinfo etcSendInfo� ��� l ""�I�H�G�I  �H  �G  � ��� l ""�F���F  � � �Makes sure there isn't currently a file on the desktop that matches the temporary dump file that will be created to parse the received data   � ��� M a k e s   s u r e   t h e r e   i s n ' t   c u r r e n t l y   a   f i l e   o n   t h e   d e s k t o p   t h a t   m a t c h e s   t h e   t e m p o r a r y   d u m p   f i l e   t h a t   w i l l   b e   c r e a t e d   t o   p a r s e   t h e   r e c e i v e d   d a t a� ��� Q  "5���E� I %,�D��C
�D .sysoexecTEXT���     TEXT� m  %(�� ��� ( r m   ~ / D e s k t o p / o s c . t x t�C  � R      �B�A�@
�B .ascrerr ****      � ****�A  �@  �E  � ��� l 66�?���?  � Z TOpens the OSCDump port using the provided TX port, to listen to the consoles replies   � ��� � O p e n s   t h e   O S C D u m p   p o r t   u s i n g   t h e   p r o v i d e d   T X   p o r t ,   t o   l i s t e n   t o   t h e   c o n s o l e s   r e p l i e s� ��� n 6A��� I  7A�>��=�> 0 	osclisten 	oscListen� ��� o  7:�<�< 0 	osctxport 	oscTXPort� ��;� o  :=�:�: 0 brewdirectory brewDirectory�;  �=  �  f  67� ��� I BI�9��8
�9 .sysodelanull��� ��� nmbr� o  BE�7�7 0 	delaytime 	delayTime�8  � ��� l JJ�6�5�4�6  �5  �4  � ��� l JJ�3���3  � � |Uses oscsend to query the ETC console at the IP address and port given, to get a count of all cues in the requested cue list   � ��� � U s e s   o s c s e n d   t o   q u e r y   t h e   E T C   c o n s o l e   a t   t h e   I P   a d d r e s s   a n d   p o r t   g i v e n ,   t o   g e t   a   c o u n t   o f   a l l   c u e s   i n   t h e   r e q u e s t e d   c u e   l i s t� ��� I Jg�2��1
�2 .sysoexecTEXT���     TEXT� b  Jc��� b  J_��� b  J[��� b  JY��� b  JU��� b  JQ��� o  JM�0�0 0 brewdirectory brewDirectory� m  MP�� ���  / o s c s e n d  � o  QT�/�/ 0 etcsendinfo etcSendInfo� m  UX�� ���   � o  YZ�.�. 0 getcuecount getCueCount� o  [^�-�- 0 cuelist cueList� m  _b�� ���  / c o u n t�1  � ��� I ho�,��+
�, .sysodelanull��� ��� nmbr� o  hk�*�* 0 	delaytime 	delayTime�+  � ��� r  p��� I p{�)��(
�) .sysoexecTEXT���     TEXT� b  pw��� m  ps�� ���  c a t  � m  sv�� ��� " ~ / D e s k t o p / o s c . t x t�(  � o      �'�' 0 returnedcount returnedCount� ��� r  ����� m  ���� ���   � n     ��� 1  ���&
�& 
txdl� 1  ���%
�% 
ascr� ��� r  ��   n  �� 2 ���$
�$ 
citm o  ���#�# 0 returnedcount returnedCount o      �"�" 0 cuecountinfo cueCountInfo�  r  �� n  ��	 4  ���!

�! 
cobj
 m  ��� �  	 o  ���� 0 cuecountinfo cueCountInfo o      �� 0 cuecount cueCount  l ������  �  �    l ����   � }Uses the aquired cue count value to send a command for each cue to get the cue number and other information from the console	    � � U s e s   t h e   a q u i r e d   c u e   c o u n t   v a l u e   t o   s e n d   a   c o m m a n d   f o r   e a c h   c u e   t o   g e t   t h e   c u e   n u m b e r   a n d   o t h e r   i n f o r m a t i o n   f r o m   t h e   c o n s o l e 	  r  �� m  ����   o      �� 0 cuecheck cueCheck  U  �� k  ��  I ����
� .sysoexecTEXT���     TEXT b  �� b  �� !  b  ��"#" b  ��$%$ b  ��&'& o  ���� 0 brewdirectory brewDirectory' m  ��(( �))  / o s c s e n d  % o  ���� 0 etcsendinfo etcSendInfo# m  ��** �++   ! o  ���� 0 
getcueinfo 
getCueInfo o  ���� 0 cuecheck cueCheck�   ,-, r  ��./. [  ��010 o  ���� 0 cuecheck cueCheck1 m  ���� / o      �� 0 cuecheck cueCheck- 2�2 I ���3�
� .sysodelanull��� ��� nmbr3 o  ���� 0 	delaytime 	delayTime�  �   o  ���
�
 0 cuecount cueCount 454 s  ��676 l ��8�	�8 b  ��9:9 m  ��;; �<<  c o u n t   i  : o  ���� 0 cuecount cueCount�	  �  7 n      =>=  ;  ��> o  ���� &0 createdcuetracker createdCueTracker5 ?@? r  ��ABA I ���C�
� .sysoexecTEXT���     TEXTC b  ��DED m  ��FF �GG  c a t  E m  ��HH �II " ~ / D e s k t o p / o s c . t x t�  B o      �� 0 
rawcuelist 
rawCueList@ JKJ r   LML n   NON 2 �
� 
cparO o   �� 0 
rawcuelist 
rawCueListM o      � �  0 
rawcuelist 
rawCueListK PQP l ��������  ��  ��  Q RSR l ��TU��  T � �Parses all the data received from the OSC replies, and creates a network cue for each one with the osc command to target proper cue   U �VV P a r s e s   a l l   t h e   d a t a   r e c e i v e d   f r o m   t h e   O S C   r e p l i e s ,   a n d   c r e a t e s   a   n e t w o r k   c u e   f o r   e a c h   o n e   w i t h   t h e   o s c   c o m m a n d   t o   t a r g e t   p r o p e r   c u eS WXW X  �Y��ZY k   �[[ \]\ r   3^_^ b   +`a` b   'bcb m   #dd �ee " / e o s / o u t / g e t / c u e /c o  #&���� 0 cuelist cueLista m  '*ff �gg  /_ n     hih 1  .2��
�� 
txdli 1  +.��
�� 
ascr] jkj r  4>lml n  4:non 4  5:��p
�� 
citmp m  89���� o o  45���� 0 consolereply consoleReplym o      ���� 0 	cuenumber 	cueNumberk qrq r  ?Jsts m  ?Buu �vv  /t n     wxw 1  EI��
�� 
txdlx 1  BE��
�� 
ascrr yzy r  KW{|{ n  KS}~} 4  NS��
�� 
citm m  QR���� ~ o  KN���� 0 	cuenumber 	cueNumber| o      ���� 0 
newcueinfo 
newCueInfoz ���� Z  X�������� H  X^�� E  X]��� o  XY���� &0 createdcuetracker createdCueTracker� o  Y\���� 0 
newcueinfo 
newCueInfo� k  a��� ��� I al�����
�� .QLabmakenull���     qDoc��  � �����
�� 
newT� m  eh�� ���  N e t w o r k��  � ��� r  m}��� n  my��� 4 vy���
�� 
cobj� m  wx������� l mv������ c  mv��� 1  mr��
�� 
qSEL� m  ru��
�� 
list��  ��  � o      ���� 0 	thenewcue 	theNewCue� ��� r  ~���� o  ~����� 0 
newcueinfo 
newCueInfo� n      ��� 1  ����
�� 
pnam� o  ������ 0 	thenewcue 	theNewCue� ��� r  ����� b  ����� m  ���� ���  L i g h t i n g   C u e :  � o  ������ 0 
newcueinfo 
newCueInfo� n      ��� 1  ����
�� 
qNam� o  ������ 0 	thenewcue 	theNewCue� ��� r  ����� b  ����� b  ����� m  ���� ���  / e o s / c u e /� o  ������ 0 
newcueinfo 
newCueInfo� m  ���� ��� 
 / f i r e� n      ��� 1  ����
�� 
qCuM� o  ������ 0 	thenewcue 	theNewCue� ��� r  ����� o  ������ 0 networkpatch networkPatch� n      ��� 1  ����
�� 
qPch� o  ������ 0 	thenewcue 	theNewCue� ��� s  ����� o  ������ 0 	thenewcue 	theNewCue� n      ���  ;  ��� o  ������ 0 createdcues createdCues� ���� s  ����� o  ������ 0 
newcueinfo 
newCueInfo� n      ���  ;  ��� o  ������ &0 createdcuetracker createdCueTracker��  ��  ��  ��  �� 0 consolereply consoleReplyZ o  ���� 0 
rawcuelist 
rawCueListX ��� l ����������  ��  ��  � ��� l ��������  � a [Begs for money. Please support if you can. I'm broke, and these tools take time to create.	   � ��� � B e g s   f o r   m o n e y .   P l e a s e   s u p p o r t   i f   y o u   c a n .   I ' m   b r o k e ,   a n d   t h e s e   t o o l s   t a k e   t i m e   t o   c r e a t e . 	� ��� Z  �������� = ����� o  ������  0 donationprompt donationPrompt� m  ����
�� boovtrue� k  ��� ��� r  ����� I ������
�� .sysodisAaleR        TEXT� m  ���� ���� T h i s   s c r i p t   w a s   c r e a t e d   b y   J o h h n y   B a r t l e t t .   T o   s e e   m o r e   o f   m y   w o r k ,   d o n a t e   t o   a l l o w   m e   t o   c r e a t e   m o r e   s c r i p t s   l i k e   t h i s ,   o r   c o m m i s s i o n   a   s c r i p t   f o r   y o u r   s p a c e   o r   s h o w   v i s i t   h t t p s : / / g i t h u b . c o m / G u f f a w k e r / Q L a b - S c r i p t s   o r   c l i c k   t h e   D o n a t e   b u t t o n   b e l o w   t o   s u p p o r t   m e   d i r e c t !   ( T h i s   p r o m p t   w i l l   o n l y   e v e r   s h o w   u p   w h i l e   i n s t a l l i n g   d e p e n d e n c i e s .   I f   y o u   r e s e t   t h e   c u e   y o u   w i l l   s e e   i t   a g a i n ,   b u t   d o n ' t   w o r r y   i t   w o n ' t   b e   a   f o r c e d   p o p - u p   e v e r y   t i m e   y o u   r u n   t h i s   s c r i p t ! )� �����
�� 
btns� J  ���� ��� m  ���� ���  T h a n k s !� ���� m  ���� ���  D o n a t e��  ��  � o      ���� 0 donateprompt donatePrompt� ��� r  ����� n  ����� 1  ����
�� 
bhit� l �������� o  ������ 0 donateprompt donatePrompt��  ��  � o      ���� 0 response  � ���� Z �������� = ���� o  ������ 0 response  � m  ��� ���  D o n a t e� I �����
�� .GURLGURLnull��� ��� TEXT� m  	�� ��� L h t t p s : / / w w w . b u y m e a c o f f e e . c o m / g u f f a w k e r��  ��  ��  ��  ��  ��  � ��� l ������  � q kCreates a group and adds all of the newly created cues to it, so they can easily be relocated or condensed.   � ��� � C r e a t e s   a   g r o u p   a n d   a d d s   a l l   o f   t h e   n e w l y   c r e a t e d   c u e s   t o   i t ,   s o   t h e y   c a n   e a s i l y   b e   r e l o c a t e d   o r   c o n d e n s e d .� ��� I !�����
�� .QLabmakenull���     qDoc��  � �����
�� 
newT� m  �� �   
 G r o u p��  �  r  "2 n  ". 4 +.��
�� 
cobj m  ,-������ l "+���� c  "+	
	 1  "'��
�� 
qSEL
 m  '*��
�� 
list��  ��   o      ���� 0 etccuegroup etcCueGroup  r  3> m  36 � " E T C   L i g h t i n g   C u e s n       1  9=��
�� 
qNam o  69���� 0 etccuegroup etcCueGroup  O  ?y X  Gx�� I Ys��
�� .coremovenull���     obj  n  Yi 5  ^i����
�� 
aCue l ag���� n  ag  1  bf��
�� 
ID    o  ab���� 0 lightcue lightCue��  ��  
�� kfrmID   n  Y^!"! 1  Z^��
�� 
qPar" o  YZ���� 0 lightcue lightCue ��#��
�� 
insh# o  lo���� 0 etccuegroup etcCueGroup��  �� 0 lightcue lightCue o  JK���� 0 createdcues createdCues 1  ?D��
�� 
qCLI $%$ l zz��������  ��  ��  % &'& l zz��()��  ( M GCleans up by killing the terminal and deleting the temporary dump file.   ) �** � C l e a n s   u p   b y   k i l l i n g   t h e   t e r m i n a l   a n d   d e l e t i n g   t h e   t e m p o r a r y   d u m p   f i l e .' +,+ I z���-��
�� .sysoexecTEXT���     TEXT- m  z}.. �// 2 k i l l   - 9   $ ( p g r e p   T e r m i n a l )��  , 010 I ����2��
�� .sysoexecTEXT���     TEXT2 m  ��33 �44 ( r m   ~ / D e s k t o p / o s c . t x t��  1 565 l ����78��  7 � �Promts the user to let them know how many cues the board reported and how many got created so the user can know if there were any descrepencies.   8 �99  P r o m t s   t h e   u s e r   t o   l e t   t h e m   k n o w   h o w   m a n y   c u e s   t h e   b o a r d   r e p o r t e d   a n d   h o w   m a n y   g o t   c r e a t e d   s o   t h e   u s e r   c a n   k n o w   i f   t h e r e   w e r e   a n y   d e s c r e p e n c i e s .6 :��: I ����;��
�� .sysodlogaskr        TEXT; b  ��<=< b  ��>?> b  ��@A@ o  ������ 0 cuecount cueCountA m  ��BB �CC P   C u e s   w e r e   r e p o r t e d   b y   t h e   l i g h t   b o a r d ,  ? l ��D����D \  ��EFE l ��G����G I ����H��
�� .corecnte****       ****H o  ������ &0 createdcuetracker createdCueTracker��  ��  ��  F m  ������ ��  ��  = m  ��II �JJ �   c u e s   w e r e   c r e a t e d   b y   Q L a b .   I f   t h e s e   n u m b e r s   d o n ' t   m a t c h ,   p l e a s e   r e v i e w   y o u r   c u e   l i s t   f o r   a n y   d i s c r e p e n c i e s !��  ��   ' 4   ��K
�� 
qDocK m    ����  % 5    �L�~
� 
cappL m   
 MM �NN & c o m . f i g u r e 5 3 . Q L a b . 4
�~ kfrmID  ��  ��   " OPO l     �}�|�{�}  �|  �{  P QRQ l     �zST�z  S 0 *The function that creates the OSCDump port   T �UU T T h e   f u n c t i o n   t h a t   c r e a t e s   t h e   O S C D u m p   p o r tR VWV i     XYX I      �yZ�x�y 0 	osclisten 	oscListenZ [\[ o      �w�w 0 	osctxport 	oscTXPort\ ]�v] o      �u�u 0 brewdirectory brewDirectory�v  �x  Y O     ^_^ k    `` aba I   	�t�s�r
�t .miscactvnull��� ��� null�s  �r  b c�qc I  
 �pd�o
�p .coredoscnull��� ��� ctxtd b   
 efe b   
 ghg b   
 iji o   
 �n�n 0 brewdirectory brewDirectoryj m    kk �ll  / o s c d u m p   - L  h o    �m�m 0 	osctxport 	oscTXPortf m    mm �nn *   > >   ~ / d e s k t o p / o s c . t x t�o  �q  _ m     oo�                                                                                      @ alis    B  Untitled                   ߯1�BD ����Terminal.app                                                   ����߯1�        ����  
 cu             	Utilities   -/:System:Applications:Utilities:Terminal.app/     T e r m i n a l . a p p    U n t i t l e d  *System/Applications/Utilities/Terminal.app  / ��  W pqp l     �l�k�j�l  �k  �j  q rsr l     �i�h�g�i  �h  �g  s tut l     �fvw�f  v a [The function that pulls all of the cue information to get any saved data or run conditions.   w �xx � T h e   f u n c t i o n   t h a t   p u l l s   a l l   o f   t h e   c u e   i n f o r m a t i o n   t o   g e t   a n y   s a v e d   d a t a   o r   r u n   c o n d i t i o n s .u yzy i    {|{ I      �e}�d�e 0 getsavedinfo getSavedInfo} ~�c~ o      �b�b 0 savedata saveData�c  �d  | k    � ��� O   ���� O   ���� k   ��� ��� r    ��� n    ��� 4   �a�
�a 
cobj� m    �`�`��� l   ��_�^� c    ��� 1    �]
�] 
actQ� m    �\
�\ 
list�_  �^  � o      �[�[ 0 thiscue thisCue� ��� Z    :���Z�Y� >   ��� n    ��� 1    �X
�X 
pnam� o    �W�W 0 thiscue thisCue� m    �� ���  G E T C U E S� k   " 6�� ��� r   " '��� m   " #�� ���  G E T C U E S� n      ��� 1   $ &�V
�V 
pnam� o   # $�U�U 0 thiscue thisCue� ��� r   ( -��� m   ( )�� ���  E T C   C u e   S y n c� n      ��� 1   * ,�T
�T 
qNam� o   ) *�S�S 0 thiscue thisCue� ��R� r   . 6��� m   . /�� ���  N o n e� n      ��� 1   3 5�Q
�Q 
qCol� 4   / 3�P�
�P 
aCue� m   1 2�� ���  G E T C U E S�R  �Z  �Y  � ��� l  ; ;�O�N�M�O  �N  �M  � ��� Z   ; S���L�� >  ; G��� n   ; C��� 1   A C�K
�K 
qCol� 4   ; A�J�
�J 
aCue� m   = @�� ���  G E T C U E S� m   C F�� ���  B l u e� r   J M��� m   J K�I
�I boovtrue� o      �H�H 0 
infoneeded 
infoNeeded�L  � r   P S��� m   P Q�G
�G boovfals� o      �F�F 0 
infoneeded 
infoNeeded� ��� r   T _��� m   T W�� ���  :  � n     ��� 1   Z ^�E
�E 
txdl� 1   W Z�D
�D 
ascr� ��� r   ` l��� n   ` j��� 1   f j�C
�C 
qNot� 4   ` f�B�
�B 
aCue� m   b e�� ���  G E T C U E S� o      �A�A 0 cuenotes cueNotes� ��� r   m x��� I  m v�@��?
�@ .corecnte****       ****� n   m r��� 2  n r�>
�> 
cpar� o   m n�=�= 0 cuenotes cueNotes�?  � o      �<�< 0 	savedinfo 	savedInfo� ��� Z   y	���;�� A  y ~��� o   y z�:�: 0 	savedinfo 	savedInfo� m   z }�9�9 � k   � ��� ��� r   � ���� m   � ��8
�8 boovtrue� o      �7�7 0 
infoneeded 
infoNeeded� ��� r   � ���� m   � ��� ���  � o      �6�6 0 	consoleip 	consoleIP� ��� r   � ���� m   � ��� ���  � o      �5�5 0 	oscrxport 	oscRXPort� ��� r   � ���� m   � ��� ���  � o      �4�4 0 	osctxport 	oscTXPort�    r   � � m   � � �   o      �3�3 0 networkpatch networkPatch  r   � �	 m   � �

 �  	 o      �2�2 0 brewdirectory brewDirectory  r   � � m   � � ?�z�G�{ n       1   � ��1
�1 
qPos 4   � ��0
�0 
aCue m   � � �  G E T C U E S �/ r   � � n   � � 1   � ��.
�. 
qPos 4   � ��-
�- 
aCue m   � � �  G E T C U E S o      �,�, 0 	delaytime 	delayTime�/  �;  � k   �	   r   � �!"! n   � �#$# 4   � ��+%
�+ 
citm% m   � ��*�* $ l  � �&�)�(& n   � �'(' 4   � ��')
�' 
cpar) m   � ��&�& ( o   � ��%�% 0 cuenotes cueNotes�)  �(  " o      �$�$ 0 	consoleip 	consoleIP  *+* r   � �,-, n   � �./. 4   � ��#0
�# 
citm0 m   � ��"�" / l  � �1�!� 1 n   � �232 4   � ��4
� 
cpar4 m   � ��� 3 o   � ��� 0 cuenotes cueNotes�!  �   - o      �� 0 	oscrxport 	oscRXPort+ 565 r   � �787 n   � �9:9 4   � ��;
� 
citm; m   � ��� : l  � �<��< n   � �=>= 4   � ��?
� 
cpar? m   � ��� > o   � ��� 0 cuenotes cueNotes�  �  8 o      �� 0 	osctxport 	oscTXPort6 @A@ r   � �BCB n   � �DED 4   � ��F
� 
citmF m   � ��� E l  � �G��G n   � �HIH 4   � ��J
� 
cparJ m   � ��� I o   � ��� 0 cuenotes cueNotes�  �  C o      �� 0 networkpatch networkPatchA K�K r   �	LML n   �NON 1  �

�
 
qPosO 4   ��	P
�	 
aCueP m   �QQ �RR  G E T C U E SM o      �� 0 	delaytime 	delayTime�  � STS r  
UVU m  
WW �XX   V n     YZY 1  �
� 
txdlZ 1  �
� 
ascrT [\[ r  ]^] l _��_ I �`�
� .sysoexecTEXT���     TEXT` m  aa �bb D s y s c t l   - n   m a c h d e p . c p u . b r a n d _ s t r i n g�  �  �  ^ o      �� 0 chip  \ cdc Z   :ef� ge =  *hih n   &jkj 4  !&��l
�� 
citml m  $%���� k o   !���� 0 chip  i m  &)mm �nn 
 A p p l ef r  -2opo m  -0qq �rr $ / o p t / h o m e b r e w / b i n /p o      ���� 0 brewdirectory brewDirectory�   g r  5:sts m  58uu �vv  / u s r / l o c a l / b i nt o      ���� 0 brewdirectory brewDirectoryd wxw Z  ;fyz��{y G  ;Z|}| = ;G~~ n  ;C��� 1  AC��
�� 
qCol� 4  ;A���
�� 
aCue� m  =@�� ���  G E T C U E S m  CF�� ���  P u r p l e} = JV��� n  JR��� 1  PR��
�� 
qCol� 4  JP���
�� 
aCue� m  LO�� ���  G E T C U E S� m  RU�� ���  B l u ez r  ]`��� m  ]^��
�� boovtrue� o      ���� .0 dependenciesinstalled dependenciesInstalled��  { r  cf��� m  cd��
�� boovfals� o      ���� .0 dependenciesinstalled dependenciesInstalledx ��� s  gk��� o  gh���� 0 
infoneeded 
infoNeeded� n      ���  ;  ij� o  hi���� 0 savedata saveData� ��� s  lp��� o  lm���� 0 	consoleip 	consoleIP� n      ���  ;  no� o  mn���� 0 savedata saveData� ��� s  qu��� o  qr���� 0 	oscrxport 	oscRXPort� n      ���  ;  st� o  rs���� 0 savedata saveData� ��� s  vz��� o  vw���� 0 	osctxport 	oscTXPort� n      ���  ;  xy� o  wx���� 0 savedata saveData� ��� s  {��� o  {|���� 0 networkpatch networkPatch� n      ���  ;  }~� o  |}���� 0 savedata saveData� ��� s  ����� o  ������ 0 brewdirectory brewDirectory� n      ���  ;  ��� o  ������ 0 savedata saveData� ��� s  ����� o  ������ 0 	delaytime 	delayTime� n      ���  ;  ��� o  ������ 0 savedata saveData� ���� s  ����� o  ������ .0 dependenciesinstalled dependenciesInstalled� n      ���  ;  ��� o  ������ 0 savedata saveData��  � 4   ���
�� 
qDoc� m   
 ���� � 5     �����
�� 
capp� m    �� ��� & c o m . f i g u r e 5 3 . Q L a b . 4
�� kfrmID  � ���� L  ���� o  ������ 0 savedata saveData��  z ��� l     ��������  ��  ��  � ��� l     ������  � R LThe function to install all of the necessary dependencies to run the script.   � ��� � T h e   f u n c t i o n   t o   i n s t a l l   a l l   o f   t h e   n e c e s s a r y   d e p e n d e n c i e s   t o   r u n   t h e   s c r i p t .� ���� i    ��� I      ������� *0 installdependencies installDependencies� ���� o      ���� 0 brewdirectory brewDirectory��  ��  � O    ��� k   �� ��� I   	������
�� .miscactvnull��� ��� null��  ��  � ��� r   
 ��� I  
 �����
�� .coredoscnull��� ��� ctxt� m   
 �� ��� � / b i n / b a s h   - c   " $ ( c u r l   - f s S L   h t t p s : / / r a w . g i t h u b u s e r c o n t e n t . c o m / H o m e b r e w / i n s t a l l / H E A D / i n s t a l l . s h ) "��  � o      ���� 0 installs  � ��� T    .�� k    )�� ��� I   �����
�� .sysodelanull��� ��� nmbr� m    �� ?���������  � ���� Z   )������� H    !�� n     ��� 1     ��
�� 
busy� o    ���� 0 installs  �  S   $ %��  ��  ��  � ��� I  / 6����
�� .coredoscnull��� ��� ctxt� m   / 0�� ��� , x c o d e - s e l e c t   - - i n s t a l l� �����
�� 
kfil� o   1 2���� 0 installs  ��  � ��� T   7 S�� k   < N�� ��� I  < A�����
�� .sysodelanull��� ��� nmbr� m   < =�� ?���������  � ���� Z  B N� ����� H   B F n   B E 1   C E��
�� 
busy o   B C���� 0 installs     S   I J��  ��  ��  �  I  T ]��
�� .coredoscnull��� ��� ctxt b   T W	 o   T U���� 0 brewdirectory brewDirectory	 m   U V

 � ( / b r e w   i n s t a l l   p y t h o n ����
�� 
kfil o   X Y���� 0 installs  ��    T   ^ z k   c u  I  c h����
�� .sysodelanull��� ��� nmbr m   c d ?���������   �� Z  i u���� H   i m n   i l 1   j l��
�� 
busy o   i j���� 0 installs    S   p q��  ��  ��    I  { ���
�� .coredoscnull��� ��� ctxt b   { ~  o   { |���� 0 brewdirectory brewDirectory  m   | }!! �"" $ / b r e w   i n s t a l l   s w i g ��#��
�� 
kfil# o    ����� 0 installs  ��   $%$ T   � �&& k   � �'' ()( I  � ���*��
�� .sysodelanull��� ��� nmbr* m   � �++ ?���������  ) ,��, Z  � �-.����- H   � �// n   � �010 1   � ���
�� 
busy1 o   � ����� 0 installs  .  S   � ���  ��  ��  % 232 I  � ���45
�� .coredoscnull��� ��� ctxt4 b   � �676 o   � ����� 0 brewdirectory brewDirectory7 m   � �88 �99 * / b r e w   i n s t a l l   o p e n s s l5 ��:��
�� 
kfil: o   � ����� 0 installs  ��  3 ;<; T   � �== k   � �>> ?@? I  � ���A��
�� .sysodelanull��� ��� nmbrA m   � �BB ?���������  @ C��C Z  � �DE����D H   � �FF n   � �GHG 1   � ���
�� 
busyH o   � ����� 0 installs  E  S   � ���  ��  ��  < IJI I  � ���KL
�� .coredoscnull��� ��� ctxtK b   � �MNM o   � ����� 0 brewdirectory brewDirectoryN m   � �OO �PP & / b r e w   i n s t a l l   l i b l oL ��Q��
�� 
kfilQ o   � ����� 0 installs  ��  J RSR T   � �TT k   � �UU VWV I  � ���X��
�� .sysodelanull��� ��� nmbrX m   � �YY ?���������  W Z��Z Z  � �[\����[ H   � �]] n   � �^_^ 1   � ���
�� 
busy_ o   � ����� 0 installs  \  S   � ���  ��  ��  S `a` I  � ���bc
�� .coredoscnull��� ��� ctxtb b   � �ded o   � ����� 0 brewdirectory brewDirectorye m   � �ff �gg " / b r e w   i n s t a l l   o s cc ��h��
�� 
kfilh o   � ����� 0 installs  ��  a iji T   �kk k   �ll mnm I  ���o��
�� .sysodelanull��� ��� nmbro m   � pp ?���������  n q��q Z rs����r H  	tt n  uvu 1  �
� 
busyv o  �~�~ 0 installs  s  S  ��  ��  ��  j w�}w I �|�{�z
�| .aevtquitnull��� ��� null�{  �z  �}  � m     xx�                                                                                      @ alis    B  Untitled                   ߯1�BD ����Terminal.app                                                   ����߯1�        ����  
 cu             	Utilities   -/:System:Applications:Utilities:Terminal.app/     T e r m i n a l . a p p    U n t i t l e d  *System/Applications/Utilities/Terminal.app  / ��  ��       �yyz{|}�y  y �x�w�v�u�x 0 	osclisten 	oscListen�w 0 getsavedinfo getSavedInfo�v *0 installdependencies installDependencies
�u .aevtoappnull  �   � ****z �tY�s�r~�q�t 0 	osclisten 	oscListen�s �p��p �  �o�n�o 0 	osctxport 	oscTXPort�n 0 brewdirectory brewDirectory�r  ~ �m�l�m 0 	osctxport 	oscTXPort�l 0 brewdirectory brewDirectory o�kkm�j
�k .miscactvnull��� ��� null
�j .coredoscnull��� ��� ctxt�q � *j O��%�%�%j U{ �i|�h�g���f�i 0 getsavedinfo getSavedInfo�h �e��e �  �d�d 0 savedata saveData�g  � �c�b�a�`�_�^�]�\�[�Z�Y�X�W�c 0 savedata saveData�b 0 thiscue thisCue�a 0 
infoneeded 
infoNeeded�` 0 cuenotes cueNotes�_ 0 	savedinfo 	savedInfo�^ 0 	consoleip 	consoleIP�] 0 	oscrxport 	oscRXPort�\ 0 	osctxport 	oscTXPort�[ 0 networkpatch networkPatch�Z 0 brewdirectory brewDirectory�Y 0 	delaytime 	delayTime�X 0 chip  �W .0 dependenciesinstalled dependenciesInstalled� 2�V��U�T�S�R�Q�P����O��N��M����L�K��J�I�H�G���
�F�E�D�CQWa�Bmqu�����A
�V 
capp
�U kfrmID  
�T 
qDoc
�S 
actQ
�R 
list
�Q 
cobj
�P 
pnam
�O 
qNam
�N 
aCue
�M 
qCol
�L 
ascr
�K 
txdl
�J 
qNot
�I 
cpar
�H .corecnte****       ****�G 
�F 
qPos
�E 
citm�D �C 
�B .sysoexecTEXT���     TEXT
�A 
bool�f�)���0�*�k/�*�,�&�i/E�O��,� ��,FO��,FO�*��/�,FY hO*�a /�,a  eE�Y fE�Oa _ a ,FO*�a /a ,E�O�a -j E�O�a  BeE�Oa E�Oa E�Oa E�Oa E�Oa E�Oa *�a  /a !,FO*�a "/a !,E�Y J�a l/a #l/E�O�a m/a #l/E�O�a a $/a #l/E�O�a a %/a #l/E�O*�a &/a !,E�Oa '_ a ,FOa (j )E�O�a #k/a *  
a +E�Y a ,E�O*�a -/�,a . 
 *�a //�,a 0 a 1& eE�Y fE�O��6GO��6GO��6GO��6GO��6GO��6GO��6GO��6GUUO�| �@��?�>���=�@ *0 installdependencies installDependencies�? �<��< �  �;�; 0 brewdirectory brewDirectory�>  � �:�9�: 0 brewdirectory brewDirectory�9 0 installs  � x�8��7��6�5��4
!8Of�3
�8 .miscactvnull��� ��� null
�7 .coredoscnull��� ��� ctxt
�6 .sysodelanull��� ��� nmbr
�5 
busy
�4 
kfil
�3 .aevtquitnull��� ��� null�=�*j O�j E�O hZ�j O��, Y h[OY��O��l O hZ�j O��, Y h[OY��O��%�l O hZ�j O��, Y h[OY��O��%�l O hZ�j O��, Y h[OY��O��%�l O hZ�j O��, Y h[OY��O��%�l O hZ�j O��, Y h[OY��O��%�l O hZ�j O��, Y h[OY��O*j U} �2��1�0���/
�2 .aevtoappnull  �   � ****� k    ���  ��  ��  !�.�.  �1  �0  � �-�,�- 0 consolereply consoleReply�, 0 lightcue lightCue� � �+ �*�)M�(�'�&�%�$�#�"�!� ����������� ��� ���� � ���� �� �0�2468:<>@BD�
JM�	���[�d�i������������� ����������������������������(*;FH��������df��u������������������������������������������������.3BI�+ 0 getcuecount getCueCount�* 0 
getcueinfo 
getCueInfo
�) 
capp
�( kfrmID  
�' 
qDoc�& 0 savedata saveData�% 0 createdcues createdCues�$ &0 createdcuetracker createdCueTracker�# 0 getsavedinfo getSavedInfo
�" 
cobj�! 0 
infoneeded 
infoNeeded�  0 	consoleip 	consoleIP� 0 	oscrxport 	oscRXPort� � 0 	osctxport 	oscTXPort� � 0 networkpatch networkPatch� � 0 brewdirectory brewDirectory� � 0 	delaytime 	delayTime� � .0 dependenciesinstalled dependenciesInstalled� 0 cuelist cueList�  0 donationprompt donationPrompt
� 
dtxt
� .sysodlogaskr        TEXT
� 
ttxt� 	� 

� 
prmp
� .gtqpchltns    @   @ ns  
� 
ret 
�
 
btns
�	 .sysodisAaleR        TEXT� (0 installdependencis installDependencis
� 
bhit� 0 installchoice  � *0 installdependencies installDependencies
� 
aCue
� 
qCol
� 
qNot� 0 etcsendinfo etcSendInfo
�  .sysoexecTEXT���     TEXT��  ��  �� 0 	osclisten 	oscListen
�� .sysodelanull��� ��� nmbr�� 0 returnedcount returnedCount
�� 
ascr
�� 
txdl
�� 
citm�� 0 cuecountinfo cueCountInfo�� 0 cuecount cueCount�� 0 cuecheck cueCheck�� 0 
rawcuelist 
rawCueList
�� 
cpar
�� 
kocl
�� .corecnte****       ****�� 0 	cuenumber 	cueNumber�� 0 
newcueinfo 
newCueInfo
�� 
newT
�� .QLabmakenull���     qDoc
�� 
qSEL
�� 
list�� 0 	thenewcue 	theNewCue
�� 
pnam
�� 
qNam
�� 
qCuM
�� 
qPch�� 0 donateprompt donatePrompt�� 0 response  
�� .GURLGURLnull��� ��� TEXT�� 0 etccuegroup etcCueGroup
�� 
qCLI
�� 
qPar
�� 
ID  
�� 
insh
�� .coremovenull���     obj �/��E�O�E�O)���0�*�k/�jvE�OjvE�OjvE�O)�k+ O��k/E�O��l/E�O��m/E�O��a /E` O��a /E` O��a /E` O��a /E` O��a /E` Oa E` OfE` O�e �a a �l E�O�a  ,E�Oa !a �l E�O�a  ,E�Oa "a _ l E` O_ a  ,E` Oklma a a a a a #a $a $va %a &l 'E` Oa (a _ l E` O_ a  ,E` O_ f  �eE` Oa )_ *%a +%_ *%a ,%_ *%a -%_ *%a .%_ *%a /%_ *%a 0%_ *%a 1%_ *%a 2%_ *%a 3%_ *%a 4%a 5a 6a 7lvl 8E` 9O_ 9a :,E` ;O_ ;a <  )_ k+ =Y hOa >*a ?a @/a A,FY hOa B_ *%a C%�%_ *%a D%�%_ *%a E%_ %_ *%a F%_ %_ *%a G%*a ?a H/a I,FY hO�a J%�%E` KO a Lj MW X N OhO)_ _ l+ PO_ j QO_ a R%_ K%a S%�%_ %a T%j MO_ j QOa Ua V%j ME` WOa X_ Ya Z,FO_ Wa [-E` \O_ \�a /E` ]OjE` ^O 8_ ]kh_ a _%_ K%a `%�%_ ^%j MO_ ^kE` ^O_ j Q[OY��Oa a_ ]%�6GOa ba c%j ME` dO_ da e-E` dO �_ d[a f�l gkh  a h_ %a i%_ Ya Z,FO�a [l/E` jOa k_ Ya Z,FO_ ja [k/E` lO�_ l k*a ma nl oO*a p,a q&�i/E` rO_ l_ ra s,FOa t_ l%_ ra u,FOa v_ l%a w%_ ra x,FO_ _ ra y,FO_ r�6GO_ l�6GY h[OY�OO_ e  =a za 5a {a |lvl 8E` }O_ }a :,E` ~O_ ~a   a �j �Y hY hO*a ma �l oO*a p,a q&�i/E` �Oa �_ �a u,FO*a �, 3 0�[a f�l gkh �a �,a ?�a �,E�0a �_ �l �[OY��UOa �j MOa �j MO_ ]a �%�j gk%a �%j UUascr  ��ޭ