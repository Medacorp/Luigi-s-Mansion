#boo woods-entrance
scoreboard players set @s[x=755.0,y=11,z=8.0,dx=0,dy=1,dz=1,y_rotation=-180..0] Room 0
scoreboard players set @s[x=755.0,y=11,z=8.0,dx=0,dy=1,dz=1,y_rotation=-180..0] LastRoom 0
execute if entity @s[x=755.0,y=11,z=8.0,dx=0,dy=1,dz=1,y_rotation=-180..0] run function luigis_mansion:other/music/set/silence
scoreboard players set @s[x=755.0,y=11,z=8.0,dx=0,dy=1,dz=1,y_rotation=-180..0] LoadedChunks 0
tag @s[x=755.0,y=11,z=8.0,dx=0,dy=1,dz=1,y_rotation=-180..0] remove loaded_chunks
execute if entity @s[x=755.0,y=11,z=8.0,dx=0,dy=1,dz=0,y_rotation=-180..0] in minecraft:overworld run teleport @s 721.0 102 7
execute if entity @s[x=755.0,y=11,z=9.0,dx=0,dy=1,dz=0,y_rotation=-180..0] in minecraft:overworld run teleport @s 721.0 102 8
execute in minecraft:overworld run scoreboard players set @s[x=720.0,y=102,z=7.0,dx=0,dy=1,dz=1,y_rotation=-180..0] LoadedChunks 0
execute in minecraft:overworld run tag @s[x=720.0,y=102,z=7.0,dx=0,dy=1,dz=1,y_rotation=-180..0] remove loaded_chunks
execute in minecraft:overworld if entity @s[x=720.0,y=102,z=7.0,dx=0,dy=1,dz=0,y_rotation=0..-180] in luigis_beta_mansion:original run teleport @s 755.0 11 8
execute in minecraft:overworld if entity @s[x=720.0,y=102,z=8.0,dx=0,dy=1,dz=0,y_rotation=0..-180] in luigis_beta_mansion:original run teleport @s 755.0 11 9
#hallway 1-living room
teleport @s[x=736.0,y=20,z=8.0,dx=0,dy=1,dz=0,y_rotation=0..-180] 728.0 20 27
teleport @s[x=736.0,y=20,z=9.0,dx=0,dy=1,dz=0,y_rotation=0..-180] 728.0 20 28
teleport @s[x=728.0,y=20,z=27.0,dx=0,dy=1,dz=0,y_rotation=-180..0] 737.0 20 8
teleport @s[x=728.0,y=20,z=28.0,dx=0,dy=1,dz=0,y_rotation=-180..0] 737.0 20 9
#hallway 1-hallway 2
teleport @s[x=739.0,y=20,z=18.0,dx=0,dy=1,dz=0,y_rotation=-90..90] 726 20 43.0
teleport @s[x=726.0,y=20,z=42.0,dx=0,dy=1,dz=0,y_rotation=90..-90] 739 20 18.0
#hallway 2-study
teleport @s[x=723.0,y=20,z=47.0,dx=0,dy=1,dz=0,y_rotation=0..-180] 716.0 20 48
teleport @s[x=716.0,y=20,z=48.0,dx=0,dy=1,dz=0,y_rotation=-180..0] 724.0 20 47
#hallway 2-bed room 1
teleport @s[x=723.0,y=20,z=75.0,dx=0,dy=1,dz=0,y_rotation=0..-180] 698.0 111 51
teleport @s[x=698.0,y=111,z=51.0,dx=0,dy=1,dz=0,y_rotation=-180..0] 724.0 20 75
#hallway 2-childs room
teleport @s[x=729.0,y=20,z=66.0,dx=0,dy=1,dz=0,y_rotation=-180..0] 739.0 20 58
teleport @s[x=738.0,y=20,z=58.0,dx=0,dy=1,dz=0,y_rotation=0..-180] 729.0 20 66
#entrance-hallway 3
teleport @s[x=743.0,y=11,z=8.0,dx=0,dy=1,dz=0,y_rotation=0..-180] 719.0 11 -6
teleport @s[x=743.0,y=11,z=9.0,dx=0,dy=1,dz=0,y_rotation=0..-180] 719.0 11 -5
teleport @s[x=719.0,y=11,z=-6.0,dx=0,dy=1,dz=0,y_rotation=-180..0] 744.0 11 8
teleport @s[x=719.0,y=11,z=-5.0,dx=0,dy=1,dz=0,y_rotation=-180..0] 744.0 11 9
#hallway 6-bath room
teleport @s[x=673.0,y=11,z=11.0,dx=0,dy=1,dz=0,y_rotation=-90..90] 654 11 17.0
teleport @s[x=654.0,y=11,z=16.0,dx=0,dy=1,dz=0,y_rotation=90..-90] 673 11 11.0
#hallway 5-lavatory
teleport @s[x=682.0,y=11,z=11.0,dx=0,dy=1,dz=0,y_rotation=-90..90] 664 11 36.0
teleport @s[x=664.0,y=11,z=35.0,dx=0,dy=1,dz=0,y_rotation=90..-90] 682 11 11.0
#hallway 3-dining room
teleport @s[x=713.0,y=11,z=7.0,dx=0,dy=1,dz=0,y_rotation=0..-180] 710.0 11 51
teleport @s[x=710.0,y=11,z=51.0,dx=0,dy=1,dz=0,y_rotation=-180..0] 714.0 11 7
#hallway 4-dining room
teleport @s[x=706.0,y=11,z=-16.0,dx=0,dy=1,dz=0,y_rotation=-90..90] 704 11 30.0
teleport @s[x=704.0,y=11,z=29.0,dx=0,dy=1,dz=0,y_rotation=90..-90] 706 11 -16.0
#dining room-kitchen
teleport @s[x=704.0,y=11,z=57.0,dx=0,dy=1,dz=0,y_rotation=-90..90] 704 11 63.0
teleport @s[x=705.0,y=11,z=57.0,dx=0,dy=1,dz=0,y_rotation=-90..90] 705 11 63.0
teleport @s[x=704.0,y=11,z=62.0,dx=0,dy=1,dz=0,y_rotation=90..-90] 704 11 57.0
teleport @s[x=705.0,y=11,z=62.0,dx=0,dy=1,dz=0,y_rotation=90..-90] 705 11 57.0
#kitchen-back yard
teleport @s[x=698.0,y=11,z=88.0,dx=0,dy=1,dz=0,y_rotation=0..-180] 685.0 102 53
teleport @s[x=685.0,y=102,z=53.0,dx=0,dy=1,dz=0,y_rotation=-180..0] 699.0 11 88