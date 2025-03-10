tag @s remove west
tag @s remove east
tag @s remove south
tag @s remove north
tag @s remove up
tag @s remove down
execute if data storage luigis_mansion:data current_state.current_data.rooms.parlor{cleared:1b} run tag @s add area_1
execute if data storage luigis_mansion:data current_state.current_data{used_keys:["hallway_3"]} run tag @s add area_2
execute if data storage luigis_mansion:data current_state.current_data{used_keys:["courtyard"]} run tag @s add area_3
execute if data storage luigis_mansion:data current_state.current_data{used_keys:["hallway_18"]} run tag @s add area_4

# wardrobe room
scoreboard players set @s[scores={Room=5},x=677,z=56,dx=10,dz=6] RoomSection 1
scoreboard players set @s[scores={Room=5},x=677,z=63,dx=10,dz=12] RoomSection 2

# hallway 2
scoreboard players set @s[scores={Room=7},x=723,z=42,dx=6,dz=19] RoomSection 1
scoreboard players set @s[scores={Room=7},x=723,z=63,dx=6,dz=19] RoomSection 2

# hallway 3-6
scoreboard players set @s[scores={Room=11..14},x=713,z=14,dx=6,dz=10] RoomSection 1
scoreboard players set @s[scores={Room=11..14},x=713,z=5,dx=6,dz=8] RoomSection 2
scoreboard players set @s[scores={Room=11..14},x=713,z=-16,dx=6,dz=20] RoomSection 3
scoreboard players set @s[scores={Room=11..14},x=713,z=-21,dx=5,dz=4] RoomSection 4
scoreboard players set @s[scores={Room=11..14},x=713,z=-34,dx=6,dz=12] RoomSection 5
scoreboard players set @s[scores={Room=11..14},x=700,z=-22,dx=13,dz=6] RoomSection 6
scoreboard players set @s[scores={Room=11..14},x=697,z=-22,dx=2,dz=6] RoomSection 7
scoreboard players set @s[scores={Room=11..14},x=685,z=-22,dx=11,dz=6] RoomSection 8
scoreboard players set @s[scores={Room=11..14},x=679,z=-29,dx=6,dz=7] RoomSection 9
scoreboard players set @s[scores={Room=11..14},x=679,z=-21,dx=5,dz=4] RoomSection 10
scoreboard players set @s[scores={Room=11..14},x=679,z=-16,dx=6,dz=15] RoomSection 11
scoreboard players set @s[scores={Room=11..14},x=679,z=-1,dx=6,dz=5] RoomSection 12
scoreboard players set @s[scores={Room=11..14},x=681,z=5,dx=5,dz=6] RoomSection 13
scoreboard players set @s[scores={Room=11..14},x=666,z=5,dx=11,dz=8] RoomSection 14

# ball room
scoreboard players set @s[scores={Room=17},x=696,z=-49,dx=15,dz=11] RoomSection 1
scoreboard players set @s[scores={Room=17},x=696,z=-69,dx=15,dz=19] RoomSection 2

# storage room
scoreboard players set @s[scores={Room=18},x=680,z=-69,dx=10,dz=24] RoomSection 1
scoreboard players set @s[scores={Room=18},x=680,z=-44,dx=10,dz=6] RoomSection 2

# dining room
scoreboard players set @s[scores={Room=26},x=698,z=29,dx=12,dz=14] RoomSection 1
scoreboard players set @s[scores={Room=26},x=698,z=44,dx=12,dz=13] RoomSection 2

# kitchen
scoreboard players set @s[scores={Room=27},x=698,z=62,dx=12,dz=10] RoomSection 1
scoreboard players set @s[scores={Room=27},x=698,z=73,dx=12,dz=19] RoomSection 2

# rec room
scoreboard players set @s[scores={Room=32},x=638,z=-61,dx=10,dz=24] RoomSection 1
scoreboard players set @s[scores={Room=32},x=638,z=-36,dx=10,dz=7] RoomSection 2

