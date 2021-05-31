execute unless score #artists_studio Ticking matches 1 run function #luigis_mansion:room/normal/artists_studio/load
execute as @a[gamemode=!spectator,x=687,y=28,z=-80,dx=16,dy=8,dz=25] unless entity @s[scores={Room=71}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[type=!minecraft:item_frame,x=687,y=28,z=-80,dx=16,dy=8,dz=25] run scoreboard players set @s Room 71

execute as @a[gamemode=!spectator,scores={Room=71}] run function luigis_mansion:room/normal/artists_studio/tick_per_player

tag @e[tag=ghost,tag=hidden,tag=can_spawn,scores={Room=71}] add spawn
execute at @e[tag=ghost,tag=hidden,x_rotation=90,scores={Room=71}] positioned ~ 30 ~ if entity @e[type=minecraft:item_frame,distance=..0.7] run particle minecraft:dust 0.7 1 1 1 ~ 30.5 ~ 0.2 0.2 0.2 1 5
execute as @e[x=697.0,y=28,z=-78.0,dx=5,dy=8,dz=21,tag=ghost,tag=hidden,y_rotation=-180..0] at @s run function luigis_mansion:room/normal/artists_studio/stay_near_painting
execute if entity @e[tag=gold_ghost,tag=!hidden,scores={Room=71},limit=1] run data modify entity @e[x=696.5,y=30,z=-57.5,distance=..0.7,limit=1] Item.tag.map set value 86
execute if entity @e[tag=purple_puncher,tag=!hidden,scores={Room=71},limit=1] run data modify entity @e[x=695.5,y=30,z=-59.5,distance=..0.7,limit=1] Item.tag.map set value 90
execute if entity @e[tag=blue_twirler,tag=!hidden,scores={Room=71},limit=1] run data modify entity @e[x=694.5,y=30,z=-61.5,distance=..0.7,limit=1] Item.tag.map set value 78
execute if entity @e[tag=red_grabbing_ghost,tag=!hidden,scores={Room=71},limit=1] run data modify entity @e[x=693.5,y=30,z=-64.5,distance=..0.7,limit=1] Item.tag.map set value 92
execute if entity @e[tag=ghost_guy,tag=!hidden,scores={Room=71},limit=1] run data modify entity @e[x=693.5,y=30,z=-67.5,distance=..0.7,limit=1] Item.tag.map set value 84
execute if entity @e[tag=garbage_can_ghost,tag=!hidden,scores={Room=71},limit=1] run data modify entity @e[x=694.5,y=30,z=-69.5,distance=..0.7,limit=1] Item.tag.map set value 82
execute if entity @e[tag=purple_bomber,tag=!hidden,scores={Room=71},limit=1] run data modify entity @e[x=695.5,y=30,z=-71.5,distance=..0.7,limit=1] Item.tag.map set value 88

function #luigis_mansion:room/normal/artists_studio/interactions/room

function luigis_mansion:room/normal/artists_studio/ghosts

function luigis_mansion:room/normal/door/hallway_17_artists_studio