execute if score @s ncf.x >= radius ncf.values run tag @s add ncf.in_fog1
execute if score @s ncf.x <= radius ncf.values run tag @s remove ncf.in_fog1
execute if score @s ncf.x <= neg_radius ncf.values run tag @s add ncf.in_fog1
execute if score @s ncf.x >= neg_radius ncf.values run tag @s remove ncf.in_fog1
execute if score @s ncf.z >= radius ncf.values run tag @s add ncf.in_fog2
execute if score @s ncf.z <= radius ncf.values run tag @s remove ncf.in_fog2
execute if score @s ncf.z <= neg_radius ncf.values run tag @s add ncf.in_fog2
execute if score @s ncf.z >= neg_radius ncf.values run tag @s remove ncf.in_fog2

effect give @s[tag=ncf.in_fog1] blindness 2 255 true
effect give @s[tag=ncf.in_fog1] weakness 2 3 true
effect give @s[tag=ncf.in_fog1] slowness 2 3 true
execute if predicate ncf:periodic_tick run damage @s[tag=ncf.in_fog1] 1 freeze
effect give @s[tag=ncf.in_fog2] blindness 2 255 true
effect give @s[tag=ncf.in_fog2] weakness 2 3 true
effect give @s[tag=ncf.in_fog2] slowness 2 3 true
execute if predicate ncf:periodic_tick run damage @s[tag=ncf.in_fog2] 1 freeze