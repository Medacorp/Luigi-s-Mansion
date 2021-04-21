execute unless score #washroom_2 Ticking matches 1 run function #luigis_mansion:room/normal/washroom_2/load
execute as @a[gamemode=!spectator,x=660,y=19,z=34,dx=8,dy=8,dz=14] unless entity @s[scores={Room=32}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[type=!minecraft:item_frame,x=660,y=19,z=34,dx=8,dy=8,dz=14] run scoreboard players set @s Room 32

scoreboard players set @e[scores={Room=32},type=!minecraft:area_effect_cloud] MirrorX 661

execute as @a[gamemode=!spectator,x=660,y=19,z=34,dx=8,dy=8,dz=14] run function luigis_mansion:room/normal/washroom_2/tick_per_player

function #luigis_mansion:room/normal/washroom_2/interactions/room

clone 664 21 44 664 21 44 658 21 44

function luigis_mansion:room/normal/washroom_2/ghosts

function luigis_mansion:room/normal/door/hallway_washroom_2