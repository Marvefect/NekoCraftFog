# y = 126
$execute if score @s ncf.x >= min_radius ncf.values run fill $(freeze_radius) 126 ~50 $(radius) 126 ~-50 packed_ice replace water
$execute if score @s ncf.x <= min_neg_radius ncf.values run fill $(freeze_neg_radius) 126 ~50 $(radius) 126 ~-50 packed_ice replace water
$execute if score @s ncf.z >= min_radius ncf.values run fill ~50 126 $(radius) ~-50 126 $(freeze_radius) packed_ice replace water
$execute if score @s ncf.z <= min_neg_radius ncf.values run fill ~50 126 $(radius) ~-50 126 $(freeze_neg_radius) packed_ice replace water