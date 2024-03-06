execute unless score #courtyard Ticking matches 1 run function #luigis_mansion:room/hidden/courtyard/load
execute as @a[gamemode=!spectator,x=644,y=99,z=-22,dx=10,dy=9,dz=78] unless entity @s[scores={Room=30}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=644,y=99,z=-22,dx=10,dy=9,dz=78] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 30
scoreboard players set #temp Room 30
tag @e[tag=ghost,scores={Room=30}] add no_hidden_move

execute as @a[scores={Room=30}] run function luigis_mansion:room/hidden/courtyard/tick_per_player

function #luigis_mansion:room/hidden/courtyard/interactions/room

scoreboard players set #temp Room 30
execute as @a[gamemode=!spectator,tag=!pull_open_door,tag=!push_open_door] run function #luigis_mansion:get_same_room
scoreboard players reset #temp Room
execute if entity @a[tag=exact_same_room,limit=1] run function luigis_mansion:room/hidden/courtyard/ghosts
tag @a[tag=same_room] remove same_room
tag @a[tag=exact_same_room] remove exact_same_room