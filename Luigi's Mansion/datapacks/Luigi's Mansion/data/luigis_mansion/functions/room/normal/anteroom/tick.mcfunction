execute unless score #anteroom Ticking matches 1 run function #luigis_mansion:room/normal/anteroom/load
execute as @a[gamemode=!spectator,x=683,y=17,z=22,dx=12,dy=10,dz=21] unless entity @s[scores={Room=4}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[tag=!spectator,x=683,y=17,z=22,dx=12,dy=10,dz=21] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 4
scoreboard players set #temp Room 4

execute as @a[gamemode=!spectator,scores={Room=4}] run function luigis_mansion:room/normal/anteroom/tick_per_player

function #luigis_mansion:room/normal/anteroom/interactions/room

scoreboard players set #temp Room 4
execute as @a[gamemode=!spectator,tag=!pull_open_door,tag=!push_open_door] run function #luigis_mansion:get_same_room
scoreboard players reset #temp Room
execute if entity @a[tag=same_room,limit=1] run function luigis_mansion:room/normal/anteroom/ghosts
tag @a[tag=same_room] remove same_room