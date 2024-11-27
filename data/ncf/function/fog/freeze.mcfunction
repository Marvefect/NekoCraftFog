execute unless entity @e[tag=Freeze] run summon marker ~ ~ ~ {Tags:[Freeze]}
scoreboard players reset limit ncf.values
$execute if score @s ncf.x >= min_radius ncf.values run tp @e[tag=Freeze] $(radius) 200 ~
$execute if score @s ncf.z >= min_radius ncf.values run tp @e[tag=Freeze] ~ 200 $(radius)
$execute if score @s ncf.x <= min_neg_radius ncf.values run tp @e[tag=Freeze] $(neg_radius) 200 ~
$execute if score @s ncf.z <= min_neg_radius ncf.values run tp @e[tag=Freeze] ~ 200 $(neg_radius)
execute as @e[tag=Freeze] at @s positioned ~ ~ ~ run function ncf:fog/update_blocks with storage minecraft:ncf.stats