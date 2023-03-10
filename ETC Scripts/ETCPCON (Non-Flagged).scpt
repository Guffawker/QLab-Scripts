FasdUAS 1.101.10   ??   ??    k             l     ??  ??   :4This cue was created by Johnny Bartlett! If you are having any issues with it, please let me know over at https://github.com/Guffawker/QLab-Scripts and I'll do my best to help resolve the issues! You can also find my other scripts there or donate over at https://www.buymeacoffee.com/guffawker to support me!     ? 	 	h T h i s   c u e   w a s   c r e a t e d   b y   J o h n n y   B a r t l e t t !   I f   y o u   a r e   h a v i n g   a n y   i s s u e s   w i t h   i t ,   p l e a s e   l e t   m e   k n o w   o v e r   a t   h t t p s : / / g i t h u b . c o m / G u f f a w k e r / Q L a b - S c r i p t s   a n d   I ' l l   d o   m y   b e s t   t o   h e l p   r e s o l v e   t h e   i s s u e s !   Y o u   c a n   a l s o   f i n d   m y   o t h e r   s c r i p t s   t h e r e   o r   d o n a t e   o v e r   a t   h t t p s : / / w w w . b u y m e a c o f f e e . c o m / g u f f a w k e r   t o   s u p p o r t   m e !   
  
 l   ? ????  O   ?    O   ?    k   ?       l   ??  ??    J DVariables used to track the cues created and data through the script     ?   ? V a r i a b l e s   u s e d   t o   t r a c k   t h e   c u e s   c r e a t e d   a n d   d a t a   t h r o u g h   t h e   s c r i p t      r        J    ????    o      ???? 0 savedata saveData      n       I    ?? ???? 0 getsavedinfo getSavedInfo    ??   o    ???? 0 savedata saveData??  ??     f       ! " ! r    ! # $ # n     % & % 4    ?? '
