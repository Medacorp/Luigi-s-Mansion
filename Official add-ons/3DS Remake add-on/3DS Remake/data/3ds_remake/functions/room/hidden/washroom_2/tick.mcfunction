execute unless score #washroom_2 Ticking matches 1 run function #3ds_remake:room/hidden/washroom_2/load
execute as @a[gamemode=!spectator,x=660,y=17,z=34,dx=8,dy=9,dz=14] unless entity @s[scores={Room=42}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=660,y=17,z=34,dx=8,dy=9,dz=14] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 42

execute as @e[scores={Room=42},type=!minecraft:marker] unless entity @s[gamemode=spectator] run scoreboard players set @s MirrorX 661

execute as @a[scores={Room=42}] run function 3ds_remake:room/hidden/washroom_2/tick_per_player

function #3ds_remake:room/hidden/washroom_2/interactions/room

execute if entity @a[gamemode=!spectator,tag=!pull_open_door,tag=!push_open_door,scores={Room=42},limit=1] run function 3ds_remake:room/hidden/washroom_2/ghosts