# tea room
scoreboard players set @s[scores={Room=34},x=6380,z=-61,dx=10,dz=24] RoomSection 1
scoreboard players set @s[scores={Room=34},x=6380,z=-36,dx=10,dz=7] RoomSection 2

# hallway 9-15
scoreboard players set @s[scores={Room=35..41},x=713,z=-21,dx=5,dz=5] RoomSection 1
scoreboard players set @s[scores={Room=35..41},x=713,z=-34,dx=6,dz=12] RoomSection 2
scoreboard players set @s[scores={Room=35..41},x=713,z=-52,dx=6,dz=12] RoomSection 3
scoreboard players set @s[scores={Room=35..41},x=697,z=-22,dx=13,dz=6] RoomSection 4
scoreboard players set @s[scores={Room=35..41},x=685,z=-22,dx=12,dz=6] RoomSection 5
scoreboard players set @s[scores={Room=35..41},x=679,z=-29,dx=6,dz=7] RoomSection 6
scoreboard players set @s[scores={Room=35..41},x=679,z=-21,dx=5,dz=4] RoomSection 7
scoreboard players set @s[scores={Room=35..41},x=679,z=-16,dx=6,dz=22] RoomSection 8
scoreboard players set @s[scores={Room=35..41},x=680,z=6,dx=5,dz=5] RoomSection 9
scoreboard players set @s[scores={Room=35..41},x=666,z=5,dx=12,dz=8] RoomSection 10

# astral hall
scoreboard players set @s[scores={Room=45},x=6610,z=-78,dx=10,dz=6] RoomSection 1
scoreboard players set @s[scores={Room=45},x=6610,z=-92,dx=10,dz=14] RoomSection 2

# billiards room
scoreboard players set @s[scores={Room=47},x=674,z=65,dx=13,dz=13] RoomSection 1
scoreboard players set @s[scores={Room=47},x=674,z=79,dx=13,dz=12] RoomSection 2

# hallway 16-17
scoreboard players set @s[scores={Room=51..52},x=762,z=-16,dx=1,dz=6] RoomSection 1
scoreboard players set @s[scores={Room=51..52},x=748,z=-16,dx=11,dz=6] RoomSection 2
scoreboard players set @s[scores={Room=51..52},x=741,z=-16,dx=6,dz=6] RoomSection 3
scoreboard players set @s[scores={Room=51..52},x=725,z=-16,dx=15,dz=6] RoomSection 4

# hallway 18-19
scoreboard players set @s[scores={Room=54..55},x=724,z=41,dx=15,dz=6] RoomSection 1
scoreboard players set @s[scores={Room=54..55},x=740,z=41,dx=19,dz=6] RoomSection 2
scoreboard players set @s[scores={Room=54..55},x=761,z=41,dx=1,dz=6] RoomSection 3

# telephone room
scoreboard players set @s[scores={Room=56},x=736,z=0,dx=19,dz=35] RoomSection 1
scoreboard players set @s[scores={Room=56},x=756,z=0,dx=4,dz=35] RoomSection 2

# hallway 20-21
scoreboard players set @s[scores={Room=59..60},x=720,z=-21,dx=13,dz=6] RoomSection 1
scoreboard players set @s[scores={Room=59..60},x=713,z=-21,dx=6,dz=6] RoomSection 2
scoreboard players set @s[scores={Room=59..60},x=700,z=-21,dx=13,dz=6] RoomSection 3

