execute unless score #foyer Ticking matches 1 run function #luigis_mansion:room/hidden/foyer/load
execute as @a[gamemode=!spectator,x=743,y=8,z=-4,dx=15,dy=18,dz=21] unless entity @s[scores={Room=1}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=743,y=8,z=-4,dx=15,dy=18,dz=21] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 1
tag @e[tag=ghost,scores={Room=1}] add no_hidden_move

execute as @a[scores={Room=1}] run function luigis_mansion:room/hidden/foyer/tick_per_player

function #luigis_mansion:room/hidden/foyer/interactions/room

execute if entity @a[gamemode=!spectator,tag=!pull_open_door,tag=!push_open_door,scores={Room=1},limit=1] run function luigis_mansion:room/hidden/foyer/ghosts