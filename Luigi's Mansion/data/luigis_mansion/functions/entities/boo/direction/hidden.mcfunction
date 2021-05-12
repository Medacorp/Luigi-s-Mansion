tag @s remove west
tag @s remove east
tag @s remove south
tag @s remove north
tag @s remove up
tag @s remove down
execute if data storage luigis_mansion:data current_state.current_data.rooms.parlor{cleared:1b} run tag @s add area_1
execute if data storage luigis_mansion:data current_state.current_data.used_keys{main_hallway:1b} run tag @s add area_2
execute if data storage luigis_mansion:data current_state.current_data.used_keys{courtyard:1b} run tag @s add area_3
execute if data storage luigis_mansion:data current_state.current_data.used_keys{attic_hallway_2:1b} run tag @s add area_4

# wardrobe room
scoreboard players set @s[x=677,y=20,z=-47,dx=10,dy=6,dz=6] RoomSection 1
scoreboard players set @s[x=677,y=20,z=-60,dx=10,dy=6,dz=12] RoomSection 2

# small hallway
scoreboard players set @s[x=723,y=20,z=-46,dx=6,dy=6,dz=19] RoomSection 1
scoreboard players set @s[x=723,y=20,z=-67,dx=6,dy=6,dz=19] RoomSection 2

# main hallway
scoreboard players set @s[x=713,y=11,z=-9,dx=6,dy=6,dz=10] RoomSection 1
scoreboard players set @s[x=713,y=11,z=2,dx=6,dy=6,dz=8] RoomSection 2
scoreboard players set @s[x=713,y=11,z=11,dx=6,dy=6,dz=20] RoomSection 3
scoreboard players set @s[x=713,y=11,z=32,dx=5,dy=6,dz=4] RoomSection 4
scoreboard players set @s[x=713,y=11,z=37,dx=6,dy=6,dz=12] RoomSection 5
scoreboard players set @s[x=700,y=11,z=31,dx=13,dy=6,dz=6] RoomSection 6
scoreboard players set @s[x=697,y=11,z=31,dx=2,dy=6,dz=6] RoomSection 7
scoreboard players set @s[x=685,y=11,z=31,dx=11,dy=6,dz=6] RoomSection 8
scoreboard players set @s[x=679,y=11,z=37,dx=6,dy=6,dz=7] RoomSection 9
scoreboard players set @s[x=679,y=11,z=32,dx=5,dy=6,dz=4] RoomSection 10
scoreboard players set @s[x=679,y=11,z=16,dx=6,dy=6,dz=15] RoomSection 11
scoreboard players set @s[x=679,y=11,z=10,dx=6,dy=6,dz=5] RoomSection 12
scoreboard players set @s[x=681,y=11,z=4,dx=5,dy=6,dz=6] RoomSection 13
scoreboard players set @s[x=666,y=11,z=2,dx=11,dy=6,dz=8] RoomSection 14

# ball room
scoreboard players set @s[x=696,y=11,z=53,dx=15,dy=6,dz=11] RoomSection 1
scoreboard players set @s[x=696,y=11,z=45,dx=15,dy=6,dz=19] RoomSection 2

# storage room
scoreboard players set @s[x=680,y=11,z=60,dx=10,dy=6,dz=24] RoomSection 1
scoreboard players set @s[x=680,y=11,z=53,dx=10,dy=6,dz=6] RoomSection 2

# dining room
scoreboard players set @s[x=698,y=11,z=-28,dx=12,dy=6,dz=14] RoomSection 1
scoreboard players set @s[x=698,y=11,z=-42,dx=12,dy=6,dz=13] RoomSection 2

# kitchen
scoreboard players set @s[x=698,y=11,z=-57,dx=12,dy=6,dz=10] RoomSection 1
scoreboard players set @s[x=698,y=11,z=-77,dx=12,dy=6,dz=19] RoomSection 2

# rec room
scoreboard players set @s[x=638,y=11,z=52,dx=10,dy=6,dz=24] RoomSection 1
scoreboard players set @s[x=638,y=11,z=44,dx=10,dy=6,dz=7] RoomSection 2

# tea room
scoreboard players set @s[x=638,y=20,z=52,dx=10,dy=6,dz=24] RoomSection 1
scoreboard players set @s[x=638,y=20,z=44,dx=10,dy=6,dz=7] RoomSection 2

