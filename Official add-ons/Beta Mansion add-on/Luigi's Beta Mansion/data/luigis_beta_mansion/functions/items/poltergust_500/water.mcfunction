execute as @e[distance=..3,tag=!furniture,tag=!model_piece,tag=!hidden,tag=!item,tag=!no_poltergust_interaction] run function #luigis_beta_mansion:items/poltergust_500/effect_on_entity/water
function #luigis_beta_mansion:items/poltergust_500/effect_on_block/water
teleport @e[tag=interact,limit=1] ~ ~ ~ ~ ~
execute as @e[tag=same_room,tag=furniture,tag=searchable_by_water,tag=!hit] run function luigis_beta_mansion:items/poltergust_500/effect_on_furniture/water