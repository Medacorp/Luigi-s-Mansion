execute unless score #ball_room Ticking matches 1 run function #luigis_mansion:room/hidden/ball_room/load
execute as @a[gamemode=!spectator,x=695,y=10,z=52,dx=17,dy=8,dz=33] unless entity @s[scores={Room=17}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[tag=!spectator,x=695,y=10,z=52,dx=17,dy=8,dz=33] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 17
scoreboard players set #temp Room 17

execute as @a[gamemode=!spectator,scores={Room=17}] run function luigis_mansion:room/hidden/ball_room/tick_per_player

function #luigis_mansion:room/hidden/ball_room/interactions/room

scoreboard players set #temp Room 17
execute as @a[gamemode=!spectator] run function #luigis_mansion:get_same_room
scoreboard players reset #temp Room
execute if entity @a[tag=same_room,limit=1] run function luigis_mansion:room/hidden/ball_room/ghosts
tag @a[tag=same_room] remove same_room