# hallway
scoreboard players set @s[x=713,y=20,z=21,dx=5,dy=6,dz=5] RoomSection 1
scoreboard players set @s[x=713,y=20,z=34,dx=6,dy=6,dz=12] RoomSection 2
scoreboard players set @s[x=713,y=20,z=55,dx=6,dy=6,dz=12] RoomSection 3
scoreboard players set @s[x=697,y=20,z=31,dx=13,dy=6,dz=6] RoomSection 4
scoreboard players set @s[x=684,y=20,z=31,dx=12,dy=6,dz=6] RoomSection 5
scoreboard players set @s[x=678,y=20,z=29,dx=6,dy=6,dz=7] RoomSection 6
scoreboard players set @s[x=678,y=20,z=32,dx=5,dy=6,dz=4] RoomSection 7
scoreboard players set @s[x=678,y=20,z=16,dx=6,dy=6,dz=22] RoomSection 8
scoreboard players set @s[x=679,y=20,z=4,dx=5,dy=6,dz=5] RoomSection 9
scoreboard players set @s[x=665,y=20,z=2,dx=12,dy=6,dz=8] RoomSection 10

# astral hall
scoreboard players set @s[x=661,y=20,z=87,dx=10,dy=6,dz=6] RoomSection 1
scoreboard players set @s[x=661,y=20,z=93,dx=10,dy=6,dz=14] RoomSection 2

# billiards room
scoreboard players set @s[x=674,y=11,z=-63,dx=13,dy=6,dz=13] RoomSection 1
scoreboard players set @s[x=674,y=11,z=-76,dx=13,dy=6,dz=12] RoomSection 2

# attic hallway 1
scoreboard players set @s[x=762,y=29,z=25,dx=1,dy=6,dz=6] RoomSection 1
scoreboard players set @s[x=748,y=29,z=25,dx=11,dy=6,dz=6] RoomSection 2
scoreboard players set @s[x=741,y=29,z=25,dx=6,dy=6,dz=6] RoomSection 3
scoreboard players set @s[x=725,y=29,z=25,dx=15,dy=6,dz=6] RoomSection 4

# attic hallway 2
scoreboard players set @s[x=724,y=29,z=-32,dx=15,dy=6,dz=6] RoomSection 1
scoreboard players set @s[x=740,y=29,z=-32,dx=19,dy=6,dz=6] RoomSection 2
scoreboard players set @s[x=761,y=29,z=-32,dx=1,dy=6,dz=6] RoomSection 3

# telephone room
scoreboard players set @s[x=736,y=29,z=-20,dx=19,dy=6,dz=35] RoomSection 1
scoreboard players set @s[x=756,y=29,z=-20,dx=4,dy=6,dz=35] RoomSection 2

# basement hallway
scoreboard players set @s[x=720,y=2,z=30,dx=13,dy=6,dz=6] RoomSection 1
scoreboard players set @s[x=713,y=2,z=30,dx=6,dy=6,dz=6] RoomSection 2
scoreboard players set @s[x=700,y=2,z=30,dx=13,dy=6,dz=6] RoomSection 3

