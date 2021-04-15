execute unless score #washroom_1 Ticking matches 1 run function #luigis_mansion:room/hidden/washroom_1/load
execute as @a[x=664,y=102,z=-23,dx=8,dy=6,dz=14] unless entity @s[scores={Room=15}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[type=!minecraft:item_frame,x=664,y=102,z=-23,dx=8,dy=6,dz=14] run scoreboard players set @s Room 15

execute as @a[gamemode=!spectator,x=666,y=102,z=-21,dx=4,dy=6,dz=10] run function luigis_mansion:room/hidden/washroom_1/tick_per_player

function #luigis_mansion:room/hidden/washroom_1/interactions/room

function luigis_mansion:room/hidden/washroom_1/ghosts

function luigis_mansion:room/hidden/door/main_hallway_washroom_1