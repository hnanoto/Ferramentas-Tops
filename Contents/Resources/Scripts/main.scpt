FasdUAS 1.101.10   ��   ��    k             l     ��  ��    D > filepath: untitled://untitled/hackintosh_download.applescript     � 	 	 |   f i l e p a t h :   u n t i t l e d : / / u n t i t l e d / h a c k i n t o s h _ d o w n l o a d . a p p l e s c r i p t   
  
 l     ��������  ��  ��        l     ��  ��    ' ! Caminho para o script tempor�rio     �   B   C a m i n h o   p a r a   o   s c r i p t   t e m p o r � r i o      l     ����  r         b     	    n         1    ��
�� 
psxp  l     ����  I    �� ��
�� .earsffdralis        afdr  m     ��
�� afdrtemp��  ��  ��    m       �   , h a c k i n t o s h _ d o w n l o a d . s h  o      ����  0 tempscriptpath tempScriptPath��  ��        l     ��������  ��  ��       !   l     �� " #��   " 6 0 Substitua com a URL correta do Hardware-Sniffer    # � $ $ `   S u b s t i t u a   c o m   a   U R L   c o r r e t a   d o   H a r d w a r e - S n i f f e r !  % & % l    '���� ' r     ( ) ( m     * * � + + � h t t p s : / / g i t h u b . c o m / l z h o a n g 2 8 0 1 / H a r d w a r e - S n i f f e r / r e l e a s e s / d o w n l o a d / 1 . 9 . 2 / H a r d w a r e - S n i f f e r . e x e ) o      ���� (0 hardwaresnifferurl hardwareSnifferURL��  ��   &  , - , l     ��������  ��  ��   -  . / . l     �� 0 1��   0 7 1 Script bash que ser� salvo no arquivo tempor�rio    1 � 2 2 b   S c r i p t   b a s h   q u e   s e r �   s a l v o   n o   a r q u i v o   t e m p o r � r i o /  3 4 3 l    5���� 5 r     6 7 6 b     8 9 8 b     : ; : m     < < � = =
X 
 # ! / b i n / b a s h 
 c l e a r 
 
 #   D e f i n i r   c o r e s 
 R E D = ' \ 0 3 3 [ 0 ; 3 1 m ' 
 G R E E N = ' \ 0 3 3 [ 0 ; 3 2 m ' 
 Y E L L O W = ' \ 0 3 3 [ 1 ; 3 3 m ' 
 B L U E = ' \ 0 3 3 [ 0 ; 3 4 m ' 
 N C = ' \ 0 3 3 [ 0 m '   #   S e m   c o r 
 
 e c h o   - e   " $ { B L U E } < - -   h n a n o t o - H a c k i n t o s h   a n d   b e y o n d     - - > $ { N C } " 
 e c h o   ' ' 
 e c h o   - e   " $ { Y E L L O W } # # # # #   ! ! !   D O W N L O A D I N G   F I L E S   ! ! !   # # # # # $ { N C } " 
 e c h o   ' ' 
 
 #   C a m i n h o   p a r a   a   p a s t a   d e   d e s t i n o   n a   � r e a   d e   t r a b a l h o 
 d e s t D i r = $ H O M E / D e s k t o p / F e r r a m e n t a s T o p s 
 
 #   C r i a r   o   d i r e t � r i o   d e   d e s t i n o ,   s e   n � o   e x i s t i r 
 m k d i r   - p   $ d e s t D i r 
 c d   $ d e s t D i r   | |   e x i t   1 
 
 #   V e r i f i c a r   d e p e n d � n c i a s 
 c o m m a n d   - v   g i t   > / d e v / n u l l   2 > & 1   | |   {   e c h o   - e   " $ { R E D } g i t   n � o   e s t �   i n s t a l a d o .   P o r   f a v o r ,   i n s t a l e   o   g i t   e   t e n t e   n o v a m e n t e . $ { N C } " ;   e x i t   1 ;   } 
 c o m m a n d   - v   c u r l   > / d e v / n u l l   2 > & 1   | |   {   e c h o   - e   " $ { R E D } c u r l   n � o   e s t �   i n s t a l a d o .   P o r   f a v o r ,   i n s t a l e   o   c u r l   e   t e n t e   n o v a m e n t e . $ { N C } " ;   e x i t   1 ;   } 
 c o m m a n d   - v   u n z i p   > / d e v / n u l l   2 > & 1   | |   {   e c h o   - e   " $ { R E D } u n z i p   n � o   e s t �   i n s t a l a d o .   P o r   f a v o r ,   i n s t a l e   o   u n z i p   e   t e n t e   n o v a m e n t e . $ { N C } " ;   e x i t   1 ;   } 
 
 #   D e t e c t a r   o   s i s t e m a   o p e r a c i o n a l 
 o s _ t y p e = $ ( u n a m e   - s ) 
 
 #   D e f i n i r   U R L s   d o   P y t h o n   p a r a   d i f e r e n t e s   s i s t e m a s   o p e r a c i o n a i s 
 p y t h o n _ u r l _ m a c o s = ' h t t p s : / / w w w . p y t h o n . o r g / f t p / p y t h o n / 3 . 1 3 . 2 / p y t h o n - 3 . 1 3 . 2 - m a c o s 1 1 . p k g ' 
 p y t h o n _ u r l _ l i n u x = ' h t t p s : / / w w w . p y t h o n . o r g / f t p / p y t h o n / 3 . 1 3 . 2 / P y t h o n - 3 . 1 3 . 2 . t g z ' 
 p y t h o n _ u r l _ w i n d o w s = ' h t t p s : / / w w w . p y t h o n . o r g / f t p / p y t h o n / 3 . 1 3 . 2 / p y t h o n - 3 . 1 3 . 2 - a m d 6 4 . e x e ' 
 
 #   D e f i n i r   a   U R L   d o   H a r d w a r e - S n i f f e r 
 h a r d w a r e _ s n i f f e r _ u r l = " ; o    ���� (0 hardwaresnifferurl hardwareSnifferURL 9 m     > > � ? ?/: " 
 
 #   F u n � � o   p a r a   c l o n a r   r e p o s i t � r i o s 
 c l o n e _ r e p o ( )   { 
         i f   [   - d   $ ( b a s e n a m e   $ 1   . g i t )   ] ;   t h e n 
                 e c h o   - e   " $ { Y E L L O W } O   r e p o s i t � r i o   $ ( b a s e n a m e   $ 1   . g i t )   j �   e x i s t e .   P u l a n d o . . . $ { N C } " 
         e l s e 
                 e c h o   - e   " $ { G R E E N } C l o n i n g   $ 1 . . . $ { N C } " 
                 g i t   c l o n e   $ 1 
                 i f   [   $ ?   - n e   0   ] ;   t h e n 
                         e c h o   - e   " $ { R E D } E r r o   a o   c l o n a r   o   r e p o s i t � r i o   $ 1 .   V e r i f i q u e   s u a   c o n e x � o   e   s e   o   r e p o s i t � r i o   e x i s t e . \ n S a � d a   d o   g i t   c l o n e : $ N C " 
                         g i t   c l o n e   $ 1   2 > & 1   |   c a t 
                         r e t u r n   1   #   R e t o r n a   u m   c � d i g o   d e   e r r o   p a r a   i n d i c a r   f a l h a 
                 f i 
         f i 
 } 
 
 #   F u n � � o   p a r a   b a i x a r   a r q u i v o s   e   d e s c o m p a c t a r   Z I P s 
 d o w n l o a d _ f i l e ( )   { 
         e c h o   - e   " $ { G R E E N } D o w n l o a d i n g   $ 1   t o   $ 2 . . . $ { N C } " 
         c u r l   - L   - #   $ 1   - o   $ 2 
         i f   [   $ ?   - n e   0   ] ;   t h e n 
                 e c h o   - e   " $ { R E D } E r r o   a o   b a i x a r   o   a r q u i v o   $ 1 .   V e r i f i q u e   s u a   c o n e x � o   e   s e   o   a r q u i v o   e x i s t e . \ n S a � d a   d o   c u r l : $ N C " 
                 c u r l   - L   - #   $ 1   - o   $ 2   2 > & 1   |   c a t 
                 r e t u r n   1   #   R e t o r n a   u m   c � d i g o   d e   e r r o 
         f i 
 
         #   D e s c o m p a c t a r   a r q u i v o s   . z i p 
         i f   [ [   $ 2   = =   * . z i p   ] ] ;   t h e n 
                 e c h o   - e   " $ { G R E E N } D e s c o m p a c t a n d o   $ 2 . . . $ { N C } " 
                 u n z i p   $ 2 
                 i f   [   $ ?   - n e   0   ] ;   t h e n 
                         e c h o   - e   " $ { R E D } E r r o   a o   d e s c o m p a c t a r   o   a r q u i v o   $ 2 . \ n S a � d a   d o   u n z i p : $ N C " 
                         u n z i p   $ 2   2 > & 1   |   c a t 
                         r e t u r n   1   #   R e t o r n a   u m   c � d i g o   d e   e r r o 
                 f i 
                 r m   $ 2   #   R e m o v e   o   a r q u i v o   . z i p   a p � s   a   d e s c o m p a c t a � � o 
         f i 
 } 
 
 #   F u n � � o   p a r a   b a i x a r   o   H a c k i n t o o l   d i r e t a m e n t e   d a   A P I   d o   G i t H u b 
 d o w n l o a d _ h a c k i n t o o l ( )   { 
         e c h o   - e   " $ { G R E E N } D o w n l o a d i n g   H a c k i n t o o l . . . $ { N C } " 
         l a t e s t _ r e l e a s e = $ ( c u r l   - s   h t t p s : / / a p i . g i t h u b . c o m / r e p o s / b e n b a k e r 7 6 / H a c k i n t o o l / r e l e a s e s / l a t e s t   |   g r e p   ' b r o w s e r _ d o w n l o a d _ u r l . * z i p '   |   c u t   - d   ' " '   - f   4 ) 
         i f   [   - z   $ l a t e s t _ r e l e a s e   ] ;   t h e n 
                 e c h o   - e   " $ { R E D } E r r o   a o   o b t e r   a   U R L   d e   d o w n l o a d   d o   H a c k i n t o o l   d a   A P I   d o   G i t H u b . $ { N C } " 
                 r e t u r n   1 
         f i 
         d o w n l o a d _ f i l e   $ l a t e s t _ r e l e a s e   H a c k i n t o o l . z i p 
         i f   [   $ ?   - n e   0   ] ;   t h e n 
             e c h o   - e   " $ { R E D } E r r o   a o   b a i x a r   o u   d e s c o m p a c t a r   H a c k i n t o o l . $ { N C } " 
             r e t u r n   1 
         f i 
 } 
 
 #   F u n � � o   p a r a   b a i x a r   a   � l t i m a   v e r s � o   d o   P y t h o n   3 
 d o w n l o a d _ p y t h o n 3 ( )   { 
         e c h o   - e   " $ { G R E E N } D o w n l o a d i n g   P y t h o n   3 . . . $ { N C } " 
 
         #   S e l e c i o n a r   a   U R L   d o   P y t h o n   c o m   b a s e   n o   s i s t e m a   o p e r a c i o n a l 
         c a s e   $ o s _ t y p e   i n 
                 D a r w i n * ) 
                         p y t h o n _ u r l = $ p y t h o n _ u r l _ m a c o s 
                         ; ; 
                 L i n u x * ) 
                         p y t h o n _ u r l = $ p y t h o n _ u r l _ l i n u x 
                         ; ; 
                 W i n d o w s * ) 
                         p y t h o n _ u r l = $ p y t h o n _ u r l _ w i n d o w s 
                         ; ; 
                 * ) 
                         e c h o   - e   " $ { R E D } S i s t e m a   o p e r a c i o n a l   n � o   s u p o r t a d o .   B a i x a n d o   a   v e r s � o   d o   m a c O S   p o r   p a d r � o . $ { N C } " 
                         p y t h o n _ u r l = $ p y t h o n _ u r l _ m a c o s 
                         ; ; 
         e s a c 
 
         d o w n l o a d _ f i l e   $ p y t h o n _ u r l   p y t h o n 3 . p k g 
         i f   [   $ ?   - n e   0   ] ;   t h e n 
             e c h o   - e   " $ { R E D } E r r o   a o   b a i x a r   o   i n s t a l a d o r   d o   P y t h o n   3 . $ { N C } " 
             r e t u r n   1 
         f i 
 } 
 
 #   F u n � � o   p a r a   v e r i f i c a r   o   e s p a � o   l i v r e   e m   d i s c o   ( e m   M B ) 
 c h e c k _ d i s k _ s p a c e ( )   { 
         l o c a l   r e q u i r e d _ s p a c e = $ 1   #   E s p a � o   r e q u e r i d o   e m   M B 
         l o c a l   a v a i l a b l e _ s p a c e = $ ( d f   - m   $ d e s t D i r   |   a w k   ' N R = = 2 { p r i n t   $ 4 } ' )   #   E s p a � o   d i s p o n � v e l   e m   M B 
         i f   [   $ a v a i l a b l e _ s p a c e   - l t   $ r e q u i r e d _ s p a c e   ] ;   t h e n 
                 e c h o   - e   " $ { R E D } E s p a � o   i n s u f i c i e n t e   e m   d i s c o .   R e q u e r   $ r e q u i r e d _ s p a c e   M B ,   m a s   a p e n a s   $ a v a i l a b l e _ s p a c e   M B   d i s p o n � v e i s   e m   $ d e s t D i r . $ { N C } " 
                 r e t u r n   1 
         e l s e 
                 r e t u r n   0 
         f i 
 } 
 
 #   F u n � � o   p a r a   b a i x a r   o   H a r d w a r e - S n i f f e r 
 d o w n l o a d _ h a r d w a r e _ s n i f f e r ( )   { 
         e c h o   - e   " $ { G R E E N } D o w n l o a d i n g   H a r d w a r e - S n i f f e r . . . $ { N C } " 
         d o w n l o a d _ f i l e   " $ h a r d w a r e _ s n i f f e r _ u r l "   H a r d w a r e - S n i f f e r . e x e 
         i f   [   $ ?   - n e   0   ] ;   t h e n 
                 e c h o   - e   " $ { R E D } E r r o   a o   b a i x a r   o   a r q u i v o   H a r d w a r e - S n i f f e r . \ n P o r   f a v o r ,   v e r i f i q u e   s u a   c o n e x � o   c o m   a   i n t e r n e t   e   s e   a   U R L   e s t �   c o r r e t a . $ { N C } " 
                 r e t u r n   1 
         f i 
 } 
 
 w h i l e   t r u e ;   d o 
         e c h o   - e   " $ { B L U E } E s c o l h a   u m   p r o g r a m a   p a r a   b a i x a r ,   2 1   p a r a   b a i x a r   t o d o s   o u   0   p a r a   s a i r : $ { N C } " 
         e c h o   ' 1 )   O p e n C o r e P k g   ( S o u r c e ) ' 
         e c h o   ' 2 )   O c B i n a r y D a t a ' 
         e c h o   ' 3 )   P r o p e r T r e e ' 
         e c h o   ' 4 )   H a c k i n t o o l ' 
         e c h o   ' 5 )   M o u n t E F I ' 
         e c h o   ' 6 )   S S D T T i m e ' 
         e c h o   ' 7 )   g i b M a c O S ' 
         e c h o   ' 8 )   G e n S M B I O S ' 
         e c h o   ' 9 )   U S B M a p ' 
         e c h o   ' 1 0 )   O C - U p d a t e ' 
         e c h o   ' 1 1 )   C P U - N a m e ' 
         e c h o   ' 1 2 )   g i b M a c R e c o v e r y ' 
         e c h o   ' 1 3 )   C l o v e r B o o t l o a d e r ' 
         e c h o   ' 1 4 )   L i l u - a n d - F r i e n d s ' 
         e c h o   ' 1 5 )   U p d a t e _ C l o v e r ' 
         e c h o   ' 1 6 )   u p d a t e _ o p e n c o r e ' 
         e c h o   ' 1 7 )   O p e n _ E F I s _ F S K I T ' 
         e c h o   ' 1 8 )   P y t h o n   3 ' 
         e c h o   ' 1 9 )   H a c k i n t o o l - O n - A p p l e S i l i c o n ' 
         e c h o   ' 2 0 )   O p C o r e - S i m p l i f y ' 
         e c h o   ' 2 1 )   H a r d w a r e - S n i f f e r ' 
         e c h o   ' 0 )   S a i r ' 
         r e a d   - p   ' D i g i t e   s u a   e s c o l h a :   '   c h o i c e 
 
         c a s e   $ c h o i c e   i n 
                 1 )   c l o n e _ r e p o   h t t p s : / / g i t h u b . c o m / a c i d a n t h e r a / O p e n C o r e P k g . g i t   ; ; 
                 2 )   c l o n e _ r e p o   h t t p s : / / g i t h u b . c o m / a c i d a n t h e r a / O c B i n a r y D a t a . g i t   ; ; 
                 3 )   c l o n e _ r e p o   h t t p s : / / g i t h u b . c o m / c o r p n e w t / P r o p e r T r e e . g i t   ; ; 
                 4 )   d o w n l o a d _ h a c k i n t o o l   ; ; 
                 5 )   c l o n e _ r e p o   h t t p s : / / g i t h u b . c o m / c o r p n e w t / M o u n t E F I . g i t   ; ; 
                 6 )   c l o n e _ r e p o   h t t p s : / / g i t h u b . c o m / c o r p n e w t / S S D T T i m e . g i t   ; ; 
                 7 )   c l o n e _ r e p o   h t t p s : / / g i t h u b . c o m / c o r p n e w t / g i b M a c O S . g i t   ; ; 
                 8 )   c l o n e _ r e p o   h t t p s : / / g i t h u b . c o m / c o r p n e w t / G e n S M B I O S . g i t   ; ; 
                 9 )   c l o n e _ r e p o   h t t p s : / / g i t h u b . c o m / c o r p n e w t / U S B M a p . g i t   ; ; 
                 1 0 )   c l o n e _ r e p o   h t t p s : / / g i t h u b . c o m / c o r p n e w t / O C - U p d a t e . g i t   ; ; 
                 1 1 )   c l o n e _ r e p o   h t t p s : / / g i t h u b . c o m / c o r p n e w t / C P U - N a m e . g i t   ; ; 
                 1 2 )   c l o n e _ r e p o   h t t p s : / / g i t h u b . c o m / c o r p n e w t / g i b M a c R e c o v e r y . g i t   ; ; 
                 1 3 )   c l o n e _ r e p o   h t t p s : / / g i t h u b . c o m / C l o v e r H a c k y C o l o r / C l o v e r B o o t l o a d e r . g i t   ; ; 
                 1 4 )   c l o n e _ r e p o   h t t p s : / / g i t h u b . c o m / c o r p n e w t / L i l u - a n d - F r i e n d s . g i t   ; ; 
                 1 5 )   c l o n e _ r e p o   h t t p s : / / g i t h u b . c o m / h n a n o t o / U p d a t e _ C l o v e r . g i t   ; ; 
                 1 6 )   c l o n e _ r e p o   h t t p s : / / g i t h u b . c o m / h n a n o t o / u p d a t e _ o p e n c o r e . g i t   ; ; 
                 1 7 )   d o w n l o a d _ f i l e   h t t p s : / / g i t h u b . c o m / h n a n o t o / O p e n _ E F I s _ F S K I T / r e l e a s e s / l a t e s t / d o w n l o a d / O p e n _ E F I s _ F S K I T . z i p   O p e n _ E F I s _ F S K I T . z i p   ; ; 
                 1 8 )   d o w n l o a d _ p y t h o n 3   ; ; 
                 1 9 )   c l o n e _ r e p o   h t t p s : / / g i t h u b . c o m / R o i d M C / H a c k i n t o o l - O n - A p p l e S i l i c o n . g i t   ; ; 
                 2 0 )   c l o n e _ r e p o   h t t p s : / / g i t h u b . c o m / l z h o a n g 2 8 0 1 / O p C o r e - S i m p l i f y . g i t   ; ; 
                 2 1 )   d o w n l o a d _ h a r d w a r e _ s n i f f e r   ; ; 
                 0 )   e c h o   - e   " $ { R E D } S a i n d o . . . $ { N C } " ;   b r e a k   ; ; 
                 * )   e c h o   - e   " $ { R E D } O p � � o   i n v � l i d a .   T e n t e   n o v a m e n t e . $ { N C } "   ; ; 
         e s a c 
         e c h o   ' ' 
 d o n e 
 
 e c h o   - e   " $ { Y E L L O W } # # # # #   ! ! !   F I N I S H E D   D O W N L O A D I N G   F I L E S   ! ! !   # # # # # $ { N C } " 
 e c h o   ' ' 
 7 o      ���� 0 shellscript shellScript��  ��   4  @ A @ l     ��������  ��  ��   A  B C B l     �� D E��   D - ' Escreve o script no arquivo tempor�rio    E � F F N   E s c r e v e   o   s c r i p t   n o   a r q u i v o   t e m p o r � r i o C  G H G l   > I���� I Q    > J K L J I   *�� M��
