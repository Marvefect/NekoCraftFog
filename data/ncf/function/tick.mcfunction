execute as @a store result score @s ncf.x run data get entity @s Pos[0] 1
execute as @a store result score @s ncf.z run data get entity @s Pos[2] 1
scoreboard players reset neg_radius ncf.values
scoreboard players operation neg_radius ncf.values = radius ncf.values
scoreboard players operation neg_radius ncf.values *= -1 ncf.values
scoreboard players operation min_radius ncf.values = radius ncf.values
scoreboard players operation min_radius ncf.values -= 100 ncf.values
scoreboard players operation min_neg_radius ncf.values = neg_radius ncf.values
scoreboard players operation min_neg_radius ncf.values += 100 ncf.values
scoreboard players operation freeze_radius ncf.values = radius ncf.values
execute store result storage ncf.stats freeze_radius int 1 run scoreboard players operation freeze_radius ncf.values -= 10 ncf.values
scoreboard players operation freeze_neg_radius ncf.values = neg_radius ncf.values
execute store result storage ncf.stats freeze_neg_radius int 1 run scoreboard players operation freeze_neg_radius ncf.values += 10 ncf.values
execute store result storage ncf.stats radius float 1 run scoreboard players get radius ncf.values
execute store result storage ncf.stats neg_radius float 1 run scoreboard players get neg_radius ncf.values

execute as @e[tag=ncf.fogdisplay] at @s unless entity @a[distance=..101] run kill @s