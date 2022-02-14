execute unless score #hallway_15 Ticking matches 1 run function #luigis_mansion:room/hidden/hallway_15/load
execute as @a[gamemode=!spectator,x=712,y=28,z=44,dx=7,dy=8,dz=13] unless entity @s[scores={Room=41}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=712,y=28,z=44,dx=7,dy=8,dz=13] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 41
scoreboard players set #temp Room 41
tag @e[tag=ghost,scores={Room=41}] add no_hidden_move

execute as @a[gamemode=!spectator,scores={Room=41}] run function luigis_mansion:room/hidden/hallway_15/tick_per_player

function #luigis_mansion:room/hidden/hallway_15/interactions/room

execute if entity @a[gamemode=!spectator,scores={Room=41},limit=1] run function luigis_mansion:room/hidden/hallway_15/ghosts

function luigis_mansion:room/hidden/door/hallway_15_safari_room