?? 
cobj ' m    ????  & o    ???? 0 savedata saveData $ o      ???? 0 
infoneeded 
infoNeeded "  ( ) ( r   " ( * + * n   " & , - , 4   # &?? .
?? 
cobj . m   $ %????  - o   " #???? 0 savedata saveData + o      ???? 0 	consoleip 	consoleIP )  / 0 / r   ) / 1 2 1 n   ) - 3 4 3 4   * -?? 5
?? 
cobj 5 m   + ,????  4 o   ) *???? 0 savedata saveData 2 o      ???? 0 	runinqlab 	runInQLab 0  6 7 6 r   0 6 8 9 8 n   0 4 : ; : 4   1 4?? <
?? 
cobj < m   2 3????  ; o   0 1???? 0 savedata saveData 9 o      ???? 0 brewdirectory brewDirectory 7  = > = r   7 = ? @ ? n   7 ; A B A 4   8 ;?? C
?? 
cobj C m   9 :????  B o   7 8???? 0 savedata saveData @ o      ???? .0 dependenciesinstalled dependenciesInstalled >  D E D l  > >????????  ??  ??   E  F G F l  > >?? H I??   H O IPrompts the user for the consoles IP address to create the TCP connection    I ? J J ? P r o m p t s   t h e   u s e r   f o r   t h e   c o n s o l e s   I P   a d d r e s s   t o   c r e a t e   t h e   T C P   c o n n e c t i o n G  K L K Z   >S M N???? M =  > A O P O o   > ????? 0 
infoneeded 
infoNeeded P m   ? @??
?? boovtrue N k   DO Q Q  R S R r   D M T U T I  D K?? V W
?? .sysodlogaskr        TEXT V m   D E X X ? Y Y . E T C   C o n s o l e   I P   A d d r e s s : W ?? Z??
?? 
dtxt Z o   F G???? 0 	consoleip 	consoleIP??   U o      ???? 0 	consoleip 	consoleIP S  [ \ [ r   N U ] ^ ] n   N S _ ` _ 1   O S??
?? 
ttxt ` o   N O???? 0 	consoleip 	consoleIP ^ o      ???? 0 	consoleip 	consoleIP \  a b a l  V V?? c d??   c l fChecks to see if the user would like to run the connection directly in QLab or in an external terminal    d ? e e ? C h e c k s   t o   s e e   i f   t h e   u s e r   w o u l d   l i k e   t o   r u n   t h e   c o n n e c t i o n   d i r e c t l y   i n   Q L a b   o r   i n   a n   e x t e r n a l   t e r m i n a l b  f g f r   V l h i h I  V h?? j k
?? .sysodisAaleR        TEXT j m   V Y l l ? m m W o u l d   y o u   l i k e   t o   r u n   t h i s   p r o c c e s s   i n   Q L a b ?   R u n n i n g   i t   i n   Q L a b   w i l l   a l l o w   y o u   t o   t e r m i n a t e   t h e   a c t i v e   c o n n e c t i o n   a n d   s e e   i t   r u n n i n g   a s   y o u   w o u l d   a n y   o t h e r   c u e   h o w e v e r   i t   m a y   a f f e c t   p e r f o r m a n c e   a n d   c a u s e   s l o w d o w n s .   R u n n i n g   i t   e x t e r n a l l y   m e a n s   t h e   c o n n e c t i o n   w i l l   b e   m a i n t a i n e d   e v e n   i f   y o u   p a n i c   o r   s t o p   a l l   c u e s   h o w e v e r   y o u   w i l l   h a v e   t o   s t o p   i t   m a n u a l l y   i n   t h e   t e r m i n a l   w i n d o w   t h a t   o p e n s . k ?? n??
?? 
btns n J   \ d o o  p q p m   \ _ r r ? s s  N o q  t?? t m   _ b u u ? v v  Y e s??  ??   i o      ????  0 runinqlabcheck runInQLabCheck g  w x w r   m v y z y n   m t { | { 1   p t??
?? 
bhit | o   m p????  0 runinqlabcheck runInQLabCheck z o      ???? 0 	runinqlab 	runInQLab x  } ~ } l  w w????????  ??  ??   ~   ?  l  w w?? ? ???   ? f `A one time prompt for the user to isntall the necessary dependencies required to run the script.    ? ? ? ? ? A   o n e   t i m e   p r o m p t   f o r   t h e   u s e r   t o   i s n t a l l   t h e   n e c e s s a r y   d e p e n d e n c i e s   r e q u i r e d   t o   r u n   t h e   s c r i p t . ?  ? ? ? Z   w" ? ????? ? =  w z ? ? ? o   w x???? .0 dependenciesinstalled dependenciesInstalled ? m   x y??
?? boovfals ? k   } ? ?  ? ? ? r   } ? ? ? ? I  } ??? ? ?
?? .sysodisAaleR        TEXT ? b   } ? ? ? ? b   } ? ? ? ? b   } ? ? ? ? b   } ? ? ? ? b   } ? ? ? ? b   } ? ? ? ? b   } ? ? ? ? b   } ? ? ? ? m   } ? ? ? ? ? ? P L E A S E   E N S U R E   Y O U   H A V E   D O N E   Y O U R   D U E   D I L I G E N C E   T O   M A K E   S U R E   T H I S   S C R I P T   H A S N ' T   B E N   A L T E R E D   T O   I N S T A L L   A N Y T H I N G   M A L I C I O U S   O N   Y O U R   C O M P U T E R !   O N L Y   T H E   L I S T E D   D E P E N D E N C I E S   S H O U L D   I N S T A L L ,   A N D   T H E   T E R M I N A L   W I N D O W   W I L L   S P E L L   O U T   W H A T   I T   I S   I N S T A L L I N G   A T   E A C H   S T E P ! ? o   ? ???
?? 
ret  ? m   ? ? ? ? ? ? ? ? W o u l d   y o u   l i k e   t o   i n s t a l l   a n y   n e c e s s a r y   d e p e n d e n c i e s   b e f o r e   r u n n i n g   t h e   s c r i p t .   T h e s e   i n c l u d e   t h e   f o l l o w i n g :   ? o   ? ???
?? 
ret  ? m   ? ? ? ? ? ? ? 
 s o c a t ? o   ? ???
?? 
ret  ? m   ? ? ? ? ? ? ?? A   t e r m i n a l   w i l l   l a u n c h   t o   i n s t a l l   e a c h   o f   t h e   d e p e n d e n c i e s   r e q u i r e d .   T h e   f i r s t   o n e   ( h o m e b r e w )   w i l l   r e q u i r e   a n   a d m i n i s t r a t i v e   p a s s w o r d .   I f   y o u   a l r e a d y   h a v e   i t   i n s t a l l e d ,   y o u   c a n   s i m p l y   p r e s s   C t r l   +   C   t o   t e r m i n a t e   t h e   i n s t a l l   a n d   m o v e   o n   t o   t h e   n e x t   o n e s .   F o l l o w   a n y   p r o m p t s   b y   t h e   t e r m i n a l   t o   e n s u r e   t h e   i n s t a l l   o f   e a c h   d e p e n d e n c y ! ? o   ? ???
?? 
ret  ? m   ? ? ? ? ? ? ?* T h i s   w i l l   b e   t h e   o n l y   t i m e   t h i s   p r o m p t   i s   s h o w .   I f   y o u   n e e d   t o   i n s t a l l   d e p e n d e n c i e s   l a t e r ,   c h a n g e   t h e   c o l o r   t a g   o f   t h i s   c u e   t o   n o n e   t o   b e   r e p o r m p t e d . ? ?? ???
?? 
btns ? J   ? ? ? ?  ? ? ? m   ? ? ? ? ? ? ?  N o ?  ??? ? m   ? ? ? ? ? ? ?  Y e s??  ??   ? o      ???? 80 dependenciesinstalledcheck dependenciesInstalledCheck ?  ? ? ? r   ? ? ? ? ? n   ? ? ? ? ? 1   ? ???
?? 
bhit ? o   ? ????? 80 dependenciesinstalledcheck dependenciesInstalledCheck ? o      ???? 0 installchoice   ?  ? ? ? Z   ? ? ? ????? ? =  ? ? ? ? ? o   ? ????? 0 installchoice   ? m   ? ? ? ? ? ? ?  Y e s ? n  ? ? ? ? ? I   ? ??? ????? *0 installdependencies installDependencies ?  ??? ? o   ? ????? 0 brewdirectory brewDirectory??  ??   ?  f   ? ???  ??   ?  ? ? ? r   ? ? ? ? ? m   ? ? ? ? ? ? ?  P u r p l e ? n       ? ? ? 1   ? ???
?? 
qCol ? 4   ? ??? ?
?? 
aCue ? m   ? ? ? ? ? ? ?  E T C P ?  ? ? ? l  ? ?????????  ??  ??   ?  ? ? ? l  ? ??? ? ???   ? ? ?Begs for money. I know, it's annoying, but I'm broke and making these tools takes times. It'll only prompt when you install dependencies.    ? ? ? ? B e g s   f o r   m o n e y .   I   k n o w ,   i t ' s   a n n o y i n g ,   b u t   I ' m   b r o k e   a n d   m a k i n g   t h e s e   t o o l s   t a k e s   t i m e s .   I t ' l l   o n l y   p r o m p t   w h e n   y o u   i n s t a l l   d e p e n d e n c i e s . ?  ? ? ? r   ? ? ? ? ? I  ? ??? ? ?
?? .sysodisAaleR        TEXT ? m   ? ? ? ? ? ? ?? T h i s   s c r i p t   w a s   c r e a t e d   b y   J o h h n y   B a r t l e t t .   T o   s e e   m o r e   o f   m y   w o r k ,   d o n a t e   t o   a l l o w   m e   t o   c r e a t e   m o r e   s c r i p t s   l i k e   t h i s ,   o r   c o m m i s s i o n   a   s c r i p t   f o r   y o u r   s p a c e   o r   s h o w   v i s i t   h t t p s : / / g i t h u b . c o m / G u f f a w k e r / Q L a b - S c r i p t s   o r   c l i c k   t h e   D o n a t e   b u t t o n   b e l o w   t o   s u p p o r t   m e   d i r e c t !   ( T h i s   p r o m p t   w i l l   o n l y   e v e r   s h o w   u p   w h i l e   i n s t a l l i n g   d e p e n d e n c i e s .   I f   y o u   r e s e t   t h e   c u e   y o u   w i l l   s e e   i t   a g a i n ,   b u t   d o n ' t   w o r r y   i t   w o n ' t   b e   a   f o r c e d   p o p - u p   e v e r y   t i m e   y o u   r u n   t h i s   s c r i p t ! ) ? ?? ???
?? 
btns ? J   ? ? ? ?  ? ? ? m   ? ? ? ? ? ? ?  T h a n k s ! ?  ??? ? m   ? ? ? ? ? ? ?  D o n a t e??  ??   ? o      ???? 0 donateprompt donatePrompt ?  ? ? ? r   ? ? ? ? n   ? ? ? ? 1   ??
?? 
bhit ? l  ?  ????? ? o   ? ???? 0 donateprompt donatePrompt??  ??   ? o      ???? 0 response   ?  ??? ? Z 	 ? ????? ? = 	 ? ? ? o  	???? 0 response   ? m   ? ? ? ? ?  D o n a t e ? I ?? ???
?? .GURLGURLnull??? ??? TEXT ? m   ? ? ? ? ? L h t t p s : / / w w w . b u y m e a c o f f e e . c o m / g u f f a w k e r??  ??  ??  ??  ??  ??   ?  ? ? ? l ##????????  ??  ??   ?  ? ? ? l ##?? ? ???   ? L FSaves the inputed information to the cues notes to be referenced later    ? ?   ? S a v e s   t h e   i n p u t e d   i n f o r m a t i o n   t o   t h e   c u e s   n o t e s   t o   b e   r e f e r e n c e d   l a t e r ? ?? r  #O b  #B b  #> b  #:	 b  #8

 b  #4 b  #0 b  #. b  #* m  #& ?? T h i s   c u e   w i l l   c r e a t e   a   T C P   c o n n e c t i o n   w i t h   a n   E T C   b o a r d .   S e t   t h e   c u e   c o l o r   o f   t h i s   c u e   t o   b l u e   t o   i g n o r e   p r o m p t s   a n d   u s e   t h e   I P   l i s t e d   b e l o w .   F l a g g i n g   t h i s   c u e   w i l l   f o r c e   i t   t o   a t t e m p t   t o   r e c o n n e c t   i f   t h e   c o n n e c t i o n   i s   d r o p p e d   o r   l o s t . o  &)??
?? 
ret  m  *- ?   E T C   C o n s o l e   I P :   o  ./???? 0 	consoleip 	consoleIP o  03??
?? 
ret  m  47 ? : R u n   t h e   c o n n e c t i o n   i n   Q L a b ? :  	 o  89???? 0 	runinqlab 	runInQLab o  :=??
?? 
ret  m  >A ? T h i s   s c r i p t   w a s   c r e a t e d   b y   J o h h n y   B a r t l e t t .   T o   s e e   m o r e   o f   m y   w o r k ,   d o n a t e   t o   a l l o w   m e   t o   c r e a t e   m o r e   s c r i p t s   l i k e   t h i s ,   o r   c o m m i s s i o n   a   s c r i p t   f o r   y o u r   s p a c e   o r   s h o w   v i s i t   h t t p s : / / w w w . j o h n n y b a r t l e t t . a r t   o r   v i s i t   h t t p s : / / w w w . b u y m e a c o f f e e . c o m / g u f f a w k e r   t o   d o n a t e   d i r e c t l y ! n       1  JN??
?? 
qNot 4  BJ??
?? 
aCue m  FI ?    E T C P??  ??  ??   L !"! l TT??#$??  # ? ?Runs a socat shell command to create a TCP connection with the ETC board on port 3032 at the given IP and QLab on port 53000 of the localhost   $ ?%% R u n s   a   s o c a t   s h e l l   c o m m a n d   t o   c r e a t e   a   T C P   c o n n e c t i o n   w i t h   t h e   E T C   b o a r d   o n   p o r t   3 0 3 2   a t   t h e   g i v e n   I P   a n d   Q L a b   o n   p o r t   5 3 0 0 0   o f   t h e   l o c a l h o s t" &??& Z  T?'(??)' = TY*+* o  TU???? 0 	runinqlab 	runInQLab+ m  UX,, ?--  Y e s( I \k??.??
?? .sysoexecTEXT???     TEXT. b  \g/0/ b  \c121 b  \a343 o  \]???? 0 brewdirectory brewDirectory4 m  ]`55 ?66 & / s o c a t   t c p - c o n n e c t :2 o  ab???? 0 	consoleip 	consoleIP0 m  cf77 ?88 V : 3 0 3 2 , r e u s e a d d r   t c p - c o n n e c t : 1 2 7 . 0 . 0 . 1 : 5 3 0 0 0??  ??  ) k  n?99 :;: l nn??<=??  < J DCreates the same connection, but launches a terminal window to do so   = ?>> ? C r e a t e s   t h e   s a m e   c o n n e c t i o n ,   b u t   l a u n c h e s   a   t e r m i n a l   w i n d o w   t o   d o   s o; ???? O  n?@A@ k  t?BB CDC I ty????~
?? .miscactvnull??? ??? null?  ?~  D E?}E r  z?FGF I z??|H?{
?| .coredoscnull??? ??? ctxtH b  z?IJI b  z?KLK b  zMNM o  z{?z?z 0 brewdirectory brewDirectoryN m  {~OO ?PP & / s o c a t   t c p - c o n n e c t :L o  ??y?y 0 	consoleip 	consoleIPJ m  ??QQ ?RR V : 3 0 3 2 , r e u s e a d d r   t c p - c o n n e c t : 1 2 7 . 0 . 0 . 1 : 5 3 0 0 0?{  G o      ?x?x 0 tcpcon tcpCon?}  A m  nqSS?                                                                                      @ alis    B  Untitled                   ߯1?BD ????Terminal.app                                                   ????߯1?        ????  
 cu             	Utilities   -/:System:Applications:Utilities:Terminal.app/     T e r m i n a l . a p p    U n t i t l e d  *System/Applications/Utilities/Terminal.app  / ??  ??  ??    4   ?wT
?w 
qDocT m   
 ?v?v   5     ?uU?t
?u 
cappU m    VV ?WW & c o m . f i g u r e 5 3 . Q L a b . 4
?t kfrmID  ??  ??    XYX l     ?sZ[?s  Z 9 3Function to get the stored info from the cue's data   [ ?\\ f F u n c t i o n   t o   g e t   t h e   s t o r e d   i n f o   f r o m   t h e   c u e ' s   d a t aY ]^] i     _`_ I      ?ra?q?r 0 getsavedinfo getSavedInfoa b?pb o      ?o?o 0 savedata saveData?p  ?q  ` k    )cc ded O   &fgf O   %hih k   $jj klk r    mnm n    opo 4   ?nq
?n 
cobjq m    ?m?m??p l   r?l?kr c    sts 1    ?j
?j 
actQt m    ?i
?i 
list?l  ?k  n o      ?h?h 0 thiscue thisCuel uvu l   ?gwx?g  w S MConfigures the cue for the initial setup by checking if it has been named yet   x ?yy ? C o n f i g u r e s   t h e   c u e   f o r   t h e   i n i t i a l   s e t u p   b y   c h e c k i n g   i f   i t   h a s   b e e n   n a m e d   y e tv z{z Z    :|}?f?e| >   ~~ n    ??? 1    ?d
?d 
pnam? o    ?c?c 0 thiscue thisCue m    ?? ???  E T C P} k   " 6?? ??? r   " '??? m   " #?? ???  E T C P? n      ??? 1   $ &?b
?b 
pnam? o   # $?a?a 0 thiscue thisCue? ??? r   ( -??? m   ( )?? ??? $ E T C   T C P   C o n n e c t i o n? n      ??? 1   * ,?`
?` 
qNam? o   ) *?_?_ 0 thiscue thisCue? ??^? r   . 6??? m   . /?? ???  N o n e? n      ??? 1   3 5?]
?] 
qCol? 4   / 3?\?
?\ 
aCue? m   1 2?? ???  E T C P?^  ?f  ?e  { ??? l  ; ;?[?Z?Y?[  ?Z  ?Y  ? ??? l  ; ;?X???X  ? ] WChecks to see the number of lines in the notes section to see if there is data to pull.   ? ??? ? C h e c k s   t o   s e e   t h e   n u m b e r   o f   l i n e s   i n   t h e   n o t e s   s e c t i o n   t o   s e e   i f   t h e r e   i s   d a t a   t o   p u l l .? ??? Z   ; S???W?? >  ; G??? n   ; C??? 1   A C?V
?V 
qCol? 4   ; A?U?
?U 
aCue? m   = @?? ???  E T C P? m   C F?? ???  B l u e? r   J M??? m   J K?T
?T boovtrue? o      ?S?S 0 
infoneeded 
infoNeeded?W  ? r   P S??? m   P Q?R
?R boovfals? o      ?Q?Q 0 
infoneeded 
infoNeeded? ??? r   T _??? m   T W?? ???  :  ? n     ??? 1   Z ^?P
?P 
txdl? 1   W Z?O
?O 
ascr? ??? r   ` l??? n   ` j??? 1   f j?N
?N 
qNot? 4   ` f?M?
?M 
aCue? m   b e?? ???  E T C P? o      ?L?L 0 cuenotes cueNotes? ??? r   m x??? I  m v?K??J
?K .corecnte****       ****? n   m r??? 2  n r?I
?I 
cpar? o   m n?H?H 0 cuenotes cueNotes?J  ? o      ?G?G 0 	savedinfo 	savedInfo? ??? Z   y ????F?? A  y ~??? o   y z?E?E 0 	savedinfo 	savedInfo? m   z }?D?D ? k   ? ??? ??? r   ? ???? m   ? ??? ???  ? o      ?C?C 0 	consoleip 	consoleIP? ??? r   ? ???? m   ? ??? ???  ? o      ?B?B 0 	runinqlab 	runInQLab? ??A? r   ? ???? m   ? ??@
?@ boovtrue? o      ???? 0 
infoneeded 
infoNeeded?A  ?F  ? k   ? ??? ??? r   ? ???? n   ? ???? 4   ? ??>?
?> 
citm? m   ? ??=?= ? l  ? ???<?;? n   ? ???? 4   ? ??:?
?: 
cpar? m   ? ??9?9 ? o   ? ??8?8 0 cuenotes cueNotes?<  ?;  ? o      ?7?7 0 	consoleip 	consoleIP? ??6? r   ? ???? n   ? ???? 4   ? ??5?
?5 
citm? m   ? ??4?4 ? l  ? ???3?2? n   ? ???? 4   ? ??1?
?1 
cpar? m   ? ??0?0 ? o   ? ??/?/ 0 cuenotes cueNotes?3  ?2  ? o      ?.?. 0 	runinqlab 	runInQLab?6  ? ??? r   ? ?? ? m   ? ? ?     n      1   ? ??-
?- 
txdl 1   ? ??,
?, 
ascr?  r   ? ? l  ? ?	?+?*	 I  ? ??)
?(
?) .sysoexecTEXT???     TEXT
 m   ? ? ? D s y s c t l   - n   m a c h d e p . c p u . b r a n d _ s t r i n g?(  ?+  ?*   o      ?'?' 0 chip    Z   ? ??& =  ? ? n   ? ? 4   ? ??%
?% 
citm m   ? ??$?$  o   ? ??#?# 0 chip   m   ? ? ? 
 A p p l e r   ? ? m   ? ? ? $ / o p t / h o m e b r e w / b i n / o      ?"?" 0 brewdirectory brewDirectory?&   r   ? ? m   ? ? ?    / u s r / l o c a l / b i n o      ?!?! 0 brewdirectory brewDirectory !"! Z   ?#$? %# G   ? ?&'& =  ? ?()( n   ? ?*+* 1   ? ??
? 
qCol+ 4   ? ??,
? 
aCue, m   ? ?-- ?..  E T C P) m   ? ?// ?00  P u r p l e' =  ? ?121 n   ? ?343 1   ? ??
? 
qCol4 4   ? ??5
? 
aCue5 m   ? ?66 ?77  E T C P2 m   ? ?88 ?99  B l u e$ r  :;: m  ?
? boovtrue; o      ?? .0 dependenciesinstalled dependenciesInstalled?   % r  <=< m  	?
? boovfals= o      ?? .0 dependenciesinstalled dependenciesInstalled" >?> s  @A@ o  ?? 0 
infoneeded 
infoNeededA n      BCB  ;  C o  ?? 0 savedata saveData? DED s  FGF o  ?? 0 	consoleip 	consoleIPG n      HIH  ;  I o  ?? 0 savedata saveDataE JKJ s  LML o  ?? 0 	runinqlab 	runInQLabM n      NON  ;  O o  ?? 0 savedata saveDataK PQP s  RSR o  ?? 0 brewdirectory brewDirectoryS n      TUT  ;  U o  ?? 0 savedata saveDataQ V?V s   $WXW o   !?? .0 dependenciesinstalled dependenciesInstalledX n      YZY  ;  "#Z o  !"?? 0 savedata saveData?  i 4   ?[
? 
qDoc[ m   
 ?? g 5     ?
\?	
?
 
capp\ m    ]] ?^^ & c o m . f i g u r e 5 3 . Q L a b . 4
?	 kfrmID  e _?_ L  ')`` o  '(?? 0 savedata saveData?  ^ aba l     ????  ?  ?  b cdc l     ?ef?  e J DFunction to install the necessary dependencies for the script to run   f ?gg ? F u n c t i o n   t o   i n s t a l l   t h e   n e c e s s a r y   d e p e n d e n c i e s   f o r   t h e   s c r i p t   t o   r u nd h?h i    iji I      ?k? ? *0 installdependencies installDependenciesk l??l o      ???? 0 brewdirectory brewDirectory??  ?   j O     \mnm k    [oo pqp I   	??????
?? .miscactvnull??? ??? null??  ??  q rsr r   
 tut I  
 ??v??
?? .coredoscnull??? ??? ctxtv m   
 ww ?xx ? / b i n / b a s h   - c   " $ ( c u r l   - f s S L   h t t p s : / / r a w . g i t h u b u s e r c o n t e n t . c o m / H o m e b r e w / i n s t a l l / H E A D / i n s t a l l . s h ) "??  u o      ???? 0 installs  s yzy T    .{{ k    )|| }~} I   ????
?? .sysodelanull??? ??? nmbr m    ?? ??????????  ~ ???? Z   )??????? H    !?? n     ??? 1     ??
?? 
busy? o    ???? 0 installs  ?  S   $ %??  ??  ??  z ??? I  / 8????
?? .coredoscnull??? ??? ctxt? b   / 2??? o   / 0???? 0 brewdirectory brewDirectory? m   0 1?? ??? & / b r e w   i n s t a l l   s o c a t? ?????
?? 
kfil? o   3 4???? 0 installs  ??  ? ??? T   9 U?? k   > P?? ??? I  > C?????
?? .sysodelanull??? ??? nmbr? m   > ??? ??????????  ? ???? Z  D P??????? H   D H?? n   D G??? 1   E G??
?? 
busy? o   D E???? 0 installs  ?  S   K L??  ??  ??  ? ???? I  V [??????
?? .aevtquitnull??? ??? null??  ??  ??  n m     ???                                                                                      @ alis    B  Untitled                   ߯1?BD ????Terminal.app                                                   ????߯1?        ????  
 cu             	Utilities   -/:System:Applications:Utilities:Terminal.app/     T e r m i n a l . a p p    U n t i t l e d  *System/Applications/Utilities/Terminal.app  / ??  ?       ????????  ? ???????? 0 getsavedinfo getSavedInfo?? *0 installdependencies installDependencies
?? .aevtoappnull  ?   ? ****? ??`?????????? 0 getsavedinfo getSavedInfo?? ????? ?  ???? 0 savedata saveData??  ? 
?????????????????????? 0 savedata saveData?? 0 thiscue thisCue?? 0 
infoneeded 
infoNeeded?? 0 cuenotes cueNotes?? 0 	savedinfo 	savedInfo?? 0 	consoleip 	consoleIP?? 0 	runinqlab 	runInQLab?? 0 chip  ?? 0 brewdirectory brewDirectory?? .0 dependenciesinstalled dependenciesInstalled? (??]?????????????????????????????????????????????-/68??
?? 
capp
?? kfrmID  
?? 
qDoc
?? 
actQ
?? 
list
?? 
cobj
?? 
pnam
?? 
qNam
?? 
aCue
?? 
qCol
?? 
ascr
?? 
txdl
?? 
qNot
?? 
cpar
?? .corecnte****       ****?? 
?? 
citm
?? .sysoexecTEXT???     TEXT
?? 
bool??*)???0*?k/*?,?&?i/E?O??,? ???,FO???,FO?*??/?,FY hO*?a /?,a  eE?Y fE?Oa _ a ,FO*?a /a ,E?O?a -j E?O?a  a E?Oa E?OeE?Y ?a l/a l/E?O?a m/a l/E?Oa _ a ,FOa j E?O?a k/a    
a !E?Y a "E?O*?a #/?,a $ 
 *?a %/?,a & a '& eE?Y fE?O??6GO??6GO??6GO??6GO??6GUUO?? ??j?????????? *0 installdependencies installDependencies?? ????? ?  ???? 0 brewdirectory brewDirectory??  ? ?????? 0 brewdirectory brewDirectory?? 0 installs  ? 
???w????????????
?? .miscactvnull??? ??? null
?? .coredoscnull??? ??? ctxt
?? .sysodelanull??? ??? nmbr
?? 
busy
?? 
kfil
?? .aevtquitnull??? ??? null?? ]? Y*j O?j E?O hZ?j O??, Y h[OY??O??%??l O hZ?j O??, Y h[OY??O*j 	U? ???????????
?? .aevtoappnull  ?   ? ****? k    ???  
????  ??  ??  ?  ? A??V???????????????????????? X?????? l?? r u?????? ??? ? ? ? ? ? ????? ??? ??? ??? ? ? ????? ? ?????,57??S??OQ????
?? 
capp
?? kfrmID  
?? 
qDoc?? 0 savedata saveData?? 0 getsavedinfo getSavedInfo
?? 
cobj?? 0 
infoneeded 
infoNeeded?? 0 	consoleip 	consoleIP?? 0 	runinqlab 	runInQLab?? ?? 0 brewdirectory brewDirectory?? ?? .0 dependenciesinstalled dependenciesInstalled
?? 
dtxt
?? .sysodlogaskr        TEXT
?? 
ttxt
?? 
btns
?? .sysodisAaleR        TEXT??  0 runinqlabcheck runInQLabCheck
?? 
bhit
?? 
ret ?? 80 dependenciesinstalledcheck dependenciesInstalledCheck?? 0 installchoice  ?? *0 installdependencies installDependencies
?? 
aCue
?? 
qCol?? 0 donateprompt donatePrompt?? 0 response  
?? .GURLGURLnull??? ??? TEXT
?? 
qNot
?? .sysoexecTEXT???     TEXT
?? .miscactvnull??? ??? null
?? .coredoscnull??? ??? ctxt?? 0 tcpcon tcpCon???)???0?*?k/?jvE?O)?k+ O??k/E?O??l/E?O??m/E?O???/E?O???/E?O?e ???l E?O?a ,E?Oa a a a lvl E` O_ a ,E?O?f  ?a _ %a %_ %a %_ %a %_ %a %a a a  lvl E` !O_ !a ,E` "O_ "a #  )?k+ $Y hOa %*a &a '/a (,FOa )a a *a +lvl E` ,O_ ,a ,E` -O_ -a .  a /j 0Y hY hOa 1_ %a 2%?%_ %a 3%?%_ %a 4%*a &a 5/a 6,FY hO?a 7  ?a 8%?%a 9%j :Y "a ; *j <O?a =%?%a >%j ?E` @UUU ascr  ??ޭ