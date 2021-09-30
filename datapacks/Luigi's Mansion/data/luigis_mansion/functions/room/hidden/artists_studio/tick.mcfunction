execute unless score #artists_studio Ticking matches 1 run function #luigis_mansion:room/hidden/artists_studio/load
execute as @a[gamemode=!spectator,x=687,y=28,z=70,dx=16,dy=8,dz=25] unless entity @s[scores={Room=71}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[type=!minecraft:item_frame,x=687,y=28,z=70,dx=16,dy=8,dz=25] run scoreboard players set @s Room 71

execute as @a[gamemode=!spectator,scores={Room=71}] run function luigis_mansion:room/hidden/artists_studio/tick_per_player

tag @e[tag=ghost,tag=hidden,tag=can_spawn,scores={Room=71}] add spawn
execute at @e[tag=ghost,tag=hidden,tag=new_ghost,scores={Room=71}] positioned ~ 30 ~ if entity @e[type=minecraft:item_frame,distance=..0.7] run particle minecraft:dust 0.7 1 1 1 ~ 30.5 ~ 0.2 0.2 0.2 1 5
execute as @e[x=697.0,y=29,z=72.0,dx=5,dy=6,dz=21,tag=ghost,tag=hidden,y_rotation=-180..0] at @s run function luigis_mansion:room/hidden/artists_studio/stay_near_painting
execute if entity @e[tag=gold_ghost,tag=!hidden,scores={Room=71},limit=1] run data modify entity @e[x=696.5,y=30,z=73.5,distance=..0.7,limit=1] Item.tag.map set value 255
execute if entity @e[tag=purple_puncher,tag=!hidden,scores={Room=71},limit=1] run data modify entity @e[x=695.5,y=30,z=75.5,distance=..0.7,limit=1] Item.tag.map set value 259
execute if entity @e[tag=blue_twirler,tag=!hidden,scores={Room=71},limit=1] run data modify entity @e[x=694.5,y=30,z=77.5,distance=..0.7,limit=1] Item.tag.map set value 247
execute if entity @e[tag=red_grabbing_ghost,tag=!hidden,scores={Room=71},limit=1] run data modify entity @e[x=693.5,y=30,z=80.5,distance=..0.7,limit=1] Item.tag.map set value 261
execute if entity @e[tag=ghost_guy,tag=!hidden,scores={Room=71},limit=1] run data modify entity @e[x=693.5,y=30,z=83.5,distance=..0.7,limit=1] Item.tag.map set value 253
execute if entity @e[tag=garbage_can_ghost,tag=!hidden,scores={Room=71},limit=1] run data modify entity @e[x=694.5,y=30,z=85.5,distance=..0.7,limit=1] Item.tag.map set value 251
execute if entity @e[tag=purple_bomber,tag=!hidden,scores={Room=71},limit=1] run data modify entity @e[x=695.5,y=30,z=87.5,distance=..0.7,limit=1] Item.tag.map set value 257

execute if entity @e[tag=ghost,tag=hidden,tag=new_ghost,scores={Room=71}] run scoreboard players set #freeze_timer Selected 1
execute if score #freeze_timer Selected matches 1 as @a unless entity @s[scores={Room=71}] run scoreboard players set #freeze_timer Selected 0

function #luigis_mansion:room/hidden/artists_studio/interactions/room

function luigis_mansion:room/hidden/artists_studio/ghosts

function luigis_mansion:room/hidden/door/hallway_17_artists_studio