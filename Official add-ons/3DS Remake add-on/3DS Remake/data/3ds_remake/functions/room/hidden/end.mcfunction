execute unless score #loaded_exterior Selected matches -1 in minecraft:overworld run function luigis_mansion:room/load_exterior/empty
function luigis_mansion:entities/player/animation/set/reset
tag @a remove wall_warp
execute as @a run function luigis_mansion:room/ghost_portrificationizer_room/warp_to