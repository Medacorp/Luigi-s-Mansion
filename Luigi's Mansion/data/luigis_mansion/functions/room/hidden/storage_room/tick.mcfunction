execute unless score #storage_room Ticking matches 1 run function #luigis_mansion:room/hidden/storage_room/load
execute as @a[x=671,y=102,z=24,dx=12,dy=6,dz=33] unless entity @s[scores={Room=14}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[type=!minecraft:item_frame,x=671,y=102,z=24,dx=12,dy=6,dz=33] run scoreboard players set @s Room 14

execute as @a[gamemode=!spectator,x=673,y=102,z=26,dx=8,dy=6,dz=29] run function luigis_mansion:room/hidden/storage_room/tick_per_player

function #luigis_mansion:room/hidden/storage_room/interactions/room

execute if block 681 104 47 minecraft:stone_button[powered=true] if block 674 102 39 minecraft:andesite_stairs unless entity @a[tag=moving_wall,limit=1] if data storage luigis_mansion:data current_state.current_data.rooms.torage_room{cleared:1b} positioned 681 104 47 run tag @p[gamemode=!spectator] add move_wall
execute if block 673 104 33 minecraft:stone_button[powered=true] if block 677 101 33 minecraft:oak_slab unless entity @a[tag=release_boos,limit=1] unless entity @a[x=676.0,y=102,z=32.0,dx=2,dy=6,dz=2,limit=1] positioned 673 104 33 run tag @p[gamemode=!spectator] add release_boos

function luigis_mansion:room/hidden/storage_room/ghosts

function luigis_mansion:room/hidden/door/ball_room_storage_room