�� .sysoexecTEXT���     TEXT M b    & N O N b    " P Q P b      R S R m     T T � U U 
 e c h o   S n     V W V 1    ��
�� 
strq W o    ���� 0 shellscript shellScript Q m     ! X X � Y Y    >   O n   " % Z [ Z 1   # %��
�� 
strq [ o   " #����  0 tempscriptpath tempScriptPath��   K R      �� \��
�� .ascrerr ****      � **** \ o      ���� 0 errmsg errMsg��   L k   2 > ] ]  ^ _ ^ I  2 ;�� `��
�� .sysodlogaskr        TEXT ` b   2 7 a b a m   2 5 c c � d d 6 E r r o   a o   e s c r e v e r   o   s c r i p t :   b o   5 6���� 0 errmsg errMsg��   _  e�� e L   < >����  ��  ��  ��   H  f g f l     ��������  ��  ��   g  h i h l     �� j k��   j    Torna o script execut�vel    k � l l 4   T o r n a   o   s c r i p t   e x e c u t � v e l i  m n m l  ? a o���� o Q   ? a p q r p I  B M�� s��
�� .sysoexecTEXT���     TEXT s b   B I t u t m   B E v v � w w  c h m o d   + x   u n   E H x y x 1   F H��
�� 
strq y o   E F����  0 tempscriptpath tempScriptPath��   q R      �� z��
�� .ascrerr ****      � **** z o      ���� 0 errmsg errMsg��   r k   U a { {  | } | I  U ^�� ~��
�� .sysodlogaskr        TEXT ~ b   U Z  �  m   U X � � � � � H E r r o   a o   t o r n a r   o   s c r i p t   e x e c u t � v e l :   � o   X Y���� 0 errmsg errMsg��   }  ��� � L   _ a����  ��  ��  ��   n  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � #  Executa o script no Terminal    � � � � :   E x e c u t a   o   s c r i p t   n o   T e r m i n a l �  ��� � l  b � ����� � Q   b � � � � � I  e p�� ���
�� .sysoexecTEXT���     TEXT � b   e l � � � m   e h � � � � � " o p e n   - a   T e r m i n a l   � n   h k � � � 1   i k��
�� 
strq � o   h i����  0 tempscriptpath tempScriptPath��   � R      �� ���
�� .ascrerr ****      � **** � o      ���� 0 errmsg errMsg��   � k   x � � �  � � � I  x ��� ���
�� .sysodlogaskr        TEXT � b   x } � � � m   x { � � � � � 6 E r r o   a o   e x e c u t a r   o   s c r i p t :   � o   { |���� 0 errmsg errMsg��   �  ��� � L   � �����  ��  ��  ��  ��       �� � � � * ���   � ��������
�� .aevtoappnull  �   � ****��  0 tempscriptpath tempScriptPath�� (0 hardwaresnifferurl hardwareSnifferURL�� 0 shellscript shellScript � �� ����� � ���
�� .aevtoappnull  �   � **** � k     � � �   � �  % � �  3 � �  G � �  m � �  �����  ��  ��   � ���� 0 errmsg errMsg � ������ �� *�� < >�� T�� X������ c�� v � � �
�� afdrtemp
�� .earsffdralis        afdr
�� 
psxp��  0 tempscriptpath tempScriptPath�� (0 hardwaresnifferurl hardwareSnifferURL�� 0 shellscript shellScript
�� 
strq
�� .sysoexecTEXT���     TEXT�� 0 errmsg errMsg��  
�� .sysodlogaskr        TEXT�� ��j �,�%E�O�E�O��%�%E�O ���,%�%��,%j W X  a �%j OhO a ��,%j W X  a �%j OhO a ��,%j W X  a �%j Oh � � � � � / p r i v a t e / v a r / f o l d e r s / 7 v / g 1 h 9 b v y s 7 1 5 g g k v 7 x q 6 7 y q 3 r 0 0 0 0 g n / T / T e m p o r a r y I t e m s / h a c k i n t o s h _ d o w n l o a d . s h � � � �:J 
 # ! / b i n / b a s h 
 c l e a r 
 
 #   D e f i n i r   c o r e s 
 R E D = ' \ 0 3 3 [ 0 ; 3 1 m ' 
 G R E E N = ' \ 0 3 3 [ 0 ; 3 2 m ' 
 Y E L L O W = ' \ 0 3 3 [ 1 ; 3 3 m ' 
 B L U E = ' \ 0 3 3 [ 0 ; 3 4 m ' 
 N C = ' \ 0 3 3 [ 0 m '   #   S e m   c o r 
 
 e c h o   - e   " $ { B L U E } < - -   h n a n o t o - H a c k i n t o s h   a n d   b e y o n d     - - > $ { N C } " 
 e c h o   ' ' 
 e c h o   - e   " $ { Y E L L O W } # # # # #   ! ! !   D O W N L O A D I N G   F I L E S   ! ! !   # # # # # $ { N C } " 
 e c h o   ' ' 
 
 #   C a m i n h o   p a r a   a   p a s t a   d e   d e s t i n o   n a   � r e a   d e   t r a b a l h o 
 d e s t D i r = $ H O M E / D e s k t o p / F e r r a m e n t a s T o p s 
 
 #   C r i a r   o   d i r e t � r i o   d e   d e s t i n o ,   s e   n � o   e x i s t i r 
 m k d i r   - p   $ d e s t D i r 
 c d   $ d e s t D i r   | |   e x i t   1 
 
 #   V e r i f i c a r   d e p e n d � n c i a s 
 c o m m a n d   - v   g i t   > / d e v / n u l l   2 > & 1   | |   {   e c h o   - e   " $ { R E D } g i t   n � o   e s t �   i n s t a l a d o .   P o r   f a v o r ,   i n s t a l e   o   g i t   e   t e n t e   n o v a m e n t e . $ { N C } " ;   e x i t   1 ;   } 
 c o m m a n d   - v   c u r l   > / d e v / n u l l   2 > & 1   | |   {   e c h o   - e   " $ { R E D } c u r l   n � o   e s t �   i n s t a l a d o .   P o r   f a v o r ,   i n s t a l e   o   c u r l   e   t e n t e   n o v a m e n t e . $ { N C } " ;   e x i t   1 ;   } 
 c o m m a n d   - v   u n z i p   > / d e v / n u l l   2 > & 1   | |   {   e c h o   - e   " $ { R E D } u n z i p   n � o   e s t �   i n s t a l a d o .   P o r   f a v o r ,   i n s t a l e   o   u n z i p   e   t e n t e   n o v a m e n t e . $ { N C } " ;   e x i t   1 ;   } 
 
 #   D e t e c t a r   o   s i s t e m a   o p e r a c i o n a l 
 o s _ t y p e = $ ( u n a m e   - s ) 
 
 #   D e f i n i r   U R L s   d o   P y t h o n   p a r a   d i f e r e n t e s   s i s t e m a s   o p e r a c i o n a i s 
 p y t h o n _ u r l _ m a c o s = ' h t t p s : / / w w w . p y t h o n . o r g / f t p / p y t h o n / 3 . 1 3 . 2 / p y t h o n - 3 . 1 3 . 2 - m a c o s 1 1 . p k g ' 
 p y t h o n _ u r l _ l i n u x = ' h t t p s : / / w w w . p y t h o n . o r g / f t p / p y t h o n / 3 . 1 3 . 2 / P y t h o n - 3 . 1 3 . 2 . t g z ' 
 p y t h o n _ u r l _ w i n d o w s = ' h t t p s : / / w w w . p y t h o n . o r g / f t p / p y t h o n / 3 . 1 3 . 2 / p y t h o n - 3 . 1 3 . 2 - a m d 6 4 . e x e ' 
 
 #   D e f i n i r   a   U R L   d o   H a r d w a r e - S n i f f e r 
 h a r d w a r e _ s n i f f e r _ u r l = " h t t p s : / / g i t h u b . c o m / l z h o a n g 2 8 0 1 / H a r d w a r e - S n i f f e r / r e l e a s e s / d o w n l o a d / 1 . 9 . 2 / H a r d w a r e - S n i f f e r . e x e " 
 
 #   F u n � � o   p a r a   c l o n a r   r e p o s i t � r i o s 
 c l o n e _ r e p o ( )   { 
         i f   [   - d   $ ( b a s e n a m e   $ 1   . g i t )   ] ;   t h e n 
                 e c h o   - e   " $ { Y E L L O W } O   r e p o s i t � r i o   $ ( b a s e n a m e   $ 1   . g i t )   j �   e x i s t e .   P u l a n d o . . . $ { N C } " 
         e l s e 
                 e c h o   - e   " $ { G R E E N } C l o n i n g   $ 1 . . . $ { N C } " 
                 g i t   c l o n e   $ 1 
                 i f   [   $ ?   - n e   0   ] ;   t h e n 
                         e c h o   - e   " $ { R E D } E r r o   a o   c l o n a r   o   r e p o s i t � r i o   $ 1 .   V e r i f i q u e   s u a   c o n e x � o   e   s e   o   r e p o s i t � r i o   e x i s t e . \ n S a � d a   d o   g i t   c l o n e : $ N C " 
                         g i t   c l o n e   $ 1   2 > & 1   |   c a t 
                         r e t u r n   1   #   R e t o r n a   u m   c � d i g o   d e   e r r o   p a r a   i n d i c a r   f a l h a 
                 f i 
         f i 
 } 
 
 #   F u n � � o   p a r a   b a i x a r   a r q u i v o s   e   d e s c o m p a c t a r   Z I P s 
 d o w n l o a d _ f i l e ( )   { 
         e c h o   - e   " $ { G R E E N } D o w n l o a d i n g   $ 1   t o   $ 2 . . . $ { N C } " 
         c u r l   - L   - #   $ 1   - o   $ 2 
         i f   [   $ ?   - n e   0   ] ;   t h e n 
                 e c h o   - e   " $ { R E D } E r r o   a o   b a i x a r   o   a r q u i v o   $ 1 .   V e r i f i q u e   s u a   c o n e x � o   e   s e   o   a r q u i v o   e x i s t e . \ n S a � d a   d o   c u r l : $ N C " 
                 c u r l   - L   - #   $ 1   - o   $ 2   2 > & 1   |   c a t 
                 r e t u r n   1   #   R e t o r n a   u m   c � d i g o   d e   e r r o 
         f i 
 
         #   D e s c o m p a c t a r   a r q u i v o s   . z i p 
         i f   [ [   $ 2   = =   * . z i p   ] ] ;   t h e n 
                 e c h o   - e   " $ { G R E E N } D e s c o m p a c t a n d o   $ 2 . . . $ { N C } " 
                 u n z i p   $ 2 
                 i f   [   $ ?   - n e   0   ] ;   t h e n 
                         e c h o   - e   " $ { R E D } E r r o   a o   d e s c o m p a c t a r   o   a r q u i v o   $ 2 . \ n S a � d a   d o   u n z i p : $ N C " 
                         u n z i p   $ 2   2 > & 1   |   c a t 
                         r e t u r n   1   #   R e t o r n a   u m   c � d i g o   d e   e r r o 
                 f i 
                 r m   $ 2   #   R e m o v e   o   a r q u i v o   . z i p   a p � s   a   d e s c o m p a c t a � � o 
         f i 
 } 
 
 #   F u n � � o   p a r a   b a i x a r   o   H a c k i n t o o l   d i r e t a m e n t e   d a   A P I   d o   G i t H u b 
 d o w n l o a d _ h a c k i n t o o l ( )   { 
         e c h o   - e   " $ { G R E E N } D o w n l o a d i n g   H a c k i n t o o l . . . $ { N C } " 
         l a t e s t _ r e l e a s e = $ ( c u r l   - s   h t t p s : / / a p i . g i t h u b . c o m / r e p o s / b e n b a k e r 7 6 / H a c k i n t o o l / r e l e a s e s / l a t e s t   |   g r e p   ' b r o w s e r _ d o w n l o a d _ u r l . * z i p '   |   c u t   - d   ' " '   - f   4 ) 
         i f   [   - z   $ l a t e s t _ r e l e a s e   ] ;   t h e n 
                 e c h o   - e   " $ { R E D } E r r o   a o   o b t e r   a   U R L   d e   d o w n l o a d   d o   H a c k i n t o o l   d a   A P I   d o   G i t H u b . $ { N C } " 
                 r e t u r n   1 
         f i 
         d o w n l o a d _ f i l e   $ l a t e s t _ r e l e a s e   H a c k i n t o o l . z i p 
         i f   [   $ ?   - n e   0   ] ;   t h e n 
             e c h o   - e   " $ { R E D } E r r o   a o   b a i x a r   o u   d e s c o m p a c t a r   H a c k i n t o o l . $ { N C } " 
             r e t u r n   1 
         f i 
 } 
 
 #   F u n � � o   p a r a   b a i x a r   a   � l t i m a   v e r s � o   d o   P y t h o n   3 
 d o w n l o a d _ p y t h o n 3 ( )   { 
         e c h o   - e   " $ { G R E E N } D o w n l o a d i n g   P y t h o n   3 . . . $ { N C } " 
 
         #   S e l e c i o n a r   a   U R L   d o   P y t h o n   c o m   b a s e   n o   s i s t e m a   o p e r a c i o n a l 
         c a s e   $ o s _ t y p e   i n 
                 D a r w i n * ) 
                         p y t h o n _ u r l = $ p y t h o n _ u r l _ m a c o s 
                         ; ; 
                 L i n u x * ) 
                         p y t h o n _ u r l = $ p y t h o n _ u r l _ l i n u x 
                         ; ; 
                 W i n d o w s * ) 
                         p y t h o n _ u r l = $ p y t h o n _ u r l _ w i n d o w s 
                         ; ; 
                 * ) 
                         e c h o   - e   " $ { R E D } S i s t e m a   o p e r a c i o n a l   n � o   s u p o r t a d o .   B a i x a n d o   a   v e r s � o   d o   m a c O S   p o r   p a d r � o . $ { N C } " 
                         p y t h o n _ u r l = $ p y t h o n _ u r l _ m a c o s 
                         ; ; 
         e s a c 
 
         d o w n l o a d _ f i l e   $ p y t h o n _ u r l   p y t h o n 3 . p k g 
         i f   [   $ ?   - n e   0   ] ;   t h e n 
             e c h o   - e   " $ { R E D } E r r o   a o   b a i x a r   o   i n s t a l a d o r   d o   P y t h o n   3 . $ { N C } " 
             r e t u r n   1 
         f i 
 } 
 
 #   F u n � � o   p a r a   v e r i f i c a r   o   e s p a � o   l i v r e   e m   d i s c o   ( e m   M B ) 
 c h e c k _ d i s k _ s p a c e ( )   { 
         l o c a l   r e q u i r e d _ s p a c e = $ 1   #   E s p a � o   r e q u e r i d o   e m   M B 
         l o c a l   a v a i l a b l e _ s p a c e = $ ( d f   - m   $ d e s t D i r   |   a w k   ' N R = = 2 { p r i n t   $ 4 } ' )   #   E s p a � o   d i s p o n � v e l   e m   M B 
         i f   [   $ a v a i l a b l e _ s p a c e   - l t   $ r e q u i r e d _ s p a c e   ] ;   t h e n 
                 e c h o   - e   " $ { R E D } E s p a � o   i n s u f i c i e n t e   e m   d i s c o .   R e q u e r   $ r e q u i r e d _ s p a c e   M B ,   m a s   a p e n a s   $ a v a i l a b l e _ s p a c e   M B   d i s p o n � v e i s   e m   $ d e s t D i r . $ { N C } " 
                 r e t u r n   1 
         e l s e 
                 r e t u r n   0 
         f i 
 } 
 
 #   F u n � � o   p a r a   b a i x a r   o   H a r d w a r e - S n i f f e r 
 d o w n l o a d _ h a r d w a r e _ s n i f f e r ( )   { 
         e c h o   - e   " $ { G R E E N } D o w n l o a d i n g   H a r d w a r e - S n i f f e r . . . $ { N C } " 
         d o w n l o a d _ f i l e   " $ h a r d w a r e _ s n i f f e r _ u r l "   H a r d w a r e - S n i f f e r . e x e 
         i f   [   $ ?   - n e   0   ] ;   t h e n 
                 e c h o   - e   " $ { R E D } E r r o   a o   b a i x a r   o   a r q u i v o   H a r d w a r e - S n i f f e r . \ n P o r   f a v o r ,   v e r i f i q u e   s u a   c o n e x � o   c o m   a   i n t e r n e t   e   s e   a   U R L   e s t �   c o r r e t a . $ { N C } " 
                 r e t u r n   1 
         f i 
 } 
 
 w h i l e   t r u e ;   d o 
         e c h o   - e   " $ { B L U E } E s c o l h a   u m   p r o g r a m a   p a r a   b a i x a r ,   2 1   p a r a   b a i x a r   t o d o s   o u   0   p a r a   s a i r : $ { N C } " 
         e c h o   ' 1 )   O p e n C o r e P k g   ( S o u r c e ) ' 
         e c h o   ' 2 )   O c B i n a r y D a t a ' 
         e c h o   ' 3 )   P r o p e r T r e e ' 
         e c h o   ' 4 )   H a c k i n t o o l ' 
         e c h o   ' 5 )   M o u n t E F I ' 
         e c h o   ' 6 )   S S D T T i m e ' 
         e c h o   ' 7 )   g i b M a c O S ' 
         e c h o   ' 8 )   G e n S M B I O S ' 
         e c h o   ' 9 )   U S B M a p ' 
         e c h o   ' 1 0 )   O C - U p d a t e ' 
         e c h o   ' 1 1 )   C P U - N a m e ' 
         e c h o   ' 1 2 )   g i b M a c R e c o v e r y ' 
         e c h o   ' 1 3 )   C l o v e r B o o t l o a d e r ' 
         e c h o   ' 1 4 )   L i l u - a n d - F r i e n d s ' 
         e c h o   ' 1 5 )   U p d a t e _ C l o v e r ' 
         e c h o   ' 1 6 )   u p d a t e _ o p e n c o r e ' 
         e c h o   ' 1 7 )   O p e n _ E F I s _ F S K I T ' 
         e c h o   ' 1 8 )   P y t h o n   3 ' 
         e c h o   ' 1 9 )   H a c k i n t o o l - O n - A p p l e S i l i c o n ' 
         e c h o   ' 2 0 )   O p C o r e - S i m p l i f y ' 
         e c h o   ' 2 1 )   H a r d w a r e - S n i f f e r ' 
         e c h o   ' 0 )   S a i r ' 
         r e a d   - p   ' D i g i t e   s u a   e s c o l h a :   '   c h o i c e 
 
         c a s e   $ c h o i c e   i n 
                 1 )   c l o n e _ r e p o   h t t p s : / / g i t h u b . c o m / a c i d a n t h e r a / O p e n C o r e P k g . g i t   ; ; 
                 2 )   c l o n e _ r e p o   h t t p s : / / g i t h u b . c o m / a c i d a n t h e r a / O c B i n a r y D a t a . g i t   ; ; 
                 3 )   c l o n e _ r e p o   h t t p s : / / g i t h u b . c o m / c o r p n e w t / P r o p e r T r e e . g i t   ; ; 
                 4 )   d o w n l o a d _ h a c k i n t o o l   ; ; 
                 5 )   c l o n e _ r e p o   h t t p s : / / g i t h u b . c o m / c o r p n e w t / M o u n t E F I . g i t   ; ; 
                 6 )   c l o n e _ r e p o   h t t p s : / / g i t h u b . c o m / c o r p n e w t / S S D T T i m e . g i t   ; ; 
                 7 )   c l o n e _ r e p o   h t t p s : / / g i t h u b . c o m / c o r p n e w t / g i b M a c O S . g i t   ; ; 
                 8 )   c l o n e _ r e p o   h t t p s : / / g i t h u b . c o m / c o r p n e w t / G e n S M B I O S . g i t   ; ; 
                 9 )   c l o n e _ r e p o   h t t p s : / / g i t h u b . c o m / c o r p n e w t / U S B M a p . g i t   ; ; 
                 1 0 )   c l o n e _ r e p o   h t t p s : / / g i t h u b . c o m / c o r p n e w t / O C - U p d a t e . g i t   ; ; 
                 1 1 )   c l o n e _ r e p o   h t t p s : / / g i t h u b . c o m / c o r p n e w t / C P U - N a m e . g i t   ; ; 
                 1 2 )   c l o n e _ r e p o   h t t p s : / / g i t h u b . c o m / c o r p n e w t / g i b M a c R e c o v e r y . g i t   ; ; 
                 1 3 )   c l o n e _ r e p o   h t t p s : / / g i t h u b . c o m / C l o v e r H a c k y C o l o r / C l o v e r B o o t l o a d e r . g i t   ; ; 
                 1 4 )   c l o n e _ r e p o   h t t p s : / / g i t h u b . c o m / c o r p n e w t / L i l u - a n d - F r i e n d s . g i t   ; ; 
                 1 5 )   c l o n e _ r e p o   h t t p s : / / g i t h u b . c o m / h n a n o t o / U p d a t e _ C l o v e r . g i t   ; ; 
                 1 6 )   c l o n e _ r e p o   h t t p s : / / g i t h u b . c o m / h n a n o t o / u p d a t e _ o p e n c o r e . g i t   ; ; 
                 1 7 )   d o w n l o a d _ f i l e   h t t p s : / / g i t h u b . c o m / h n a n o t o / O p e n _ E F I s _ F S K I T / r e l e a s e s / l a t e s t / d o w n l o a d / O p e n _ E F I s _ F S K I T . z i p   O p e n _ E F I s _ F S K I T . z i p   ; ; 
                 1 8 )   d o w n l o a d _ p y t h o n 3   ; ; 
                 1 9 )   c l o n e _ r e p o   h t t p s : / / g i t h u b . c o m / R o i d M C / H a c k i n t o o l - O n - A p p l e S i l i c o n . g i t   ; ; 
                 2 0 )   c l o n e _ r e p o   h t t p s : / / g i t h u b . c o m / l z h o a n g 2 8 0 1 / O p C o r e - S i m p l i f y . g i t   ; ; 
                 2 1 )   d o w n l o a d _ h a r d w a r e _ s n i f f e r   ; ; 
                 0 )   e c h o   - e   " $ { R E D } S a i n d o . . . $ { N C } " ;   b r e a k   ; ; 
                 * )   e c h o   - e   " $ { R E D } O p � � o   i n v � l i d a .   T e n t e   n o v a m e n t e . $ { N C } "   ; ; 
         e s a c 
         e c h o   ' ' 
 d o n e 
 
 e c h o   - e   " $ { Y E L L O W } # # # # #   ! ! !   F I N I S H E D   D O W N L O A D I N G   F I L E S   ! ! !   # # # # # $ { N C } " 
 e c h o   ' ' 
ascr  ��ޭ