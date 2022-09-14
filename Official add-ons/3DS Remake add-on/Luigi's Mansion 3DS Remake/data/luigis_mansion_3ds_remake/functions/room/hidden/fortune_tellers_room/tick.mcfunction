execute unless score #fortune_tellers_room Ticking matches 1 run function #luigis_mansion_3ds_remake:room/hidden/fortune_tellers_room/load
execute as @a[gamemode=!spectator,x=734,y=8,z=-39,dx=14,dy=10,dz=20] unless entity @s[scores={Room=20}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[tag=!spectator,x=734,y=8,z=-39,dx=14,dy=10,dz=20] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 20
scoreboard players set #temp Room 20

execute as @a[gamemode=!spectator,scores={Room=20}] run function luigis_mansion_3ds_remake:room/hidden/fortune_tellers_room/tick_per_player

function #luigis_mansion_3ds_remake:room/hidden/fortune_tellers_room/interactions/room

execute if block 746 13 -37 minecraft:brewing_stand[has_bottle_0=true,has_bottle_1=true,has_bottle_2=true] if block 736 13 -37 minecraft:brewing_stand[has_bottle_0=true,has_bottle_1=true,has_bottle_2=true] if block 736 13 -21 minecraft:brewing_stand[has_bottle_0=true,has_bottle_1=true,has_bottle_2=true] if block 746 13 -21 minecraft:brewing_stand[has_bottle_0=true,has_bottle_1=true,has_bottle_2=true] unless entity @e[type=minecraft:armor_stand,tag=key,tag=laundry_room,limit=1] unless data storage luigis_mansion:data current_state.current_data{obtained_keys:["laundry_room"]} run playsound luigis_mansion:music.solve_puzzle music @a[scores={Room=20}] ~ ~ ~ 10000 
execute if block 746 13 -37 minecraft:brewing_stand[has_bottle_0=true,has_bottle_1=true,has_bottle_2=true] if block 736 13 -37 minecraft:brewing_stand[has_bottle_0=true,has_bottle_1=true,has_bottle_2=true] if block 736 13 -21 minecraft:brewing_stand[has_bottle_0=true,has_bottle_1=true,has_bottle_2=true] if block 746 13 -21 minecraft:brewing_stand[has_bottle_0=true,has_bottle_1=true,has_bottle_2=true] unless entity @e[type=minecraft:armor_stand,tag=key,tag=laundry_room,limit=1] unless data storage luigis_mansion:data current_state.current_data{obtained_keys:["laundry_room"]} run summon minecraft:armor_stand 744 17 -34 {CustomName:'{"translate":"luigis_mansion:item.key"}',Pose:{Head:[0.0f,0.0f,0.01f]},Invisible:1b,Silent:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:5,CustomModelData:15}}],Small:1b,NoGravity:1b,Tags:["item","key","eternal","laundry_room","no_spawn_sound"],DisabledSlots:2039583}

scoreboard players set #temp Room 20
execute as @a[gamemode=!spectator,tag=!pull_open_door,tag=!push_open_door] run function #luigis_mansion:get_same_room
scoreboard players reset #temp Room
execute if entity @a[tag=same_room,limit=1] run function luigis_mansion_3ds_remake:room/hidden/fortune_tellers_room/ghosts
tag @a[tag=same_room] remove same_room