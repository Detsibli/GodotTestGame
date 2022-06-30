GDPC                                                                               @   res://.import/Light.png-434aab4fe64b7d35096e8d62977f183c.stex    @      &*      �Pm/��z�f���@   res://.import/Player.png-0662117005c6b9039deb63a286c8efe4.stex  �z      F       S�HxJ��d>`����<   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex��      �      &�y���ڞu;>��.p   res://Bullet.tscn   @            q�ވ�^�1���vc�=   res://Enemy.gd.remap@�              � G>��A_WWng4��   res://Enemy.gdc `      �      \Y�����ڄ"�m�   res://Enemy.tscn 
      c      ��*�y�kJ�
���   res://Level.tscnp      �2      �m�b��0y�q����   res://Light.png.import  0j      �      �>6�k��P6��L�o   res://Player.gd.remap   `�      !       ��0�F �qq��dX��   res://Player.gdc�l      :      4��0R%"��5m~�0i�   res://PowerUp.gd.remap  ��      "       |Y=������F�0w�   res://PowerUp.gdc    u      �      �C����y�!�J�M�   res://PowerUp.tscn  �v      :      �U�c6����m/�;_�    res://Sprites/Player.png.import @{      �      �Cf	��8��"o&   res://Wall.tres  ~      �      ���u����W�~�m1�   res://default_env.tres  ��      �       um�`�N��<*ỳ�8   res://icon.png  ��      �      G1?��z�c��vN��   res://icon.png.import   p�      �      �d��?S���4m���   res://project.binary��      �
      �{��Kf�f��^N2�[gd_scene load_steps=3 format=2]

[ext_resource path="res://Sprites/Player.png" type="Texture" id=1]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 7.5, 3.5 )

[node name="Bullet" type="RigidBody2D"]
rotation = 0.785398

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
rotation = 0.785398
shape = SubResource( 1 )

