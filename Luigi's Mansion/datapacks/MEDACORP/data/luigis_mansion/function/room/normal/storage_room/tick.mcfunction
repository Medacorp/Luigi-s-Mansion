execute unless score #storage_room Ticking matches 1 run function #luigis_mansion:room/normal/storage_room/load
execute as @e[tag=player,x=679,y=10,z=-70,dx=12,dy=7,dz=33] unless entity @s[scores={Room=18}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @e[tag=player,x=679,y=10,z=-70,dx=12,dy=7,dz=33] Room 18
#todelete - old furniture
scoreboard players set #temp Room 18
#/todelete

execute as @e[scores={Room=18},tag=!model_piece,tag=!no_reflection,tag=!reflection,type=#luigis_mansion:reflected] if score #global_mirror_reflections Selected matches 1 run scoreboard players set @s MirrorX 680

execute as @a[scores={Room=18}] run function luigis_mansion:room/normal/storage_room/tick_per_player

#todelete - old furniture
function #luigis_mansion:room/normal/storage_room/interactions/room
#/todelete

execute if block 689 13 -60 minecraft:stone_button[powered=true] run setblock 671 13 -60 minecraft:stone_button[powered=true,face=wall,facing=east]
execute if block 689 13 -60 minecraft:stone_button[powered=false] run setblock 671 13 -60 minecraft:stone_button[powered=false,face=wall,facing=east]
execute if block 681 13 -46 minecraft:stone_button[powered=true] run setblock 679 13 -46 minecraft:stone_button[powered=true,face=wall,facing=west]
execute if block 681 13 -46 minecraft:stone_button[powered=false] run setblock 679 13 -46 minecraft:stone_button[powered=false,face=wall,facing=west]
execute if block 681 13 -46 minecraft:air run setblock 679 13 -46 minecraft:air
fill 671 10 -68 679 18 -40 minecraft:barrier replace minecraft:air

execute if block 689 13 -60 minecraft:stone_button[powered=true] if block 682 11 -52 minecraft:andesite_stairs if data storage luigis_mansion:data current_state.current_data.rooms.storage_room{cleared:1b} unless data storage luigis_mansion:data current_state.current_data.technical_data{moved_wall:1b} unless data storage luigis_mansion:data dialogs[{room:18}] run data modify storage luigis_mansion:data dialogs append value {name:{namespace:"luigis_mansion",id:"normal/move_storage_room_wall"},room:18,progress:0}
execute if block 681 13 -46 minecraft:stone_button[powered=true] if block 685 10 -46 minecraft:oak_slab positioned 681.12 13.5 -46 unless entity @e[tag=poster,distance=..0.7,limit=1] unless entity @e[tag=!spectator,scores={Room=18},x=684.0,y=10,z=-47.0,dx=2,dy=7,dz=2,limit=1] if data storage luigis_mansion:data current_state.current_data.rooms.storage_room{cleared:1b} unless data storage luigis_mansion:data current_state.current_data.technical_data{released_boos:1b} unless data storage luigis_mansion:data dialogs[{room:18}] run data modify storage luigis_mansion:data dialogs append value {name:{namespace:"luigis_mansion",id:"normal/release_boos"},room:18,progress:0}

execute if entity @e[tag=luigi,tag=!door_animation,scores={Room=18},limit=1] run function luigis_mansion:room/normal/storage_room/ghosts