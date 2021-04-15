execute unless score #washroom_2 Ticking matches 1 run function #luigis_mansion:room/normal/washroom_2/load
execute as @a[x=664,y=111,z=24,dx=8,dy=6,dz=14] unless entity @s[scores={Room=32}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[type=!minecraft:item_frame,x=664,y=111,z=24,dx=8,dy=6,dz=14] run scoreboard players set @s Room 32

execute as @a[gamemode=!spectator,x=666,y=111,z=26,dx=4,dy=6,dz=10] run function luigis_mansion:room/normal/washroom_2/tick_per_player

function #luigis_mansion:room/normal/washroom_2/interactions/room

function luigis_mansion:room/normal/washroom_2/ghosts

function luigis_mansion:room/normal/door/hallway_washroom_2