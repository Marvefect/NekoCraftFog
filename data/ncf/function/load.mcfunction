scoreboard objectives add ncf.x dummy
scoreboard objectives add ncf.z dummy
scoreboard objectives add ncf.values dummy
execute unless score radius ncf.values matches 1.. run scoreboard players set radius ncf.values 10000
execute unless score display ncf.values matches -1.. run scoreboard players set display ncf.values 1
execute unless score fog_damage ncf.values matches -1.. run scoreboard players set fog_damage ncf.values 1