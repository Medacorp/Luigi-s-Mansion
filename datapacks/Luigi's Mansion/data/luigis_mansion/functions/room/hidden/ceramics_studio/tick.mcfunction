execute unless score #ceramics_studio Ticking matches 1 run function #luigis_mansion:room/hidden/ceramics_studio/load
execute as @a[gamemode=!spectator,x=696,y=28,z=-66,dx=17,dy=8,dz=25] unless entity @s[scores={Room=65}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[tag=!spectator,x=696,y=28,z=-66,dx=17,dy=8,dz=25] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 65
scoreboard players set #temp Room 65

execute as @a[gamemode=!spectator,scores={Room=65}] run function luigis_mansion:room/hidden/ceramics_studio/tick_per_player

function #luigis_mansion:room/hidden/ceramics_studio/interactions/room

scoreboard players set #temp Room 65
execute as @a[gamemode=!spectator,tag=!pull_open_door,tag=!push_open_door] run function #luigis_mansion:get_same_room
scoreboard players reset #temp Room
execute if entity @a[tag=same_room,limit=1] run function luigis_mansion:room/hidden/ceramics_studio/ghosts
tag @a[tag=same_room] remove same_room