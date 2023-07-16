execute unless score #hallway_12 Ticking matches 1 run function #luigis_mansion:room/hidden/hallway_12/load
execute as @a[gamemode=!spectator,x=697,y=17,z=30,dx=15,dy=9,dz=8] unless entity @s[scores={Room=38}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=697,y=17,z=30,dx=15,dy=9,dz=8] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 38
scoreboard players set #temp Room 38
tag @e[tag=ghost,scores={Room=38}] add no_hidden_move

execute as @a[scores={Room=38}] run function luigis_mansion:room/hidden/hallway_12/tick_per_player

function #luigis_mansion:room/hidden/hallway_12/interactions/room

scoreboard players set #temp Room 38
execute as @a[gamemode=!spectator,tag=!pull_open_door,tag=!push_open_door] run function #luigis_mansion:get_same_room
scoreboard players reset #temp Room
execute if entity @a[tag=same_room,limit=1] run function luigis_mansion:room/hidden/hallway_12/ghosts
tag @a[tag=same_room] remove same_room