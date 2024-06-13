function #luigis_mansion:items/poltergust_3000/effect_on_block/ice
execute positioned ^ ^0.5 ^ run function #luigis_mansion:items/poltergust_3000/effect_on_block/ice
execute positioned ^ ^-0.5 ^ run function #luigis_mansion:items/poltergust_3000/effect_on_block/ice
execute positioned ^0.5 ^ ^ run function #luigis_mansion:items/poltergust_3000/effect_on_block/ice
execute positioned ^-0.5 ^ ^ run function #luigis_mansion:items/poltergust_3000/effect_on_block/ice
teleport @e[tag=interact,limit=1] ~ ~ ~ ~ ~
execute store result score #interact PositionX run data get entity @e[tag=interact,limit=1] Pos[0] 10
execute store result score #interact PositionY run data get entity @e[tag=interact,limit=1] Pos[1] 10
execute store result score #interact PositionZ run data get entity @e[tag=interact,limit=1] Pos[2] 10
execute as @e[tag=same_room,tag=!model_piece,tag=affected_by_ice,tag=!hit_by_poltergust] at @s run function luigis_mansion:items/poltergust_3000/effect_on_entity/root_ice