tag @s[scores={Room=3}] add west
tag @s[scores={Room=3}] add south
tag @s[scores={Room=3},tag=area_3] add north
tag @s[scores={Room=4},tag=area_3] add west
tag @s[scores={Room=4}] add east
tag @s[scores={Room=4}] add south
tag @s[scores={Room=4},tag=area_3] add north
tag @s[scores={Room=5},tag=area_3] add west
tag @s[scores={Room=5}] add east
tag @s[scores={Room=5,RoomSection=1},tag=area_3] add south
tag @s[scores={Room=5}] add north
tag @s[scores={Room=7}] add west
tag @s[scores={Room=7,RoomSection=1},tag=area_3] add east
tag @s[scores={Room=7,RoomSection=1}] add south
tag @s[scores={Room=7,RoomSection=2}] add east
tag @s[scores={Room=7,RoomSection=2}] add north
tag @s[scores={Room=8}] add west
tag @s[scores={Room=8}] add east
tag @s[scores={Room=8}] add south
tag @s[scores={Room=8}] add north
tag @s[scores={Room=9}] add east
tag @s[scores={Room=9}] add north
tag @s[scores={Room=10}] add west
tag @s[scores={Room=10},tag=area_3] add north
tag @s[scores={Room=11..14,RoomSection=1}] add west
tag @s[scores={Room=11..14,RoomSection=1}] add east
tag @s[scores={Room=11..14,RoomSection=1}] add south
tag @s[scores={Room=11..14,RoomSection=1}] add north
tag @s[scores={Room=11..14,RoomSection=2}] add west
tag @s[scores={Room=11..14,RoomSection=2}] add east
tag @s[scores={Room=11..14,RoomSection=2}] add south
tag @s[scores={Room=11..14,RoomSection=2}] add north
tag @s[scores={Room=11..14,RoomSection=3}] add west
tag @s[scores={Room=11..14,RoomSection=3}] add south
tag @s[scores={Room=11..14,RoomSection=3}] add north
tag @s[scores={Room=11..14,RoomSection=4}] add west
tag @s[scores={Room=11..14,RoomSection=4}] add east
tag @s[scores={Room=11..14,RoomSection=4}] add south
tag @s[scores={Room=11..14,RoomSection=4}] add north
tag @s[scores={Room=11..14,RoomSection=5}] add west
tag @s[scores={Room=11..14,RoomSection=5}] add east
tag @s[scores={Room=11..14,RoomSection=5}] add south
tag @s[scores={Room=11..14,RoomSection=6}] add west
tag @s[scores={Room=11..14,RoomSection=6}] add east
tag @s[scores={Room=11..14,RoomSection=6}] add south
tag @s[scores={Room=11..14,RoomSection=6}] add north
tag @s[scores={Room=11..14,RoomSection=7}] add west
tag @s[scores={Room=11..14,RoomSection=7}] add east
tag @s[scores={Room=11..14,RoomSection=7},tag=area_3] add south
tag @s[scores={Room=11..14,RoomSection=7}] add north
tag @s[scores={Room=11..14,RoomSection=8}] add west
tag @s[scores={Room=11..14,RoomSection=8}] add east
tag @s[scores={Room=11..14,RoomSection=8},tag=area_3] add south
tag @s[scores={Room=11..14,RoomSection=8}] add north
tag @s[scores={Room=11..14,RoomSection=9},tag=area_3] add west
tag @s[scores={Room=11..14,RoomSection=9}] add east
tag @s[scores={Room=11..14,RoomSection=9}] add south
tag @s[scores={Room=11..14,RoomSection=10}] add west
tag @s[scores={Room=11..14,RoomSection=10}] add east
tag @s[scores={Room=11..14,RoomSection=10}] add south
tag @s[scores={Room=11..14,RoomSection=10}] add north
tag @s[scores={Room=11..14,RoomSection=11}] add west
tag @s[scores={Room=11..14,RoomSection=11},tag=area_3] add east
tag @s[scores={Room=11..14,RoomSection=11}] add south
tag @s[scores={Room=11..14,RoomSection=11}] add north
tag @s[scores={Room=11..14,RoomSection=12}] add west
tag @s[scores={Room=11..14,RoomSection=12},tag=area_3] add east
tag @s[scores={Room=11..14,RoomSection=12}] add south
tag @s[scores={Room=11..14,RoomSection=12}] add north
tag @s[scores={Room=11..14,RoomSection=13}] add west
tag @s[scores={Room=11..14,RoomSection=13},tag=area_3] add east
tag @s[scores={Room=11..14,RoomSection=13}] add south
tag @s[scores={Room=11..14,RoomSection=13}] add north
tag @s[scores={Room=11..14,RoomSection=14}] add east
tag @s[scores={Room=11..14,RoomSection=14}] add south
tag @s[scores={Room=11..14,RoomSection=14}] add north
tag @s[scores={Room=16}] add east
tag @s[scores={Room=16}] add north
tag @s[scores={Room=17}] add west
tag @s[scores={Room=17,RoomSection=1}] add east
tag @s[scores={Room=17}] add south
tag @s[scores={Room=17,RoomSection=1}] add north
tag @s[scores={Room=18}] add east
tag @s[scores={Room=18}] add south
tag @s[scores={Room=18,RoomSection=2}] add west
tag @s[scores={Room=18,RoomSection=2}] add north
tag @s[scores={Room=19}] add west
tag @s[scores={Room=19},tag=area_3] add east
tag @s[scores={Room=19}] add north
tag @s[scores={Room=20}] add west
tag @s[scores={Room=20}] add north
tag @s[scores={Room=21}] add south
tag @s[scores={Room=22}] add west
tag @s[scores={Room=22}] add east
tag @s[scores={Room=22}] add north
tag @s[scores={Room=23}] add west
tag @s[scores={Room=23}] add north
tag @s[scores={Room=24}] add west
tag @s[scores={Room=24}] add south
tag @s[scores={Room=25}] add east
tag @s[scores={Room=25}] add south
tag @s[scores={Room=25},tag=area_3] add north
tag @s[scores={Room=26},tag=area_3] add west
tag @s[scores={Room=26}] add east
tag @s[scores={Room=26}] add south
tag @s[scores={Room=26}] add north
tag @s[scores={Room=27,RoomSection=1},tag=area_3] add west
tag @s[scores={Room=27}] add east
tag @s[scores={Room=27,RoomSection=1}] add south
tag @s[scores={Room=27}] add north
tag @s[scores={Room=32}] add south
tag @s[scores={Room=32,RoomSection=2}] add east
tag @s[scores={Room=34}] add south
tag @s[scores={Room=34,RoomSection=2}] add east
tag @s[scores={Room=35..41,RoomSection=1}] add west
tag @s[scores={Room=35..41,RoomSection=1},tag=area_4] add east
tag @s[scores={Room=35..41,RoomSection=1},tag=area_4] add north
tag @s[scores={Room=35..41,RoomSection=2},tag=area_4] add east
tag @s[scores={Room=35..41,RoomSection=2}] add south
execute if data storage luigis_mansion:data current_state.current_data.rooms.guest_room{cleared:1b} run tag @s[scores={Room=35..41,RoomSection=2},tag=area_4] add north
execute if data storage luigis_mansion:data current_state.current_data.rooms.guest_room{cleared:1b} run tag @s[scores={Room=35..41,RoomSection=3},tag=area_4] add east
tag @s[scores={Room=35..41,RoomSection=3}] add south
tag @s[scores={Room=35..41,RoomSection=4}] add west
tag @s[scores={Room=35..41,RoomSection=4},tag=area_4] add east
tag @s[scores={Room=35..41,RoomSection=4}] add south
tag @s[scores={Room=35..41,RoomSection=5}] add west
tag @s[scores={Room=35..41,RoomSection=5}] add east
tag @s[scores={Room=35..41,RoomSection=5}] add south
tag @s[scores={Room=35..41,RoomSection=5}] add north
tag @s[scores={Room=35..41,RoomSection=6}] add west
tag @s[scores={Room=35..41,RoomSection=6}] add east
tag @s[scores={Room=35..41,RoomSection=6}] add south
tag @s[scores={Room=35..41,RoomSection=6}] add north
tag @s[scores={Room=35..41,RoomSection=7}] add west
tag @s[scores={Room=35..41,RoomSection=7}] add east
tag @s[scores={Room=35..41,RoomSection=7}] add south
tag @s[scores={Room=35..41,RoomSection=8}] add west
tag @s[scores={Room=35..41,RoomSection=8}] add east
tag @s[scores={Room=35..41,RoomSection=8}] add south
tag @s[scores={Room=35..41,RoomSection=8}] add north
tag @s[scores={Room=35..41,RoomSection=9}] add west
tag @s[scores={Room=35..41,RoomSection=9}] add east
tag @s[scores={Room=35..41,RoomSection=9}] add south
tag @s[scores={Room=35..41,RoomSection=9}] add north
tag @s[scores={Room=35..41,RoomSection=10}] add east
tag @s[scores={Room=35..41,RoomSection=10}] add south
tag @s[scores={Room=35..41,RoomSection=10}] add north
tag @s[scores={Room=42}] add west
tag @s[scores={Room=42}] add east
tag @s[scores={Room=42}] add north
tag @s[scores={Room=43}] add east
tag @s[scores={Room=43}] add north
tag @s[scores={Room=44}] add east
tag @s[scores={Room=44}] add south
tag @s[scores={Room=44}] add north
tag @s[scores={Room=45,RoomSection=1}] add west
tag @s[scores={Room=45}] add south
tag @s[scores={Room=47}] add west
tag @s[scores={Room=47}] add east
tag @s[scores={Room=47,RoomSection=1}] add south
tag @s[scores={Room=47}] add north
tag @s[scores={Room=48}] add west
tag @s[scores={Room=48}] add east
tag @s[scores={Room=48}] add south
tag @s[scores={Room=48}] add north
tag @s[scores={Room=49}] add west
tag @s[scores={Room=49}] add south
tag @s[scores={Room=50}] add south
tag @s[scores={Room=51..52,RoomSection=1}] add west
tag @s[scores={Room=51..52,RoomSection=2},tag=area_4] add west
tag @s[scores={Room=51..52,RoomSection=2}] add north
tag @s[scores={Room=51..52,RoomSection=3},tag=area_4] add west
tag @s[scores={Room=51..52,RoomSection=3}] add east
tag @s[scores={Room=51..52,RoomSection=4}] add east
tag @s[scores={Room=51..52,RoomSection=4},tag=area_4] add north
tag @s[scores={Room=54..55,RoomSection=1}] add east
tag @s[scores={Room=54..55,RoomSection=1}] add south
tag @s[scores={Room=54..55,RoomSection=1}] add north
tag @s[scores={Room=54..55,RoomSection=2}] add west
tag @s[scores={Room=54..55,RoomSection=2}] add south
tag @s[scores={Room=54..55,RoomSection=2}] add north
tag @s[scores={Room=54..55,RoomSection=3}] add west
tag @s[scores={Room=56}] add west
tag @s[scores={Room=56,RoomSection=1}] add south
tag @s[scores={Room=57}] add south
tag @s[scores={Room=58}] add south
tag @s[scores={Room=59..60,RoomSection=1}] add west
tag @s[scores={Room=59..60}] add south
tag @s[scores={Room=59..60,RoomSection=1}] add north
tag @s[scores={Room=59..60,RoomSection=2}] add west
tag @s[scores={Room=59..60,RoomSection=2}] add east
tag @s[scores={Room=59..60,RoomSection=3}] add east
tag @s[scores={Room=59..60,RoomSection=3}] add north
tag @s[scores={Room=62}] add east
tag @s[scores={Room=62}] add south
tag @s[scores={Room=64}] add west
tag @s[scores={Room=64}] add north
tag @s[scores={Room=65}] add east
tag @s[scores={Room=65}] add north
tag @s[scores={Room=67}] add east
tag @s[scores={Room=67}] add north
tag @s[scores={Room=68}] add west
tag @s[scores={Room=68}] add north
tag @s[scores={Room=69}] add west
execute if data storage luigis_mansion:data current_state.current_data.rooms.guest_room{cleared:1b} run tag @s[scores={Room=69}] add north
tag @s[scores={Room=70}] add west
tag @s[scores={Room=70}] add south
tag @s[scores={Room=71}] add south