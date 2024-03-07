execute unless score #courtyard Ticking matches 1 run function #luigis_mansion:room/normal/courtyard/load
execute as @a[gamemode=!spectator,x=644,y=99,z=-41,dx=10,dy=9,dz=78] unless entity @s[scores={Room=30}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=644,y=99,z=-41,dx=10,dy=9,dz=78] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 30
tag @e[tag=ghost,scores={Room=30}] add no_hidden_move

execute as @a[scores={Room=30}] run function luigis_mansion:room/normal/courtyard/tick_per_player

function #luigis_mansion:room/normal/courtyard/interactions/room

execute if entity @a[gamemode=!spectator,tag=!pull_open_door,tag=!push_open_door,scores={Room=30},limit=1] run function luigis_mansion:room/normal/courtyard/ghosts