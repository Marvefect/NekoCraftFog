#execute unless entity @e[tag=Freeze] run summon marker ~ ~ ~ {Tags:[Freeze]}
$tp @e[tag=Freeze] $(radius) 200 ~
execute if score @s ncf.x >= min_radius ncf.values as @e[tag=Freeze] at @s run function ncf:fog/update_blocks with storage minecraft:ncf.stats