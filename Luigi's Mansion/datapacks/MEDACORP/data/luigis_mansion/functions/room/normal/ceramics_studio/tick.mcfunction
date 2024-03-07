execute unless score #ceramics_studio Ticking matches 1 run function #luigis_mansion:room/normal/ceramics_studio/load
execute as @a[gamemode=!spectator,x=696,y=26,z=56,dx=17,dy=9,dz=25] unless entity @s[scores={Room=65}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=696,y=26,z=56,dx=17,dy=9,dz=25] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 65

execute as @a[scores={Room=65}] run function luigis_mansion:room/normal/ceramics_studio/tick_per_player

function #luigis_mansion:room/normal/ceramics_studio/interactions/room

execute if entity @a[gamemode=!spectator,tag=!pull_open_door,tag=!push_open_door,scores={Room=65},limit=1] run function luigis_mansion:room/normal/ceramics_studio/ghosts