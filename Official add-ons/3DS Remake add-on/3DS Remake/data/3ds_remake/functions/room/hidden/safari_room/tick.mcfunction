execute unless score #safari_room Ticking matches 1 run function #3ds_remake:room/hidden/safari_room/load
execute as @a[gamemode=!spectator,x=732,y=26,z=-59,dx=14,dy=9,dz=25] unless entity @s[scores={Room=50}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=732,y=26,z=-59,dx=14,dy=9,dz=25] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 50

execute as @e[scores={Room=50},type=!minecraft:marker] unless entity @s[gamemode=spectator] run scoreboard players set @s MirrorX 745

execute as @a[scores={Room=50}] run function 3ds_remake:room/hidden/safari_room/tick_per_player

function #3ds_remake:room/hidden/safari_room/interactions/room

execute if entity @a[gamemode=!spectator,tag=!pull_open_door,tag=!push_open_door,scores={Room=50},limit=1] run function 3ds_remake:room/hidden/safari_room/ghosts