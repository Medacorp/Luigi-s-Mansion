execute unless score #roof Ticking matches 1 run function #3ds_remake:room/hidden/roof/load
execute as @a[gamemode=!spectator,x=682,y=128,z=-31,dx=31,dy=16,dz=77] unless entity @s[scores={Room=63}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=682,y=128,z=-31,dx=31,dy=16,dz=77] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 63
scoreboard players set #temp Room 63

execute as @a[scores={Room=63}] run function 3ds_remake:room/hidden/roof/tick_per_player

function #3ds_remake:room/hidden/roof/interactions/room

scoreboard players set #temp Room 63
execute as @a[gamemode=!spectator,tag=!pull_open_door,tag=!push_open_door] run function #luigis_mansion:get_same_room
scoreboard players reset #temp Room
execute if entity @a[tag=exact_same_room,limit=1] run function 3ds_remake:room/hidden/roof/ghosts
tag @a[tag=same_room] remove same_room
tag @a[tag=exact_same_room] remove exact_same_room

execute unless score #clockwork_room_elevator Time matches 1.. if entity @a[gamemode=!spectator,x=687.0,y=129,z=6.0,dx=2,dy=2,dz=3,gamemode=!spectator] run scoreboard players set #clockwork_room_elevator Searched 1
execute if score #clockwork_room_elevator Time matches 100 if entity @a[gamemode=!spectator,x=685.0,y=129,z=7.0,dx=1,dy=2,dz=1,gamemode=!spectator] run scoreboard players set #clockwork_room_elevator Searched -1
