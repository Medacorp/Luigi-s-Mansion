execute as @e[distance=..3,tag=!furniture,tag=!model_piece,tag=!hidden,tag=!item_is_pulled,tag=!no_poltergust_interaction] run function #luigis_mansion:items/poltergust_3000/effect_on_entity/vacuum
function #luigis_mansion:items/poltergust_3000/effect_on_block/vacuum
teleport @e[tag=interact,limit=1] ~ ~ ~ ~ ~
execute store result score #interact PosX run data get entity @e[tag=interact,limit=1] Pos[0] 10
execute store result score #interact PosY run data get entity @e[tag=interact,limit=1] Pos[1] 10
execute store result score #interact PosZ run data get entity @e[tag=interact,limit=1] Pos[2] 10
execute as @e[tag=same_room,tag=furniture,tag=searchable_by_vacuum,tag=!hit] run function luigis_mansion:items/poltergust_3000/effect_on_furniture/vacuum