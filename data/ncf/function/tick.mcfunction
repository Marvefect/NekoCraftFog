execute as @a store result score @s ncf.x run data get entity @s Pos[0] 1
execute as @a store result score @s ncf.z run data get entity @s Pos[2] 1
scoreboard players reset neg_radius ncf.values
scoreboard players operation neg_radius ncf.values = radius ncf.values
scoreboard players operation neg_radius ncf.values *= -1 ncf.values