execute unless score #conservatory Ticking matches 1 run function #3ds_remake:room/hidden/conservatory/load
execute as @a[gamemode=!spectator,x=652,y=8,z=-29,dx=12,dy=9,dz=28] unless entity @s[scores={Room=25}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=652,y=8,z=-29,dx=12,dy=9,dz=28] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 25

execute as @a[scores={Room=25}] run function 3ds_remake:room/hidden/conservatory/tick_per_player

function #3ds_remake:room/hidden/conservatory/interactions/room

execute if entity @a[gamemode=!spectator,tag=!pull_open_door,tag=!push_open_door,scores={Room=25},limit=1] run function 3ds_remake:room/hidden/conservatory/ghosts