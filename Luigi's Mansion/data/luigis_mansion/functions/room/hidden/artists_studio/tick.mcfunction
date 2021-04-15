execute unless score #artists_studio Ticking matches 1 run function #luigis_mansion:room/hidden/artists_studio/load
execute as @a[x=682,y=120,z=31,dx=16,dy=6,dz=25] unless entity @s[scores={Room=58}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[type=!minecraft:item_frame,x=682,y=120,z=31,dx=16,dy=6,dz=25] run scoreboard players set @s Room 58

execute as @a[gamemode=!spectator,x=684,y=120,z=33,dx=13,dy=6,dz=21] run function luigis_mansion:room/hidden/artists_studio/tick_per_player

tag @e[tag=ghost_marker,tag=can_spawn,scores={Room=58}] add spawn
execute at @e[tag=ghost_marker,x_rotation=90,scores={Room=58}] positioned ~ 121 ~ if entity @e[type=minecraft:item_frame,distance=..0.7] run particle minecraft:dust 0.7 1 1 1 ~ 121.5 ~ 0.2 0.2 0.2 1 5
execute as @e[x=692.0,y=120,z=33.0,dx=5,dy=6,dz=21,tag=ghost_marker,y_rotation=-180..0] at @s run function luigis_mansion:room/hidden/artists_studio/stay_near_painting
execute if entity @e[tag=gold_ghost,tag=!ghost_marker,scores={Room=58},limit=1] run data modify entity @e[x=691.5,y=121,z=34.5,distance=..0.7,limit=1] Item.tag.map set value 255
execute if entity @e[tag=purple_puncher,tag=!ghost_marker,scores={Room=58},limit=1] run data modify entity @e[x=690.5,y=121,z=36.5,distance=..0.7,limit=1] Item.tag.map set value 259
execute if entity @e[tag=blue_twirler,tag=!ghost_marker,scores={Room=58},limit=1] run data modify entity @e[x=689.5,y=121,z=38.5,distance=..0.7,limit=1] Item.tag.map set value 247
execute if entity @e[tag=red_grabbing_ghost,tag=!ghost_marker,scores={Room=58},limit=1] run data modify entity @e[x=688.5,y=121,z=41.5,distance=..0.7,limit=1] Item.tag.map set value 261
execute if entity @e[tag=ghost_guy,tag=!ghost_marker,scores={Room=58},limit=1] run data modify entity @e[x=688.5,y=121,z=44.5,distance=..0.7,limit=1] Item.tag.map set value 253
execute if entity @e[tag=garbage_can_ghost,tag=!ghost_marker,scores={Room=58},limit=1] run data modify entity @e[x=689.5,y=121,z=46.5,distance=..0.7,limit=1] Item.tag.map set value 251
execute if entity @e[tag=purple_bomber,tag=!ghost_marker,scores={Room=58},limit=1] run data modify entity @e[x=690.5,y=121,z=48.5,distance=..0.7,limit=1] Item.tag.map set value 257

function #luigis_mansion:room/hidden/artists_studio/interactions/room

function luigis_mansion:room/hidden/artists_studio/ghosts

function luigis_mansion:room/hidden/door/attic_hallway_1_artists_studio