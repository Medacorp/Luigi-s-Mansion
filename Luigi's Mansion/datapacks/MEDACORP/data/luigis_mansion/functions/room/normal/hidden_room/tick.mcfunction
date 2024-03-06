execute unless score #hidden_room Ticking matches 1 run function #luigis_mansion:room/normal/hidden_room/load
execute as @a[gamemode=!spectator,x=736,y=8,z=29,dx=14,dy=9,dz=21] unless entity @s[scores={Room=24}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=736,y=8,z=29,dx=14,dy=9,dz=21] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 24
scoreboard players set #temp Room 24

execute as @e[scores={Room=24},type=!minecraft:marker] unless entity @s[gamemode=spectator] run scoreboard players set @s MirrorX 749

execute as @a[scores={Room=24}] run function luigis_mansion:room/normal/hidden_room/tick_per_player

function #luigis_mansion:room/normal/hidden_room/interactions/room

scoreboard players set #temp Room 24
execute as @a[gamemode=!spectator,tag=!pull_open_door,tag=!push_open_door] run function #luigis_mansion:get_same_room
scoreboard players reset #temp Room
execute if entity @a[tag=exact_same_room,limit=1] run function luigis_mansion:room/normal/hidden_room/ghosts
tag @a[tag=same_room] remove same_room
tag @a[tag=exact_same_room] remove exact_same_room