execute unless score #the_artists_studio Ticking matches 1 run function #luigis_mansion:room/normal/the_artists_studio/load
execute as @e[tag=player,x=687,y=28,z=-80,dx=16,dy=7,dz=25] unless entity @s[scores={Room=71}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @e[tag=player,x=687,y=28,z=-80,dx=16,dy=7,dz=25] Room 71
#todelete - old furniture
scoreboard players set #temp Room 71
#/todelete

execute as @a[scores={Room=71}] run function luigis_mansion:room/normal/the_artists_studio/tick_per_player

tag @e[tag=ghost,tag=hidden,tag=can_spawn,scores={Room=71}] add spawn
execute at @e[tag=ghost,tag=hidden,tag=new_ghost,scores={Room=71}] positioned ~ 30 ~ if entity @e[type=minecraft:item_frame,distance=..0.7] run particle minecraft:dust{color:11730943,scale:1f} ~ 30.5 ~ 0.2 0.2 0.2 1 5
execute as @e[x=697.0,y=27,z=-78.0,dx=5,dy=7,dz=21,tag=ghost,tag=hidden,y_rotation=-180..0] at @s run function luigis_mansion:room/normal/the_artists_studio/stay_near_painting
execute if entity @e[tag=ghost,nbt={data:{entity:{id:"gold_ghost"}}},tag=!hidden,scores={Room=71},limit=1] run data modify entity @e[x=696.5,y=30,z=-57.5,distance=..0.7,limit=1] Item.components."minecraft:map_id" set value 86
execute if entity @e[tag=ghost,nbt={data:{entity:{id:"purple_puncher"}}},tag=!hidden,scores={Room=71},limit=1] run data modify entity @e[x=695.5,y=30,z=-59.5,distance=..0.7,limit=1] Item.components."minecraft:map_id" set value 90
execute if entity @e[tag=ghost,nbt={data:{entity:{id:"blue_twirler"}}},tag=!hidden,scores={Room=71},limit=1] run data modify entity @e[x=694.5,y=30,z=-61.5,distance=..0.7,limit=1] Item.components."minecraft:map_id" set value 78
execute if entity @e[tag=ghost,nbt={data:{entity:{id:"red_grabbing_ghost"}}},tag=!hidden,scores={Room=71},limit=1] run data modify entity @e[x=693.5,y=30,z=-64.5,distance=..0.7,limit=1] Item.components."minecraft:map_id" set value 92
execute if entity @e[tag=ghost,nbt={data:{entity:{id:"ghost_guy"}}},tag=!hidden,scores={Room=71},limit=1] run data modify entity @e[x=693.5,y=30,z=-67.5,distance=..0.7,limit=1] Item.components."minecraft:map_id" set value 84
execute if entity @e[tag=ghost,nbt={data:{entity:{id:"garbage_can_ghost"}}},tag=!hidden,scores={Room=71},limit=1] run data modify entity @e[x=694.5,y=30,z=-69.5,distance=..0.7,limit=1] Item.components."minecraft:map_id" set value 82
execute if entity @e[tag=ghost,nbt={data:{entity:{id:"purple_bomber"}}},tag=!hidden,scores={Room=71},limit=1] run data modify entity @e[x=695.5,y=30,z=-71.5,distance=..0.7,limit=1] Item.components."minecraft:map_id" set value 88

execute if entity @e[tag=ghost,tag=hidden,tag=new_ghost,scores={Room=71}] run scoreboard players set #freeze_timer Selected 1
execute if score #freeze_timer Selected matches 1 as @a unless entity @s[scores={Room=71}] run scoreboard players set #freeze_timer Selected 0

#todelete - old furniture
function #luigis_mansion:room/normal/the_artists_studio/interactions/room
#/todelete

execute if entity @e[tag=luigi,tag=!door_animation,scores={Room=71},limit=1] run function luigis_mansion:room/normal/the_artists_studio/ghosts