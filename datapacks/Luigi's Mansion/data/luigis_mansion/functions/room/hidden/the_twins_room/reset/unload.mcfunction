tag @e[scores={Room=49},type=!minecraft:player,tag=!model_piece] add remove_from_existence
scoreboard players reset #the_twins_room Ticking
execute unless score #the_twins_room Wave matches 4 run scoreboard players reset #the_twins_room Wave