execute unless score #nanas_room Ticking matches 1 run function #3ds_remake:room/hidden/nanas_room/load
execute as @a[gamemode=!spectator,x=652,y=17,z=-29,dx=12,dy=9,dz=28] unless entity @s[scores={Room=44}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=652,y=17,z=-29,dx=12,dy=9,dz=28] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 44

execute as @a[scores={Room=44}] run function 3ds_remake:room/hidden/nanas_room/tick_per_player

function #3ds_remake:room/hidden/nanas_room/interactions/room

execute if entity @a[gamemode=!spectator,tag=!pull_open_door,tag=!push_open_door,scores={Room=44},limit=1] run function 3ds_remake:room/hidden/nanas_room/ghosts