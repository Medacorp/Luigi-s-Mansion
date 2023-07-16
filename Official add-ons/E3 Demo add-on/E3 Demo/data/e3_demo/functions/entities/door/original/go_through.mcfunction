#boo woods-entrance
tag @s[x=755.0,y=11,z=8.0,dx=0,dy=1,dz=1,y_rotation=-180..0] remove wall_warp
scoreboard players set @s[x=755.0,y=11,z=8.0,dx=0,dy=1,dz=1,y_rotation=-180..0] Room 0
scoreboard players set @s[x=755.0,y=11,z=8.0,dx=0,dy=1,dz=1,y_rotation=-180..0] LastRoom 0
execute if entity @s[x=755.0,y=11,z=8.0,dx=0,dy=1,dz=1,y_rotation=-180..0] run function luigis_mansion:other/music/set/silence
scoreboard players set @s[x=755.0,y=11,z=8.0,dx=0,dy=1,dz=1,y_rotation=-180..0] LoadedChunks 0
tag @s[x=755.0,y=11,z=8.0,dx=0,dy=1,dz=1,y_rotation=-180..0] remove loaded_chunks
execute if entity @s[x=755.0,y=11,z=8.0,dx=0,dy=1,dz=0,y_rotation=-180..0] in minecraft:overworld run teleport @s 721.0 102 7
execute if entity @s[x=755.0,y=11,z=9.0,dx=0,dy=1,dz=0,y_rotation=-180..0] in minecraft:overworld run teleport @s 721.0 102 8
execute in minecraft:overworld run tag @s[x=720.0,y=102,z=7.0,dx=0,dy=1,dz=1,y_rotation=-180..0] remove wall_warp
execute in minecraft:overworld run scoreboard players set @s[x=720.0,y=102,z=7.0,dx=0,dy=1,dz=1,y_rotation=-180..0] LoadedChunks 0
execute in minecraft:overworld run tag @s[x=720.0,y=102,z=7.0,dx=0,dy=1,dz=1,y_rotation=-180..0] remove loaded_chunks
execute in minecraft:overworld if entity @s[x=720.0,y=102,z=7.0,dx=0,dy=1,dz=0,y_rotation=0..-180] in e3_demo:original run teleport @s 755.0 11 8
execute in minecraft:overworld if entity @s[x=720.0,y=102,z=8.0,dx=0,dy=1,dz=0,y_rotation=0..-180] in e3_demo:original run teleport @s 755.0 11 9