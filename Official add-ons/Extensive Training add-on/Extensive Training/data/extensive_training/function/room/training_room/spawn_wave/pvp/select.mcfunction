execute positioned ~ ~-3 ~ run function #extensive_training:room/training_room/pvp
tag @e[tag=select_ghost,sort=random,limit=1] add selected
function #extensive_training:room/training_room/pvp
kill @e[tag=select_ghost]