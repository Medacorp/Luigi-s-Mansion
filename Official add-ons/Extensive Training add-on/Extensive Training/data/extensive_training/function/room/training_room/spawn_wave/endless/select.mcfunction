execute unless score #training_room Wave matches 2147483647 run scoreboard players add #training_room Wave 1
$execute positioned ~ ~-3 ~ run function #extensive_training:room/training_room/endless {platform:$(platform)}
tag @e[tag=select_ghost,sort=random,limit=1] add selected
$function #extensive_training:room/training_room/endless {platform:$(platform)}
kill @e[tag=select_ghost]