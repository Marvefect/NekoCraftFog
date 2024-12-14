execute if score delta_radius ncf.values matches 1.. run scoreboard players remove radius ncf.values 1
execute if score delta_radius ncf.values matches 1.. run scoreboard players remove delta_radius ncf.values 1

execute if score delta_radius ncf.values matches ..-1 run scoreboard players add radius ncf.values 1
execute if score delta_radius ncf.values matches ..-1 run scoreboard players add delta_radius ncf.values 1

execute if score delta_radius ncf.values matches 0 run scoreboard players reset delta_radius ncf.values