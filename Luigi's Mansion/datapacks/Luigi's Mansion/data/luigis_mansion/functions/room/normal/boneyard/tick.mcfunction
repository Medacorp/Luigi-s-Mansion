execute unless score #boneyard Ticking matches 1 run function #luigis_mansion:room/normal/boneyard/load
execute as @a[gamemode=!spectator,x=671,y=99,z=37,dx=14,dy=9,dz=19] unless entity @s[scores={Room=28}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=671,y=99,z=37,dx=14,dy=9,dz=19] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 28
scoreboard players set #temp Room 28

execute as @a[scores={Room=28}] run function luigis_mansion:room/normal/boneyard/tick_per_player

function #luigis_mansion:room/normal/boneyard/interactions/room

scoreboard players set #temp Room 28
execute as @a[gamemode=!spectator,tag=!pull_open_door,tag=!push_open_door] run function #luigis_mansion:get_same_room
scoreboard players reset #temp Room
execute if entity @a[tag=same_room,limit=1] run function luigis_mansion:room/normal/boneyard/ghosts
tag @a[tag=same_room] remove same_room