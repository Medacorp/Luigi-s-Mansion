execute unless score #storage_room Ticking matches 1 run function #luigis_mansion:room/hidden/storage_room/load
execute as @a[gamemode=!spectator,x=679,y=10,z=52,dx=12,dy=8,dz=33] unless entity @s[scores={Room=18}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[type=!minecraft:item_frame,x=679,y=10,z=52,dx=12,dy=8,dz=33] unless entity @s[type=!minecraft:player,tag=!model_piece,scores={Room=-2147483648..}] run scoreboard players set @s Room 18

execute as @e[scores={Room=18},type=!minecraft:marker] unless entity @s[gamemode=spectator] run scoreboard players set @s MirrorX 680

execute as @a[gamemode=!spectator,scores={Room=18}] run function luigis_mansion:room/normal/storage_room/tick_per_player

function #luigis_mansion:room/hidden/storage_room/interactions/room

execute if block 689 13 75 minecraft:stone_button[powered=true] run setblock 671 13 75 minecraft:stone_button[powered=true,face=wall,facing=east]
execute if block 689 13 75 minecraft:stone_button[powered=false] run setblock 671 13 75 minecraft:stone_button[powered=false,face=wall,facing=east]
execute if block 681 13 61 minecraft:stone_button[powered=true] run setblock 679 13 61 minecraft:stone_button[powered=true,face=wall,facing=west]
execute if block 681 13 61 minecraft:stone_button[powered=false] run setblock 679 13 61 minecraft:stone_button[powered=false,face=wall,facing=west]
execute if block 681 13 61 minecraft:air run setblock 679 13 61 minecraft:air
fill 671 10 83 679 18 55 minecraft:barrier replace minecraft:air

execute if block 689 13 75 minecraft:stone_button[powered=true] if block 682 11 67 minecraft:andesite_stairs unless entity @a[tag=moving_wall,limit=1] if data storage luigis_mansion:data current_state.current_data.rooms.torage_room{cleared:1b} positioned 689 13 75 run tag @p[gamemode=!spectator] add move_wall
execute if block 681 13 61 minecraft:stone_button[powered=true] if block 685 10 61 minecraft:oak_slab unless entity @a[tag=release_boos,limit=1] unless entity @a[tag=!spectator,scores={Room=18},x=684.0,y=11,z=60.0,dx=2,dy=6,dz=2,limit=1] positioned 681 13 61 run tag @p[gamemode=!spectator] add release_boos

function luigis_mansion:room/hidden/storage_room/ghosts

function luigis_mansion:room/hidden/door/ball_room_storage_room