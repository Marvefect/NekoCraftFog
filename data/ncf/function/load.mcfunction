scoreboard objectives add ncf.x dummy
scoreboard objectives add ncf.z dummy
scoreboard objectives add ncf.values dummy
scoreboard players set -1 ncf.values -1
scoreboard players set 10 ncf.values 10
scoreboard players set 50 ncf.values 50
scoreboard players set 100 ncf.values 100
execute unless score radius ncf.values matches 1.. run scoreboard players set radius ncf.values 10000