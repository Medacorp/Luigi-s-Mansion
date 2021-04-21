execute unless score #billiards_room Ticking matches 1 run function #luigis_mansion:room/normal/billiards_room/load
execute as @a[gamemode=!spectator,x=673,y=10,z=64,dx=15,dy=8,dz=27] unless entity @s[scores={Room=37}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[type=!minecraft:item_frame,x=673,y=10,z=64,dx=15,dy=8,dz=27] run scoreboard players set @s Room 37

scoreboard players set @e[scores={Room=37},type=!minecraft:area_effect_cloud] MirrorX 674

execute as @a[gamemode=!spectator,x=673,y=10,z=64,dx=15,dy=8,dz=27] run function luigis_mansion:room/normal/billiards_room/tick_per_player

function #luigis_mansion:room/normal/billiards_room/interactions/room

function luigis_mansion:room/normal/billiards_room/ghosts

function luigis_mansion:room/normal/door/main_hallway_billiards_room
function luigis_mansion:room/normal/door/billiards_room_projection_room