[node name="Sprite" type="Sprite" parent="."]
modulate = Color( 0.592157, 0.592157, 0.592157, 1 )
rotation = 0.785398
scale = Vector2( 0.25, 0.107813 )
texture = ExtResource( 1 )
               GDSC            Y      ������������τ�   �����ض�   �����϶�   ���������������Ŷ���   ����׶��   �����Ķ�   ���������¶�   �������Ӷ���   �������ض���   ������¶   ���������������Ӷ���   �������ׄ�������������Ҷ   ���϶���   ���Ӷ���   ���������Ӷ�      Player     2         Bullet                     
                                 	      
   (      )      5      <      =      B      C      D      K      S      W      3YY;�  �  PQYYY0�  PQV�  -YY0�  P�  QV�  ;�  �  PQT�  PQ�  �  �  P�  T�  �  Q�  �  �	  P�  T�  Q�  �  �
  P�  QYYY0�  P�  QV�  &�  �  T�  V�  �  PQY`        [gd_scene load_steps=5 format=2]

[ext_resource path="res://Sprites/Player.png" type="Texture" id=1]
[ext_resource path="res://Enemy.gd" type="Script" id=2]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 13, 13 )

[sub_resource type="RectangleShape2D" id=2]
extents = Vector2( 20, 20 )

[node name="Enemy" type="KinematicBody2D"]
scale = Vector2( 0.8, 0.8 )
script = ExtResource( 2 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
shape = SubResource( 1 )

[node name="Sprite" type="Sprite" parent="."]
modulate = Color( 0, 0.227451, 1, 1 )
scale = Vector2( 0.5, 0.5 )
texture = ExtResource( 1 )

[node name="Area2D" type="Area2D" parent="."]

[node name="CollisionShape2D" type="CollisionShape2D" parent="Area2D"]
shape = SubResource( 2 )

[connection signal="body_entered" from="Area2D" to="." method="_on_Area2D_body_entered"]
             [gd_scene load_steps=9 format=2]

[ext_resource path="res://Sprites/Player.png" type="Texture" id=1]
[ext_resource path="res://Player.gd" type="Script" id=2]
[ext_resource path="res://Enemy.tscn" type="PackedScene" id=3]
[ext_resource path="res://PowerUp.tscn" type="PackedScene" id=4]
[ext_resource path="res://Wall.tres" type="TileSet" id=5]
[ext_resource path="res://Light.png" type="Texture" id=6]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 32, 32 )

[sub_resource type="RectangleShape2D" id=2]
extents = Vector2( 36, 36 )

[node name="Level" type="Node2D"]

[node name="Player" type="KinematicBody2D" parent="."]
position = Vector2( 575, 333 )
scale = Vector2( 0.5, 0.5 )
script = ExtResource( 2 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="Player"]
shape = SubResource( 1 )

[node name="Sprite" type="Sprite" parent="Player"]
texture = ExtResource( 1 )

[node name="Area2D" type="Area2D" parent="Player"]

[node name="CollisionShape2D" type="CollisionShape2D" parent="Player/Area2D"]
shape = SubResource( 2 )

[node name="Light2D" type="Light2D" parent="Player"]
texture = ExtResource( 6 )
texture_scale = 5.0
color = Color( 0.447059, 0.94902, 0.913725, 0.0823529 )
energy = 5.0
shadow_enabled = true

[node name="Camera2D" type="Camera2D" parent="Player"]
current = true
zoom = Vector2( 0.8, 0.8 )
smoothing_enabled = true

[node name="Enemy" parent="." instance=ExtResource( 3 )]

[node name="PowerUp" parent="." instance=ExtResource( 4 )]
position = Vector2( 795, 385 )

[node name="PowerUp2" parent="." instance=ExtResource( 4 )]
position = Vector2( -263, 516 )

[node name="PowerUp3" parent="." instance=ExtResource( 4 )]
position = Vector2( -77, -243 )

[node name="PowerUp4" parent="." instance=ExtResource( 4 )]
position = Vector2( 1433, -210 )

[node name="PowerUp5" parent="." instance=ExtResource( 4 )]
position = Vector2( 1383, 806 )

[node name="PowerUp6" parent="." instance=ExtResource( 4 )]
position = Vector2( 1000, 95 )

[node name="PowerUp7" parent="." instance=ExtResource( 4 )]
position = Vector2( -320, -238 )

[node name="PowerUp9" parent="." instance=ExtResource( 4 )]
position = Vector2( 1977, 265 )

[node name="PowerUp10" parent="." instance=ExtResource( 4 )]
position = Vector2( 1561, 251 )

[node name="PowerUp11" parent="." instance=ExtResource( 4 )]
position = Vector2( 2520, 228 )

[node name="PowerUp12" parent="." instance=ExtResource( 4 )]
position = Vector2( 2172, 765 )

[node name="PowerUp13" parent="." instance=ExtResource( 4 )]
position = Vector2( 2387, -197 )

[node name="PowerUp14" parent="." instance=ExtResource( 4 )]
position = Vector2( 2715, 751 )

[node name="PowerUp8" parent="." instance=ExtResource( 4 )]
position = Vector2( 225, 687 )

[node name="Enemy2" parent="." instance=ExtResource( 3 )]
position = Vector2( -74, 416 )
scale = Vector2( 0.64, 0.64 )

[node name="Enemy3" parent="." instance=ExtResource( 3 )]
position = Vector2( 38, 761 )
scale = Vector2( 0.64, 0.64 )

[node name="Enemy4" parent="." instance=ExtResource( 3 )]
position = Vector2( -314, -60 )
scale = Vector2( 0.64, 0.64 )

[node name="Enemy5" parent="." instance=ExtResource( 3 )]
position = Vector2( 552, -288 )
scale = Vector2( 0.64, 0.64 )

[node name="Enemy6" parent="." instance=ExtResource( 3 )]
position = Vector2( 1163, 95 )
scale = Vector2( 0.64, 0.64 )

[node name="Enemy7" parent="." instance=ExtResource( 3 )]
position = Vector2( 1127, -212 )
scale = Vector2( 0.64, 0.64 )

[node name="Enemy8" parent="." instance=ExtResource( 3 )]
position = Vector2( 1079, 796 )
scale = Vector2( 0.64, 0.64 )

[node name="Enemy9" parent="." instance=ExtResource( 3 )]
position = Vector2( 220, 430 )
scale = Vector2( 0.64, 0.64 )

[node name="Enemy10" parent="." instance=ExtResource( 3 )]
position = Vector2( 137, -269 )
scale = Vector2( 0.64, 0.64 )

[node name="Enemy12" parent="." instance=ExtResource( 3 )]
position = Vector2( 1814, 249 )
scale = Vector2( 0.64, 0.64 )

[node name="Enemy13" parent="." instance=ExtResource( 3 )]
position = Vector2( 2682, 238 )
scale = Vector2( 0.64, 0.64 )

[node name="Enemy14" parent="." instance=ExtResource( 3 )]
position = Vector2( 2102, -203 )
scale = Vector2( 0.64, 0.64 )

[node name="Enemy15" parent="." instance=ExtResource( 3 )]
position = Vector2( 2159, 269 )
scale = Vector2( 0.64, 0.64 )

[node name="Enemy16" parent="." instance=ExtResource( 3 )]
position = Vector2( 1995, 693 )
scale = Vector2( 0.64, 0.64 )

[node name="Enemy17" parent="." instance=ExtResource( 3 )]
position = Vector2( 2334, 645 )
scale = Vector2( 0.64, 0.64 )

[node name="Enemy18" parent="." instance=ExtResource( 3 )]
position = Vector2( 1415, 331 )
scale = Vector2( 0.64, 0.64 )

[node name="Enemy19" parent="." instance=ExtResource( 3 )]
position = Vector2( 2719, -235 )
scale = Vector2( 0.64, 0.64 )

[node name="Enemy20" parent="." instance=ExtResource( 3 )]
position = Vector2( 1788, -266 )
scale = Vector2( 0.64, 0.64 )

[node name="Enemy11" parent="." instance=ExtResource( 3 )]
position = Vector2( 622, 861 )
scale = Vector2( 0.64, 0.64 )

[node name="Sprite" type="Sprite" parent="."]
modulate = Color( 0.6, 0.227451, 0.227451, 1 )
position = Vector2( 1252.5, 288.75 )
scale = Vector2( 52.9844, 21.1016 )
z_index = -1
texture = ExtResource( 1 )

[node name="TileMap" type="TileMap" parent="."]
tile_set = ExtResource( 5 )
cell_size = Vector2( 32, 32 )
format = 1
tile_data = PoolIntArray( -720910, 0, 0, -720908, 0, 0, -720907, 0, 0, -720906, 0, 0, -720905, 0, 0, -720904, 0, 0, -720903, 0, 0, -720902, 0, 0, -720901, 0, 0, -720900, 0, 0, -720899, 0, 0, -720898, 0, 0, -720897, 0, 0, -786432, 0, 0, -786431, 0, 0, -786430, 0, 0, -786429, 0, 0, -786427, 0, 0, -786426, 0, 0, -786425, 0, 0, -786424, 0, 0, -786423, 0, 0, -786422, 0, 0, -786421, 0, 0, -786420, 0, 0, -786419, 0, 0, -786418, 0, 0, -786417, 0, 0, -786416, 0, 0, -786414, 0, 0, -786413, 0, 0, -786412, 0, 0, -786411, 0, 0, -786410, 0, 0, -786409, 0, 0, -786408, 0, 0, -786407, 0, 0, -786406, 0, 0, -786405, 0, 0, -786404, 0, 0, -786403, 0, 0, -786402, 0, 0, -786401, 0, 0, -786399, 0, 0, -786398, 0, 0, -786397, 0, 0, -786396, 0, 0, -786395, 0, 0, -786394, 0, 0, -786393, 0, 0, -786392, 0, 0, -786391, 0, 0, -786390, 0, 0, -786389, 0, 0, -786388, 0, 0, -786387, 0, 0, -786386, 0, 0, -786385, 0, 0, -786384, 0, 0, -786382, 0, 0, -786381, 0, 0, -786380, 0, 0, -786379, 0, 0, -786378, 0, 0, -786377, 0, 0, -786376, 0, 0, -786375, 0, 0, -786374, 0, 0, -786373, 0, 0, -786372, 0, 0, -786371, 0, 0, -786370, 0, 0, -786369, 0, 0, -786368, 0, 0, -786367, 0, 0, -786366, 0, 0, -786365, 0, 0, -786364, 0, 0, -786363, 0, 0, -786362, 0, 0, -786361, 0, 0, -786360, 0, 0, -786359, 0, 0, -786358, 0, 0, -786357, 0, 0, -786356, 0, 0, -786355, 0, 0, -786354, 0, 0, -786353, 0, 0, -786352, 0, 0, -786351, 0, 0, -786350, 0, 0, -786349, 0, 0, -786348, 0, 0, -786347, 0, 0, -786346, 0, 0, -786345, 0, 0, -786344, 0, 0, -786343, 0, 0, -786342, 0, 0, -655374, 0, 0, -720806, 0, 0, -589838, 0, 0, -589832, 0, 0, -655312, 0, 0, -655270, 0, 0, -524302, 0, 0, -524296, 0, 0, -589734, 0, 0, -458766, 0, 0, -458760, 0, 0, -524198, 0, 0, -393230, 0, 0, -393224, 0, 0, -458738, 0, 0, -458734, 0, 0, -458662, 0, 0, -327694, 0, 0, -327688, 0, 0, -393206, 0, 0, -393193, 0, 0, -393126, 0, 0, -262152, 0, 0, -327626, 0, 0, -327590, 0, 0, -196622, 0, 0, -196616, 0, 0, -262133, 0, 0, -262132, 0, 0, -262131, 0, 0, -262123, 0, 0, -262122, 0, 0, -262114, 0, 0, -262113, 0, 0, -262112, 0, 0, -262111, 0, 0, -262110, 0, 0, -262089, 0, 0, -262054, 0, 0, -131086, 0, 0, -131080, 0, 0, -196595, 0, 0, -196594, 0, 0, -196593, 0, 0, -196592, 0, 0, -196591, 0, 0, -196590, 0, 0, -196589, 0, 0, -196588, 0, 0, -196587, 0, 0, -196579, 0, 0, -196578, 0, 0, -196574, 0, 0, -196573, 0, 0, -196572, 0, 0, -196560, 0, 0, -196553, 0, 0, -196552, 0, 0, -196518, 0, 0, -65550, 0, 0, -131044, 0, 0, -131043, 0, 0, -131036, 0, 0, -131035, 0, 0, -131016, 0, 0, -131015, 0, 0, -130993, 0, 0, -130992, 0, 0, -130991, 0, 0, -130982, 0, 0, -14, 0, 0, -65531, 0, 0, -65530, 0, 0, -65509, 0, 0, -65508, 0, 0, -65499, 0, 0, -65498, 0, 0, -65488, 0, 0, -65479, 0, 0, -65478, 0, 0, -65459, 0, 0, -65458, 0, 0, -65457, 0, 0, -65446, 0, 0, 65522, 0, 0, 5, 0, 0, 27, 0, 0, 38, 0, 0, 48, 0, 0, 58, 0, 0, 59, 0, 0, 76, 0, 0, 77, 0, 0, 90, 0, 0, 131058, 0, 0, 65540, 0, 0, 65541, 0, 0, 65562, 0, 0, 65563, 0, 0, 65575, 0, 0, 65584, 0, 0, 65595, 0, 0, 65596, 0, 0, 65611, 0, 0, 65612, 0, 0, 65626, 0, 0, 196594, 0, 0, 131076, 0, 0, 131098, 0, 0, 131111, 0, 0, 131120, 0, 0, 131132, 0, 0, 131133, 0, 0, 131146, 0, 0, 131147, 0, 0, 131162, 0, 0, 262130, 0, 0, 196612, 0, 0, 196634, 0, 0, 196641, 0, 0, 196647, 0, 0, 196656, 0, 0, 196682, 0, 0, 196698, 0, 0, 327666, 0, 0, 327675, 0, 0, 327676, 0, 0, 327677, 0, 0, 327678, 0, 0, 327679, 0, 0, 262147, 0, 0, 262148, 0, 0, 262170, 0, 0, 262177, 0, 0, 262183, 0, 0, 262217, 0, 0, 262234, 0, 0, 393202, 0, 0, 393209, 0, 0, 393210, 0, 0, 393211, 0, 0, 393215, 0, 0, 327680, 0, 0, 327681, 0, 0, 327682, 0, 0, 327683, 0, 0, 327706, 0, 0, 327707, 0, 0, 327714, 0, 0, 327715, 0, 0, 327718, 0, 0, 327719, 0, 0, 327753, 0, 0, 327770, 0, 0, 458738, 0, 0, 458745, 0, 0, 393218, 0, 0, 393227, 0, 0, 393243, 0, 0, 393251, 0, 0, 393252, 0, 0, 393253, 0, 0, 393254, 0, 0, 393289, 0, 0, 393306, 0, 0, 524274, 0, 0, 524280, 0, 0, 524281, 0, 0, 458779, 0, 0, 458780, 0, 0, 458825, 0, 0, 458842, 0, 0, 589810, 0, 0, 589816, 0, 0, 524299, 0, 0, 524316, 0, 0, 524361, 0, 0, 524362, 0, 0, 524378, 0, 0, 655346, 0, 0, 589835, 0, 0, 589852, 0, 0, 589853, 0, 0, 589898, 0, 0, 589914, 0, 0, 720882, 0, 0, 655371, 0, 0, 655389, 0, 0, 655390, 0, 0, 655391, 0, 0, 655434, 0, 0, 655450, 0, 0, 786418, 0, 0, 720907, 0, 0, 720927, 0, 0, 720928, 0, 0, 720944, 0, 0, 720970, 0, 0, 720971, 0, 0, 720986, 0, 0, 851954, 0, 0, 786443, 0, 0, 786464, 0, 0, 786465, 0, 0, 786480, 0, 0, 786507, 0, 0, 786522, 0, 0, 917490, 0, 0, 851979, 0, 0, 852016, 0, 0, 852029, 0, 0, 852043, 0, 0, 852044, 0, 0, 852058, 0, 0, 983026, 0, 0, 917515, 0, 0, 917552, 0, 0, 917564, 0, 0, 917580, 0, 0, 917581, 0, 0, 917594, 0, 0, 1048562, 0, 0, 983051, 0, 0, 983088, 0, 0, 983098, 0, 0, 983099, 0, 0, 983117, 0, 0, 983118, 0, 0, 1114098, 0, 0, 1114111, 0, 0, 1048587, 0, 0, 1048624, 0, 0, 1048633, 0, 0, 1048654, 0, 0, 1048655, 0, 0, 1048666, 0, 0, 1179634, 0, 0, 1114138, 0, 0, 1114139, 0, 0, 1114140, 0, 0, 1114141, 0, 0, 1114142, 0, 0, 1114143, 0, 0, 1114144, 0, 0, 1114145, 0, 0, 1114146, 0, 0, 1114147, 0, 0, 1114148, 0, 0, 1114149, 0, 0, 1114160, 0, 0, 1114168, 0, 0, 1114191, 0, 0, 1114192, 0, 0, 1114202, 0, 0, 1245170, 0, 0, 1245181, 0, 0, 1179685, 0, 0, 1179696, 0, 0, 1179702, 0, 0, 1179703, 0, 0, 1179738, 0, 0, 1310706, 0, 0, 1245221, 0, 0, 1245232, 0, 0, 1245237, 0, 0, 1245238, 0, 0, 1245274, 0, 0, 1376242, 0, 0, 1376251, 0, 0, 1310757, 0, 0, 1310810, 0, 0, 1441778, 0, 0, 1376293, 0, 0, 1376346, 0, 0, 1507314, 0, 0, 1507321, 0, 0, 1441807, 0, 0, 1441808, 0, 0, 1441809, 0, 0, 1441810, 0, 0, 1441811, 0, 0, 1441812, 0, 0, 1441813, 0, 0, 1441814, 0, 0, 1441815, 0, 0, 1441816, 0, 0, 1441817, 0, 0, 1441818, 0, 0, 1441829, 0, 0, 1441830, 0, 0, 1441882, 0, 0, 1572850, 0, 0, 1507366, 0, 0, 1507418, 0, 0, 1638386, 0, 0, 1638391, 0, 0, 1572902, 0, 0, 1572954, 0, 0, 1703922, 0, 0, 1638438, 0, 0, 1638448, 0, 0, 1638490, 0, 0, 1769458, 0, 0, 1703974, 0, 0, 1703984, 0, 0, 1704026, 0, 0, 1834994, 0, 0, 1769520, 0, 0, 1769562, 0, 0, 1900530, 0, 0, 1900532, 0, 0, 1900533, 0, 0, 1900534, 0, 0, 1900535, 0, 0, 1900536, 0, 0, 1900537, 0, 0, 1900538, 0, 0, 1900539, 0, 0, 1900540, 0, 0, 1900541, 0, 0, 1900542, 0, 0, 1900543, 0, 0, 1835008, 0, 0, 1835009, 0, 0, 1835010, 0, 0, 1835011, 0, 0, 1835012, 0, 0, 1835013, 0, 0, 1835014, 0, 0, 1835016, 0, 0, 1835017, 0, 0, 1835018, 0, 0, 1835019, 0, 0, 1835020, 0, 0, 1835021, 0, 0, 1835022, 0, 0, 1835023, 0, 0, 1835024, 0, 0, 1835025, 0, 0, 1835026, 0, 0, 1835027, 0, 0, 1835028, 0, 0, 1835029, 0, 0, 1835030, 0, 0, 1835031, 0, 0, 1835032, 0, 0, 1835033, 0, 0, 1835034, 0, 0, 1835035, 0, 0, 1835036, 0, 0, 1835037, 0, 0, 1835038, 0, 0, 1835040, 0, 0, 1835041, 0, 0, 1835042, 0, 0, 1835043, 0, 0, 1835044, 0, 0, 1835045, 0, 0, 1835046, 0, 0, 1835047, 0, 0, 1835048, 0, 0, 1835049, 0, 0, 1835050, 0, 0, 1835051, 0, 0, 1835052, 0, 0, 1835053, 0, 0, 1835054, 0, 0, 1835055, 0, 0, 1835056, 0, 0, 1835058, 0, 0, 1835059, 0, 0, 1835060, 0, 0, 1835061, 0, 0, 1835062, 0, 0, 1835063, 0, 0, 1835064, 0, 0, 1835065, 0, 0, 1835066, 0, 0, 1835067, 0, 0, 1835068, 0, 0, 1835069, 0, 0, 1835070, 0, 0, 1835071, 0, 0, 1835072, 0, 0, 1835073, 0, 0, 1835074, 0, 0, 1835075, 0, 0, 1835076, 0, 0, 1835077, 0, 0, 1835078, 0, 0, 1835079, 0, 0, 1835080, 0, 0, 1835081, 0, 0, 1835082, 0, 0, 1835083, 0, 0, 1835084, 0, 0, 1835085, 0, 0, 1835086, 0, 0, 1835087, 0, 0, 1835088, 0, 0, 1835089, 0, 0, 1835090, 0, 0, 1835091, 0, 0, 1835092, 0, 0, 1835093, 0, 0, 1835094, 0, 0, 1835095, 0, 0, 1835096, 0, 0, 1835097, 0, 0, 1835098, 0, 0 )

[connection signal="body_entered" from="Player/Area2D" to="Player" method="_on_Area2D_body_entered"]
       GDST               
*  WEBPRIFF�)  WEBPVP8L�)  /��? �iۀ)_"��E���	��@ߒ$Y�$������Ѓ�YxDU�� D���$ɒ$ɶ�-���x\���=3�2�m "b�����#�w�����o�y����D�� �R~ч��W��y)_��/�=������#������_A�ʷ�J?:{t���(���/��z�A��}�(����zs���{z�A��qr/ ��r���x�������<
�Z^���g7gw���U�(�ky+�/���������GA��[���~'��tt ��8�]���R ��z��Awgtt@/��o�A���R@��n��:�'���^���Ry����9� :�z ��R�@��Y@yy��o �pFPg���x)/�Qy�9������ z����KyD�EnE �W��-�"�� z o�oy-����*� � ��(�;��#�: ��{}'��r/r* ��"��;��8��#�: �鿝�BE�WN����lG u����oʽ0�+����� �ۀ��8� ���o���ý( x��;ǣ��mA@�g�����/�r���ȭí�Ǘ�ۂ���
 (����0�* � �r:�����8�n*�
 ����[d�WAa8G A��� ^F@�MPqV@����S��VAAAF@P�V�醎��(`�����x��L&�����*���9O_�⌠�#��  ����}s�UP@��r@D� �@����� 

