execute unless score #washroom_1 Ticking matches 1 run function #luigis_mansion:room/hidden/washroom_1/load
execute as @e[tag=player,x=660,y=10,z=-33,dx=8,dy=7,dz=14] unless entity @s[scores={Room=19}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @e[tag=player,x=660,y=10,z=-33,dx=8,dy=7,dz=14] Room 19
#todelete - old furniture
scoreboard players set #temp Room 19
#/todelete

execute as @e[scores={Room=19},tag=!model_piece,tag=!no_reflection,tag=!reflection,type=#luigis_mansion:reflected] if score #global_mirror_reflections Selected matches 1 run scoreboard players set @s MirrorX 661

execute as @a[scores={Room=19}] run function luigis_mansion:room/hidden/washroom_1/tick_per_player

execute if entity @e[tag=toad,scores={Room=19},tag=talk] if data storage luigis_mansion:data current_state.current_data.rooms.washroom_1{cleared:0b} unless data storage luigis_mansion:data dialogs[{room:19}] run data modify storage luigis_mansion:data dialogs append value {name:{namespace:"luigis_mansion",id:"toad_3"},room:19,progress:0}
execute if entity @e[tag=toad,scores={Room=19},tag=talk] if data storage luigis_mansion:data current_state.current_data.rooms.washroom_1{cleared:1b} unless data storage luigis_mansion:data dialogs[{room:19}] run data modify storage luigis_mansion:data dialogs append value {name:{namespace:"luigis_mansion",id:"toad_3_repeat"},room:19,progress:0}

#todelete - old furniture
function #luigis_mansion:room/hidden/washroom_1/interactions/room
#/todelete

execute if block 663 14 -22 minecraft:oak_trapdoor[open=true] run setblock 659 14 -22 minecraft:oak_trapdoor[open=true,facing=west,half=top]
execute if block 663 14 -22 minecraft:oak_trapdoor[open=false] run setblock 659 14 -22 minecraft:oak_trapdoor[open=false,facing=west,half=top]
execute if block 663 14 -21 minecraft:oak_trapdoor[open=true] run setblock 659 14 -21 minecraft:oak_trapdoor[open=true,facing=west,half=top]
execute if block 663 14 -21 minecraft:oak_trapdoor[open=false] run setblock 659 14 -21 minecraft:oak_trapdoor[open=false,facing=west,half=top]

execute if entity @e[tag=luigi,tag=!door_animation,scores={Room=19},limit=1] run function luigis_mansion:room/hidden/washroom_1/ghosts