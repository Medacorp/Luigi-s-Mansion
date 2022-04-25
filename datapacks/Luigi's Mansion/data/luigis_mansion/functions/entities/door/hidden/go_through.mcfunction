#boo woods-foyer
scoreboard players set @s[x=755.0,y=11,z=8.0,dx=0,dy=1,dz=1,y_rotation=-180..0] Room 0
scoreboard players set @s[x=755.0,y=11,z=8.0,dx=0,dy=1,dz=1,y_rotation=-180..0] LastRoom 0
execute if entity @s[x=755.0,y=11,z=8.0,dx=0,dy=1,dz=1,y_rotation=-180..0] run function luigis_mansion:other/music/set/silence
execute if entity @s[x=755.0,y=11,z=7.0,dx=0,dy=1,dz=0,y_rotation=-180..0] in minecraft:overworld run teleport @s 721.0 102 8
execute if entity @s[x=755.0,y=11,z=6.0,dx=0,dy=1,dz=0,y_rotation=-180..0] in minecraft:overworld run teleport @s 721.0 102 7
execute in minecraft:overworld if entity @s[x=720.0,y=102,z=8.0,dx=0,dy=1,dz=0,y_rotation=0..-180] in luigis_mansion:normal run teleport @s 756.0 11 7
execute in minecraft:overworld if entity @s[x=720.0,y=102,z=7.0,dx=0,dy=1,dz=0,y_rotation=0..-180] in luigis_mansion:normal run teleport @s 756.0 11 6
#hallway 1-parlor
teleport @s[x=736.0,y=20,z=7.0,dx=0,dy=1,dz=0,y_rotation=-180..0] 728.0 20 -12
teleport @s[x=736.0,y=20,z=6.0,dx=0,dy=1,dz=0,y_rotation=-180..0] 728.0 20 -13
teleport @s[x=728.0,y=20,z=-12.0,dx=0,dy=1,dz=0,y_rotation=0..-180] 737.0 20 7
teleport @s[x=728.0,y=20,z=-13.0,dx=0,dy=1,dz=0,y_rotation=0..-180] 737.0 20 6
#parlor-anteroom
teleport @s[x=713.0,y=20,z=-6.0,dx=0,dy=1,dz=0,y_rotation=-180..0] 694.0 20 -11
teleport @s[x=694.0,y=20,z=-11.0,dx=0,dy=1,dz=0,y_rotation=0..-180] 714.0 20 -6
#anteroom-wardrobe room
teleport @s[x=689.0,y=20,z=-27.0,dx=0,dy=1,dz=0,y_rotation=90..-90] 682 20 -41.0
teleport @s[x=682.0,y=20,z=-41.0,dx=0,dy=1,dz=0,y_rotation=-90..90] 689 20 -26.0
#wardrobe room-balcony 1
teleport @s[x=684.0,y=20,z=-60.0,dx=0,dy=1,dz=0,y_rotation=90..-90] 679 111 -23.0
teleport @s[x=679.0,y=111,z=-23.0,dx=0,dy=1,dz=0,y_rotation=-90..90] 684 20 -59.0
#hallway 1-hallway 2
teleport @s[x=739.0,y=20,z=-3.0,dx=0,dy=1,dz=0,y_rotation=90..-90] 726 20 -27.0
teleport @s[x=726.0,y=20,z=-27.0,dx=0,dy=1,dz=0,y_rotation=-90..90] 739 20 -2.0
#hallway 2-study
teleport @s[x=723.0,y=20,z=-32.0,dx=0,dy=1,dz=0,y_rotation=-180..0] 716.0 20 -33
teleport @s[x=716.0,y=20,z=-33.0,dx=0,dy=1,dz=0,y_rotation=0..-180] 724.0 20 -32
#hallway 2-master bedroom
teleport @s[x=723.0,y=20,z=-60.0,dx=0,dy=1,dz=0,y_rotation=-180..0] 698.0 111 -36
teleport @s[x=698.0,y=111,z=-36.0,dx=0,dy=1,dz=0,y_rotation=0..-180] 724.0 20 -60
#hallway 2-nursery
teleport @s[x=729.0,y=20,z=-51.0,dx=0,dy=1,dz=0,y_rotation=0..-180] 739.0 20 -43
stopsound @s[x=738.0,y=20,z=-43.0,dx=0,dy=1,dz=0,y_rotation=-180..0] ambient luigis_mansion:music.mansion.room.nursery
scoreboard players set @s[x=738.0,y=20,z=-43.0,dx=0,dy=1,dz=0,y_rotation=-180..0] RoomNoise 0
teleport @s[x=738.0,y=20,z=-43.0,dx=0,dy=1,dz=0,y_rotation=-180..0] 729.0 20 -51
#foyer-hallway 3
teleport @s[x=743.0,y=11,z=7.0,dx=0,dy=1,dz=0,y_rotation=-180..0] 719.0 11 21
teleport @s[x=743.0,y=11,z=6.0,dx=0,dy=1,dz=0,y_rotation=-180..0] 719.0 11 20
teleport @s[x=719.0,y=11,z=21.0,dx=0,dy=1,dz=0,y_rotation=0..-180] 744.0 11 7
teleport @s[x=719.0,y=11,z=20.0,dx=0,dy=1,dz=0,y_rotation=0..-180] 744.0 11 6
#hallway 3-hallway 7
teleport @s[x=716.0,y=11,z=49.0,dx=0,dy=1,dz=0,y_rotation=-90..90] 716 11 59.0
teleport @s[x=716.0,y=11,z=58.0,dx=0,dy=1,dz=0,y_rotation=90..-90] 716 11 49.0
#hallway 6-bathroom 1
teleport @s[x=673.0,y=11,z=4.0,dx=0,dy=1,dz=0,y_rotation=90..-90] 654 11 -1.0
teleport @s[x=654.0,y=11,z=-1.0,dx=0,dy=1,dz=0,y_rotation=-90..90] 673 11 5.0
#hallway 4-ball room
scoreboard players set @s[x=706.0,y=11,z=37.0,dx=0,dy=1,dz=0,y_rotation=-90..90] RoomNoise 0
teleport @s[x=706.0,y=11,z=37.0,dx=0,dy=1,dz=0,y_rotation=-90..90] 705 11 54.0
teleport @s[x=705.0,y=11,z=53.0,dx=0,dy=1,dz=0,y_rotation=90..-90] 706 11 37.0
#ball room-storage room
teleport @s[x=696.0,y=11,z=79.0,dx=0,dy=1,dz=0,y_rotation=-180..0] 690.0 11 79
teleport @s[x=690.0,y=11,z=79.0,dx=0,dy=1,dz=0,y_rotation=0..-180] 697.0 11 79
#hallway 5-washroom 1
stopsound @s[x=682.0,y=11,z=4.0,dx=0,dy=1,dz=0,y_rotation=90..-90] ambient luigis_mansion:music.mansion.melody
scoreboard players set @s[x=682.0,y=11,z=4.0,dx=0,dy=1,dz=0,y_rotation=90..-90] RoomNoise 0
teleport @s[x=682.0,y=11,z=4.0,dx=0,dy=1,dz=0,y_rotation=90..-90] 664 11 -20.0
teleport @s[x=664.0,y=11,z=-20.0,dx=0,dy=1,dz=0,y_rotation=-90..90] 682 11 5.0
#hallway 3-fortune tellers room
teleport @s[x=719.0,y=11,z=43.0,dx=0,dy=1,dz=0,y_rotation=0..-180] 736.0 11 47
teleport @s[x=735.0,y=11,z=47.0,dx=0,dy=1,dz=0,y_rotation=-180..0] 719.0 11 43
#fortune tellers room-mirror room
teleport @s[x=741.0,y=11,z=53.0,dx=0,dy=1,dz=0,y_rotation=-90..90] 741 11 59.0
teleport @s[x=741.0,y=11,z=58.0,dx=0,dy=1,dz=0,y_rotation=90..-90] 741 11 53.0
#hallway 3-laundry room
teleport @s[x=716.0,y=11,z=-9.0,dx=0,dy=1,dz=0,y_rotation=90..-90] 716 11 -43.0
teleport @s[x=716.0,y=11,z=-43.0,dx=0,dy=1,dz=0,y_rotation=-90..90] 716 11 -8.0
#laundry room-butlers room
teleport @s[x=719.0,y=11,z=-50.0,dx=0,dy=1,dz=0,y_rotation=0..-180] 739.0 11 -46
teleport @s[x=738.0,y=11,z=-46.0,dx=0,dy=1,dz=0,y_rotation=-180..0] 719.0 11 -50
#hallway 5-conservatory
stopsound @s[x=679.0,y=11,z=15.0,dx=0,dy=1,dz=0,y_rotation=-180..0] ambient luigis_mansion:music.mansion.melody
scoreboard players set @s[x=679.0,y=11,z=15.0,dx=0,dy=1,dz=0,y_rotation=-180..0] RoomNoise 0
teleport @s[x=679.0,y=11,z=15.0,dx=0,dy=1,dz=0,y_rotation=-180..0] 663.0 11 21
scoreboard players reset @s[x=663.0,y=11,z=21.0,dx=0,dy=1,dz=0,y_rotation=0..-180] Time
teleport @s[x=663.0,y=11,z=21.0,dx=0,dy=1,dz=0,y_rotation=0..-180] 680.0 11 15
#hallway 4-dining room
scoreboard players set @s[x=706.0,y=11,z=31.0,dx=0,dy=1,dz=0,y_rotation=90..-90] RoomNoise 0
teleport @s[x=706.0,y=11,z=31.0,dx=0,dy=1,dz=0,y_rotation=90..-90] 704 11 -14.0
teleport @s[x=704.0,y=11,z=-14.0,dx=0,dy=1,dz=0,y_rotation=-90..90] 706 11 32.0
#dining room-kitchen
teleport @s[x=704.0,y=11,z=-42.0,dx=0,dy=1,dz=0,y_rotation=90..-90] 704 11 -47.0
teleport @s[x=705.0,y=11,z=-42.0,dx=0,dy=1,dz=0,y_rotation=90..-90] 705 11 -47.0
scoreboard players set @s[x=704.0,y=11,z=-47.0,dx=1,dy=1,dz=0,y_rotation=-90..90] RoomNoise 0
teleport @s[x=704.0,y=11,z=-47.0,dx=0,dy=1,dz=0,y_rotation=-90..90] 704 11 -41.0
teleport @s[x=705.0,y=11,z=-47.0,dx=0,dy=1,dz=0,y_rotation=-90..90] 705 11 -41.0
#kitchen-boneyard
scoreboard players set @s[x=698.0,y=11,z=-73.0,dx=0,dy=1,dz=0,y_rotation=-180..0] RoomNoise 0
teleport @s[x=698.0,y=11,z=-73.0,dx=0,dy=1,dz=0,y_rotation=-180..0] 685.0 102 -38
teleport @s[x=685.0,y=102,z=-38.0,dx=0,dy=1,dz=0,y_rotation=0..-180] 699.0 11 -73
#hallway 6-courtyard
teleport @s[x=668.0,y=11,z=7.0,dx=0,dy=1,dz=0,y_rotation=-180..0] 653.0 102 -6
scoreboard players set @s[x=653.0,y=102,z=-6.0,dx=0,dy=1,dz=0,y_rotation=0..-180] RoomNoise 0
teleport @s[x=653.0,y=102,z=-6.0,dx=0,dy=1,dz=0,y_rotation=0..-180] 669.0 11 7
#courtyard-rec room
scoreboard players set @s[x=653.0,y=102,z=53.0,dx=0,dy=1,dz=0,y_rotation=0..-180] RoomNoise 0
teleport @s[x=653.0,y=102,z=53.0,dx=0,dy=1,dz=0,y_rotation=0..-180] 639.0 11 73
teleport @s[x=638.0,y=11,z=73.0,dx=0,dy=1,dz=0,y_rotation=-180..0] 653.0 102 53
#rec room-hallway 8
teleport @s[x=648.0,y=11,z=59.0,dx=0,dy=1,dz=0,y_rotation=0..-180] 661.0 11 59
teleport @s[x=660.0,y=11,z=59.0,dx=0,dy=1,dz=0,y_rotation=-180..0] 648.0 11 59
#hallway 5-hallway 8
stopsound @s[x=682.0,y=11,z=44.0,dx=0,dy=1,dz=0,y_rotation=-90..90] ambient luigis_mansion:music.mansion.melody
scoreboard players set @s[x=682.0,y=11,z=44.0,dx=0,dy=1,dz=0,y_rotation=-90..90] RoomNoise 0
teleport @s[x=682.0,y=11,z=44.0,dx=0,dy=1,dz=0,y_rotation=-90..90] 663 11 53.0
teleport @s[x=663.0,y=11,z=52.0,dx=0,dy=1,dz=0,y_rotation=90..-90] 682 11 44.0
#hallway 8-tea room
teleport @s[x=660.0,y=20,z=59.0,dx=0,dy=1,dz=0,y_rotation=-180..0] 648.0 20 59
teleport @s[x=648.0,y=20,z=59.0,dx=0,dy=1,dz=0,y_rotation=0..-180] 661.0 20 59
#hallway 8-hallway 9
teleport @s[x=663.0,y=20,z=52.0,dx=0,dy=1,dz=0,y_rotation=90..-90] 682 20 44.0
teleport @s[x=682.0,y=20,z=44.0,dx=0,dy=1,dz=0,y_rotation=-90..90] 663 20 53.0
#hallway 9-washroom 2
teleport @s[x=682.0,y=20,z=4.0,dx=0,dy=1,dz=0,y_rotation=90..-90] 664 20 -20.0
teleport @s[x=664.0,y=20,z=-20.0,dx=0,dy=1,dz=0,y_rotation=-90..90] 682 20 5.0
#hallway 10-bathroom 2
teleport @s[x=673.0,y=20,z=4.0,dx=0,dy=1,dz=0,y_rotation=90..-90] 654 20 -1.0
teleport @s[x=654.0,y=20,z=-1.0,dx=0,dy=1,dz=0,y_rotation=-90..90] 673 20 5.0
#hallway 10-nanas room
teleport @s[x=673.0,y=20,z=10.0,dx=0,dy=1,dz=0,y_rotation=-90..90] 658 20 182.0
teleport @s[x=658.0,y=20,z=17.0,dx=0,dy=1,dz=0,y_rotation=90..-90] 673 20 10.0
#hallway 11-astral hall
teleport @s[x=691.0,y=20,z=37.0,dx=0,dy=1,dz=0,y_rotation=-90..90] 666 20 88.0
teleport @s[x=666.0,y=20,z=87.0,dx=0,dy=1,dz=0,y_rotation=90..-90] 691 20 37.0
#astral hall-observatory
execute if entity @s[x=666.0,y=20,z=107.0,dx=0,dy=1,dz=0,y_rotation=-90..90] unless data storage luigis_mansion:data current_state.current_data.rooms.astral_hall{cleared:1b} run teleport @s 666 20 88.0
execute if entity @s[x=666.0,y=20,z=107.0,dx=0,dy=1,dz=0,y_rotation=-90..90] unless data storage luigis_mansion:data current_state.current_data.rooms.astral_hall{cleared:1b} run playsound luigis_mansion:music.trick_door music @s 666 20 97 1000
teleport @s[x=666.0,y=20,z=107.0,dx=0,dy=1,dz=0,y_rotation=-90..90] 645 20 89.0
stopsound @s[x=645.0,y=20,z=88.0,dx=0,dy=1,dz=0,y_rotation=90..-90] ambient luigis_mansion:music.mansion.room.observatory
scoreboard players set @s[x=645.0,y=20,z=88.0,dx=0,dy=1,dz=0,y_rotation=90..-90] RoomNoise 0
teleport @s[x=645.0,y=20,z=88.0,dx=0,dy=1,dz=0,y_rotation=90..-90] 666 20 107.0
#hallway 5-billiards room
stopsound @s[x=685.0,y=11,z=10.0,dx=0,dy=1,dz=0,y_rotation=0..-180] ambient luigis_mansion:music.mansion.melody
scoreboard players set @s[x=685.0,y=11,z=10.0,dx=0,dy=1,dz=0,y_rotation=0..-180] RoomNoise 0
teleport @s[x=685.0,y=11,z=10.0,dx=0,dy=1,dz=0,y_rotation=0..-180] 675.0 11 -55
teleport @s[x=674.0,y=11,z=-55.0,dx=0,dy=1,dz=0,y_rotation=-180..0] 685.0 11 10
#billiards room-projection room
teleport @s[x=681.0,y=11,z=-50.0,dx=0,dy=1,dz=0,y_rotation=-90..90] 681 11 -29.0
teleport @s[x=681.0,y=11,z=-30.0,dx=0,dy=1,dz=0,y_rotation=90..-90] 681 11 -50.0
#hallway 2-the twins room
teleport @s[x=729.0,y=20,z=-41.0,dx=0,dy=1,dz=0,y_rotation=0..-180] 738.0 20 -29
teleport @s[x=737.0,y=20,z=-29.0,dx=0,dy=1,dz=0,y_rotation=-180..0] 729.0 20 -41
#hallway 16-safari room
teleport @s[x=719.0,y=29,z=49.0,dx=0,dy=1,dz=0,y_rotation=0..-180] 734.0 29 54
teleport @s[x=733.0,y=29,z=54.0,dx=0,dy=1,dz=0,y_rotation=-180..0] 719.0 29 49
#safari room-hallway 16
teleport @s[x=738.0,y=29,z=50.0,dx=0,dy=1,dz=0,y_rotation=90..-90] 753 29 31.0
teleport @s[x=753.0,y=29,z=31.0,dx=0,dy=1,dz=0,y_rotation=-90..90] 738 29 51.0
#hallway 17-balcony 2
teleport @s[x=725.0,y=29,z=28.0,dx=0,dy=1,dz=0,y_rotation=-180..0] 682.0 120 28
teleport @s[x=682.0,y=120,z=28.0,dx=0,dy=1,dz=0,y_rotation=0..-180] 726.0 29 28
#balcony 2-hallway 18
teleport @s[x=682.0,y=120,z=-13.0,dx=0,dy=1,dz=0,y_rotation=0..-180] 725.0 29 -29
teleport @s[x=724.0,y=29,z=-29.0,dx=0,dy=1,dz=0,y_rotation=-180..0] 682.0 120 -13
#hallway 19-telephone room
scoreboard players set @s[x=752.0,y=29,z=-26.0,dx=0,dy=1,dz=0,y_rotation=-90..90] RoomNoise 0
teleport @s[x=752.0,y=29,z=-26.0,dx=0,dy=1,dz=0,y_rotation=-90..90] 749 29 -18.0
scoreboard players set @s[x=749.0,y=29,z=-19.0,dx=0,dy=1,dz=0,y_rotation=90..-90] RoomNoise 0
teleport @s[x=749.0,y=29,z=-19.0,dx=0,dy=1,dz=0,y_rotation=90..-90] 752 29 -26.0
#hallway 7-breaker room
teleport @s[x=713.0,y=2,z=62.0,dx=0,dy=1,dz=0,y_rotation=-180..0] 699.0 2 62
teleport @s[x=699.0,y=2,z=62.0,dx=0,dy=1,dz=0,y_rotation=0..-180] 714.0 2 62
#hallway 7-cellar
teleport @s[x=719.0,y=2,z=62.0,dx=0,dy=1,dz=0,y_rotation=0..-180] 736.0 2 62
teleport @s[x=735.0,y=2,z=62.0,dx=0,dy=1,dz=0,y_rotation=-180..0] 719.0 2 62
#cellar-hallway 20
teleport @s[x=741.0,y=2,z=58.0,dx=0,dy=1,dz=0,y_rotation=90..-90] 726 2 36.0
teleport @s[x=726.0,y=2,z=36.0,dx=0,dy=1,dz=0,y_rotation=-90..90] 741 2 59.0
#hallway 21-hallway 22
teleport @s[x=700.0,y=2,z=33.0,dx=0,dy=1,dz=0,y_rotation=-180..0] 685.0 2 33
teleport @s[x=685.0,y=2,z=33.0,dx=0,dy=1,dz=0,y_rotation=0..-180] 701.0 2 33
#telephone room-clockwork room
scoreboard players set @s[x=752.0,y=29,z=9.0,dx=0,dy=1,dz=0,y_rotation=-180..0] RoomNoise 0
teleport @s[x=737.0,y=29,z=9.0,dx=0,dy=1,dz=0,y_rotation=-180..0] 698.0 120 19
scoreboard players reset @s[x=698.0,y=120,z=19.0,dx=0,dy=1,dz=0,y_rotation=0..-180] Time
teleport @s[x=698.0,y=120,z=19.0,dx=0,dy=1,dz=0,y_rotation=0..-180] 738.0 29 9
#hallway 19-armory
scoreboard players set @s[x=752.0,y=29,z=-32.0,dx=0,dy=1,dz=0,y_rotation=90..-90] RoomNoise 0
teleport @s[x=752.0,y=29,z=-32.0,dx=0,dy=1,dz=0,y_rotation=90..-90] 757 29 -40.0
teleport @s[x=757.0,y=29,z=-40.0,dx=0,dy=1,dz=0,y_rotation=-90..90] 752 29 -31.0
#armory-ceramics studio
teleport @s[x=745.0,y=29,z=-43.0,dx=0,dy=1,dz=0,y_rotation=-180..0] 712.0 29 -45
teleport @s[x=712.0,y=29,z=-45.0,dx=0,dy=1,dz=0,y_rotation=0..-180] 746.0 29 -43
#hallway 21-pipe room
teleport @s[x=706.0,y=2,z=30.0,dx=0,dy=1,dz=0,y_rotation=90..-90] 693 2 20.0
teleport @s[x=693.0,y=2,z=20.0,dx=0,dy=1,dz=0,y_rotation=-90..90] 706 2 31.0
#hallway 20-cold storage
teleport @s[x=726.0,y=2,z=30.0,dx=0,dy=1,dz=0,y_rotation=90..-90] 735 2 20.0
teleport @s[x=735.0,y=2,z=20.0,dx=0,dy=1,dz=0,y_rotation=-90..90] 726 2 31.0
#hallway 13-sitting room
teleport @s[x=719.0,y=20,z=45.0,dx=0,dy=1,dz=0,y_rotation=0..-180] 736.0 20 49
teleport @s[x=735.0,y=20,z=49.0,dx=0,dy=1,dz=0,y_rotation=-180..0] 719.0 20 45
#sitting room-guest room
teleport @s[x=741.0,y=20,z=53.0,dx=0,dy=1,dz=0,y_rotation=-90..90] 741 20 59.0
teleport @s[x=741.0,y=20,z=58.0,dx=0,dy=1,dz=0,y_rotation=90..-90] 741 20 53.0
#hallway 17-the artists studio
teleport @s[x=736.0,y=29,z=31.0,dx=0,dy=1,dz=0,y_rotation=-90..90] 699 29 72.0
teleport @s[x=699.0,y=29,z=71.0,dx=0,dy=1,dz=0,y_rotation=90..-90] 736 29 31.0
#hallway 22-secret altar
teleport @s[x=654.0,y=2,z=33.0,dx=0,dy=1,dz=0,y_rotation=-180..0] 653.0 93 33
execute if entity @s[x=653.0,y=93,z=33.0,dx=0,dy=1,dz=0,y_rotation=0..-180] if data storage luigis_mansion:data current_state.current_data.rooms.secret_altar{cleared:1b} unless score #loaded_exterior Selected matches -1 in minecraft:overworld run function luigis_mansion:room/load_exterior/empty
execute if entity @s[x=653.0,y=93,z=33.0,dx=0,dy=1,dz=0,y_rotation=0..-180] if data storage luigis_mansion:data current_state.current_data.rooms.secret_altar{cleared:1b} as @a run function luigis_mansion:room/ghost_portrificationizer_room/warp_to
execute if entity @s[x=653.0,y=93,z=33.0,dx=0,dy=1,dz=0,y_rotation=0..-180] if data storage luigis_mansion:data current_state.current_data.rooms.secret_altar{cleared:0b} run teleport @s 655.0 2 33