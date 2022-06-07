#boo woods-foyer
scoreboard players set @s[x=755.0,y=11,z=8.0,dx=0,dy=1,dz=1,y_rotation=-180..0] Room 0
scoreboard players set @s[x=755.0,y=11,z=8.0,dx=0,dy=1,dz=1,y_rotation=-180..0] LastRoom 0
execute if entity @s[x=755.0,y=11,z=8.0,dx=0,dy=1,dz=1,y_rotation=-180..0] run function luigis_mansion:other/music/set/silence
scoreboard players set @s[x=755.0,y=11,z=8.0,dx=0,dy=1,dz=1,y_rotation=-180..0] LoadedChunks 0
tag @s[x=755.0,y=11,z=8.0,dx=0,dy=1,dz=1,y_rotation=-180..0] remove loaded_chunks
execute if entity @s[x=755.0,y=11,z=8.0,dx=0,dy=1,dz=0,y_rotation=-180..0] in minecraft:overworld run teleport @s 721.0 102 7
execute if entity @s[x=755.0,y=11,z=9.0,dx=0,dy=1,dz=0,y_rotation=-180..0] in minecraft:overworld run teleport @s 721.0 102 8
execute in minecraft:overworld run scoreboard players set @s[x=720.0,y=102,z=7.0,dx=0,dy=1,dz=1,y_rotation=-180..0] LoadedChunks 0
execute in minecraft:overworld run tag @s[x=720.0,y=102,z=7.0,dx=0,dy=1,dz=1,y_rotation=-180..0] remove loaded_chunks
execute in minecraft:overworld if entity @s[x=720.0,y=102,z=7.0,dx=0,dy=1,dz=0,y_rotation=0..-180] in luigis_mansion:normal run teleport @s 755.0 11 8
execute in minecraft:overworld if entity @s[x=720.0,y=102,z=8.0,dx=0,dy=1,dz=0,y_rotation=0..-180] in luigis_mansion:normal run teleport @s 755.0 11 9
#hallway 1-parlor
teleport @s[x=736.0,y=20,z=8.0,dx=0,dy=1,dz=0,y_rotation=0..-180] 728.0 20 27
teleport @s[x=736.0,y=20,z=9.0,dx=0,dy=1,dz=0,y_rotation=0..-180] 728.0 20 28
teleport @s[x=728.0,y=20,z=27.0,dx=0,dy=1,dz=0,y_rotation=-180..0] 737.0 20 8
teleport @s[x=728.0,y=20,z=28.0,dx=0,dy=1,dz=0,y_rotation=-180..0] 737.0 20 9
#parlor-anteroom
teleport @s[x=713.0,y=20,z=21.0,dx=0,dy=1,dz=0,y_rotation=0..-180] 694.0 20 26
teleport @s[x=694.0,y=20,z=26.0,dx=0,dy=1,dz=0,y_rotation=-180..0] 714.0 20 21
#anteroom-wardrobe room
teleport @s[x=689.0,y=20,z=42.0,dx=0,dy=1,dz=0,y_rotation=-90..90] 682 20 57.0
teleport @s[x=682.0,y=20,z=56.0,dx=0,dy=1,dz=0,y_rotation=90..-90] 689 20 42.0
#wardrobe room-balcony 1
teleport @s[x=684.0,y=20,z=75.0,dx=0,dy=1,dz=0,y_rotation=-90..90] 679 111 39.0
teleport @s[x=679.0,y=111,z=38.0,dx=0,dy=1,dz=0,y_rotation=90..-90] 684 20 75.0
#hallway 1-hallway 2
teleport @s[x=739.0,y=20,z=18.0,dx=0,dy=1,dz=0,y_rotation=-90..90] 726 20 43.0
teleport @s[x=726.0,y=20,z=42.0,dx=0,dy=1,dz=0,y_rotation=90..-90] 739 20 18.0
#hallway 2-study
teleport @s[x=723.0,y=20,z=47.0,dx=0,dy=1,dz=0,y_rotation=0..-180] 716.0 20 48
teleport @s[x=716.0,y=20,z=48.0,dx=0,dy=1,dz=0,y_rotation=-180..0] 724.0 20 47
#hallway 2-master bedroom
teleport @s[x=723.0,y=20,z=75.0,dx=0,dy=1,dz=0,y_rotation=0..-180] 698.0 111 51
teleport @s[x=698.0,y=111,z=51.0,dx=0,dy=1,dz=0,y_rotation=-180..0] 724.0 20 75
#hallway 2-nursery
teleport @s[x=729.0,y=20,z=66.0,dx=0,dy=1,dz=0,y_rotation=-180..0] 739.0 20 58
stopsound @s[x=738.0,y=20,z=58.0,dx=0,dy=1,dz=0,y_rotation=0..-180] ambient luigis_mansion:music.mansion.room.nursery
scoreboard players set @s[x=738.0,y=20,z=58.0,dx=0,dy=1,dz=0,y_rotation=0..-180] RoomNoise 0
teleport @s[x=738.0,y=20,z=58.0,dx=0,dy=1,dz=0,y_rotation=0..-180] 729.0 20 66
#foyer-hallway 3
teleport @s[x=743.0,y=11,z=8.0,dx=0,dy=1,dz=0,y_rotation=0..-180] 719.0 11 -6
teleport @s[x=743.0,y=11,z=9.0,dx=0,dy=1,dz=0,y_rotation=0..-180] 719.0 11 -5
teleport @s[x=719.0,y=11,z=-6.0,dx=0,dy=1,dz=0,y_rotation=-180..0] 744.0 11 8
teleport @s[x=719.0,y=11,z=-5.0,dx=0,dy=1,dz=0,y_rotation=-180..0] 744.0 11 9
#hallway 3-hallway 7
teleport @s[x=716.0,y=11,z=-34.0,dx=0,dy=1,dz=0,y_rotation=90..-90] 716 11 -43.0
teleport @s[x=716.0,y=11,z=-43.0,dx=0,dy=1,dz=0,y_rotation=-90..90] 716 11 -33.0
#hallway 6-bathroom 1
teleport @s[x=673.0,y=11,z=11.0,dx=0,dy=1,dz=0,y_rotation=-90..90] 654 11 17.0
teleport @s[x=654.0,y=11,z=16.0,dx=0,dy=1,dz=0,y_rotation=90..-90] 673 11 11.0
#hallway 4-ball room
scoreboard players set @s[x=707.0,y=11,z=-22.0,dx=0,dy=1,dz=0,y_rotation=90..-90] RoomNoise 0
teleport @s[x=707.0,y=11,z=-22.0,dx=0,dy=1,dz=0,y_rotation=90..-90] 706 11 -38.0
teleport @s[x=706.0,y=11,z=-38.0,dx=0,dy=1,dz=0,y_rotation=-90..90] 707 11 -21.0
#ball room-storage room
teleport @s[x=696.0,y=11,z=-64.0,dx=0,dy=1,dz=0,y_rotation=0..-180] 690.0 11 -64
teleport @s[x=690.0,y=11,z=-64.0,dx=0,dy=1,dz=0,y_rotation=-180..0] 697.0 11 -64
#hallway 5-washroom 1
stopsound @s[x=682.0,y=11,z=11.0,dx=0,dy=1,dz=0,y_rotation=-90..90] ambient luigis_mansion:music.mansion.melody
scoreboard players set @s[x=682.0,y=11,z=11.0,dx=0,dy=1,dz=0,y_rotation=-90..90] RoomNoise 0
teleport @s[x=682.0,y=11,z=11.0,dx=0,dy=1,dz=0,y_rotation=-90..90] 664 11 36.0
teleport @s[x=664.0,y=11,z=35.0,dx=0,dy=1,dz=0,y_rotation=90..-90] 682 11 11.0
#hallway 3-fortune tellers room
teleport @s[x=719.0,y=11,z=-28.0,dx=0,dy=1,dz=0,y_rotation=-180..0] 736.0 11 -32
teleport @s[x=735.0,y=11,z=-32.0,dx=0,dy=1,dz=0,y_rotation=0..-180] 719.0 11 -28
#fortune tellers room-mirror room
teleport @s[x=741.0,y=11,z=-38.0,dx=0,dy=1,dz=0,y_rotation=90..-90] 741 11 -43.0
teleport @s[x=741.0,y=11,z=-43.0,dx=0,dy=1,dz=0,y_rotation=-90..90] 741 11 -37.0
#hallway 3-laundry room
teleport @s[x=716.0,y=11,z=24.0,dx=0,dy=1,dz=0,y_rotation=-90..90] 716 11 59.0
teleport @s[x=716.0,y=11,z=58.0,dx=0,dy=1,dz=0,y_rotation=90..-90] 716 11 24.0
#laundry room-butlers room
teleport @s[x=719.0,y=11,z=65.0,dx=0,dy=1,dz=0,y_rotation=-180..0] 739.0 11 61
teleport @s[x=738.0,y=11,z=61.0,dx=0,dy=1,dz=0,y_rotation=0..-180] 719.0 11 65
#hallway 5-conservatory
stopsound @s[x=679.0,y=11,z=0.0,dx=0,dy=1,dz=0,y_rotation=0..-180] ambient luigis_mansion:music.mansion.melody
scoreboard players set @s[x=679.0,y=11,z=0.0,dx=0,dy=1,dz=0,y_rotation=0..-180] RoomNoise 0
teleport @s[x=679.0,y=11,z=0.0,dx=0,dy=1,dz=0,y_rotation=0..-180] 663.0 11 -6
scoreboard players reset @s[x=663.0,y=11,z=-6.0,dx=0,dy=1,dz=0,y_rotation=-180..0] Time
teleport @s[x=663.0,y=11,z=-6.0,dx=0,dy=1,dz=0,y_rotation=-180..0] 680.0 11 0
#hallway 4-dining room
scoreboard players set @s[x=706.0,y=11,z=-16.0,dx=0,dy=1,dz=0,y_rotation=-90..90] RoomNoise 0
teleport @s[x=706.0,y=11,z=-16.0,dx=0,dy=1,dz=0,y_rotation=-90..90] 704 11 30.0
teleport @s[x=704.0,y=11,z=29.0,dx=0,dy=1,dz=0,y_rotation=90..-90] 706 11 -16.0
#dining room-kitchen
teleport @s[x=704.0,y=11,z=57.0,dx=0,dy=1,dz=0,y_rotation=-90..90] 704 11 63.0
teleport @s[x=705.0,y=11,z=57.0,dx=0,dy=1,dz=0,y_rotation=-90..90] 705 11 63.0
scoreboard players set @s[x=704.0,y=11,z=62.0,dx=1,dy=1,dz=0,y_rotation=90..-90] RoomNoise 0
teleport @s[x=704.0,y=11,z=62.0,dx=0,dy=1,dz=0,y_rotation=90..-90] 704 11 57.0
teleport @s[x=705.0,y=11,z=62.0,dx=0,dy=1,dz=0,y_rotation=90..-90] 705 11 57.0
#kitchen-boneyard
scoreboard players set @s[x=698.0,y=11,z=88.0,dx=0,dy=1,dz=0,y_rotation=0..-180] RoomNoise 0
teleport @s[x=698.0,y=11,z=88.0,dx=0,dy=1,dz=0,y_rotation=0..-180] 685.0 102 53
teleport @s[x=685.0,y=102,z=53.0,dx=0,dy=1,dz=0,y_rotation=-180..0] 699.0 11 88
#hallway 6-courtyard
teleport @s[x=668.0,y=11,z=8.0,dx=0,dy=1,dz=0,y_rotation=0..-180] 653.0 102 21
scoreboard players set @s[x=653.0,y=102,z=21.0,dx=0,dy=1,dz=0,y_rotation=-180..0] RoomNoise 0
teleport @s[x=653.0,y=102,z=21.0,dx=0,dy=1,dz=0,y_rotation=-180..0] 669.0 11 8
#courtyard-rec room
scoreboard players set @s[x=653.0,y=102,z=-38.0,dx=0,dy=1,dz=0,y_rotation=-180..0] RoomNoise 0
teleport @s[x=653.0,y=102,z=-38.0,dx=0,dy=1,dz=0,y_rotation=-180..0] 639.0 11 -58
teleport @s[x=638.0,y=11,z=-58.0,dx=0,dy=1,dz=0,y_rotation=0..-180] 653.0 102 -38
#rec room-hallway 8
teleport @s[x=648.0,y=11,z=-44.0,dx=0,dy=1,dz=0,y_rotation=-180..0] 661.0 11 -44
teleport @s[x=660.0,y=11,z=-44.0,dx=0,dy=1,dz=0,y_rotation=0..-180] 648.0 11 -44
#hallway 5-hallway 8
stopsound @s[x=682.0,y=11,z=-29.0,dx=0,dy=1,dz=0,y_rotation=90..-90] ambient luigis_mansion:music.mansion.melody
scoreboard players set @s[x=682.0,y=11,z=-29.0,dx=0,dy=1,dz=0,y_rotation=90..-90] RoomNoise 0
teleport @s[x=682.0,y=11,z=-29.0,dx=0,dy=1,dz=0,y_rotation=90..-90] 663 11 -37.0
teleport @s[x=663.0,y=11,z=-37.0,dx=0,dy=1,dz=0,y_rotation=-90..90] 682 11 -28.0
#hallway 8-tea room
teleport @s[x=660.0,y=20,z=-44.0,dx=0,dy=1,dz=0,y_rotation=0..-180] 648.0 20 -44
teleport @s[x=648.0,y=20,z=-44.0,dx=0,dy=1,dz=0,y_rotation=-180..0] 661.0 20 -44
#hallway 8-hallway 9
teleport @s[x=663.0,y=20,z=-37.0,dx=0,dy=1,dz=0,y_rotation=-90..90] 682 20 -28.0
teleport @s[x=682.0,y=20,z=-29.0,dx=0,dy=1,dz=0,y_rotation=90..-90] 663 20 -37.0
#hallway 9-washroom 2
teleport @s[x=682.0,y=20,z=11.0,dx=0,dy=1,dz=0,y_rotation=-90..90] 664 20 36.0
teleport @s[x=664.0,y=20,z=35.0,dx=0,dy=1,dz=0,y_rotation=90..-90] 682 20 11.0
#hallway 10-bathroom 2
teleport @s[x=673.0,y=20,z=11.0,dx=0,dy=1,dz=0,y_rotation=-90..90] 654 20 17.0
teleport @s[x=654.0,y=20,z=16.0,dx=0,dy=1,dz=0,y_rotation=90..-90] 673 20 11.0
#hallway 10-nanas room
teleport @s[x=673.0,y=20,z=5.0,dx=0,dy=1,dz=0,y_rotation=90..-90] 658 20 -2.0
teleport @s[x=658.0,y=20,z=-2.0,dx=0,dy=1,dz=0,y_rotation=-90..90] 673 20 6.0
#hallway 11-astral hall
teleport @s[x=691.0,y=20,z=-22.0,dx=0,dy=1,dz=0,y_rotation=90..-90] 666 20 -72.0
teleport @s[x=666.0,y=20,z=-72.0,dx=0,dy=1,dz=0,y_rotation=-90..90] 691 20 -21.0
#astral hall-observatory
execute if entity @s[x=666.0,y=20,z=-92.0,dx=0,dy=1,dz=0,y_rotation=90..-90] unless data storage luigis_mansion:data current_state.current_data.rooms.astral_hall{cleared:1b} run playsound luigis_mansion:music.trick_door music @s 666 20 -82 1000
execute if entity @s[x=666.0,y=20,z=-92.0,dx=0,dy=1,dz=0,y_rotation=90..-90] unless data storage luigis_mansion:data current_state.current_data.rooms.astral_hall{cleared:1b} run teleport @s 666 20 -72.0
teleport @s[x=666.0,y=20,z=-92.0,dx=0,dy=1,dz=0,y_rotation=90..-90] 645 20 -73.0
stopsound @s[x=645.0,y=20,z=-73.0,dx=0,dy=1,dz=0,y_rotation=-90..90] ambient luigis_mansion:music.mansion.room.observatory
scoreboard players set @s[x=645.0,y=20,z=-73.0,dx=0,dy=1,dz=0,y_rotation=-90..90] RoomNoise 0
teleport @s[x=645.0,y=20,z=-73.0,dx=0,dy=1,dz=0,y_rotation=-90..90] 666 20 -91.0
#hallway 5-billiards room
stopsound @s[x=685.0,y=11,z=5.0,dx=0,dy=1,dz=0,y_rotation=-180..0] ambient luigis_mansion:music.mansion.melody
scoreboard players set @s[x=685.0,y=11,z=5.0,dx=0,dy=1,dz=0,y_rotation=-180..0] RoomNoise 0
teleport @s[x=685.0,y=11,z=5.0,dx=0,dy=1,dz=0,y_rotation=-180..0] 675.0 11 70
teleport @s[x=674.0,y=11,z=70.0,dx=0,dy=1,dz=0,y_rotation=0..-180] 685.0 11 5
#billiards room-projection room
teleport @s[x=681.0,y=11,z=65.0,dx=0,dy=1,dz=0,y_rotation=90..-90] 681 11 45.0
teleport @s[x=681.0,y=11,z=45.0,dx=0,dy=1,dz=0,y_rotation=-90..90] 681 11 66.0
#hallway 2-the twins room
teleport @s[x=729.0,y=20,z=56.0,dx=0,dy=1,dz=0,y_rotation=-180..0] 738.0 20 44
teleport @s[x=737.0,y=20,z=44.0,dx=0,dy=1,dz=0,y_rotation=0..-180] 729.0 20 56
#hallway 15-safari room
teleport @s[x=719.0,y=29,z=-34.0,dx=0,dy=1,dz=0,y_rotation=-180..0] 734.0 29 -39
teleport @s[x=733.0,y=29,z=-39.0,dx=0,dy=1,dz=0,y_rotation=0..-180] 719.0 29 -34
#safari room-hallway 16
teleport @s[x=738.0,y=29,z=-35.0,dx=0,dy=1,dz=0,y_rotation=-90..90] 753 29 -15.0
teleport @s[x=753.0,y=29,z=-16.0,dx=0,dy=1,dz=0,y_rotation=90..-90] 738 29 -35.0
#hallway 17-balcony 2
teleport @s[x=725.0,y=29,z=-13.0,dx=0,dy=1,dz=0,y_rotation=0..-180] 682.0 120 -13
teleport @s[x=682.0,y=120,z=-13.0,dx=0,dy=1,dz=0,y_rotation=-180..0] 726.0 29 -13
#balcony 2-hallway 18
teleport @s[x=682.0,y=120,z=28.0,dx=0,dy=1,dz=0,y_rotation=-180..0] 725.0 29 44
teleport @s[x=724.0,y=29,z=44.0,dx=0,dy=1,dz=0,y_rotation=0..-180] 682.0 120 28
#hallway 19-telephone room
scoreboard players set @s[x=752.0,y=29,z=41.0,dx=0,dy=1,dz=0,y_rotation=90..-90] RoomNoise 0
teleport @s[x=752.0,y=29,z=41.0,dx=0,dy=1,dz=0,y_rotation=90..-90] 749 29 34.0
scoreboard players set @s[x=749.0,y=29,z=34.0,dx=0,dy=1,dz=0,y_rotation=-90..90] RoomNoise 0
teleport @s[x=749.0,y=29,z=34.0,dx=0,dy=1,dz=0,y_rotation=-90..90] 752 29 42.0
#hallway 7-breaker room
teleport @s[x=713.0,y=2,z=-47.0,dx=0,dy=1,dz=0,y_rotation=0..-180] 699.0 2 -47
teleport @s[x=699.0,y=2,z=-47.0,dx=0,dy=1,dz=0,y_rotation=-180..0] 714.0 2 -47
#hallway 7-cellar
teleport @s[x=719.0,y=2,z=-47.0,dx=0,dy=1,dz=0,y_rotation=-180..0] 736.0 2 -47
teleport @s[x=735.0,y=2,z=-47.0,dx=0,dy=1,dz=0,y_rotation=0..-180] 719.0 2 -47
#cellar-hallway 20
teleport @s[x=741.0,y=2,z=-43.0,dx=0,dy=1,dz=0,y_rotation=-90..90] 726 2 -20.0
teleport @s[x=726.0,y=2,z=-21.0,dx=0,dy=1,dz=0,y_rotation=90..-90] 741 2 -43.0
#hallway 21-hallway 22
teleport @s[x=700.0,y=2,z=-18.0,dx=0,dy=1,dz=0,y_rotation=0..-180] 685.0 2 -18
teleport @s[x=685.0,y=2,z=-18.0,dx=0,dy=1,dz=0,y_rotation=-180..0] 701.0 2 -18
#telephone room-clockwork room
scoreboard players set @s[x=752.0,y=29,z=6.0,dx=0,dy=1,dz=0,y_rotation=0..-180] RoomNoise 0
teleport @s[x=737.0,y=29,z=6.0,dx=0,dy=1,dz=0,y_rotation=0..-180] 698.0 120 -4
scoreboard players reset @s[x=698.0,y=120,z=-4.0,dx=0,dy=1,dz=0,y_rotation=-180..0] Time
teleport @s[x=698.0,y=120,z=-4.0,dx=0,dy=1,dz=0,y_rotation=-180..0] 738.0 29 6
#hallway 19-armory
scoreboard players set @s[x=752.0,y=29,z=47.0,dx=0,dy=1,dz=0,y_rotation=-90..90] RoomNoise 0
teleport @s[x=752.0,y=29,z=47.0,dx=0,dy=1,dz=0,y_rotation=-90..90] 757 29 56.0
teleport @s[x=757.0,y=29,z=55.0,dx=0,dy=1,dz=0,y_rotation=90..-90] 752 29 47.0
#armory-ceramics studio
teleport @s[x=745.0,y=29,z=58.0,dx=0,dy=1,dz=0,y_rotation=0..-180] 712.0 29 60
teleport @s[x=712.0,y=29,z=60.0,dx=0,dy=1,dz=0,y_rotation=-180..0] 746.0 29 58
#hallway 21-pipe room
teleport @s[x=706.0,y=2,z=-15.0,dx=0,dy=1,dz=0,y_rotation=-90..90] 693 2 -4.0
teleport @s[x=693.0,y=2,z=-5.0,dx=0,dy=1,dz=0,y_rotation=90..-90] 706 2 -15.0
#hallway 20-cold storage
teleport @s[x=726.0,y=2,z=-15.0,dx=0,dy=1,dz=0,y_rotation=-90..90] 735 2 -4.0
teleport @s[x=735.0,y=2,z=-5.0,dx=0,dy=1,dz=0,y_rotation=90..-90] 726 2 -15.0
#hallway 13-sitting room
teleport @s[x=719.0,y=20,z=-30.0,dx=0,dy=1,dz=0,y_rotation=-180..0] 736.0 20 -34
teleport @s[x=735.0,y=20,z=-34.0,dx=0,dy=1,dz=0,y_rotation=0..-180] 719.0 20 -30
#sitting room-guest room
teleport @s[x=741.0,y=20,z=-38.0,dx=0,dy=1,dz=0,y_rotation=90..-90] 741 20 -43.0
teleport @s[x=741.0,y=20,z=-43.0,dx=0,dy=1,dz=0,y_rotation=-90..90] 741 20 -37.0
#hallway 17-the artists studio
teleport @s[x=736.0,y=29,z=-16.0,dx=0,dy=1,dz=0,y_rotation=90..-90] 699 29 -56.0
teleport @s[x=699.0,y=29,z=-56.0,dx=0,dy=1,dz=0,y_rotation=-90..90] 736 29 -15.0
#hallway 22-secret altar
teleport @s[x=654.0,y=2,z=-18.0,dx=0,dy=1,dz=0,y_rotation=0..-180] 653.0 93 -18
execute if entity @s[x=653.0,y=93,z=-18.0,dx=0,dy=1,dz=0,y_rotation=-180..0] if data storage luigis_mansion:data current_state.current_data.rooms.secret_altar{cleared:1b} unless entity @e[x=636.5,y=94,z=-17.5,distance=..0.7,type=minecraft:item_frame,limit=1] unless score #loaded_exterior Selected matches -1 in minecraft:overworld run function luigis_mansion:room/load_exterior/empty
execute if entity @s[x=653.0,y=93,z=-18.0,dx=0,dy=1,dz=0,y_rotation=-180..0] if data storage luigis_mansion:data current_state.current_data.rooms.secret_altar{cleared:1b} unless entity @e[x=636.5,y=94,z=-17.5,distance=..0.7,type=minecraft:item_frame,limit=1] run function luigis_mansion:entities/player/animation/set/reset
execute if entity @s[x=653.0,y=93,z=-18.0,dx=0,dy=1,dz=0,y_rotation=-180..0] if data storage luigis_mansion:data current_state.current_data.rooms.secret_altar{cleared:1b} unless entity @e[x=636.5,y=94,z=-17.5,distance=..0.7,type=minecraft:item_frame,limit=1] as @a run function luigis_mansion:room/ghost_portrificationizer_room/warp_to
execute if entity @s[x=653.0,y=93,z=-18.0,dx=0,dy=1,dz=0,y_rotation=-180..0] if data storage luigis_mansion:data current_state.current_data.rooms.secret_altar{cleared:0b} run teleport @s 655.0 2 -18