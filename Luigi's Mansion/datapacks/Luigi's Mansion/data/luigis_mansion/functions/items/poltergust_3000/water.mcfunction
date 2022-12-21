function #luigis_mansion:items/poltergust_3000/effect_on_block/water
execute positioned ^ ^0.5 ^ run function #luigis_mansion:items/poltergust_3000/effect_on_block/water
execute positioned ^ ^-0.5 ^ run function #luigis_mansion:items/poltergust_3000/effect_on_block/water
execute positioned ^0.5 ^ ^ run function #luigis_mansion:items/poltergust_3000/effect_on_block/water
execute positioned ^-0.5 ^ ^ run function #luigis_mansion:items/poltergust_3000/effect_on_block/water
teleport @e[tag=interact,limit=1] ~ ~ ~ ~ ~
execute store result score #interact PosX run data get entity @e[tag=interact,limit=1] Pos[0] 10
execute store result score #interact PosY run data get entity @e[tag=interact,limit=1] Pos[1] 10
execute store result score #interact PosZ run data get entity @e[tag=interact,limit=1] Pos[2] 10
execute as @e[tag=same_room,tag=!model_piece,tag=!hidden,tag=!item,tag=affected_by_water,tag=!hit_by_poltergust] run function luigis_mansion:items/poltergust_3000/effect_on_entity/water