execute if score @s ncf.x >= radius ncf.values run function ncf:fog/apply_debuff
execute if score @s ncf.x <= neg_radius ncf.values run function ncf:fog/apply_debuff
execute if score @s ncf.z >= radius ncf.values run function ncf:fog/apply_debuff
execute if score @s ncf.z <= neg_radius ncf.values run function ncf:fog/apply_debuff
execute if score display ncf.values matches 1 run function ncf:fog/display with storage minecraft:ncf.stats
execute if score display ncf.values matches 1 run function ncf:fog/freeze with storage minecraft:ncf.stats