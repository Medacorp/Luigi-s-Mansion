tag @e[scores={Room=7},type=!minecraft:player,tag=!model_piece] add remove_from_existence
scoreboard players reset #hallway_2
execute if score #the_twins_room Wave matches 4 run scoreboard players reset #the_twins_room Wave