scoreboard players set -1 ncf.values -1
scoreboard players set 10 ncf.values 10
scoreboard players set 50 ncf.values 50
scoreboard players set 100 ncf.values 100
scoreboard players reset neg_radius ncf.values
scoreboard players operation prev_radius ncf.values = radius ncf.values
scoreboard players operation neg_radius ncf.values = radius ncf.values
scoreboard players operation neg_radius ncf.values *= -1 ncf.values
scoreboard players operation min_radius ncf.values = radius ncf.values
scoreboard players operation min_radius ncf.values -= 100 ncf.values
scoreboard players operation min_neg_radius ncf.values = neg_radius ncf.values
scoreboard players operation min_neg_radius ncf.values += 100 ncf.values
scoreboard players operation freeze_radius ncf.values = radius ncf.values
scoreboard players operation freeze_neg_radius ncf.values = neg_radius ncf.values
execute store result storage ncf.stats freeze_radius int 1 run scoreboard players operation freeze_radius ncf.values -= 10 ncf.values
execute store result storage ncf.stats freeze_neg_radius int 1 run scoreboard players operation freeze_neg_radius ncf.values += 10 ncf.values
execute store result storage ncf.stats radius float 1 run scoreboard players get radius ncf.values
execute store result storage ncf.stats neg_radius float 1 run scoreboard players get neg_radius ncf.values
function ncf:cleanup