execute unless score #clockwork_room Ticking matches 1 run function #luigis_mansion_3ds_remake:room/hidden/clockwork_room/load
execute as @a[gamemode=!spectator,x=682,y=117,z=-10,dx=17,dy=9,dz=35] unless entity @s[scores={Room=62}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[tag=!spectator,x=682,y=117,z=-10,dx=17,dy=9,dz=35] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 62
scoreboard players set #temp Room 62

execute as @a[gamemode=!spectator,scores={Room=62}] run function luigis_mansion_3ds_remake:room/hidden/clockwork_room/tick_per_player

function #luigis_mansion_3ds_remake:room/hidden/clockwork_room/interactions/room

scoreboard players set #temp Room 62
execute as @a[gamemode=!spectator,tag=!pull_open_door,tag=!push_open_door] run function #luigis_mansion:get_same_room
scoreboard players reset #temp Room
execute if entity @a[tag=same_room,limit=1] run function luigis_mansion_3ds_remake:room/hidden/clockwork_room/ghosts
tag @a[tag=same_room] remove same_room

execute unless score #clockwork_room_elevator Time matches 1.. if entity @a[gamemode=!spectator,x=685.0,y=118,z=7.0,dx=1,dy=2,dz=1,gamemode=!spectator] run scoreboard players set #clockwork_room_elevator Searched 1
execute if score #clockwork_room_elevator Time matches 100 if entity @a[gamemode=!spectator,x=687.0,y=118,z=7.0,dx=1,dy=2,dz=1,gamemode=!spectator] run scoreboard players set #clockwork_room_elevator Searched -1