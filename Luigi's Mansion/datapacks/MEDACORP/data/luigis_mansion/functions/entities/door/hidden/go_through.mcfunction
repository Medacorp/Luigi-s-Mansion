#boo woods-foyer
tag @s[x=755.0,y=11,z=6.0,dx=0,dy=1,dz=1,y_rotation=-180..0] remove wall_warp
scoreboard players set @s[x=755.0,y=11,z=6.0,dx=0,dy=1,dz=1,y_rotation=-180..0] Room 0
scoreboard players set @s[x=755.0,y=11,z=6.0,dx=0,dy=1,dz=1,y_rotation=-180..0] LastRoom 0
execute if entity @s[x=755.0,y=11,z=6.0,dx=0,dy=1,dz=1,y_rotation=-180..0] run function luigis_mansion:other/music/set/silence
scoreboard players set @s[x=755.0,y=11,z=6.0,dx=0,dy=1,dz=1,y_rotation=-180..0] LoadedChunks 0
tag @s[x=755.0,y=11,z=6.0,dx=0,dy=1,dz=1,y_rotation=-180..0] remove loaded_chunks
execute if entity @s[x=755.0,y=11,z=7.0,dx=0,dy=1,dz=0,y_rotation=-180..0] in minecraft:overworld run teleport @s 721.0 102 8
execute if entity @s[x=755.0,y=11,z=6.0,dx=0,dy=1,dz=0,y_rotation=-180..0] in minecraft:overworld run teleport @s 721.0 102 7
execute in minecraft:overworld run tag @s[x=720.0,y=102,z=7.0,dx=0,dy=1,dz=1,y_rotation=-180..0] remove wall_warp
execute in minecraft:overworld run scoreboard players set @s[x=720.0,y=102,z=7.0,dx=0,dy=1,dz=1,y_rotation=-180..0] LoadedChunks 0
execute in minecraft:overworld run tag @s[x=720.0,y=102,z=7.0,dx=0,dy=1,dz=1,y_rotation=-180..0] remove loaded_chunks
execute in minecraft:overworld if entity @s[x=720.0,y=102,z=8.0,dx=0,dy=1,dz=0,y_rotation=0..-180] in luigis_mansion:hidden run teleport @s 755.0 11 7
execute in minecraft:overworld if entity @s[x=720.0,y=102,z=7.0,dx=0,dy=1,dz=0,y_rotation=0..-180] in luigis_mansion:hidden run teleport @s 755.0 11 6
#hallway 2-nursery
stopsound @s[x=738.0,y=20,z=-43.0,dx=0,dy=1,dz=0,y_rotation=0..-180] ambient luigis_mansion:music.mansion.room.nursery
scoreboard players set @s[x=738.0,y=20,z=-43.0,dx=0,dy=1,dz=0,y_rotation=0..-180] RoomNoise 0
#hallway 4-ball room
scoreboard players set @s[x=707.0,y=11,z=37.0,dx=0,dy=1,dz=0,y_rotation=-90..90] RoomNoise 0
#hallway 5-washroom 1
stopsound @s[x=682.0,y=11,z=4.0,dx=0,dy=1,dz=0,y_rotation=90..-90] ambient luigis_mansion:music.mansion.melody
scoreboard players set @s[x=682.0,y=11,z=4.0,dx=0,dy=1,dz=0,y_rotation=90..-90] RoomNoise 0
#hallway 5-conservatory
stopsound @s[x=679.0,y=11,z=15.0,dx=0,dy=1,dz=0,y_rotation=0..-180] ambient luigis_mansion:music.mansion.melody
scoreboard players set @s[x=679.0,y=11,z=15.0,dx=0,dy=1,dz=0,y_rotation=0..-180] RoomNoise 0
scoreboard players reset @s[x=663.0,y=11,z=21.0,dx=0,dy=1,dz=0,y_rotation=-180..0] Time
#hallway 4-dining room
scoreboard players set @s[x=706.0,y=11,z=31.0,dx=0,dy=1,dz=0,y_rotation=90..-90] RoomNoise 0
#dining room-kitchen
scoreboard players set @s[x=704.0,y=11,z=-47.0,dx=1,dy=1,dz=0,y_rotation=-90..90] RoomNoise 0
#kitchen-boneyard
scoreboard players set @s[x=698.0,y=11,z=-73.0,dx=0,dy=1,dz=0,y_rotation=0..-180] RoomNoise 0
#hallway 6-courtyard
scoreboard players set @s[x=653.0,y=102,z=-6.0,dx=0,dy=1,dz=0,y_rotation=-180..0] RoomNoise 0
#courtyard-rec room
scoreboard players set @s[x=653.0,y=102,z=53.0,dx=0,dy=1,dz=0,y_rotation=-180..0] RoomNoise 0
#hallway 5-hallway 8
stopsound @s[x=682.0,y=11,z=44.0,dx=0,dy=1,dz=0,y_rotation=-90..90] ambient luigis_mansion:music.mansion.melody
scoreboard players set @s[x=682.0,y=11,z=44.0,dx=0,dy=1,dz=0,y_rotation=-90..90] RoomNoise 0
#astral hall-observatory
execute if entity @s[x=666.0,y=20,z=107.0,dx=0,dy=1,dz=0,y_rotation=-90..90] unless data storage luigis_mansion:data current_state.current_data.rooms.astral_hall{cleared:1b} run playsound luigis_mansion:music.trick_door music @s 666 20 97 1000
execute if entity @s[x=666.0,y=20,z=107.0,dx=0,dy=1,dz=0,y_rotation=-90..90] unless data storage luigis_mansion:data current_state.current_data.rooms.astral_hall{cleared:1b} run tag @s remove wall_warp
execute if entity @s[x=666.0,y=20,z=107.0,dx=0,dy=1,dz=0,y_rotation=-90..90] unless data storage luigis_mansion:data current_state.current_data.rooms.astral_hall{cleared:1b} run teleport @s 666 20 88.0
stopsound @s[x=645.0,y=20,z=88.0,dx=0,dy=1,dz=0,y_rotation=90..-90] ambient luigis_mansion:music.mansion.room.observatory
scoreboard players set @s[x=645.0,y=20,z=88.0,dx=0,dy=1,dz=0,y_rotation=90..-90] RoomNoise 0
#hallway 5-billiards room
stopsound @s[x=685.0,y=11,z=10.0,dx=0,dy=1,dz=0,y_rotation=-180..0] ambient luigis_mansion:music.mansion.melody
scoreboard players set @s[x=685.0,y=11,z=10.0,dx=0,dy=1,dz=0,y_rotation=-180..0] RoomNoise 0
#hallway 19-telephone room
scoreboard players set @s[x=752.0,y=29,z=-26.0,dx=0,dy=1,dz=0,y_rotation=-90..90] RoomNoise 0
scoreboard players set @s[x=749.0,y=29,z=-19.0,dx=0,dy=1,dz=0,y_rotation=90..-90] RoomNoise 0
#telephone room-clockwork room
scoreboard players set @s[x=752.0,y=29,z=9.0,dx=0,dy=1,dz=0,y_rotation=0..-180] RoomNoise 0
scoreboard players reset @s[x=698.0,y=120,z=19.0,dx=0,dy=1,dz=0,y_rotation=-180..0] Time
#hallway 19-armory
scoreboard players set @s[x=752.0,y=29,z=-32.0,dx=0,dy=1,dz=0,y_rotation=90..-90] RoomNoise 0
#hallway 22-secret altar
execute if entity @s[x=653.0,y=93,z=33.0,dx=0,dy=1,dz=0,y_rotation=-180..0] if data storage luigis_mansion:data current_state.current_data.rooms.secret_altar{cleared:1b} unless score #loaded_exterior Selected matches -1 in minecraft:overworld run function luigis_mansion:room/load_exterior/empty
execute if entity @s[x=653.0,y=93,z=33.0,dx=0,dy=1,dz=0,y_rotation=-180..0] if data storage luigis_mansion:data current_state.current_data.rooms.secret_altar{cleared:1b} run function luigis_mansion:entities/player/animation/set/reset
execute if entity @s[x=653.0,y=93,z=33.0,dx=0,dy=1,dz=0,y_rotation=-180..0] if data storage luigis_mansion:data current_state.current_data.rooms.secret_altar{cleared:1b} run tag @a remove wall_warp
execute if entity @s[x=653.0,y=93,z=33.0,dx=0,dy=1,dz=0,y_rotation=-180..0] if data storage luigis_mansion:data current_state.current_data.rooms.secret_altar{cleared:1b} as @a run function luigis_mansion:room/ghost_portrificationizer_room/warp_to
execute if entity @s[x=653.0,y=93,z=33.0,dx=0,dy=1,dz=0,y_rotation=-180..0] if data storage luigis_mansion:data current_state.current_data.rooms.secret_altar{cleared:0b} run teleport @s 655.0 2 33