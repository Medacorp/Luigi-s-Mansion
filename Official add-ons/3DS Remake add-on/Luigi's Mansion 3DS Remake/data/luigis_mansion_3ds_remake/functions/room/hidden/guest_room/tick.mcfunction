execute unless score #guest_room Ticking matches 1 run function #luigis_mansion_3ds_remake:room/hidden/guest_room/load
execute as @a[gamemode=!spectator,x=734,y=17,z=-63,dx=14,dy=9,dz=21] unless entity @s[scores={Room=70}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=734,y=17,z=-63,dx=14,dy=9,dz=21] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 70
scoreboard players set #temp Room 70

execute as @e[scores={Room=70},type=!minecraft:marker] unless entity @s[gamemode=spectator] run scoreboard players set @s MirrorX 735

execute as @a[scores={Room=70}] run function luigis_mansion_3ds_remake:room/hidden/guest_room/tick_per_player

function #luigis_mansion_3ds_remake:room/hidden/guest_room/interactions/room

execute if block 736 23 -53 minecraft:redstone_wall_torch run setblock 734 23 -53 minecraft:redstone_wall_torch[facing=west,lit=true]
execute if block 736 23 -53 minecraft:tripwire_hook run setblock 734 23 -53 minecraft:tripwire_hook[facing=west]
execute if block 736 23 -51 minecraft:redstone_wall_torch run setblock 734 23 -51 minecraft:redstone_wall_torch[facing=west,lit=true]
execute if block 736 23 -51 minecraft:tripwire_hook run setblock 734 23 -51 minecraft:tripwire_hook[facing=west]

scoreboard players set #temp Room 70
execute as @a[gamemode=!spectator,tag=!pull_open_door,tag=!push_open_door] run function #luigis_mansion:get_same_room
scoreboard players reset #temp Room
execute if entity @a[tag=same_room,limit=1] run function luigis_mansion_3ds_remake:room/hidden/guest_room/ghosts
tag @a[tag=same_room] remove same_room
execute unless data storage luigis_mansion:data current_state.current_data.rooms.guest_room{cleared:1b} as @e[tag=haunted_clown_doll,scores={Room=70,WaitTime=..60}] run data modify entity @s Pose.Head[2] set value 180.0f