FasdUAS 1.101.10   ��   ��    k             l     ��  ��    ' ! Caminho para o script tempor�rio     � 	 	 B   C a m i n h o   p a r a   o   s c r i p t   t e m p o r � r i o   
  
 l     ����  r         b     	    n         1    ��
�� 
psxp  l     ����  I    �� ��
�� .earsffdralis        afdr  m     ��
�� afdrtemp��  ��  ��    m       �   , h a c k i n t o s h _ d o w n l o a d . s h  o      ����  0 tempscriptpath tempScriptPath��  ��        l     ��������  ��  ��        l     ��  ��    7 1 Script bash que ser� salvo no arquivo tempor�rio     �   b   S c r i p t   b a s h   q u e   s e r �   s a l v o   n o   a r q u i v o   t e m p o r � r i o      l     ����   r     ! " ! m     # # � $ $X� # ! / b i n / b a s h 
 c l e a r 
 
 #   D e f i n i r   c o r e s 
 R E D = ' \ 0 3 3 [ 0 ; 3 1 m ' 
 G R E E N = ' \ 0 3 3 [ 0 ; 3 2 m ' 
 Y E L L O W = ' \ 0 3 3 [ 1 ; 3 3 m ' 
 B L U E = ' \ 0 3 3 [ 0 ; 3 4 m ' 
 N C = ' \ 0 3 3 [ 0 m '   #   S e m   c o r 
 
 e c h o   - e   " $ { B L U E } < - -   h n a n o t o - H a c k i n t o s h   a n d   b e y o n d   - - > $ { N C } " 
 e c h o   ' ' 
 e c h o   - e   " $ { Y E L L O W } # # # # #   ! ! !   D O W N L O A D I N G   F I L E S   ! ! !   # # # # # $ { N C } " 
 e c h o   ' ' 
 
 #   C a m i n h o   p a r a   a   p a s t a   d e   d e s t i n o   n a   � r e a   d e   t r a b a l h o 
 d e s t D i r = " $ H O M E / D e s k t o p / F e r r a m e n t a s T o p s " 
 
 #   C r i a r   o   d i r e t � r i o   d e   d e s t i n o ,   s e   n � o   e x i s t i r 
 m k d i r   - p   " $ d e s t D i r " 
 c d   " $ d e s t D i r "   | |   e x i t   1 
 
 #   V e r i f i c a r   d e p e n d � n c i a s 
 c h e c k _ d e p e n d e n c y ( )   { 
         c o m m a n d   - v   " $ 1 "   > / d e v / n u l l   2 > & 1   | |   {   e c h o   - e   " $ { R E D } $ 1   n � o   e s t �   i n s t a l a d o .   P o r   f a v o r ,   i n s t a l e   $ 1   e   t e n t e   n o v a m e n t e . $ { N C } " ;   e x i t   1 ;   } 
 } 
 c h e c k _ d e p e n d e n c y   " g i t " 
 c h e c k _ d e p e n d e n c y   " c u r l " 
 c h e c k _ d e p e n d e n c y   " u n z i p " 
 c h e c k _ d e p e n d e n c y   " j q " 
 
 #   F u n � � o   p a r a   c l o n a r   r e p o s i t � r i o s 
 c l o n e _ r e p o ( )   { 
         l o c a l   r e p o _ u r l = " $ 1 " 
         l o c a l   t o o l _ n a m e = " $ 2 " 
         l o c a l   r e p o _ d i r = " $ d e s t D i r / $ t o o l _ n a m e " 
         i f   [   - d   " $ r e p o _ d i r "   ] ;   t h e n 
                 e c h o   - e   " $ { Y E L L O W } O   r e p o s i t � r i o   $ t o o l _ n a m e   j �   e x i s t e .   P u l a n d o . . . $ { N C } " 
         e l s e 
                 e c h o   - e   " $ { G R E E N } C l o n i n g   $ r e p o _ u r l   i n t o   $ r e p o _ d i r . . . $ { N C } " 
                 m k d i r   - p   " $ r e p o _ d i r " 
                 g i t   c l o n e   " $ r e p o _ u r l "   " $ r e p o _ d i r " 
                 i f   [   $ ?   - n e   0   ] ;   t h e n 
                         e c h o   - e   " $ { R E D } E r r o   a o   c l o n a r   o   r e p o s i t � r i o   $ r e p o _ u r l . $ { N C } " 
                         r e t u r n   1 
                 f i 
         f i 
 } 
 
 #   F u n � � o   p a r a   b a i x a r   a r q u i v o s   e   d e s c o m p a c t a r   Z I P s 
 d o w n l o a d _ f i l e ( )   { 
         l o c a l   f i l e _ u r l = " $ 1 " 
         l o c a l   f i l e _ n a m e = " $ 2 " 
         l o c a l   t o o l _ n a m e = " $ 3 " 
         l o c a l   t o o l _ d i r = " $ d e s t D i r / $ t o o l _ n a m e " 
         e c h o   - e   " $ { G R E E N } D o w n l o a d i n g   $ f i l e _ u r l   t o   $ t o o l _ d i r / $ f i l e _ n a m e . . . $ { N C } " 
         m k d i r   - p   " $ t o o l _ d i r " 
         c d   " $ t o o l _ d i r "   | |   {   e c h o   - e   " $ { R E D } E r r o   a o   a c e s s a r   o   d i r e t � r i o   $ t o o l _ d i r . $ { N C } " ;   r e t u r n   1 ;   } 
         c u r l   - L   - #   " $ f i l e _ u r l "   - o   " $ f i l e _ n a m e " 
         i f   [   $ ?   - n e   0   ] ;   t h e n 
                 e c h o   - e   " $ { R E D } E r r o   a o   b a i x a r   o   a r q u i v o   $ f i l e _ u r l . $ { N C } " 
                 r e t u r n   1 
         f i 
         #   D e s c o m p a c t a r   a r q u i v o s   . z i p   o u   . t g z 
         i f   [ [   " $ f i l e _ n a m e "   = =   * . z i p   ] ] ;   t h e n 
                 e c h o   - e   " $ { G R E E N } D e s c o m p a c t a n d o   $ f i l e _ n a m e . . . $ { N C } " 
                 u n z i p   " $ f i l e _ n a m e " 
         e l i f   [ [   " $ f i l e _ n a m e "   = =   * . t g z   ] ] ;   t h e n 
                 e c h o   - e   " $ { G R E E N } D e s c o m p a c t a n d o   $ f i l e _ n a m e . . . $ { N C } " 
                 t a r   - x v z f   " $ f i l e _ n a m e " 
         f i 
         #   V o l t a r   a o   d i r e t � r i o   p r i n c i p a l 
         c d   " $ d e s t D i r "   | |   {   e c h o   - e   " $ { R E D } E r r o   a o   r e t o r n a r   a o   d i r e t � r i o   p r i n c i p a l . $ { N C } " ;   r e t u r n   1 ;   } 
 } 
 
 #   F u n � � o   p a r a   b a i x a r   o   H a r d w a r e - S n i f f e r 
 d o w n l o a d _ h a r d w a r e _ s n i f f e r ( )   { 
         e c h o   - e   " $ { G R E E N } D o w n l o a d i n g   H a r d w a r e - S n i f f e r . . . $ { N C } " 
         h a r d w a r e _ s n i f f e r _ u r l = " h t t p s : / / g i t h u b . c o m / l z h o a n g 2 8 0 1 / H a r d w a r e - S n i f f e r / r e l e a s e s / d o w n l o a d / 1 . 9 . 2 / H a r d w a r e - S n i f f e r . e x e " 
         d o w n l o a d _ f i l e   " $ h a r d w a r e _ s n i f f e r _ u r l "   " H a r d w a r e S n i f f e r . e x e "   " H a r d w a r e S n i f f e r " 
 } 
 
 #   F u n � � o   p a r a   b a i x a r   a s   v e r s � e s   R E L E A S E   e   D E B U G   d o   O p e n C o r e 
 d o w n l o a d _ o p e n c o r e _ b i n a r i e s ( )   { 
         e c h o   - e   " $ { B L U E } < - -   h n a n o t o - O p e n C o r e   B i n a r i e s   D o w n l o a d e r   - - > $ { N C } " 
         e c h o   ' ' 
         e c h o   - e   " $ { Y E L L O W } # # # # #   ! ! !   D O W N L O A D I N G   O p e n C o r e   B I N A R I E S   ! ! !   # # # # # $ { N C } " 
         e c h o   ' ' 
         #   E n d p o i n t   d a   A P I   d o   G i t H u b 
         a p i _ u r l = " h t t p s : / / a p i . g i t h u b . c o m / r e p o s / a c i d a n t h e r a / O p e n C o r e P k g / r e l e a s e s " 
         #   O b t e r   a   U R L   d o s   . z i p   d a   r e l e a s e   m a i s   r e c e n t e   u s a n d o   c u r l   e   j q 
         e c h o   - e   " $ { G R E E N } B u s c a n d o   a   v e r s � o   m a i s   r e c e n t e   d o   O p e n C o r e . . . $ { N C } " 
         r e s p o n s e = $ ( c u r l   - s   " $ a p i _ u r l " ) 
         #   V e r i f i c a r   s e   a   r e s p o s t a   d a   A P I   �   v � l i d a 
         i f   !   e c h o   " $ r e s p o n s e "   |   j q   e m p t y ;   t h e n 
                 e c h o   - e   " $ { R E D } E r r o :   F a l h a   a o   o b t e r   i n f o r m a � � e s   d a   A P I   d o   G i t H u b . $ { N C } " 
                 r e t u r n   1 
         f i 
         #   E x t r a i r   U R L s   d o s   a r q u i v o s   R E L E A S E   e   D E B U G 
         r e l e a s e _ u r l = $ ( e c h o   " $ r e s p o n s e "   |   j q   - r   ' . [ 0 ] . a s s e t s [ ]   |   s e l e c t ( . b r o w s e r _ d o w n l o a d _ u r l   |   c o n t a i n s ( " - R E L E A S E . z i p " ) )   |   . b r o w s e r _ d o w n l o a d _ u r l ' ) 
         d e b u g _ u r l = $ ( e c h o   " $ r e s p o n s e "   |   j q   - r   ' . [ 0 ] . a s s e t s [ ]   |   s e l e c t ( . b r o w s e r _ d o w n l o a d _ u r l   |   c o n t a i n s ( " - D E B U G . z i p " ) )   |   . b r o w s e r _ d o w n l o a d _ u r l ' ) 
         #   V e r i f i c a r   s e   a s   U R L s   f o r a m   e n c o n t r a d a s 
         i f   [   - z   " $ r e l e a s e _ u r l "   ]   | |   [   - z   " $ d e b u g _ u r l "   ] ;   t h e n 
                 e c h o   - e   " $ { R E D } E r r o :   N � o   f o i   p o s s � v e l   e n c o n t r a r   a m b o s   o s   a r q u i v o s   R E L E A S E   e   D E B U G   n a   A P I   d o   G i t H u b . $ { N C } " 
                 r e t u r n   1 
         f i 
         #   E x i b i r   a s   U R L s   e n c o n t r a d a s   p a r a   d e p u r a � � o 
         e c h o   - e   " $ { G R E E N } U R L   R E L E A S E   e n c o n t r a d a :   $ r e l e a s e _ u r l $ { N C } " 
         e c h o   - e   " $ { G R E E N } U R L   D E B U G   e n c o n t r a d a :   $ d e b u g _ u r l $ { N C } " 
         #   F u n � � o   p a r a   b a i x a r   e   d e s c o m p a c t a r   u m   a r q u i v o 
         d o w n l o a d _ a n d _ e x t r a c t ( )   { 
                 l o c a l   u r l = " $ 1 " 
                 l o c a l   t y p e = " $ 2 " 
                 l o c a l   t o o l _ n a m e = " O p e n C o r e " 
                 l o c a l   t o o l _ d i r = " $ d e s t D i r / $ t o o l _ n a m e / $ t y p e " 
                 e c h o   - e   " $ { G R E E N } B a i x a n d o   $ t y p e . . . $ { N C } " 
                 f i l e _ n a m e = $ ( b a s e n a m e   " $ u r l " ) 
                 m k d i r   - p   " $ t o o l _ d i r " 
                 c d   " $ t o o l _ d i r "   | |   {   e c h o   - e   " $ { R E D } E r r o   a o   a c e s s a r   o   d i r e t � r i o   $ t o o l _ d i r . $ { N C } " ;   r e t u r n   1 ;   } 
                 #   B a i x a r   o   a r q u i v o 
                 c u r l   - L   - #   " $ u r l "   - o   " $ f i l e _ n a m e " 
                 i f   [   $ ?   - n e   0   ] ;   t h e n 
                         e c h o   - e   " $ { R E D } E r r o   a o   b a i x a r   o   a r q u i v o   $ f i l e _ n a m e . $ { N C } " 
                         r e t u r n   1 
                 f i 
                 #   D e s c o m p a c t a r   o   a r q u i v o 
                 e c h o   - e   " $ { G R E E N } D e s c o m p a c t a n d o   $ f i l e _ n a m e . . . $ { N C } " 
                 u n z i p   " $ f i l e _ n a m e " 
                 i f   [   $ ?   - n e   0   ] ;   t h e n 
                         e c h o   - e   " $ { R E D } E r r o   a o   d e s c o m p a c t a r   o   a r q u i v o   $ f i l e _ n a m e . $ { N C } " 
                         r e t u r n   1 
                 f i 
                 #   R e m o v e r   o   a r q u i v o   z i p   a p � s   a   d e s c o m p a c t a � � o 
                 r m   " $ f i l e _ n a m e " 
                 #   V o l t a r   a o   d i r e t � r i o   p r i n c i p a l 
                 c d   " $ d e s t D i r "   | |   {   e c h o   - e   " $ { R E D } E r r o   a o   r e t o r n a r   a o   d i r e t � r i o   p r i n c i p a l . $ { N C } " ;   r e t u r n   1 ;   } 
         } 
         #   B a i x a r   e   d e s c o m p a c t a r   R E L E A S E 
         d o w n l o a d _ a n d _ e x t r a c t   " $ r e l e a s e _ u r l "   " R E L E A S E " 
         #   B a i x a r   e   d e s c o m p a c t a r   D E B U G 
         d o w n l o a d _ a n d _ e x t r a c t   " $ d e b u g _ u r l "   " D E B U G " 
         e c h o   - e   " $ { G R E E N } B i n � r i o s   d o   O p e n C o r e   b a i x a d o s   e   d e s c o m p a c t a d o s   c o m   s u c e s s o   e m   $ d e s t D i r / O p e n C o r e . $ { N C } " 
 } 
 
 #   F u n � � o   p a r a   i n s t a l a r   o   P y t h o n   3 
 i n s t a l l _ p y t h o n 3 ( )   { 
         e c h o   - e   " $ { B L U E } < - -   I n s t a l l i n g   P y t h o n   3   - - > $ { N C } " 
         e c h o   ' ' 
         #   D e t e c t a r   o   s i s t e m a   o p e r a c i o n a l 
         o s _ t y p e = $ ( u n a m e   - s ) 
         c a s e   " $ o s _ t y p e "   i n 
                 D a r w i n * )   #   m a c O S 
                         e c h o   - e   " $ { G R E E N } D e t e c t a d o   m a c O S .   I n s t a l a n d o   P y t h o n   3 . . . $ { N C } " 
                         i f   c o m m a n d   - v   b r e w   > / d e v / n u l l   2 > & 1 ;   t h e n 
                                 e c h o   - e   " $ { G R E E N } H o m e b r e w   e n c o n t r a d o .   U s a n d o   H o m e b r e w   p a r a   i n s t a l a r   P y t h o n   3 . . . $ { N C } " 
                                 b r e w   i n s t a l l   p y t h o n 
                         e l s e 
                                 e c h o   - e   " $ { Y E L L O W } H o m e b r e w   n � o   e n c o n t r a d o .   B a i x a n d o   o   i n s t a l a d o r   . p k g   d o   P y t h o n   3 . . . $ { N C } " 
                                 p y t h o n _ u r l = " h t t p s : / / w w w . p y t h o n . o r g / f t p / p y t h o n / 3 . 1 3 . 2 / p y t h o n - 3 . 1 3 . 2 - m a c o s 1 1 . p k g " 
                                 d o w n l o a d _ f i l e   " $ p y t h o n _ u r l "   " p y t h o n 3 . p k g "   " P y t h o n 3 " 
                                 e c h o   - e   " $ { G R E E N } I n s t a l a d o r   d o   P y t h o n   3   b a i x a d o .   E x e c u t e   o   a r q u i v o   ' p y t h o n 3 . p k g '   p a r a   i n s t a l a r . $ { N C } " 
                         f i 
                         ; ; 
                 L i n u x * )   #   L i n u x 
                         e c h o   - e   " $ { G R E E N } D e t e c t a d o   L i n u x .   I n s t a l a n d o   P y t h o n   3 . . . $ { N C } " 
                         i f   c o m m a n d   - v   a p t   > / d e v / n u l l   2 > & 1 ;   t h e n 
                                 e c h o   - e   " $ { G R E E N } A P T   e n c o n t r a d o .   U s a n d o   A P T   p a r a   i n s t a l a r   P y t h o n   3 . . . $ { N C } " 
                                 s u d o   a p t   u p d a t e   & &   s u d o   a p t   i n s t a l l   - y   p y t h o n 3 
                         e l i f   c o m m a n d   - v   y u m   > / d e v / n u l l   2 > & 1 ;   t h e n 
                                 e c h o   - e   " $ { G R E E N } Y U M   e n c o n t r a d o .   U s a n d o   Y U M   p a r a   i n s t a l a r   P y t h o n   3 . . . $ { N C } " 
                                 s u d o   y u m   i n s t a l l   - y   p y t h o n 3 
                         e l s e 
                                 e c h o   - e   " $ { Y E L L O W } G e r e n c i a d o r   d e   p a c o t e s   n � o   e n c o n t r a d o .   B a i x a n d o   o   P y t h o n   3   d i r e t a m e n t e . . . $ { N C } " 
                                 p y t h o n _ u r l = " h t t p s : / / w w w . p y t h o n . o r g / f t p / p y t h o n / 3 . 1 3 . 2 / P y t h o n - 3 . 1 3 . 2 . t g z " 
                                 d o w n l o a d _ f i l e   " $ p y t h o n _ u r l "   " P y t h o n - 3 . 1 3 . 2 . t g z "   " P y t h o n 3 " 
                                 e c h o   - e   " $ { G R E E N } P y t h o n   3   b a i x a d o .   E x t r a i a   o   a r q u i v o   e   s i g a   a s   i n s t r u � � e s   p a r a   c o m p i l a r   e   i n s t a l a r . $ { N C } " 
                         f i 
                         ; ; 
                 C Y G W I N * | M I N G W * | M S Y S * )   #   W i n d o w s 
                         e c h o   - e   " $ { G R E E N } D e t e c t a d o   W i n d o w s .   B a i x a n d o   o   i n s t a l a d o r   . e x e   d o   P y t h o n   3 . . . $ { N C } " 
                         p y t h o n _ u r l = " h t t p s : / / w w w . p y t h o n . o r g / f t p / p y t h o n / 3 . 1 3 . 2 / p y t h o n - 3 . 1 3 . 2 - a m d 6 4 . e x e " 
                         d o w n l o a d _ f i l e   " $ p y t h o n _ u r l "   " p y t h o n - 3 . 1 3 . 2 - a m d 6 4 . e x e "   " P y t h o n 3 " 
                         e c h o   - e   " $ { G R E E N } I n s t a l a d o r   d o   P y t h o n   3   b a i x a d o .   E x e c u t e   o   a r q u i v o   ' p y t h o n - 3 . 1 3 . 2 - a m d 6 4 . e x e '   p a r a   i n s t a l a r . $ { N C } " 
                         ; ; 
                 * )   #   O u t r o s   s i s t e m a s 
                         e c h o   - e   " $ { R E D } S i s t e m a   o p e r a c i o n a l   n � o   s u p o r t a d o   p a r a   i n s t a l a � � o   a u t o m � t i c a   d o   P y t h o n   3 . $ { N C } " 
                         ; ; 
         e s a c 
 } 
 
 #   F u n � � o   p a r a   b a i x a r   o   H a c k i n t o o l   d i r e t a m e n t e   d a   A P I   d o   G i t H u b 
 d o w n l o a d _ h a c k i n t o o l ( )   { 
         e c h o   - e   " $ { G R E E N } D o w n l o a d i n g   H a c k i n t o o l . . . $ { N C } " 
         l a t e s t _ r e l e a s e = $ ( c u r l   - s   h t t p s : / / a p i . g i t h u b . c o m / r e p o s / b e n b a k e r 7 6 / H a c k i n t o o l / r e l e a s e s / l a t e s t   |   g r e p   ' b r o w s e r _ d o w n l o a d _ u r l . * z i p '   |   c u t   - d   ' " '   - f   4 ) 
         i f   [   - z   " $ l a t e s t _ r e l e a s e "   ] ;   t h e n 
                 e c h o   - e   " $ { R E D } E r r o   a o   o b t e r   a   U R L   d e   d o w n l o a d   d o   H a c k i n t o o l   d a   A P I   d o   G i t H u b . $ { N C } " 
                 r e t u r n   1 
         f i 
         d o w n l o a d _ f i l e   " $ l a t e s t _ r e l e a s e "   " H a c k i n t o o l . z i p "   " H a c k i n t o o l " 
 } 
 
 #   M e n u   p r i n c i p a l 
 w h i l e   t r u e ;   d o 
         e c h o   - e   " $ { B L U E } E s c o l h a   u m   p r o g r a m a   p a r a   b a i x a r ,   2 2   p a r a   b a i x a r   t o d o s   o u   0   p a r a   s a i r : $ { N C } " 
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
         e c h o   ' 2 2 )   O p e n C o r e   B i n a r i e s   ( R E L E A S E   e   D E B U G ) ' 
         e c h o   ' 0 )   S a i r ' 
         r e a d   - p   ' D i g i t e   s u a   e s c o l h a :   '   c h o i c e 
         c a s e   $ c h o i c e   i n 
                 1 )   c l o n e _ r e p o   ' h t t p s : / / g i t h u b . c o m / a c i d a n t h e r a / O p e n C o r e P k g . g i t '   " O p e n C o r e P k g "   ; ; 
                 2 )   c l o n e _ r e p o   ' h t t p s : / / g i t h u b . c o m / a c i d a n t h e r a / O c B i n a r y D a t a . g i t '   " O c B i n a r y D a t a "   ; ; 
                 3 )   c l o n e _ r e p o   ' h t t p s : / / g i t h u b . c o m / c o r p n e w t / P r o p e r T r e e . g i t '   " P r o p e r T r e e "   ; ; 
                 4 )   d o w n l o a d _ h a c k i n t o o l   ; ; 
                 5 )   c l o n e _ r e p o   ' h t t p s : / / g i t h u b . c o m / c o r p n e w t / M o u n t E F I . g i t '   " M o u n t E F I "   ; ; 
                 6 )   c l o n e _ r e p o   ' h t t p s : / / g i t h u b . c o m / c o r p n e w t / S S D T T i m e . g i t '   " S S D T T i m e "   ; ; 
                 7 )   c l o n e _ r e p o   ' h t t p s : / / g i t h u b . c o m / c o r p n e w t / g i b M a c O S . g i t '   " g i b M a c O S "   ; ; 
                 8 )   c l o n e _ r e p o   ' h t t p s : / / g i t h u b . c o m / c o r p n e w t / G e n S M B I O S . g i t '   " G e n S M B I O S "   ; ; 
                 9 )   c l o n e _ r e p o   ' h t t p s : / / g i t h u b . c o m / c o r p n e w t / U S B M a p . g i t '   " U S B M a p "   ; ; 
                 1 0 )   c l o n e _ r e p o   ' h t t p s : / / g i t h u b . c o m / c o r p n e w t / O C - U p d a t e . g i t '   " O C - U p d a t e "   ; ; 
                 1 1 )   c l o n e _ r e p o   ' h t t p s : / / g i t h u b . c o m / c o r p n e w t / C P U - N a m e . g i t '   " C P U - N a m e "   ; ; 
                 1 2 )   c l o n e _ r e p o   ' h t t p s : / / g i t h u b . c o m / c o r p n e w t / g i b M a c R e c o v e r y . g i t '   " g i b M a c R e c o v e r y "   ; ; 
                 1 3 )   c l o n e _ r e p o   ' h t t p s : / / g i t h u b . c o m / C l o v e r H a c k y C o l o r / C l o v e r B o o t l o a d e r . g i t '   " C l o v e r B o o t l o a d e r "   ; ; 
                 1 4 )   c l o n e _ r e p o   ' h t t p s : / / g i t h u b . c o m / c o r p n e w t / L i l u - a n d - F r i e n d s . g i t '   " L i l u - a n d - F r i e n d s "   ; ; 
                 1 5 )   c l o n e _ r e p o   ' h t t p s : / / g i t h u b . c o m / h n a n o t o / U p d a t e _ C l o v e r . g i t '   " U p d a t e _ C l o v e r "   ; ; 
                 1 6 )   c l o n e _ r e p o   ' h t t p s : / / g i t h u b . c o m / h n a n o t o / u p d a t e _ o p e n c o r e . g i t '   " u p d a t e _ o p e n c o r e "   ; ; 
                 1 7 )   d o w n l o a d _ f i l e   ' h t t p s : / / g i t h u b . c o m / h n a n o t o / O p e n _ E F I s _ F S K I T / r e l e a s e s / l a t e s t / d o w n l o a d / O p e n _ E F I s _ F S K I T . z i p '   ' O p e n _ E F I s _ F S K I T . z i p '   " O p e n _ E F I s _ F S K I T "   ; ; 
                 1 8 )   i n s t a l l _ p y t h o n 3   ; ; 
                 1 9 )   c l o n e _ r e p o   ' h t t p s : / / g i t h u b . c o m / R o i d M C / H a c k i n t o o l - O n - A p p l e S i l i c o n . g i t '   " H a c k i n t o o l - O n - A p p l e S i l i c o n "   ; ; 
                 2 0 )   c l o n e _ r e p o   ' h t t p s : / / g i t h u b . c o m / l z h o a n g 2 8 0 1 / O p C o r e - S i m p l i f y . g i t '   " O p C o r e - S i m p l i f y "   ; ; 
                 2 1 )   d o w n l o a d _ h a r d w a r e _ s n i f f e r   ; ; 
                 2 2 )   d o w n l o a d _ o p e n c o r e _ b i n a r i e s   ; ; 
                 0 )   e c h o   - e   " $ { R E D } S a i n d o . . . $ { N C } " ;   b r e a k   ; ; 
                 * )   e c h o   - e   " $ { R E D } O p � � o   i n v � l i d a .   T e n t e   n o v a m e n t e . $ { N C } " 
         e s a c 
         e c h o   ' ' 
 d o n e 
 e c h o   - e   " $ { Y E L L O W } # # # # #   ! ! !   F I N I S H E D   D O W N L O A D I N G   F I L E S   ! ! !   # # # # # $ { N C } " 
 e c h o   ' ' 
 e x i t   0 
 " o      ���� 0 shellscript shellScript��  ��     % & % l     ��������  ��  ��   &  ' ( ' l     �� ) *��   ) 1 + Salvar o script Bash no arquivo tempor�rio    * � + + V   S a l v a r   o   s c r i p t   B a s h   n o   a r q u i v o   t e m p o r � r i o (  , - , l    .���� . I   �� /��
�� .sysoexecTEXT���     TEXT / b     0 1 0 b     2 3 2 b     4 5 4 m     6 6 � 7 7 
 e c h o   5 n     8 9 8 1    ��
�� 
strq 9 o    ���� 0 shellscript shellScript 3 m     : : � ; ;    >   1 n     < = < 1    ��
�� 
strq = o    ����  0 tempscriptpath tempScriptPath��  ��  ��   -  > ? > l     ��������  ��  ��   ?  @ A @ l     �� B C��   B !  Tornar o script execut�vel    C � D D 6   T o r n a r   o   s c r i p t   e x e c u t � v e l A  E F E l    ) G���� G I    )�� H��
�� .sysoexecTEXT���     TEXT H b     % I J I m     ! K K � L L  c h m o d   + x   J n   ! $ M N M 1   " $��
�� 
strq N o   ! "����  0 tempscriptpath tempScriptPath��  ��  ��   F  O P O l     ��������  ��  ��   P  Q R Q l     �� S T��   S $  Executar o script no Terminal    T � U U <   E x e c u t a r   o   s c r i p t   n o   T e r m i n a l R  V�� V l  * : W���� W O   * : X Y X k   . 9 Z Z  [ \ [ I  . 3������
�� .miscactvnull��� ��� null��  ��   \  ]�� ] I  4 9�� ^��
�� .coredoscnull��� ��� ctxt ^ o   4 5����  0 tempscriptpath tempScriptPath��  ��   Y m   * + _ _�                                                                                      @ alis    ^  Nvme Sistema Principal     ����BD ����Terminal.app                                                   ��������        ����  
 cu             	Utilities   -/:System:Applications:Utilities:Terminal.app/     T e r m i n a l . a p p  .  N v m e   S i s t e m a   P r i n c i p a l  *System/Applications/Utilities/Terminal.app  / ��  ��  ��  ��       �� ` a��   ` ��
�� .aevtoappnull  �   � **** a �� b���� c d��
�� .aevtoappnull  �   � **** b k     : e e  
 f f   g g  , h h  E i i  V����  ��  ��   c   d ������ �� #�� 6�� :�� K _����
�� afdrtemp
�� .earsffdralis        afdr
�� 
psxp��  0 tempscriptpath tempScriptPath�� 0 shellscript shellScript
�� 
strq
�� .sysoexecTEXT���     TEXT
�� .miscactvnull��� ��� null
�� .coredoscnull��� ��� ctxt�� ;�j �,�%E�O�E�O���,%�%��,%j 
O���,%j 
O� *j O�j Uascr  ��ޭ