tag @s[scores={Room=2}] add west
tag @s[scores={Room=2}] add north
tag @s[scores={Room=2},tag=area_3] add south
tag @s[scores={Room=3},tag=area_3] add west
tag @s[scores={Room=3}] add east
tag @s[scores={Room=3}] add north
tag @s[scores={Room=3},tag=area_3] add south
tag @s[scores={Room=4},tag=area_3] add west
tag @s[scores={Room=4}] add east
tag @s[scores={Room=4,RoomSection=1},tag=area_3] add north
tag @s[scores={Room=4}] add south
tag @s[scores={Room=6}] add west
tag @s[scores={Room=6,RoomSection=1},tag=area_3] add east
tag @s[scores={Room=6,RoomSection=1}] add north
tag @s[scores={Room=6,RoomSection=2}] add east
tag @s[scores={Room=6,RoomSection=2}] add south
tag @s[scores={Room=7}] add west
tag @s[scores={Room=7}] add east
tag @s[scores={Room=7}] add north
tag @s[scores={Room=7}] add south
tag @s[scores={Room=8}] add east
tag @s[scores={Room=8}] add south
tag @s[scores={Room=9}] add west
tag @s[scores={Room=9},tag=area_3] add south
tag @s[scores={Room=10,RoomSection=1}] add west
tag @s[scores={Room=10,RoomSection=1}] add east
tag @s[scores={Room=10,RoomSection=1}] add north
tag @s[scores={Room=10,RoomSection=1}] add south
tag @s[scores={Room=10,RoomSection=2}] add west
tag @s[scores={Room=10,RoomSection=2}] add east
tag @s[scores={Room=10,RoomSection=2}] add north
tag @s[scores={Room=10,RoomSection=2}] add south
tag @s[scores={Room=10,RoomSection=3}] add west
tag @s[scores={Room=10,RoomSection=3}] add north
tag @s[scores={Room=10,RoomSection=3}] add south
tag @s[scores={Room=10,RoomSection=4}] add west
tag @s[scores={Room=10,RoomSection=4}] add east
tag @s[scores={Room=10,RoomSection=4}] add north
tag @s[scores={Room=10,RoomSection=4}] add south
tag @s[scores={Room=10,RoomSection=5}] add west
tag @s[scores={Room=10,RoomSection=5}] add east
tag @s[scores={Room=10,RoomSection=5}] add north
tag @s[scores={Room=10,RoomSection=6}] add west
tag @s[scores={Room=10,RoomSection=6}] add east
tag @s[scores={Room=10,RoomSection=6}] add north
tag @s[scores={Room=10,RoomSection=6}] add south
tag @s[scores={Room=10,RoomSection=7}] add west
tag @s[scores={Room=10,RoomSection=7}] add east
tag @s[scores={Room=10,RoomSection=7},tag=area_3] add north
tag @s[scores={Room=10,RoomSection=7}] add south
tag @s[scores={Room=10,RoomSection=8}] add west
tag @s[scores={Room=10,RoomSection=8}] add east
tag @s[scores={Room=10,RoomSection=8},tag=area_3] add north
tag @s[scores={Room=10,RoomSection=8}] add south
tag @s[scores={Room=10,RoomSection=9},tag=area_3] add west
tag @s[scores={Room=10,RoomSection=9}] add east
tag @s[scores={Room=10,RoomSection=9}] add north
tag @s[scores={Room=10,RoomSection=10}] add west
tag @s[scores={Room=10,RoomSection=10}] add east
tag @s[scores={Room=10,RoomSection=10}] add north
tag @s[scores={Room=10,RoomSection=10}] add south
tag @s[scores={Room=10,RoomSection=11}] add west
tag @s[scores={Room=10,RoomSection=11},tag=area_3] add east
tag @s[scores={Room=10,RoomSection=11}] add north
tag @s[scores={Room=10,RoomSection=11}] add south
tag @s[scores={Room=10,RoomSection=12}] add west
tag @s[scores={Room=10,RoomSection=12},tag=area_3] add east
tag @s[scores={Room=10,RoomSection=12}] add north
tag @s[scores={Room=10,RoomSection=12}] add south
tag @s[scores={Room=10,RoomSection=13}] add west
tag @s[scores={Room=10,RoomSection=13},tag=area_3] add east
tag @s[scores={Room=10,RoomSection=13}] add north
tag @s[scores={Room=10,RoomSection=13}] add south
tag @s[scores={Room=10,RoomSection=14}] add east
tag @s[scores={Room=10,RoomSection=14}] add north
tag @s[scores={Room=10,RoomSection=14}] add south
tag @s[scores={Room=12}] add east
tag @s[scores={Room=12}] add south
tag @s[scores={Room=13}] add west
tag @s[scores={Room=13,RoomSection=1}] add east
tag @s[scores={Room=13}] add north
tag @s[scores={Room=13,RoomSection=1}] add south
tag @s[scores={Room=14}] add east
tag @s[scores={Room=14}] add north
tag @s[scores={Room=14,RoomSection=2}] add west
tag @s[scores={Room=14,RoomSection=2}] add south
tag @s[scores={Room=15}] add west
tag @s[scores={Room=15},tag=area_3] add east
tag @s[scores={Room=15}] add south
tag @s[scores={Room=16}] add west
tag @s[scores={Room=16}] add south
tag @s[scores={Room=17}] add north
tag @s[scores={Room=18}] add west
tag @s[scores={Room=18}] add east
tag @s[scores={Room=18}] add south
tag @s[scores={Room=19}] add west
tag @s[scores={Room=19}] add south
tag @s[scores={Room=20}] add west
tag @s[scores={Room=20}] add north
tag @s[scores={Room=21}] add east
tag @s[scores={Room=21}] add north
tag @s[scores={Room=21},tag=area_3] add south
tag @s[scores={Room=22},tag=area_3] add west
tag @s[scores={Room=22}] add east
tag @s[scores={Room=22}] add north
tag @s[scores={Room=22}] add south
tag @s[scores={Room=23,RoomSection=1},tag=area_3] add west
tag @s[scores={Room=23}] add east
tag @s[scores={Room=23,RoomSection=1}] add north
tag @s[scores={Room=23}] add south
tag @s[scores={Room=28}] add north
tag @s[scores={Room=28,RoomSection=2}] add east
tag @s[scores={Room=30}] add north
tag @s[scores={Room=30,RoomSection=2}] add east
tag @s[scores={Room=31,RoomSection=1}] add west
tag @s[scores={Room=31,RoomSection=1},tag=area_4] add east
tag @s[scores={Room=31,RoomSection=1},tag=area_4] add south
tag @s[scores={Room=31,RoomSection=2},tag=area_4] add east
tag @s[scores={Room=31,RoomSection=2}] add north
tag @s[scores={Room=31,RoomSection=2},tag=area_4] add south
tag @s[scores={Room=31,RoomSection=3},tag=area_4] add east
tag @s[scores={Room=31,RoomSection=3}] add north
tag @s[scores={Room=31,RoomSection=4}] add west
tag @s[scores={Room=31,RoomSection=4},tag=area_4] add east
tag @s[scores={Room=31,RoomSection=4}] add north
tag @s[scores={Room=31,RoomSection=5}] add west
tag @s[scores={Room=31,RoomSection=5}] add east
tag @s[scores={Room=31,RoomSection=5}] add north
tag @s[scores={Room=31,RoomSection=5}] add south
tag @s[scores={Room=31,RoomSection=6}] add west
tag @s[scores={Room=31,RoomSection=6}] add east
tag @s[scores={Room=31,RoomSection=6}] add north
tag @s[scores={Room=31,RoomSection=6}] add south
tag @s[scores={Room=31,RoomSection=7}] add west
tag @s[scores={Room=31,RoomSection=7}] add east
tag @s[scores={Room=31,RoomSection=7}] add north
tag @s[scores={Room=31,RoomSection=8}] add west
tag @s[scores={Room=31,RoomSection=8}] add east
tag @s[scores={Room=31,RoomSection=8}] add north
tag @s[scores={Room=31,RoomSection=8}] add south
tag @s[scores={Room=31,RoomSection=9}] add west
tag @s[scores={Room=31,RoomSection=9}] add east
tag @s[scores={Room=31,RoomSection=9}] add north
tag @s[scores={Room=31,RoomSection=9}] add south
tag @s[scores={Room=31,RoomSection=10}] add east
tag @s[scores={Room=31,RoomSection=10}] add north
tag @s[scores={Room=31,RoomSection=10}] add south
tag @s[scores={Room=32}] add west
tag @s[scores={Room=32}] add east
tag @s[scores={Room=32}] add south
tag @s[scores={Room=33}] add east
tag @s[scores={Room=33}] add south
tag @s[scores={Room=34}] add east
tag @s[scores={Room=34}] add north
tag @s[scores={Room=34}] add south
tag @s[scores={Room=35,RoomSection=1}] add west
tag @s[scores={Room=35}] add north
tag @s[scores={Room=37}] add west
tag @s[scores={Room=37}] add east
tag @s[scores={Room=37,RoomSection=1}] add north
tag @s[scores={Room=37}] add south
tag @s[scores={Room=38}] add west
tag @s[scores={Room=38}] add east
tag @s[scores={Room=38}] add north
tag @s[scores={Room=38}] add south
tag @s[scores={Room=39}] add west
tag @s[scores={Room=39}] add north
tag @s[scores={Room=40}] add north
tag @s[scores={Room=41,RoomSection=1}] add west
tag @s[scores={Room=41,RoomSection=2},tag=area_4] add west
tag @s[scores={Room=41,RoomSection=2}] add south
tag @s[scores={Room=41,RoomSection=3},tag=area_4] add west
tag @s[scores={Room=41,RoomSection=3}] add east
tag @s[scores={Room=41,RoomSection=4}] add east
tag @s[scores={Room=41,RoomSection=4},tag=area_4] add south
tag @s[scores={Room=43,RoomSection=1}] add east
tag @s[scores={Room=43,RoomSection=1}] add north
tag @s[scores={Room=43,RoomSection=1}] add south
tag @s[scores={Room=43,RoomSection=2}] add west
tag @s[scores={Room=43,RoomSection=2}] add north
tag @s[scores={Room=43,RoomSection=2}] add south
tag @s[scores={Room=43,RoomSection=3}] add west
tag @s[scores={Room=44}] add west
tag @s[scores={Room=44,RoomSection=1}] add north
tag @s[scores={Room=45}] add north
tag @s[scores={Room=46}] add north
tag @s[scores={Room=47,RoomSection=1}] add west
tag @s[scores={Room=47}] add north
tag @s[scores={Room=47,RoomSection=1}] add south
tag @s[scores={Room=47,RoomSection=2}] add west
tag @s[scores={Room=47,RoomSection=2}] add east
tag @s[scores={Room=47,RoomSection=3}] add east
tag @s[scores={Room=47,RoomSection=3}] add south
tag @s[scores={Room=49}] add east
tag @s[scores={Room=49}] add north
tag @s[scores={Room=51}] add west
tag @s[scores={Room=51}] add south
tag @s[scores={Room=52}] add east
tag @s[scores={Room=52}] add south
tag @s[scores={Room=54}] add east
tag @s[scores={Room=54}] add south
tag @s[scores={Room=55}] add west
tag @s[scores={Room=55}] add south
tag @s[scores={Room=56}] add west
execute if data storage luigis_mansion:data current_state.current_data.rooms.guest_room{cleared:1b} run tag @s[scores={Room=56}] add south
tag @s[scores={Room=57}] add west
tag @s[scores={Room=57}] add north
tag @s[scores={Room=58}] add north