*� � z#� �&��� h""�Z�
o�/zVd`ny/�6�"��E-��w"Ȁ�
�� �"(r;�yY7@T �(
؀�S����G�U�TAAQ�C�APAl@E-��z�����d@QAT��ԃg��>"� ؈
>@Elp�~���VADa�UP����6�
�6���M,�@�k��>� 2����2�
���7-��-|���6^���[a`��p�ep���|�ب�-Z� -,���x���5D�AQtFQT@9}� ���
>�A���-,��J������ 20��(���0�2�� ���D Q��T�eii��%�Gy��w��~�]�A.tP�QŹ.��9 X�W-|�hY6Zh�X����)�����2�2ʨ�:�u'�8� �ӈ`���s����X>�����Rǿ���*\82�:�܈�2�(��(Z*�����ؖ�Z�|�k���ON�a<Ft�t�aT�CP�X�c)��e�mYڊm�Zh)�ޏ�'���#ʨȅ�r��8����C ղ�a��mY��l����/����#>2:2��:72��p!�""�Mw,Q���U���V˶l-l��{��n��)�:ȅ�r92s#3�p!�-#�wT�Xv���ulՇe�-���w�?�c_���:�0:\�0�p)����x���i!j�вl�ևm�m��[�ϻ�y@��/w��ad���rf���9F���QQD�DK'm[˶�ևm�ԧ���V�2��~��K_UtF�bt�����A.O����B��,mۇmۭv���S��ȟ�/�=u�=�Q����u.���btF�a����C�����ٖ϶˧c[>U�.�\O����72::\���8Ό^�xq3�3*��c�	[ˇ����|�mw�ۧ�������^��?���nΞ�at�q��F�k�F�����Q�U��Y�%��ح����m{[����n��]��;�WΞ:�#��3�Fǹ�kg.g��ӹ��rTG.Ao�`ai�j�m�>����S�mw�m�m[n�e@ ��?! ���^�3��x����5�u1��5:3�8\��2� r~ �e[��O������}v��~�ݶ����7��y�<P�eȐf!m/������Ye�n.X ����hF�J�*D�^�'����>	̟���
*8p�2H�Ұ�IM�.@f.&g��G���{�A�4��~@��Lf�8FPa ����s�<�c D.WV	�1�EK�1k�w�@�Ҭ$$�a)���4�p!:2�  �>�G�� �8����p-$�2�ە�i�H4�+�B7I��e�&��8��Š���!�C��;_�8�Ȩ2\�@����1܁ܑqͦl�	�02�&`'��p��\�a..AA`�����C�DH��l�LN.B���X�ˬ`4��6��`M;1�1�+�3�(�����$0�����D��qI��\ljv2���`W��xB�d1+MX�;���0:�ꠊ�s绿(0O�� 2r��8���NB(�|.��kA 9C�Y�[�t�1�d��2W�����A��I`~��"�܏#��c1�NHL9d{�+MSB���	P$�D0��.�A�\u�GG�;�|�����80\0���ʄ;!1˰&�H�QH����Y�42!IY!fj�,�M�\��d�Qp����7������\�r����;�1�e��f���J$@HH BF6�+�b�ܹ�kp�A����K�n����Q�q�k5W`�Y�@�k�H� K�����5�Y!L�k��qoA�A`�N�'�kA` �qg��1�������@!�+�D&�a�'ff��a�:�#"�((0 ����ޝ�\�r�8:@� ���k#�Y%�Ln� ��5�e�9)	̠Y��rFu�T`x9O�*�  800�0:���!�^���k 4k ��iH�i����+�������\��5:���80�����[?�S��F/K3L��;�4,&aHd&�I��$�D�J4���;+���53��� 2 #�>��O��80�z����p��;�$�I�v�vw6�;�q&�D��׀��茊������ZNAT.t�Ksp���!�21H;�x+q�d ��@� ;�rv9�x�*��0r;��_� w�����\z	� ��I�IH҄�&$�7Fx�%��a B�;+;�^3ץs�u r\��:���T�De��a�k�$͌���@�[ɀ@�nB�W���� �
~����ƑQd�v�������
"�^:�"̢�N��,��q����f4$�)̆d���5*3:�r\��<}_��QP�`����Hi"iV3I����!0�0f= ��@BV�t͝��Vg`��՛
~�r+
"�\�\ׅ ���;a�&@&���)�$�;d���a0i	��\�s9�5�ȅ��ҧ��T`@TT.Q�A,a>^�gB		�&!�� !�H�3�`�i$����A@A���AD�����v�Ġ� ���^B�e��ݘ �҃��!IF��53^33��ȅ�ܜ>���r+7�� ʈ'�PL��w$,�=������$� � p�E���KGD����ʣ�r�Ȩ���x]NSJX�i`�I�q�a�!�	f�a �d�'�8��5��\������_9G�CQ<�sE �$3$�e` ؃d$�;;��$+���5�53#�(�2w�����W` D�A�љ��qe/ʉb)�� ��$0$@22lV�����&��.gf���.�QnP�?��) ���Ɍ�5�	�)��4 3@� �$ym�����&��\3�̌�(��ڿ
r���̌�8��,b�q�!V�B~�f�I޼4H �C�qfƑ�qF�AN�?r�� � *:�2��hZS�b&���$�������#�H��HW��k��SFAQP��"�*�9��.J�.]a<�&q���	�7	�!y�d��6�3�¨3�̡"�_�p*�3238�\Nr/$�����!�"$@!�I�q�d�+	df�3s���匣�#�<���g`�afH,q�$9]�̄�4H	��7�C�LB�L� �u�kD@QA����'*�̌��8+	&aHS`��� !��ڸ5����$C��&Xmf�g�Q�Q���2#*�2{e4�aHfw����e�@Bn HV��fFGq���ADA ����Vv�0 ! ��If����2�g��d�暹t.йFAQ ����2
��:��U��M�$4�+�I`�@B�]>�5��H3IJC��f�RgpTN9FE �*ȭ���0�fhHM��
M qo܇@wBH�	!���
�*a�F�^�:(����ƛ�@g.���Ґ0&J�4�� �&�B�CH� $@����hd͜�k�K.�¹�q�go�x ����*��r�$�;Ab���@��L�BH�ݭaȣ�F��L::"�(�������r+�(�8�Ό��� F�`��!No$��1I��H 9s.�nt9�PENA��7�r+(8̠�"JI&��$B&�q�I�э@H�I�I&(k	�8���0���<*��o�<��\���z5�C�6�4f�cfo%$!�䔸H,f�`�AGGQ�qF@Ny�F��7(�0 �:2()I&M!Bf��LB��$�i�!@�H��#�w"� _N9nE.��! qA�9���/K���[	lVBv\��뚹�A���x�oxs
s�
***3]�rf�Jfwt���:�00�L�� �EADG�y��~�ޡ��s�H�@�@ƭ��f� ?�3	�J��	��#ʠ�� ��O� r瀨�
�����FB ��)?� 3��&�a�X�(
�p���?�q*x�8��È(!	�� F$f �]	0��@��� F��b�GAy��� �#
x��;4��Aaƭ|� �H� �[	�AGQ����k�>�;+@CMg`H � �h�fH ��y$`����ʠʭ7"�H_�  �":S�BH�N�LBH3N�u0�䇆��*#(��w�s��)�x � �[i29�� �� �_7��8�$��$1s�EPNP����� Q A4p��H�� ���d��KK��c�G@�[y��>��S@q��L\��LB�#�x�߶� I	u�f�>�Q�	 ( r�� M�$$� aO��xK I�e
�E|'��/ A9pM�!!�������l`B�J�.����q�r듼�w�.oD�f� I����� ��!$� A��7���`�t��t<؋?k��`�`f@"�ʿ�/䔗�f ����x-������s^�/"�v@20n� �M�ތ[0QP���}�������h�[�����$�dbi��ك�q����t[ֲ�F{{�1���3�����<�HK !�����4�{k�ִ�6�̓�ZO����m�6�)����`g�܂������A�����1���<���?�o��7dRJB @�� �Ok��= k���>x�k���	�$�0y΄��5ZCsod1d0��~(X2I�0I�f����m�2���О�k��E7u�WQ�d�!a�ɟl�XkMk�,��T+ͻ>��g��m�"(`�3$)$HB ����MC]YVWXͼ��8��λ}��j�TA�)$a &>�o5�����e1L��}��|��QG�KT�2�a�)�drf&����ɲ�֍I[&�4�m��]���-��OÌ��y�&���h4-,�Z��d0YLf�!�q�|�k��s�GPPTaHM4e�*�$�ar���id�iZ4vl����&�����ط��F��
�
���<��$����hbZ�Ѡ��c�8�j��������zh�����W��Y�G00���ZC�4da�n;�34���YkQ�k�/���� 
X((�h��p����p�L �N�ؚ�|�X4m�3� ��Ȳ7|�m�6���m�;�	��4�q�Ir�2h�5h=e�eh�F�(ڱvkc�c��� ��`#Zh5�5!C�S �$�d�Ѻ}ܲ�,ב���ј����}mA��ĭ6�@�������2��i�qso��h�Uޗ"c��]/��`���n��LV�@CN�;03!�w��4-Fփn�e�L�t�up<OM�y�w��>������v+��#��$L�[	!��e�vk��\-ױ��I��~[�ۃo�M<@��,�F�f�rX��<�	��2Z��ӖK�ڹ��(��a���v���� ��j?�-`M7 1k�xwf��&F�dy���e1�aY�H"Q�7c�=�}�}<@K��.����2	�03@H�0��͠i���&v��0���%�3�9���B@���ma��2�,@0���$���,�[���ش\�ΠC����iѭ��SG�X ՞,����	�����$f �&�e�i���ֺbz<98T'L3�6����5��9:��Slm��� �Xr&��I $��Ǎ����U�î�T˽�i�O��(b	X�;�jc���Y�0�0ym`o˺�i�tgZ�Zk7��!���I�~ߨ�(8(
�`�=]�3V	@\3$1������ܳ<g��Y��:u�����衹�f_��ql���m[��h"!� ��)	���}���u#�2,1�$ng�J����6�y���@Tl���IL	���!��J�$�����kѕ�;3���Q��S|��KE7�>e����N�`�i$���$�yn�ckh-�	�p�֐8�)�#b}�:��m�]���i�0�;�$k2	1��9��X��n�e�,V�֐SG���ro�6���o�b�>[�Y%�`�܉{��Ȅ&03�ab-�ZM�ir����lddK�8���w�3�_vP�������>,@�q��h��,4;#�b�j�0y^s::�Se1�!�w
������
��.�@b���'�%0!�q��ZˢA�c�j]��(Z�0�����g ������� ���H�$��� ��Ͻ��E�v�����q��Ic�|�E/����g��vӝȐ��� 30@ ɇFCk�������uF�v.����I�T+"d��;O@P7�n��ei�	��$H�� ��F�h-��5�u�.��4��t?�D���|�m�8ㆀ����g��m� WH�L2R�!	�i��ؐ�Z����t�:hsN�(�D�e2̧_�����B K�n�~����d&@ܛM!�����q��5y\�bk����Վ:�R�}!r�zu�,K�j��m`g����܇��4�kО�����uv��s�J�snjBi4��}�ϼ�3�`i#�e�j����l�։$�� !0o 3��&��5��^[��#���������,Ĺ,[��������ʂ�j&�Y(aB�ə���ɲ</aZ��&vtN�$+J�1�����.�~i#�ب�Zbv�0f3w2C�$@ $�=�5Y��r�h�Z��ɚ.��9jJgXY&�[���S7��sY�b������!s'W@ 0�4N����q��r��`�j�^�����U��)������~q����FT�8`mVv(�����mC�	y^V��\i��Z�ׯr�5����9AgJY�}�w���n�?����V�%c��+��3 I�-��a,t�<v�s�&��f5ֺN�8gu*5������X�Oo7n�6���mw $$�f3s�I��=�;kh]g��4M.a�:uNM��Cb���q����ڍ�b����Lp�U� �)��=��qǜ�p�Ls��2�u�2�Fg�ZkA̟����n@Kt�n�a,w)	s�@$]������n�j��l�v6�]/�&Rt��=�e�7�C�h!�X(��skw[�Yw
]� ��h
3$$0�!k�L&k�ʠ�la��V�l9��i�J��ay��}uO�\@P���F�a�Y\�	L"��X�qJ�D���4�4Z�0�����׬�:G��9���"��|<��չpl��'��e�Y��+2�03�	̛�p�D[�[�ed;׹�Yӯ���k�ץ�Z��$#by��}�8(�ǍϺ��l���Gs'0�L��{Àe���-��v̚3��:י��~i����X2�z�p�+�}:��=�sY������5�,MF�;� 	1��yҬ�X�u[�+;W\�K��Iq�rD�nֻo�l�,l��	(���,	��+�a ˰�ę>g�E.����B��ٚ�Sg�cD8����}:��
�X*>
%�|����`�eWa<0�����Y�ٲ�s�5M�/��i;ʡ���l2�wX_�S�B�Mt.[l��a��u��E�E�Y��&p�Y�]����+�W�r��?�´��CI8"b���/n�l����n��ms�w"s%!��h�� 0�fg�u���4��ί��hK)E�X"��y;�/
詻���؊��p�4���$Y�vZV^�\�ʚ3S3��ܧ���+Ӗ�X�D�d��}���MTQKl�����P�|İ�i%1��LsͤY�K����l�Z���V8��"v��֗��Yt,�q��2�;�"$	kr�$@��Ѹ��W�u�\Z�W�v��V8�=D8��zw���) h����-6��,-\%�EKhX!0������BWv��ZW��V.�u,�Y�����<�n�x��
��K�g��˙q�������rf��QD�9�89��9�νs^����y�sN�չ���������ݾ��[���g���k�k���/uFD|r��N�����9��y�:�^��鼜S��y?~�D����p�%3��3sq�83��5���0�R7'/^����s^�:�zu�9�szթ�����?)�x�KQ.�8����q���qNǹ�u���~����x�N���sN�W�����U�^��n��������r�\r1:���s13���332�����J�8�q:���U��9��˫sN�9^��}O_|}���A�/.���r��ˋ��u�A.�AAd�(�G��qz�9ǫW���9��s/��}�?����7�����x1̨��1^��%::���p�=�T�sTǫS�x�rzyչ9������۽�m�J~r���å^�8��83\\�Ʌ����qJu��:�S��9^���:u�w>���/�7ddpt.�a����bEQ��)���T�:�N��N�WN/�:�G�������8:��p��8�p1����Š����ġ�㨓�W�C�S��8/�Q��~�}��7�x�^�a�Q�Q�q�9dT@��#�r�8��<��tz>y9����a��o���:��x;�:��� �s�nʋ����T��SN�K��{���UT�@uuT��:d�P��'�8ч���������)N)qmU.Pq�apT��aDA�s�pn*�)�:^z{�8�K��z�7��PQ�Q��apTn�AEAd����8�:�O���Tџ�o��}��DE�8p.tĹ�A�S�s?(�H�'��)/U��=�;�?���
��x��>x� ��PH���yp��IN*%=|��;?���@a��Q.Pe���AN�CBA9�ܒSNN�EGr�{��~���#��2xr��	#8� s�0)��H�┓�8���mo��~���F��.n`F@�A�S*9��:�#=|���*����0"���������ċ�tD�J)���/������0(*\�� ��&�C�^T��$G$���o�W^
*��*2#2 "޼�!���I*���RǗ�o��ݠ 
"���� 2*����"��$G��DqDJO���twЁ����0�� *�x��#8���$��m?�k9D�D��;�&��^�8�
'�)A~�9P@PAp EPA�[o�G��CP�E�y�'�DTT`@�T��]�%�P���}?E? �9P@@` �[�N%y,BJH������ Dd@@@���|X��E�q?$!EǏ�s� ����(�r
��z��� )�8����,�
 �)
 �*�I�B��3���S�@Pn=|�G��^B�s������S�S��F�oF�rOAǇ}Л�� �V�V�Cn�7#��%�<����'� =@@�^@<��A��ے{�9��w�ݾ�����) �_���}�=�m���x� �z��r���9�9��m���9n{ �x zs���͔�AH�F>����Oxr��w����a��!����q�xr�7���(�����܃�}�����O� �x���y��A>죟���	��oN�D7�|�üM?�K_�w���z�zB7"��4��������w�~=���|���7��q���}�a��8o��
