execute unless score #rec_room Ticking matches 1 run function #luigis_mansion:room/normal/rec_room/load
execute as @a[gamemode=!spectator,x=637,y=10,z=-62,dx=12,dy=8,dz=33] unless entity @s[scores={Room=28}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[type=!minecraft:item_frame,x=637,y=10,z=-62,dx=12,dy=8,dz=33] run scoreboard players set @s Room 28

scoreboard players set @e[scores={Room=28},type=!minecraft:area_effect_cloud] MirrorX 638

execute as @a[gamemode=!spectator,x=637,y=10,z=-62,dx=12,dy=8,dz=33] run function luigis_mansion:room/normal/rec_room/tick_per_player

function #luigis_mansion:room/normal/rec_room/interactions/room

function luigis_mansion:room/normal/rec_room/ghosts

function luigis_mansion:room/normal/door/courtyard_rec_room
function luigis_mansion:room/normal/door/rec_room_main_stairs