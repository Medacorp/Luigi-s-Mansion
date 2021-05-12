execute unless score #projection_room Ticking matches 1 run function #luigis_mansion:room/hidden/projection_room/load
execute as @a[gamemode=!spectator,x=673,y=10,z=-31,dx=15,dy=8,dz=16] unless entity @s[scores={Room=38}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[type=!minecraft:item_frame,x=673,y=10,z=-31,dx=15,dy=8,dz=16] run scoreboard players set @s Room 38

execute as @a[gamemode=!spectator,x=673,y=10,z=-31,dx=15,dy=8,dz=16] run function luigis_mansion:room/hidden/projection_room/tick_per_player

function #luigis_mansion:room/hidden/projection_room/interactions/room

function luigis_mansion:room/hidden/projection_room/ghosts

function luigis_mansion:room/hidden/door/billiards_room_projection_room