� |> ��ʣ_�n��1�m�G������ݣ|�����o�����5o�y>���<�W�/��=<�7�a��� |u��ٯ��}~7���;zx|��~�4ȿ�w���=|i�O���x�+��� ��� ��?7ȿ�w�����_.���k���           [remap]

importer="texture"
type="StreamTexture"
path="res://.import/Light.png-434aab4fe64b7d35096e8d62977f183c.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Light.png"
dest_files=[ "res://.import/Light.png-434aab4fe64b7d35096e8d62977f183c.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
           GDSC   $      @   =     ������������τ�   ��������Ҷ��   ����������Ҷ   �����¶�   �����϶�   ���������������Ŷ���   ����׶��   �����ض�   ����¶��   ����������������Ҷ��   ϶��   ζ��   ���������������������Ҷ�   ����������������������Ҷ   ���������Ҷ�   �������������Ӷ�   ������¶   ������������������������ض��   ���Ӷ���   ����������¶   �������Ӷ���   �������ض���   ������������������ض   ���������������Ŷ���   ������������Ӷ��   ������Ҷ   �������ض���   �������Ӷ���   �������¶���   ������������Ҷ��   ���ڶ���   �������������������Ӷ���   ������ƶ   �������ׄ�������������Ҷ   ���϶���   ���Ӷ���   �      �        res://Bullet.tscn         up              down      right         left      space               LMB    	   add_child               Enemy         PowerUp                                                     	      
          '      .      /      0      9      ?      H      N      W      ]      f      l      m      n      w      }      ~            �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .   �   /   �   0   �   1   �   2   �   3   �   4     5   
  6     7     8     9     :     ;   #  <   +  =   /  >   7  ?   ;  @   3YY;�  Y;�  �  Y;�  ?P�  QYYY0�  PQV�  -YY0�  P�  QV�  ;�  �  PQ�  �  �  &�  T�	  P�  QV�  �  T�
  �  �  &�  T�	  P�  QV�  �  T�
  �  �  &�  T�	  P�  QV�  �  T�  �  �  &�  T�	  P�  QV�  �  T�  �  �  �  �  &�  T�  P�  QV�  �  �  �	  �  �  �  &�  T�  P�  QV�  �  �  �  �  �  �  T�  PQ�  �  �  P�  �  Q�  �  �  �  P�  PQQYY�  �  &�  T�  P�
  QV�  �  PQ�  �  Y0�  PQV�  ;�  �  T�  PQ�  �  T�  �  PQ�  �  T�  �  �  �  T�  P�  PQR�  P�  R�  QT�  P�  QQ�  �  PQT�  PQT�  P�  R�  Q�  Y0�  PQV�  �  PQT�  PQ�  Y0�   PQV�  )�  �  V�  �  PQYY0�!  P�"  QV�  &�  �"  T�#  V�  �  PQ�  &�  �"  T�#  V�  �   PQY`      GDSC            .      ������������τ�   �����϶�   �������ׄ�������������Ҷ   ���϶���   ���Ӷ���   ���������Ӷ�      Player                                                   	   	   
   
                                                                (      ,      3YYYYYYYYY0�  PQV�  -YYYYYYYY0�  P�  QV�  &�  T�  V�  �  PQY`           [gd_scene load_steps=5 format=2]

[ext_resource path="res://Sprites/Player.png" type="Texture" id=1]
[ext_resource path="res://PowerUp.gd" type="Script" id=2]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 9.8995, 9.8995 )

[sub_resource type="RectangleShape2D" id=2]
extents = Vector2( 14.1421, 14.1421 )

[node name="PowerUp" type="KinematicBody2D"]
scale = Vector2( 0.5, 0.5 )
script = ExtResource( 2 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
position = Vector2( 0, -6.55651e-07 )
rotation = 0.785398
scale = Vector2( 1, 1 )
shape = SubResource( 1 )

[node name="Sprite" type="Sprite" parent="."]
modulate = Color( 1, 0.960784, 0, 1 )
rotation = 0.785398
scale = Vector2( 0.4, 0.4 )
texture = ExtResource( 1 )

[node name="Area2D" type="Area2D" parent="."]

[node name="CollisionShape2D" type="CollisionShape2D" parent="Area2D"]
position = Vector2( -6.7435e-07, 4.76837e-07 )
rotation = 0.785398
scale = Vector2( 1, 1 )
shape = SubResource( 2 )

[connection signal="body_entered" from="Area2D" to="." method="_on_Area2D_body_entered"]
      GDST@   @            *   WEBPRIFF   WEBPVP8L   /?� ���������            [remap]

importer="texture"
type="StreamTexture"
path="res://.import/Player.png-0662117005c6b9039deb63a286c8efe4.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Sprites/Player.png"
dest_files=[ "res://.import/Player.png-0662117005c6b9039deb63a286c8efe4.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
             [gd_resource type="TileSet" load_steps=4 format=2]

[ext_resource path="res://Sprites/Player.png" type="Texture" id=1]

[sub_resource type="OccluderPolygon2D" id=1]
polygon = PoolVector2Array( -32, -32, 32, -32, 32, 32, -32, 32 )

[sub_resource type="RectangleShape2D" id=2]
extents = Vector2( 31.5, 32 )

[resource]
0/name = "Sprite"
0/texture = ExtResource( 1 )
0/tex_offset = Vector2( 0, 0 )
0/modulate = Color( 0, 0, 0, 1 )
0/region = Rect2( 0, 0, 64, 64 )
0/tile_mode = 0
0/occluder_offset = Vector2( 32, 32 )
0/occluder = SubResource( 1 )
0/navigation_offset = Vector2( 32, 32 )
0/shape_offset = Vector2( 31.5, 32 )
0/shape_transform = Transform2D( 1, 0, 0, 1, 31.5, 32 )
0/shape = SubResource( 2 )
0/shape_one_way = false
0/shape_one_way_margin = 1.0
0/shapes = [ {
"autotile_coord": Vector2( 0, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 2 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 31.5, 32 )
} ]
0/z_index = 0
           [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 2
background_sky = SubResource( 1 )
             GDST@   @            �  WEBPRIFF�  WEBPVP8L�  /?����m��������_"�0@��^�"�v��s�}� �W��<f��Yn#I������wO���M`ҋ���N��m:�
��{-�4b7DԧQ��A �B�P��*B��v��
Q�-����^R�D���!(����T�B�*�*���%E["��M�\͆B�@�U$R�l)���{�B���@%P����g*Ųs�TP��a��dD
�6�9�UR�s����1ʲ�X�!�Ha�ߛ�$��N����i�a΁}c Rm��1��Q�c���fdB�5������J˚>>���s1��}����>����Y��?�TEDױ���s���\�T���4D����]ׯ�(aD��Ѓ!�a'\�G(��$+c$�|'�>����/B��c�v��_oH���9(l�fH������8��vV�m�^�|�m۶m�����q���k2�='���:_>��������á����-wӷU�x�˹�fa���������ӭ�M���SƷ7������|��v��v���m�d���ŝ,��L��Y��ݛ�X�\֣� ���{�#3���
�6������t`�
��t�4O��ǎ%����u[B�����O̲H��o߾��$���f���� �H��\��� �kߡ}�~$�f���N\�[�=�'��Nr:a���si����(9Lΰ���=����q-��W��LL%ɩ	��V����R)�=jM����d`�ԙHT�c���'ʦI��DD�R��C׶�&����|t Sw�|WV&�^��bt5WW,v�Ş�qf���+���Jf�t�s�-BG�t�"&�Ɗ����׵�Ջ�KL�2)gD� ���� NEƋ�R;k?.{L�$�y���{'��`��ٟ��i��{z�5��i������c���Z^�
h�+U�mC��b��J��uE�c�����h��}{�����i�'�9r�����ߨ򅿿��hR�Mt�Rb���C�DI��iZ�6i"�DN�3���J�zڷ#oL����Q �W��D@!'��;�� D*�K�J�%"�0�����pZԉO�A��b%�l�#��$A�W�A�*^i�$�%a��rvU5A�ɺ�'a<��&�DQ��r6ƈZC_B)�N�N(�����(z��y�&H�ض^��1Z4*,RQjԫ׶c����yq��4���?�R�����0�6f2Il9j��ZK�4���է�0؍è�ӈ�Uq�3�=[vQ�d$���±eϘA�����R�^��=%:�G�v��)�ǖ/��RcO���z .�ߺ��S&Q����o,X�`�����|��s�<3Z��lns'���vw���Y��>V����G�nuk:��5�U.�v��|����W���Z���4�@U3U�������|�r�?;�
         [remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://icon.png"
dest_files=[ "res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
           [remap]

path="res://Enemy.gdc"
[remap]

path="res://Player.gdc"
               [remap]

path="res://PowerUp.gdc"
              �PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx��ytTU��?�ի%���@ȞY1JZ �iA�i�[P��e��c;�.`Ow+4�>�(}z�EF�Dm�:�h��IHHB�BR!{%�Zߛ?��	U�T�
���:��]~�������-�	Ì�{q*�h$e-
�)��'�d�b(��.�B�6��J�ĩ=;���Cv�j��E~Z��+��CQ�AA�����;�.�	�^P	���ARkUjQ�b�,#;�8�6��P~,� �0�h%*QzE� �"��T��
�=1p:lX�Pd�Y���(:g����kZx ��A���띊3G�Di� !�6����A҆ @�$JkD�$��/�nYE��< Q���<]V�5O!���>2<��f��8�I��8��f:a�|+�/�l9�DEp�-�t]9)C�o��M~�k��tw�r������w��|r�Ξ�	�S�)^� ��c�eg$�vE17ϟ�(�|���Ѧ*����
����^���uD�̴D����h�����R��O�bv�Y����j^�SN֝
������PP���������Y>����&�P��.3+�$��ݷ�����{n����_5c�99�fbסF&�k�mv���bN�T���F���A�9�
(.�'*"��[��c�{ԛmNު8���3�~V� az
�沵�f�sD��&+[���ke3o>r��������T�]����* ���f�~nX�Ȉ���w+�G���F�,U�� D�Դ0赍�!�B�q�c�(
ܱ��f�yT�:��1�� +����C|��-�T��D�M��\|�K�j��<yJ, ����n��1.FZ�d$I0݀8]��Jn_� ���j~����ցV���������1@M�)`F�BM����^x�>
����`��I�˿��wΛ	����W[�����v��E�����u��~��{R�(����3���������y����C��!��nHe�T�Z�����K�P`ǁF´�nH啝���=>id,�>�GW-糓F������m<P8�{o[D����w�Q��=N}�!+�����-�<{[���������w�u�L�����4�����Uc�s��F�륟��c�g�u�s��N��lu���}ן($D��ת8m�Q�V	l�;��(��ڌ���k�
s\��JDIͦOzp��مh����T���IDI���W�Iǧ�X���g��O��a�\:���>����g���%|����i)	�v��]u.�^�:Gk��i)	>��T@k{'	=�������@a�$zZ�;}�󩀒��T�6�Xq&1aWO�,&L�cřT�4P���g[�
p�2��~;� ��Ҭ�29�xri� ��?��)��_��@s[��^�ܴhnɝ4&'
��NanZ4��^Js[ǘ��2���x?Oܷ�$��3�$r����Q��1@�����~��Y�Qܑ�Hjl(}�v�4vSr�iT�1���f������(���A�ᥕ�$� X,�3'�0s����×ƺk~2~'�[�ё�&F�8{2O�y�n�-`^/FPB�?.�N�AO]]�� �n]β[�SR�kN%;>�k��5������]8������=p����Ցh������`}�
�J�8-��ʺ����� �fl˫[8�?E9q�2&������p��<�r�8x� [^݂��2�X��z�V+7N����V@j�A����hl��/+/'5�3�?;9
�(�Ef'Gyҍ���̣�h4RSS� ����������j�Z��jI��x��dE-y�a�X�/�����:��� +k�� �"˖/���+`��],[��UVV4u��P �˻�AA`��)*ZB\\��9lܸ�]{N��礑]6�Hnnqqq-a��Qxy�7�`=8A�Sm&�Q�����u�0hsPz����yJt�[�>�/ޫ�il�����.��ǳ���9��
_
��<s���wT�S������;F����-{k�����T�Z^���z�!t�۰؝^�^*���؝c
���;��7]h^
��PA��+@��gA*+�K��ˌ�)S�1��(Ե��ǯ�h����õ�M�`��p�cC�T")�z�j�w��V��@��D��N�^M\����m�zY��C�Ҙ�I����N�Ϭ��{�9�)����o���C���h�����ʆ.��׏(�ҫ���@�Tf%yZt���wg�4s�]f�q뗣�ǆi�l�⵲3t��I���O��v;Z�g��l��l��kAJѩU^wj�(��������{���)�9�T���KrE�V!�D���aw���x[�I��tZ�0Y �%E�͹���n�G�P�"5FӨ��M�K�!>R���$�.x����h=gϝ�K&@-F��=}�=�����5���s �CFwa���8��u?_����D#���x:R!5&��_�]���*�O��;�)Ȉ�@�g�����ou�Q�v���J�G�6�P�������7��-���	պ^#�C�S��[]3��1���IY��.Ȉ!6\K�:��?9�Ev��S]�l;��?/� ��5�p�X��f�1�;5�S�ye��Ƅ���,Da�>�� O.�AJL(���pL�C5ij޿hBƾ���ڎ�)s��9$D�p���I��e�,ə�+;?�t��v�p�-��&����	V���x���yuo-G&8->�xt�t������Rv��Y�4ZnT�4P]�HA�4�a�T�ǅ1`u\�,���hZ����S������o翿���{�릨ZRq��Y��fat�[����[z9��4�U�V��Anb$Kg������]������8�M0(WeU�H�\n_��¹�C�F�F�}����8d�N��.��]���u�,%Z�F-���E�'����q�L�\������=H�W'�L{�BP0Z���Y�̞���DE��I�N7���c��S���7�Xm�/`�	�+`����X_��KI��^��F\�aD�����~�+M����ㅤ��	SY��/�.�`���:�9Q�c �38K�j�0Y�D�8����W;ܲ�pTt��6P,� Nǵ��Æ�:(���&�N�/ X��i%�?�_P	�n�F�.^�G�E���鬫>?���"@v�2���A~�aԹ_[P, n��N������_rƢ��    IEND�B`�       ECFG      application/config/name         Test   application/run/main_scene         res://Level.tscn   application/config/icon         res://icon.png     input/up�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode          physical_scancode      W      unicode           echo          script         input/right�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode          physical_scancode      D      unicode           echo          script      
   input/down�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode          physical_scancode      S      unicode           echo          script      
   input/left�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode          physical_scancode      A      unicode           echo          script         input/space�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode          physical_scancode             unicode           echo          script      	   input/LMB�              events              InputEventMouseButton         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           button_mask           position              global_position               factor       �?   button_index         pressed           doubleclick           script            deadzone      ?)   physics/common/enable_pause_aware_picking         )   rendering/environment/default_environment          res://default_env.tres     