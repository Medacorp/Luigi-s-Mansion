execute unless score #graveyard Ticking matches 1 run function #luigis_mansion:room/hidden/graveyard/load
execute as @a[gamemode=!spectator,x=644,y=101,z=-40,dx=27,dy=8,dz=18] unless entity @s[scores={Room=29}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[tag=!spectator,x=644,y=101,z=-40,dx=27,dy=8,dz=18] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 29
scoreboard players set #temp Room 29

execute as @a[gamemode=!spectator,scores={Room=29}] run function luigis_mansion:room/hidden/graveyard/tick_per_player

function #luigis_mansion:room/hidden/graveyard/interactions/room

scoreboard players set #temp Room 29
execute as @a[gamemode=!spectator,tag=!pull_open_door,tag=!push_open_door] run function #luigis_mansion:get_same_room
scoreboard players reset #temp Room
execute if entity @a[tag=same_room,limit=1] run function luigis_mansion:room/hidden/graveyard/ghosts
tag @a[tag=same_room] remove same_room