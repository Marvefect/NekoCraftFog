execute as @a store result score @s ncf.x run data get entity @s Pos[0] 1
execute as @a store result score @s ncf.z run data get entity @s Pos[2] 1
execute unless score prev_radius ncf.values = radius ncf.values run function ncf:calc
execute store result storage minecraft:ncf.stats fog_damage int 1 run scoreboard players get fog_damage ncf.values

execute as @e[tag=ncf.fogdisplay] at @s unless entity @a[distance=..101] run kill @s