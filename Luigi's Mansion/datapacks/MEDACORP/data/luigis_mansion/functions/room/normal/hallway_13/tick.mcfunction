execute unless score #hallway_13 Ticking matches 1 run function #luigis_mansion:room/normal/hallway_13/load
execute as @a[gamemode=!spectator,x=713,y=17,z=-42,dx=7,dy=9,dz=27] unless entity @s[scores={Room=39}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=713,y=17,z=-42,dx=7,dy=9,dz=27] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 39
scoreboard players set #temp Room 39
tag @e[tag=ghost,scores={Room=39}] add no_hidden_move

execute as @a[scores={Room=39}] run function luigis_mansion:room/normal/hallway_13/tick_per_player

function #luigis_mansion:room/normal/hallway_13/interactions/room

scoreboard players set #temp Room 39
execute as @a[gamemode=!spectator,tag=!pull_open_door,tag=!push_open_door] run function #luigis_mansion:get_same_room
scoreboard players reset #temp Room
execute if entity @a[tag=same_room,limit=1] run function luigis_mansion:room/normal/hallway_13/ghosts
tag @a[tag=same_room] remove same_room
tag @a[tag=same_room] remove exact_same_room