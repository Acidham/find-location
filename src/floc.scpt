FasdUAS 1.101.10   ��   ��    k             i         I     �� 	��
�� .aevtoappnull  �   � **** 	 o      ���� 0 thequery theQuery��    k    � 
 
     r         c         o     ���� 0 thequery theQuery  m    ��
�� 
ctxt  o      ���� 0 thequery theQuery      l   ��������  ��  ��        l   ��  ��    0 * get env variable in case zoom was changed     �   T   g e t   e n v   v a r i a b l e   i n   c a s e   z o o m   w a s   c h a n g e d      r        I   �� ��
�� .sysoexecTEXT���     TEXT  m       �    e c h o   $ Q U E R Y��    o      ���� 0 query QUERY       l   ��������  ��  ��      ! " ! l   �� # $��   # = 7 In case env variable was passed by changing zoom level    $ � % % n   I n   c a s e   e n v   v a r i a b l e   w a s   p a s s e d   b y   c h a n g i n g   z o o m   l e v e l "  & ' & Z    4 ( )�� * ( >    + , + o    ���� 0 query QUERY , m     - - � . .   ) r    * / 0 / I      �� 1���� 0 stringsplit StringSplit 1  2 3 2 o    ���� 0 query QUERY 3  4�� 4 m     5 5 � 6 6  :��  ��   0 J       7 7  8 9 8 o      ���� 0 theloc theLoc 9  :�� : o      ���� 0 thezoom theZoom��  ��   * k   - 4 ; ;  < = < r   - 0 > ? > o   - .���� 0 thequery theQuery ? o      ���� 0 theloc theLoc =  @�� @ r   1 4 A B A m   1 2����  B o      ���� 0 thezoom theZoom��   '  C D C l  5 5��������  ��  ��   D  E F E l  5 5�� G H��   G ) # Load json script for Script Filter    H � I I F   L o a d   j s o n   s c r i p t   f o r   S c r i p t   F i l t e r F  J K J r   5 A L M L 4   5 ?�� N
�� 
psxf N l  7 > O���� O b   7 > P Q P l  7 < R���� R I  7 <�� S��
�� .sysoexecTEXT���     TEXT S m   7 8 T T � U U  p w d��  ��  ��   Q m   < = V V � W W  / j s o n . s c p t��  ��   M o      ���� 0 thejsonpath theJsonPath K  X Y X r   B M Z [ Z I  B I�� \��
�� .sysoloadscpt        file \ c   B E ] ^ ] o   B C���� 0 thejsonpath theJsonPath ^ m   C D��
�� 
alis��   [ o      ���� 0 json   Y  _ ` _ l  N N��������  ��  ��   `  a b a r   N T c d c J   N P����   d o      ���� 0 theitems theItems b  e f e l  U U��������  ��  ��   f  g h g Q   Uy i j k i k   X9 l l  m n m l  X X�� o p��   o . ( get API key for Google Maps from Config    p � q q P   g e t   A P I   k e y   f o r   G o o g l e   M a p s   f r o m   C o n f i g n  r s r r   X c t u t I  X _�� v��
�� .sysoexecTEXT���     TEXT v m   X [ w w � x x $ e c h o   $ G o o g l e A P I K e y��   u o      ���� 0 
thegapikey 
theGAPIKey s  y z y l  d d��������  ��  ��   z  { | { l  d d�� } ~��   } ) # Create WF cached dir if not exists    ~ �   F   C r e a t e   W F   c a c h e d   d i r   i f   n o t   e x i s t s |  � � � I  d k�� ���
�� .sysoexecTEXT���     TEXT � m   d g � � � � � � [ [   - d   " $ { a l f r e d _ w o r k f l o w _ c a c h e } "   ] ]   | |   m k d i r   " $ { a l f r e d _ w o r k f l o w _ c a c h e } "��   �  � � � l  l l�� � ���   �   Get WF cache directory    � � � � .   G e t   W F   c a c h e   d i r e c t o r y �  � � � r   l z � � � 4   l v�� �
�� 
psxf � l  n u ����� � I  n u�� ���
�� .sysoexecTEXT���     TEXT � m   n q � � � � � 6 e c h o   $ a l f r e d _ w o r k f l o w _ c a c h e��  ��  ��   � o      ���� 0 thecache theCache �  � � � l  { {�� � ���   � . (log "WF cache " & POSIX path of theCache    � � � � P l o g   " W F   c a c h e   "   &   P O S I X   p a t h   o f   t h e C a c h e �  � � � l  { {�� � ���   � G Atell application "Finder" to delete every item of folder theCache    � � � � � t e l l   a p p l i c a t i o n   " F i n d e r "   t o   d e l e t e   e v e r y   i t e m   o f   f o l d e r   t h e C a c h e �  � � � I  { ��� ���
�� .sysoexecTEXT���     TEXT � b   { � � � � b   { � � � � m   { ~ � � � � �  r m   - r f   � n   ~ � � � � 1   � ���
�� 
strq � l  ~ � ����� � n   ~ � � � � 1   � ���
�� 
psxp � o   ~ ����� 0 thecache theCache��  ��   � m   � � � � � � �  / *��   �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   � &   get coords from location search    � � � � @   g e t   c o o r d s   f r o m   l o c a t i o n   s e a r c h �  � � � r   � � � � � J   � �����   � o      ���� 0 thelocations theLocations �  � � � r   � � � � � m   � ���
�� boovtrue � o      ���� 0 thecheck theCheck �  � � � r   � � � � � I   � ��� ����� 0 trim   �  ��� � o   � ����� 0 theloc theLoc��  ��   � o      ���� 0 thecity theCity �  � � � r   � � � � � I   � ��� ����� 0 	getcoords 	getCoords �  � � � o   � ����� 0 thecity theCity �  ��� � o   � ����� 0 
thegapikey 
theGAPIKey��  ��   � o      ���� 0 	thecoords 	theCoords �  � � � r   � � � � � b   � � � � � o   � ����� 0 thelocations theLocations � J   � � � �  ��� � o   � ����� 0 	thecoords 	theCoords��   � o      ���� 0 thelocations theLocations �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   � 5 / get map images and save into wf data directory    � � � � ^   g e t   m a p   i m a g e s   a n d   s a v e   i n t o   w f   d a t a   d i r e c t o r y �  � � � r   � � � � � I  � ��� ���
�� .corecnte****       **** � o   � ����� 0 thelocations theLocations��   � o      ���� 0 	thelcount 	theLCount �  � � � r   � � � � � m   � �����  � o      ���� 0 i   �  � � � r   � � � � � m   � � � � � � �   � o      ���� 0 thearg theArg �  � � � X   �� ��� � � k   �� � �  � � � r   �  � � � n   � � � � � o   � ����� 0 city   � o   � ����� 0 thelocation theLocation � o      ���� 0 thecity theCity �  � � � r  
 � � � n   � � � o  ���� 0 lat   � o  ���� 0 thelocation theLocation � o      ���� 0 thelat theLat �  � � � r   � � � n   � � � o  ���� 0 lng   � o  ���� 0 thelocation theLocation � o      ���� 0 thelng theLng �  �  � l ����   . (		set theStatus to status of theLocation    � P 	 	 s e t   t h e S t a t u s   t o   s t a t u s   o f   t h e L o c a t i o n   r   m   �		  O K o      �� 0 	thestatus 	theStatus 
�~
 Z  ��}�| = $ o   �{�{ 0 	thestatus 	theStatus m   # �  O K k  '�  r  'X b  'T b  'P b  'L b  'H b  'D b  '@ !  b  '<"#" b  ':$%$ b  '6&'& b  '2()( b  '.*+* m  '*,, �-- l h t t p s : / / m a p s . g o o g l e a p i s . c o m / m a p s / a p i / s t a t i c m a p ? c e n t e r =+ o  *-�z�z 0 thelat theLat) m  .1.. �//  ,' o  25�y�y 0 thelng theLng% m  6900 �11  & z o o m =# o  :;�x�x 0 thezoom theZoom! m  <?22 �33 , & s i z e = 6 0 0 x 6 0 0 & m a r k e r s = o  @C�w�w 0 thelat theLat m  DG44 �55  , o  HK�v�v 0 thelng theLng m  LO66 �77 
 & k e y = o  PS�u�u 0 
thegapikey 
theGAPIKey o      �t�t 0 thegurl theGURL 898 r  Yp:;: b  Yl<=< b  Yh>?> b  Yd@A@ l Y`B�s�rB n  Y`CDC 1  \`�q
�q 
psxpD o  Y\�p�p 0 thecache theCache�s  �r  A m  `cEE �FF  /? o  dg�o�o 0 thecity theCity= m  hkGG �HH  . j p g; o      �n�n 0 theimg theIMG9 IJI l qq�mKL�m  K  log "IMG Path: " & theIMG   L �MM 2 l o g   " I M G   P a t h :   "   &   t h e I M GJ NON r  q�PQP b  q�RSR b  q|TUT b  qxVWV m  qtXX �YY  c u r l   - s   - o   "W o  tw�l�l 0 theimg theIMGU m  x{ZZ �[[  "  S l |�\�k�j\ n |�]^] 1  ��i
�i 
strq^ o  |�h�h 0 thegurl theGURL�k  �j  Q o      �g�g 0 thecurl theCURLO _`_ I ���fa�e
�f .sysoexecTEXT���     TEXTa o  ���d�d 0 thecurl theCURL�e  ` bcb l ���cde�c  d  log "CURL: " & theCURL   e �ff , l o g   " C U R L :   "   &   t h e C U R Lc ghg l ���bij�b  i   create ARG string   j �kk $   c r e a t e   A R G   s t r i n gh lml r  ��non b  ��pqp b  ��rsr b  ��tut b  ��vwv b  ��xyx b  ��z{z b  ��|}| b  ��~~ o  ���a�a 0 thearg theArg m  ���� ��� 
 c i t y :} o  ���`�` 0 thecity theCity{ m  ���� ���  ,y m  ���� ���  l a t :w o  ���_�_ 0 thelat theLatu m  ���� ���  ,s m  ���� ���  l n g :q o  ���^�^ 0 thelng theLngo o      �]�] 0 thearg theArgm ��� Z �����\�[� > ����� o  ���Z�Z 0 i  � o  ���Y�Y 0 	thelcount 	theLCount� r  ����� b  ����� o  ���X�X 0 thearg theArg� m  ���� ���  |� o      �W�W 0 thearg theArg�\  �[  � ��V� l ���U���U  �  	set i to i + 1   � ���  	 s e t   i   t o   i   +   1�V  �}  �|  �~  �� 0 thelocation theLocation � o   � ��T�T 0 thelocations theLocations � ��� l ���S�R�Q�S  �R  �Q  � ��� l ���P�O�N�P  �O  �N  � ��� l ���M���M  � 1 + Create JSON Filter for each location found   � ��� V   C r e a t e   J S O N   F i l t e r   f o r   e a c h   l o c a t i o n   f o u n d� ��� X  ����L�� k  ���� ��� r  ����� n  ����� o  ���K�K 0 adr  � o  ���J�J 0 thelocation theLocation� o      �I�I 0 theadr theAdr� ��� r  ���� n  ���� o  ��H�H 0 city  � o  ���G�G 0 thelocation theLocation� o      �F�F 0 thecity theCity� ��� r  ��� n  ��� o  �E�E 0 lat  � o  �D�D 0 thelocation theLocation� o      �C�C 0 thelat theLat� ��� r  ��� n  ��� o  �B�B 0 lng  � o  �A�A 0 thelocation theLocation� o      �@�@ 0 thelng theLng� ��� r  1��� b  -��� b  )��� b  %��� l !��?�>� n  !��� 1  !�=
�= 
psxp� o  �<�< 0 thecache theCache�?  �>  � m  !$�� ���  /� o  %(�;�; 0 thecity theCity� m  ),�� ���  . j p g� o      �:�: 0 theimg theIMG� ��9� Z  2����8�� = 29��� o  25�7�7 0 	thestatus 	theStatus� m  58�� ���  O K� k  <��� ��� l <<�6�5�4�6  �5  �4  � ��� r  <Q��� n <M��� I  ?M�3��2�3  0 createdictwith createDictWith� ��1� J  ?I�� ��0� J  ?G�� ��� m  ?B�� ��� 
 t i t l e� ��/� o  BE�.�. 0 theadr theAdr�/  �0  �1  �2  � o  <?�-�- 0 json  � o      �,�, 0 theitem theItem� ��� n Ra��� I  Ua�+��*�+ 	0 setkv  � ��� m  UX�� ���  s u b t i t l e� ��)� b  X]��� m  X[�� ��� \ P r e v i e w   S H I F T ,   E N T E R   o p e n   M a p   w i t h   z o o m   l e v e l  � o  [\�(�( 0 thezoom theZoom�)  �*  � o  RU�'�' 0 theitem theItem� ��� n bo��� I  eo�&��%�& 	0 setkv  � � � m  eh �  a r g  �$ o  hk�#�# 0 theimg theIMG�$  �%  � o  be�"�" 0 theitem theItem�  n p} I  s}�!� �! 	0 setkv   	
	 m  sv �  q u i c k l o o k u r l
 � o  vy�� 0 theimg theIMG�  �    o  ps�� 0 theitem theItem  l ~~����  �  �   � r  ~� o  ~��� 0 theitem theItem n        ;  �� o  ���� 0 theitems theItems�  �8  � k  ��  l ������  �  �    r  �� n �� I  �����  0 createdictwith createDictWith � J  ��   !�! J  ��"" #$# m  ��%% �&& 
 t i t l e$ '�' m  ��(( �)) & L o c a t i o n   n o t   F o u n d !�  �  �  �   o  ���� 0 json   o      �� 0 theitem theItem *+* n ��,-, I  ���.�� 	0 setkv  . /0/ m  ��11 �22  s u b t i t l e0 3�
3 m  ��44 �55  T r y   a g a i n�
  �  - o  ���	�	 0 theitem theItem+ 676 n ��898 I  ���:�� 	0 setkv  : ;<; m  ��== �>> 
 v a l i d< ?�? m  ���
� boovfals�  �  9 o  ���� 0 theitem theItem7 @A@ l ������  �  �  A B� B r  ��CDC o  ������ 0 theitem theItemD n      EFE  ;  ��F o  ������ 0 theitems theItems�   �9  �L 0 thelocation theLocation� o  ������ 0 thelocations theLocations� GHG l ����������  ��  ��  H IJI l ����KL��  K !  create JSON for Zoom level   L �MM 6   c r e a t e   J S O N   f o r   Z o o m   l e v e lJ NON r  ��PQP n ��RSR I  ����T����  0 createdictwith createDictWithT U��U J  ��VV W��W J  ��XX YZY m  ��[[ �\\ 
 t i t l eZ ]��] m  ��^^ �__ " C h a n g e   Z o o m   L e v e l��  ��  ��  ��  S o  ������ 0 json  Q o      ���� 0 theitem theItemO `a` n ��bcb I  ����d���� 	0 setkv  d efe m  ��gg �hh  s u b t i t l ef i��i b  ��jkj m  ��ll �mm & Z o o m   L e v e l   s e t   t o :  k o  ������ 0 thezoom theZoom��  ��  c o  ������ 0 theitem theItema non n ��pqp I  ����r���� 	0 setkv  r sts m  ��uu �vv  a r gt w��w b  ��xyx b  ��z{z o  ������ 0 theloc theLoc{ m  ��|| �}}  :y o  ������ 0 thezoom theZoom��  ��  q o  ������ 0 theitem theItemo ~~ l ����������  ��  ��   ��� r  ���� n ���� I  �������  0 createdictwith createDictWith� ���� J  �� ���� J  
�� ��� m  �� ���  t y p e� ���� m  �� ���  i c o n��  ��  ��  ��  � o  ����� 0 json  � o      ���� 0 theicon theIcon� ��� n "��� I  "������� 	0 setkv  � ��� m  �� ���  p a t h� ���� m  �� ���  z o o m . i c o��  ��  � o  ���� 0 theicon theIcon� ��� n #0��� I  &0������� 	0 setkv  � ��� m  &)�� ���  i c o n� ���� o  ),���� 0 theicon theIcon��  ��  � o  #&���� 0 theitem theItem� ��� l 11��������  ��  ��  � ���� r  19��� o  14���� 0 theitem theItem� n      ���  ;  78� o  47���� 0 theitems theItems��   j R      ������
�� .ascrerr ****      � ****��  ��   k k  Ay�� ��� r  AV��� n AR��� I  DR�������  0 createdictwith createDictWith� ���� J  DN�� ���� J  DL�� ��� m  DG�� ��� 
 t i t l e� ���� m  GJ�� ��� & L o c a t i o n   n o t   F o u n d !��  ��  ��  ��  � o  AD���� 0 json  � o      ���� 0 theitem theItem� ��� n Wd��� I  Zd������� 	0 setkv  � ��� m  Z]�� ���  s u b t i t l e� ���� m  ]`�� ���  T r y   a g a i n��  ��  � o  WZ���� 0 theitem theItem� ��� n ep��� I  hp������� 	0 setkv  � ��� m  hk�� ��� 
 v a l i d� ���� m  kl��
�� boovfals��  ��  � o  eh���� 0 theitem theItem� ��� l qq��������  ��  ��  � ���� r  qy��� o  qt���� 0 theitem theItem� n      ���  ;  wx� o  tw���� 0 theitems theItems��   h ��� l zz������  � 2 , Create root items object and encode to JSON   � ��� X   C r e a t e   r o o t   i t e m s   o b j e c t   a n d   e n c o d e   t o   J S O N� ��� r  z���� n z���� I  }��������� 0 
createdict 
createDict��  ��  � o  z}���� 0 json  � o      ���� 0 itemdict itemDict� ��� n ����� I  ��������� 	0 setkv  � ��� m  ���� ��� 
 i t e m s� ���� o  ������ 0 theitems theItems��  ��  � o  ������ 0 itemdict itemDict� ��� l ����������  ��  ��  � ��� L  ���� n ����� I  ��������� 
0 encode  � ���� o  ������ 0 itemdict itemDict��  ��  � o  ������ 0 json  � ���� l ����������  ��  ��  ��    ��� l     ��������  ��  ��  �    l      ����   E ? Get GPS Coordinates from a Address. 
Requires: Location Helper    � ~   G e t   G P S   C o o r d i n a t e s   f r o m   a   A d d r e s s .   
 R e q u i r e s :   L o c a t i o n   H e l p e r  i     I      ��	���� 0 	getcoords 	getCoords	 

 o      ���� 0 
theaddress 
theAddress �� o      ���� 0 	theapikey 	theAPIKey��  ��   k     �  l     ��������  ��  ��    O     l k    k  r     b     b    	 b     m     �   t h t t p s : / / m a p s . g o o g l e a p i s . c o m / m a p s / a p i / g e o c o d e / j s o n ? a d d r e s s = o    ���� 0 
theaddress 
theAddress m    !! �"" 
 & k e y = o   	 
���� 0 	theapikey 	theAPIKey o      ���� 0 theurl theURL #$# r    %&% I   ��'��
�� .DfaBfEtHnull���     ****' o    ���� 0 theurl theURL��  & o      ���� 0 thecode theCode$ ()( I   ��*��
�� .ascrcmnt****      � ***** o    ���� 0 theurl theURL��  ) +,+ l   ��������  ��  ��  , -.- l   ��/0��  /   Parse JSON request   0 �11 &   P a r s e   J S O N   r e q u e s t. 232 r    !454 n    676 o    ���� 
0 status  7 o    ���� 0 thecode theCode5 o      ���� 0 	thestatus 	theStatus3 8��8 Z   " k9:�;9 =  " %<=< o   " #�~�~ 0 	thestatus 	theStatus= m   # $>> �??  O K: k   ( e@@ ABA r   ( +CDC m   ( )�}
�} boovtrueD o      �|�| 0 	thestatus 	theStatusB EFE r   , 1GHG n   , /IJI o   - /�{�{ 0 results  J o   , -�z�z 0 thecode theCodeH o      �y�y 0 
theresults 
theResultsF KLK r   2 8MNM n   2 6OPO 4   3 6�xQ
�x 
cobjQ m   4 5�w�w P o   2 3�v�v 0 
theresults 
theResultsN o      �u�u 0 theitem1 theItem1L RSR r   9 ATUT n   9 ?VWV 4   < ?�tX
�t 
cobjX m   = >�s�s W l  9 <Y�r�qY n   9 <Z[Z o   : <�p�p 0 address_components  [ o   9 :�o�o 0 theitem1 theItem1�r  �q  U o      �n�n &0 theaddressdetails theAddressDetailsS \]\ r   B G^_^ n   B E`a` o   C E�m�m 0 formatted_address  a o   B C�l�l 0 theitem1 theItem1_ o      �k�k 0 theadr theAdr] bcb r   H Mded n   H Kfgf o   I K�j�j 0 	long_name  g o   H I�i�i &0 theaddressdetails theAddressDetailse o      �h�h 0 thecity theCityc hih r   N Sjkj n   N Qlml o   O Q�g�g 0 geometry  m o   N O�f�f 0 theitem1 theItem1k o      �e�e 0 thegeometry theGeometryi non r   T Ypqp n   T Wrsr o   U W�d�d 0 location  s o   T U�c�c 0 thegeometry theGeometryq o      �b�b 0 thelocation theLocationo tut r   Z _vwv n   Z ]xyx o   [ ]�a�a 0 lat  y o   Z [�`�` 0 thelocation theLocationw o      �_�_ 0 thelat theLatu z�^z r   ` e{|{ n   ` c}~} o   a c�]�] 0 lng  ~ o   ` a�\�\ 0 thelocation theLocation| o      �[�[ 0 thelng theLng�^  �  ; r   h k� m   h i�Z
�Z boovfals� o      �Y�Y 0 	thestatus 	theStatus��   m     ���                                                                                  DfaB  alis    $  SSD                            BD ����JSON Helper.app                                                ����            ����  
 cu             Applications  /:Applications:JSON Helper.app/      J S O N   H e l p e r . a p p    S S D  Applications/JSON Helper.app  / ��   ��� l  m m�X�W�V�X  �W  �V  � ��U� Z   m ����T�� o   m n�S�S 0 	thestatus 	theStatus� k   q ��� ��� L   q ��� c   q ���� K   q ��� �R���R 0 adr  � o   t u�Q�Q 0 theadr theAdr� �P���P 0 city  � o   x y�O�O 0 thecity theCity� �N���N 0 lat  � o   z {�M�M 0 thelat theLat� �L��K�L 0 lng  � o   | }�J�J 0 thelng theLng�K  � m   � ��I
�I 
reco� ��� l  � ��H���H  � / )return "lat=" & theLat & "&lng=" & theLng   � ��� R r e t u r n   " l a t = "   &   t h e L a t   &   " & l n g = "   &   t h e L n g� ��� l  � ��G���G  � , &return "N " & theLat & ", E " & theLng   � ��� L r e t u r n   " N   "   &   t h e L a t   &   " ,   E   "   &   t h e L n g� ��F� l  � ��E�D�C�E  �D  �C  �F  �T  � L   � ��� K   � ��� �B���B 0 city  � m   � ��� ���  � �A���A 0 lat  � m   � ��� ���  � �@��?�@ 0 lng  � m   � ��� ���  �?  �U   ��� l     �>�=�<�>  �=  �<  � ��� i    ��� I      �;��:�; 0 stringsplit StringSplit� ��� o      �9�9 0 	thestring 	theString� ��8� o      �7�7 0 thedelimiter theDelimiter�8  �:  � k     �� ��� l     �6���6  � . ( save delimiters to restore old settings   � ��� P   s a v e   d e l i m i t e r s   t o   r e s t o r e   o l d   s e t t i n g s� ��� r     ��� n    ��� 1    �5
�5 
txdl� 1     �4
�4 
ascr� o      �3�3 0 olddelimiters oldDelimiters� ��� l   �2���2  � - ' set delimiters to delimiter to be used   � ��� N   s e t   d e l i m i t e r s   t o   d e l i m i t e r   t o   b e   u s e d� ��� r    ��� o    �1�1 0 thedelimiter theDelimiter� n     ��� 1    
�0
�0 
txdl� 1    �/
�/ 
ascr� ��� l   �.���.  �   create the array   � ��� "   c r e a t e   t h e   a r r a y� ��� r    ��� n    ��� 2    �-
�- 
citm� o    �,�, 0 	thestring 	theString� o      �+�+ 0 thearray theArray� ��� l   �*���*  �   restore the old setting   � ��� 0   r e s t o r e   t h e   o l d   s e t t i n g� ��� r    ��� o    �)�) 0 olddelimiters oldDelimiters� n     ��� 1    �(
�( 
txdl� 1    �'
�' 
ascr� ��� l   �&���&  �   return the result   � ��� $   r e t u r n   t h e   r e s u l t� ��%� L    �� o    �$�$ 0 thearray theArray�%  � ��� l     �#�"�!�#  �"  �!  � ��� l      � ���   � � � ==============================================
FUNCTION: Trims trailing whitespaces from a String
RETURNS: String 
==============================================   � ���D   = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 F U N C T I O N :   T r i m s   t r a i l i n g   w h i t e s p a c e s   f r o m   a   S t r i n g 
 R E T U R N S :   S t r i n g   
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =� ��� i    ��� I      ���� 0 trim  � ��� o      �� 0 str  �  �  � k     �� ��� r     ��� b     ��� b        m      �  e c h o   " o    �� 0 str  � m     � " "   |     s e d   ' s /   / / g '� o      �� 0 cmd  �  r    	 I   �
�
� .sysoexecTEXT���     TEXT
 o    	�� 0 cmd  �  	 o      �� 0 trimmed   � L     o    �� 0 trimmed  �  �  l     ����  �  �    l      ��   � � ================================================================
FUNTION: Log message to logger
RETURNS: -
==================================================================    �\   = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 F U N T I O N :   L o g   m e s s a g e   t o   l o g g e r 
 R E T U R N S :   - 
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =  i     I     ��
� .ascrcmnt****      � **** l     �� o      �� 0 thelog theLog�  �  �   k       O     r      c    	!"! n    #$# 1    �

�
 
pnam$  f    " m    �	
�	 
ctxt  o      �� 0 myname myName m     %%�                                                                                  MACS  alis    .  SSD                            BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    S S D  &System/Library/CoreServices/Finder.app  / ��   &�& I   �'�
� .sysoexecTEXT���     TEXT' b    ()( b    *+* b    ,-, b    ./. m    00 �11 . l o g g e r   - t   ' A S   D E B U G '   ' [/ o    �� 0 myname myName- m    22 �33  ] :  + o    �� 0 thelog theLog) m    44 �55  '�  �   676 l     ��� �  �  �   7 8��8 l     ��������  ��  ��  ��       ��9:;<=>��  9 ����������
�� .aevtoappnull  �   � ****�� 0 	getcoords 	getCoords�� 0 stringsplit StringSplit�� 0 trim  
�� .ascrcmnt****      � ****: �� ����?@��
�� .aevtoappnull  �   � ****�� 0 thequery theQuery��  ? ������ 0 thequery theQuery�� 0 thelocation theLocation@ l�� ���� - 5������������ T V���������� w�� � ��� ����� ������������������� �����������������,.0246��EG��XZ������������������������%(14=[^glu|�����������������������
�� 
ctxt
�� .sysoexecTEXT���     TEXT�� 0 query QUERY�� 0 stringsplit StringSplit
�� 
cobj�� 0 theloc theLoc�� 0 thezoom theZoom�� 
�� 
psxf�� 0 thejsonpath theJsonPath
�� 
alis
�� .sysoloadscpt        file�� 0 json  �� 0 theitems theItems�� 0 
thegapikey 
theGAPIKey�� 0 thecache theCache
�� 
psxp
�� 
strq�� 0 thelocations theLocations�� 0 thecheck theCheck�� 0 trim  �� 0 thecity theCity�� 0 	getcoords 	getCoords�� 0 	thecoords 	theCoords
�� .corecnte****       ****�� 0 	thelcount 	theLCount�� 0 i  �� 0 thearg theArg
�� 
kocl�� 0 city  �� 0 lat  �� 0 thelat theLat�� 0 lng  �� 0 thelng theLng�� 0 	thestatus 	theStatus�� 0 thegurl theGURL�� 0 theimg theIMG�� 0 thecurl theCURL�� 0 adr  �� 0 theadr theAdr��  0 createdictwith createDictWith�� 0 theitem theItem�� 	0 setkv  �� 0 theicon theIcon��  ��  �� 0 
createdict 
createDict�� 0 itemdict itemDict�� 
0 encode  �����&E�O�j E�O�� *��l+ E[�k/E�Z[�l/E�ZY 	�E�O�E�O*��j �%/E�O��&j E` OjvE` O�a j E` Oa j O*�a j /E` Oa _ a ,a ,%a %j OjvE` OeE` O*�k+ E` O*_ _ l+  E` !O_ _ !kv%E` O_ j "E` #OkE` $Oa %E` &O �_ [a '�l "kh �a (,E` O�a ),E` *O�a +,E` ,Oa -E` .O_ .a /  �a 0_ *%a 1%_ ,%a 2%�%a 3%_ *%a 4%_ ,%a 5%_ %E` 6O_ a ,a 7%_ %a 8%E` 9Oa :_ 9%a ;%_ 6a ,%E` <O_ <j O_ &a =%_ %a >%a ?%_ *%a @%a A%_ ,%E` &O_ $_ # _ &a B%E` &Y hOPY h[OY�O �_ [a '�l "kh �a C,E` DO�a (,E` O�a ),E` *O�a +,E` ,O_ a ,a E%_ %a F%E` 9O_ .a G  O_ a H_ Dlvkvk+ IE` JO_ Ja Ka L�%l+ MO_ Ja N_ 9l+ MO_ Ja O_ 9l+ MO_ J_ 6FY :_ a Pa Qlvkvk+ IE` JO_ Ja Ra Sl+ MO_ Ja Tfl+ MO_ J_ 6F[OY�+O_ a Ua Vlvkvk+ IE` JO_ Ja Wa X�%l+ MO_ Ja Y�a Z%�%l+ MO_ a [a \lvkvk+ IE` ]O_ ]a ^a _l+ MO_ Ja `_ ]l+ MO_ J_ 6FW ?X a b_ a ca dlvkvk+ IE` JO_ Ja ea fl+ MO_ Ja gfl+ MO_ J_ 6FO_ j+ hE` iO_ ia j_ l+ MO_ _ ik+ kOP; ������AB���� 0 	getcoords 	getCoords�� ��C�� C  ������ 0 
theaddress 
theAddress�� 0 	theapikey 	theAPIKey��  A ������������������������������ 0 
theaddress 
theAddress�� 0 	theapikey 	theAPIKey�� 0 theurl theURL�� 0 thecode theCode�� 0 	thestatus 	theStatus�� 0 
theresults 
theResults�� 0 theitem1 theItem1�� &0 theaddressdetails theAddressDetails�� 0 theadr theAdr�� 0 thecity theCity�� 0 thegeometry theGeometry�� 0 thelocation theLocation�� 0 thelat theLat�� 0 thelng theLngB �!������>�������������������������������
�� .DfaBfEtHnull���     ****
�� .ascrcmnt****      � ****�� 
0 status  �� 0 results  
�� 
cobj�� 0 address_components  �� 0 formatted_address  �� 0 	long_name  �� 0 geometry  �� 0 location  �� 0 lat  �� 0 lng  �� 0 adr  �� 0 city  �� 
�� 
reco�� �� �� i�%�%�%E�O�j E�O�j O��,E�O��  BeE�O��,E�O��k/E�O��,�k/E�O��,E�O��,E�O��,E�O��,E�O��,E�O��,E�Y fE�UO� a �a ���a a &OPY a a �a �a a < �������DE���� 0 stringsplit StringSplit�� ��F�� F  ������ 0 	thestring 	theString�� 0 thedelimiter theDelimiter��  D ���������� 0 	thestring 	theString�� 0 thedelimiter theDelimiter�� 0 olddelimiters oldDelimiters�� 0 thearray theArrayE ������
�� 
ascr
�� 
txdl
�� 
citm�� ��,E�O���,FO��-E�O���,FO�= �������GH���� 0 trim  �� ��I�� I  ���� 0 str  ��  G �������� 0 str  �� 0 cmd  �� 0 trimmed  H ��
�� .sysoexecTEXT���     TEXT�� �%�%E�O�j E�O�> ����~JK�}
�� .ascrcmnt****      � ****� 0 thelog theLog�~  J �|�{�| 0 thelog theLog�{ 0 myname myNameK %�z�y024�x
�z 
pnam
�y 
ctxt
�x .sysoexecTEXT���     TEXT�} � 	)�,�&E�UO�%�%�%�%j ascr  ��ޭ