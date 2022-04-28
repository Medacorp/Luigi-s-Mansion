execute unless score #hallway_18 Ticking matches 1 run function #luigis_mansion:room/normal/hallway_18/load
execute as @a[gamemode=!spectator,x=723,y=28,z=40,dx=16,dy=8,dz=8] unless entity @s[scores={Room=54}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[tag=!spectator,x=723,y=28,z=40,dx=16,dy=8,dz=8] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 54
scoreboard players set #temp Room 54
tag @e[tag=ghost,scores={Room=54}] add no_hidden_move

execute as @a[gamemode=!spectator,scores={Room=54}] run function luigis_mansion:room/normal/hallway_18/tick_per_player

function #luigis_mansion:room/normal/hallway_18/interactions/room

scoreboard players set #temp Room 54
execute as @a[gamemode=!spectator] run function #luigis_mansion:get_same_room
scoreboard players reset #temp Room
execute if entity @a[tag=same_room,limit=1] run function luigis_mansion:room/normal/hallway_18/ghosts
tag @a[tag=same_room] remove same_room

function luigis_mansion:room/normal/door/balcony_2_hallway_18