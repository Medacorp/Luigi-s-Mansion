execute unless score #projection_room Ticking matches 1 run function #luigis_mansion:room/hidden/projection_room/load
execute as @a[gamemode=!spectator,x=673,y=10,z=-31,dx=15,dy=8,dz=16] unless entity @s[scores={Room=48}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[tag=!spectator,x=673,y=10,z=-31,dx=15,dy=8,dz=16] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 48
scoreboard players set #temp Room 48

execute if block 686 12 -23 minecraft:light[level=15] run scoreboard players set @e[scores={Room=48}] LightX 68500
execute if block 686 12 -23 minecraft:light[level=15] run scoreboard players set @e[scores={Room=48}] LightY 1230
execute if block 686 12 -23 minecraft:light[level=15] run scoreboard players set @e[scores={Room=48}] LightZ -2250

execute as @a[gamemode=!spectator,scores={Room=48}] run function luigis_mansion:room/hidden/projection_room/tick_per_player

function #luigis_mansion:room/hidden/projection_room/interactions/room

scoreboard players set #temp Room 48
execute as @a[gamemode=!spectator] run function #luigis_mansion:get_same_room
scoreboard players reset #temp Room
execute if entity @a[tag=same_room,limit=1] run function luigis_mansion:room/hidden/projection_room/ghosts
tag @a[tag=same_room] remove same_room

function luigis_mansion:room/hidden/door/billiards_room_projection_room