execute as @e[distance=..3,tag=!furniture,tag=!model_piece,tag=!hidden,tag=!item,tag=!no_poltergust_interaction] run function #luigis_mansion:items/poltergust_3000/effect_on_entity/fire
function #luigis_mansion:items/poltergust_3000/effect_on_block/fire
teleport @e[tag=interact,limit=1] ~ ~ ~ ~ ~
execute as @e[tag=same_room,tag=furniture,tag=!hit] run function luigis_mansion:items/poltergust_3000/effect_on_furniture/fire