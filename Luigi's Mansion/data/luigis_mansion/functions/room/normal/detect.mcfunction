execute if entity @a[scores={Room=0}] in minecraft:overworld run function luigis_mansion:room/normal/door/boo_woods_foyer
execute as @a[scores={Room=1..},tag=!looking_at_map] at @s run function luigis_mansion:room/normal/floor_header
execute if entity @a[gamemode=!spectator,x=735,y=11,z=-2,dx=21,dy=15,dz=21] run function luigis_mansion:room/normal/foyer/tick
execute if score #foyer Ticking matches 1 unless entity @a[gamemode=!spectator,x=735,y=11,z=-2,dx=21,dy=15,dz=21] unless entity @a[scores={Room=1}] unless entity @a[scores={LastRoom=1}] run function #luigis_mansion:room/normal/foyer/reset
execute if entity @a[gamemode=!spectator,x=712,y=20,z=17,dx=17,dy=6,dz=21] run function luigis_mansion:room/normal/parlor/tick
execute if score #parlor Ticking matches 1 unless entity @a[gamemode=!spectator,x=712,y=20,z=17,dx=17,dy=6,dz=21] unless entity @a[scores={Room=2}] unless entity @a[scores={LastRoom=2}] run function #luigis_mansion:room/normal/parlor/reset
execute if entity @a[gamemode=!spectator,x=683,y=20,z=22,dx=12,dy=6,dz=21] run function luigis_mansion:room/normal/anteroom/tick
execute if score #anteroom Ticking matches 1 unless entity @a[gamemode=!spectator,x=683,y=20,z=22,dx=12,dy=6,dz=21] unless entity @a[scores={Room=3}] unless entity @a[scores={LastRoom=3}] run function #luigis_mansion:room/normal/anteroom/reset
execute if entity @a[gamemode=!spectator,x=676,y=20,z=55,dx=12,dy=6,dz=21] run function luigis_mansion:room/normal/wardrobe_room/tick
execute if score #wardrobe_room Ticking matches 1 unless entity @a[gamemode=!spectator,x=676,y=20,z=55,dx=12,dy=6,dz=21] unless entity @a[scores={Room=4}] unless entity @a[scores={LastRoom=4}] run function #luigis_mansion:room/normal/wardrobe_room/reset
execute if entity @a[gamemode=!spectator,x=673,y=111,z=38,dx=6,dy=6,dz=5] run function luigis_mansion:room/normal/balcony_1/tick
execute if score #balcony_1 Ticking matches 1 unless entity @a[gamemode=!spectator,x=673,y=111,z=38,dx=6,dy=6,dz=5] unless entity @a[scores={Room=5}] unless entity @a[scores={LastRoom=5}] run function #luigis_mansion:room/normal/balcony_1/reset
execute if entity @a[gamemode=!spectator,x=722,y=20,z=42,dx=8,dy=6,dz=38] run function luigis_mansion:room/normal/small_hallway/tick
execute if score #small_hallway Ticking matches 1 unless entity @a[gamemode=!spectator,x=722,y=20,z=42,dx=8,dy=6,dz=38] unless entity @a[scores={Room=6}] unless entity @a[scores={LastRoom=6}] run function #luigis_mansion:room/normal/small_hallway/reset
execute if entity @a[gamemode=!spectator,x=700,y=20,z=42,dx=17,dy=6,dz=21] run function luigis_mansion:room/normal/study/tick
execute if score #study Ticking matches 1 unless entity @a[gamemode=!spectator,x=700,y=20,z=42,dx=17,dy=6,dz=21] unless entity @a[scores={Room=7}] unless entity @a[scores={LastRoom=7}] run function #luigis_mansion:room/normal/study/reset
execute if entity @a[gamemode=!spectator,x=683,y=111,z=38,dx=15,dy=6,dz=18] run function luigis_mansion:room/normal/master_bedroom/tick
execute if score #master_bedroom Ticking matches 1 unless entity @a[gamemode=!spectator,x=683,y=111,z=38,dx=15,dy=6,dz=18] unless entity @a[scores={Room=8}] unless entity @a[scores={LastRoom=8}] run function #luigis_mansion:room/normal/master_bedroom/reset
execute if entity @a[gamemode=!spectator,x=737,y=20,z=53,dx=14,dy=6,dz=20] run function luigis_mansion:room/normal/nursery/tick
execute if score #nursery Ticking matches 1 unless entity @a[gamemode=!spectator,x=737,y=20,z=53,dx=14,dy=6,dz=20] unless entity @a[scores={Room=9}] unless entity @a[scores={LastRoom=9}] run function #luigis_mansion:room/normal/nursery/reset
execute if entity @a[gamemode=!spectator,x=667,y=11,z=-35,dx=53,dy=6,dz=60] run function luigis_mansion:room/normal/main_hallway/tick
execute if score #main_hallway Ticking matches 1 unless entity @a[gamemode=!spectator,x=667,y=11,z=-35,dx=53,dy=6,dz=60] unless entity @a[scores={Room=10}] unless entity @a[scores={LastRoom=10}] run function #luigis_mansion:room/normal/main_hallway/reset
execute if entity @a[gamemode=!spectator,x=712,y=2,z=-63,dx=8,dy=15,dz=21] run function luigis_mansion:room/normal/basement_stairs/tick
execute if score #basement_stairs Ticking matches 1 unless entity @a[gamemode=!spectator,x=712,y=2,z=-63,dx=8,dy=15,dz=21] unless entity @a[scores={Room=11}] unless entity @a[scores={LastRoom=11}] run function #luigis_mansion:room/normal/basement_stairs/reset
execute if entity @a[gamemode=!spectator,x=648,y=11,z=15,dx=12,dy=6,dz=14] run function luigis_mansion:room/normal/bathroom_1/tick
execute if score #bathroom_1 Ticking matches 1 unless entity @a[gamemode=!spectator,x=648,y=11,z=15,dx=12,dy=6,dz=14] unless entity @a[scores={Room=12}] unless entity @a[scores={LastRoom=12}] run function #luigis_mansion:room/normal/bathroom_1/reset
execute if entity @a[gamemode=!spectator,x=695,y=11,z=-70,dx=17,dy=6,dz=33] run function luigis_mansion:room/normal/ball_room/tick
execute if score #ball_room Ticking matches 1 unless entity @a[gamemode=!spectator,x=695,y=11,z=-70,dx=17,dy=6,dz=33] unless entity @a[scores={Room=13}] unless entity @a[scores={LastRoom=13}] run function #luigis_mansion:room/normal/ball_room/reset
execute if entity @a[gamemode=!spectator,x=679,y=11,z=-70,dx=12,dy=6,dz=33] run function luigis_mansion:room/normal/storage_room/tick
execute if score #storage_room Ticking matches 1 unless entity @a[gamemode=!spectator,x=679,y=11,z=-70,dx=12,dy=6,dz=33] unless entity @a[scores={Room=14}] unless entity @a[scores={LastRoom=14}] run function #luigis_mansion:room/normal/storage_room/reset
execute if entity @a[gamemode=!spectator,x=660,y=11,z=34,dx=8,dy=6,dz=14] run function luigis_mansion:room/normal/washroom_1/tick
execute if score #washroom_1 Ticking matches 1 unless entity @a[gamemode=!spectator,x=660,y=11,z=34,dx=8,dy=6,dz=14] unless entity @a[scores={Room=15}] unless entity @a[scores={LastRoom=15}] run function #luigis_mansion:room/normal/washroom_1/reset
execute if entity @a[gamemode=!spectator,x=734,y=11,z=-39,dx=14,dy=6,dz=20] run function luigis_mansion:room/normal/fortune_tellers_room/tick
execute if score #fortune_tellers_room Ticking matches 1 unless entity @a[gamemode=!spectator,x=734,y=11,z=-39,dx=14,dy=6,dz=20] unless entity @a[scores={Room=16}] unless entity @a[scores={LastRoom=16}] run function #luigis_mansion:room/normal/fortune_tellers_room/reset
execute if entity @a[gamemode=!spectator,x=734,y=11,z=-63,dx=14,dy=6,dz=21] run function luigis_mansion:room/normal/mirror_room/tick
execute if score #mirror_room Ticking matches 1 unless entity @a[gamemode=!spectator,x=734,y=11,z=-63,dx=14,dy=6,dz=21] unless entity @a[scores={Room=17}] unless entity @a[scores={LastRoom=17}] run function #luigis_mansion:room/normal/mirror_room/reset
execute if entity @a[gamemode=!spectator,x=712,y=11,z=57,dx=8,dy=6,dz=20] run function luigis_mansion:room/normal/laundry_room/tick
execute if score #laundry_room Ticking matches 1 unless entity @a[gamemode=!spectator,x=712,y=11,z=57,dx=8,dy=6,dz=20] unless entity @a[scores={Room=18}] unless entity @a[scores={LastRoom=18}] run function #luigis_mansion:room/normal/laundry_room/reset
execute if entity @a[gamemode=!spectator,x=737,y=11,z=53,dx=14,dy=6,dz=20] run function luigis_mansion:room/normal/butlers_room/tick
execute if score #butlers_room Ticking matches 1 unless entity @a[gamemode=!spectator,x=737,y=11,z=53,dx=14,dy=6,dz=20] unless entity @a[scores={Room=19}] unless entity @a[scores={LastRoom=19}] run function #luigis_mansion:room/normal/butlers_room/reset
execute if entity @a[gamemode=!spectator,x=736,y=11,z=29,dx=14,dy=6,dz=21] run function luigis_mansion:room/normal/hidden_room/tick
execute if score #hidden_room Ticking matches 1 unless entity @a[gamemode=!spectator,x=736,y=11,z=29,dx=14,dy=6,dz=21] unless entity @a[scores={Room=20}] unless entity @a[scores={LastRoom=20}] run function #luigis_mansion:room/normal/hidden_room/reset
execute if entity @a[gamemode=!spectator,x=652,y=11,z=-29,dx=12,dy=6,dz=28] run function luigis_mansion:room/normal/conservatory/tick
execute if score #conservatory Ticking matches 1 unless entity @a[gamemode=!spectator,x=652,y=11,z=-29,dx=12,dy=6,dz=28] unless entity @a[scores={Room=21}] unless entity @a[scores={LastRoom=21}] run function #luigis_mansion:room/normal/conservatory/reset
execute if entity @a[gamemode=!spectator,x=697,y=11,z=28,dx=14,dy=6,dz=30] run function luigis_mansion:room/normal/dining_room/tick
execute if score #dining_room Ticking matches 1 unless entity @a[gamemode=!spectator,x=697,y=11,z=28,dx=14,dy=6,dz=30] unless entity @a[scores={Room=22}] unless entity @a[scores={LastRoom=22}] run function #luigis_mansion:room/normal/dining_room/reset
execute if entity @a[gamemode=!spectator,x=697,y=11,z=61,dx=14,dy=6,dz=31] run function luigis_mansion:room/normal/kitchen/tick
execute if score #kitchen Ticking matches 1 unless entity @a[gamemode=!spectator,x=697,y=11,z=61,dx=14,dy=6,dz=31] unless entity @a[scores={Room=23}] unless entity @a[scores={LastRoom=23}] run function #luigis_mansion:room/normal/kitchen/reset
execute if entity @a[gamemode=!spectator,x=672,y=102,z=38,dx=12,dy=6,dz=17] run function luigis_mansion:room/normal/boneyard/tick
execute if score #boneyard Ticking matches 1 unless entity @a[gamemode=!spectator,x=672,y=102,z=38,dx=12,dy=6,dz=17] unless entity @a[scores={Room=24}] unless entity @a[scores={LastRoom=24}] run function #luigis_mansion:room/normal/boneyard/reset
execute if entity @a[gamemode=!spectator,x=645,y=102,z=39,dx=25,dy=6,dz=16] run function luigis_mansion:room/normal/graveyard/tick
execute if score #graveyard Ticking matches 1 unless entity @a[gamemode=!spectator,x=645,y=102,z=39,dx=25,dy=6,dz=16] unless entity @a[scores={Room=25}] unless entity @a[scores={LastRoom=25}] run function #luigis_mansion:room/normal/graveyard/reset
execute if entity @a[gamemode=!spectator,x=645,y=102,z=-40,dx=8,dy=6,dz=77] run function luigis_mansion:room/normal/courtyard/tick
execute if score #courtyard Ticking matches 1 unless entity @a[gamemode=!spectator,x=645,y=102,z=-40,dx=8,dy=6,dz=77] unless entity @a[scores={Room=26}] unless entity @a[scores={LastRoom=26}] run function #luigis_mansion:room/normal/courtyard/reset
execute if entity @a[gamemode=!spectator,x=646,y=93,z=-10,dx=4,dy=8,dz=10] run function luigis_mansion:room/normal/bottom_of_the_well/tick
execute if score #bottom_of_the_well Ticking matches 1 unless entity @a[gamemode=!spectator,x=646,y=93,z=-10,dx=4,dy=8,dz=10] unless entity @a[scores={Room=27}] unless entity @a[scores={LastRoom=27}] run function #luigis_mansion:room/normal/bottom_of_the_well/reset
execute if entity @a[gamemode=!spectator,x=637,y=11,z=-62,dx=12,dy=6,dz=33] run function luigis_mansion:room/normal/rec_room/tick
execute if score #rec_room Ticking matches 1 unless entity @a[gamemode=!spectator,x=637,y=11,z=-62,dx=12,dy=6,dz=33] unless entity @a[scores={Room=28}] unless entity @a[scores={LastRoom=28}] run function #luigis_mansion:room/normal/rec_room/reset

execute if entity @a[gamemode=!spectator,x=665,y=102,z=-41,dx=6,dy=15,dz=24] run function luigis_mansion:room/normal/main_stairs/tick
execute if score #main_stairs Ticking matches 1 unless entity @a[gamemode=!spectator,x=665,y=102,z=-41,dx=6,dy=15,dz=24] unless entity @a[scores={Room=29}] unless entity @a[scores={LastRoom=29}] run function #luigis_mansion:room/normal/main_stairs/reset
execute if entity @a[gamemode=!spectator,x=654,y=111,z=-41,dx=10,dy=6,dz=31] run function luigis_mansion:room/normal/tea_room/tick
execute if score #tea_room Ticking matches 1 unless entity @a[gamemode=!spectator,x=654,y=111,z=-41,dx=10,dy=6,dz=31] unless entity @a[scores={Room=30}] unless entity @a[scores={LastRoom=30}] run function #luigis_mansion:room/normal/tea_room/reset
execute if entity @a[gamemode=!spectator,x=699,y=111,z=-41,dx=6,dy=15,dz=24] run function luigis_mansion:room/normal/hallway/tick
execute unless entity @a[gamemode=!spectator,x=699,y=111,z=-41,dx=6,dy=15,dz=24] if entity @a[gamemode=!spectator,x=699,y=111,z=-41,dx=6,dy=6,dz=38] run function luigis_mansion:room/normal/hallway/tick
execute unless entity @a[gamemode=!spectator,x=699,y=111,z=-41,dx=6,dy=15,dz=24] unless entity @a[gamemode=!spectator,x=699,y=111,z=-41,dx=6,dy=6,dz=38] if entity @a[gamemode=!spectator,x=665,y=111,z=-9,dx=40,dy=6,dz=6] run function luigis_mansion:room/normal/hallway/tick
execute unless entity @a[gamemode=!spectator,x=699,y=111,z=-41,dx=6,dy=15,dz=24] unless entity @a[gamemode=!spectator,x=699,y=111,z=-41,dx=6,dy=6,dz=38] unless entity @a[gamemode=!spectator,x=665,y=111,z=-9,dx=40,dy=6,dz=6] if entity @a[gamemode=!spectator,x=665,y=111,z=-16,dx=6,dy=6,dz=40] run function luigis_mansion:room/normal/hallway/tick
execute unless entity @a[gamemode=!spectator,x=699,y=111,z=-41,dx=6,dy=15,dz=24] unless entity @a[gamemode=!spectator,x=699,y=111,z=-41,dx=6,dy=6,dz=38] unless entity @a[gamemode=!spectator,x=665,y=111,z=-9,dx=40,dy=6,dz=6] unless entity @a[gamemode=!spectator,x=665,y=111,z=-16,dx=6,dy=6,dz=40] if entity @a[gamemode=!spectator,x=654,y=111,z=18,dx=17,dy=6,dz=6] run function luigis_mansion:room/normal/hallway/tick
execute if score #hallway Ticking matches 1 unless entity @a[gamemode=!spectator,x=699,y=111,z=-41,dx=6,dy=15,dz=24] unless entity @a[gamemode=!spectator,x=699,y=111,z=-41,dx=6,dy=6,dz=38] unless entity @a[gamemode=!spectator,x=665,y=111,z=-9,dx=40,dy=6,dz=6] unless entity @a[gamemode=!spectator,x=665,y=111,z=-16,dx=6,dy=6,dz=40] unless entity @a[gamemode=!spectator,x=654,y=111,z=18,dx=17,dy=6,dz=6] unless entity @a[scores={Room=31}] unless entity @a[scores={LastRoom=31}] run function #luigis_mansion:room/normal/hallway/reset
execute if entity @a[gamemode=!spectator,x=665,y=111,z=25,dx=6,dy=6,dz=12] run function luigis_mansion:room/normal/washroom_2/tick
execute if score #washroom_2 Ticking matches 1 unless entity @a[gamemode=!spectator,x=665,y=111,z=25,dx=6,dy=6,dz=12] unless entity @a[scores={Room=32}] unless entity @a[scores={LastRoom=32}] run function #luigis_mansion:room/normal/washroom_2/reset
execute if entity @a[gamemode=!spectator,x=654,y=111,z=25,dx=10,dy=6,dz=12] run function luigis_mansion:room/normal/bathroom_2/tick
execute if score #bathroom_2 Ticking matches 1 unless entity @a[gamemode=!spectator,x=654,y=111,z=25,dx=10,dy=6,dz=12] unless entity @a[scores={Room=33}] unless entity @a[scores={LastRoom=33}] run function #luigis_mansion:room/normal/bathroom_2/reset
execute if entity @a[gamemode=!spectator,x=654,y=111,z=-9,dx=10,dy=6,dz=26] run function luigis_mansion:room/normal/nanas_room/tick
execute if score #nanas_room Ticking matches 1 unless entity @a[gamemode=!spectator,x=654,y=111,z=-9,dx=10,dy=6,dz=26] unless entity @a[scores={Room=34}] unless entity @a[scores={LastRoom=34}] run function #luigis_mansion:room/normal/nanas_room/reset
execute if entity @a[gamemode=!spectator,x=672,y=111,z=-30,dx=10,dy=6,dz=20] run function luigis_mansion:room/normal/astral_hall/tick
execute if score #astral_hall Ticking matches 1 unless entity @a[gamemode=!spectator,x=672,y=111,z=-30,dx=10,dy=6,dz=20] unless entity @a[scores={Room=35}] unless entity @a[scores={LastRoom=35}] run function #luigis_mansion:room/normal/astral_hall/reset
execute if entity @a[gamemode=!spectator,x=672,y=111,z=-41,dx=10,dy=6,dz=10] run function luigis_mansion:room/normal/observatory/tick
execute unless entity @a[gamemode=!spectator,x=672,y=111,z=-41,dx=10,dy=6,dz=10] if entity @a[gamemode=!spectator,x=668,y=111,z=-102,dx=14,dy=6,dz=60] run function luigis_mansion:room/normal/observatory/tick
execute if score #observatory Ticking matches 1 unless entity @a[gamemode=!spectator,x=672,y=111,z=-41,dx=10,dy=6,dz=10] unless entity @a[gamemode=!spectator,x=668,y=111,z=-102,dx=14,dy=6,dz=60] unless entity @a[scores={Room=36}] unless entity @a[scores={LastRoom=36}] run function #luigis_mansion:room/normal/observatory/reset
execute if entity @a[gamemode=!spectator,x=672,y=102,z=13,dx=13,dy=6,dz=25] run function luigis_mansion:room/normal/billiards_room/tick
execute if score #billiards_room Ticking matches 1 unless entity @a[gamemode=!spectator,x=672,y=102,z=13,dx=13,dy=6,dz=25] unless entity @a[scores={Room=37}] unless entity @a[scores={LastRoom=37}] run function #luigis_mansion:room/normal/billiards_room/reset
execute if entity @a[gamemode=!spectator,x=672,y=102,z=-2,dx=13,dy=6,dz=14] run function luigis_mansion:room/normal/projection_room/tick
execute if score #projection_room Ticking matches 1 unless entity @a[gamemode=!spectator,x=672,y=102,z=-2,dx=13,dy=6,dz=14] unless entity @a[scores={Room=38}] unless entity @a[scores={LastRoom=38}] run function #luigis_mansion:room/normal/projection_room/reset
execute if entity @a[gamemode=!spectator,x=706,y=111,z=18,dx=12,dy=6,dz=19] run function luigis_mansion:room/normal/twins_room/tick
execute if score #twins_room Ticking matches 1 unless entity @a[gamemode=!spectator,x=706,y=111,z=18,dx=12,dy=6,dz=19] unless entity @a[scores={Room=39}] unless entity @a[scores={LastRoom=39}] run function #luigis_mansion:room/normal/twins_room/reset
execute if score #twins_room Ticking matches 1 unless entity @a[gamemode=!spectator,x=706,y=111,z=18,dx=12,dy=6,dz=19] unless entity @a[scores={Room=39}] if score #twins_room Wave matches 3..7 run function #luigis_mansion:room/normal/twins_room/reset
execute if entity @a[gamemode=!spectator,x=706,y=120,z=-40,dx=12,dy=6,dz=23] run function luigis_mansion:room/normal/safari_room/tick
execute if score #safari_room Ticking matches 1 unless entity @a[gamemode=!spectator,x=706,y=120,z=-40,dx=12,dy=6,dz=23] unless entity @a[scores={Room=40}] unless entity @a[scores={LastRoom=40}] run function #luigis_mansion:room/normal/safari_room/reset
execute if entity @a[gamemode=!spectator,x=683,y=120,z=-16,dx=38,dy=6,dz=6] run function luigis_mansion:room/normal/attic_hallway_1/tick
execute if score #attic_hallway_1 Ticking matches 1 unless entity @a[gamemode=!spectator,x=683,y=120,z=-16,dx=38,dy=6,dz=6] unless entity @a[scores={Room=41}] unless entity @a[scores={LastRoom=41}] run function #luigis_mansion:room/normal/attic_hallway_1/reset
execute if entity @a[gamemode=!spectator,x=654,y=120,z=-41,dx=28,dy=22,dz=78] run function luigis_mansion:room/normal/balcony_2/tick
execute if score #balcony_2 Ticking matches 1 unless entity @a[gamemode=!spectator,x=654,y=120,z=-41,dx=28,dy=22,dz=78] unless entity @a[scores={Room=42}] unless entity @a[scores={LastRoom=42}] run function #luigis_mansion:room/normal/balcony_2/reset
execute if entity @a[gamemode=!spectator,x=683,y=120,z=25,dx=38,dy=6,dz=6] run function luigis_mansion:room/normal/attic_hallway_2/tick
execute if score #attic_hallway_2 Ticking matches 1 unless entity @a[gamemode=!spectator,x=683,y=120,z=25,dx=38,dy=6,dz=6] unless entity @a[scores={Room=43}] unless entity @a[scores={LastRoom=43}] run function #luigis_mansion:room/normal/attic_hallway_2/reset
execute if entity @a[gamemode=!spectator,x=699,y=120,z=-9,dx=22,dy=6,dz=33] run function luigis_mansion:room/normal/telephone_room/tick
execute if score #telephone_room Ticking matches 1 unless entity @a[gamemode=!spectator,x=699,y=120,z=-9,dx=22,dy=6,dz=33] unless entity @a[scores={Room=44}] unless entity @a[scores={LastRoom=44}] run function #luigis_mansion:room/normal/telephone_room/reset
execute if entity @a[gamemode=!spectator,x=686,y=93,z=-41,dx=12,dy=6,dz=19] run function luigis_mansion:room/normal/breaker_room/tick
execute if score #breaker_room Ticking matches 1 unless entity @a[gamemode=!spectator,x=686,y=93,z=-41,dx=12,dy=6,dz=19] unless entity @a[scores={Room=45}] unless entity @a[scores={LastRoom=45}] run function #luigis_mansion:room/normal/breaker_room/reset
execute if entity @a[gamemode=!spectator,x=706,y=93,z=-41,dx=12,dy=6,dz=19] run function luigis_mansion:room/normal/cellar/tick
execute if score #cellar Ticking matches 1 unless entity @a[gamemode=!spectator,x=706,y=93,z=-41,dx=12,dy=6,dz=19] unless entity @a[scores={Room=46}] unless entity @a[scores={LastRoom=46}] run function #luigis_mansion:room/normal/cellar/reset
execute if entity @a[gamemode=!spectator,x=686,y=93,z=-21,dx=34,dy=6,dz=6] run function luigis_mansion:room/normal/basement_hallway/tick
execute if score #basement_hallway Ticking matches 1 unless entity @a[gamemode=!spectator,x=686,y=93,z=-21,dx=34,dy=6,dz=6] unless entity @a[scores={Room=47}] unless entity @a[scores={LastRoom=47}] run function #luigis_mansion:room/normal/basement_hallway/reset
execute if entity @a[gamemode=!spectator,x=654,y=93,z=-23,dx=31,dy=6,dz=10] run function luigis_mansion:room/normal/curved_hallway/tick
execute if score #curved_hallway Ticking matches 1 unless entity @a[gamemode=!spectator,x=654,y=93,z=-23,dx=31,dy=6,dz=10] unless entity @a[scores={Room=48}] unless entity @a[scores={LastRoom=48}] run function #luigis_mansion:room/normal/curved_hallway/reset
execute if entity @a[gamemode=!spectator,x=683,y=120,z=-9,dx=15,dy=8,dz=33] run function luigis_mansion:room/normal/clockwork_room/tick
execute if score #clockwork_room Ticking matches 1 unless entity @a[gamemode=!spectator,x=683,y=120,z=-9,dx=15,dy=8,dz=33] unless entity @a[scores={Room=49}] unless entity @a[scores={LastRoom=49}] run function #luigis_mansion:room/normal/clockwork_room/reset
execute if entity @a[gamemode=!spectator,x=683,y=129,z=-30,dx=29,dy=17,dz=75] run function luigis_mansion:room/normal/roof/tick
execute if score #roof Ticking matches 1 unless entity @a[gamemode=!spectator,x=683,y=129,z=-30,dx=29,dy=17,dz=75] unless entity @a[scores={Room=50}] unless entity @a[scores={LastRoom=50}] run function #luigis_mansion:room/normal/roof/reset
execute if entity @a[gamemode=!spectator,x=699,y=120,z=32,dx=20,dy=6,dz=23] run function luigis_mansion:room/normal/armory/tick
execute if score #armory Ticking matches 1 unless entity @a[gamemode=!spectator,x=699,y=120,z=32,dx=20,dy=6,dz=23] unless entity @a[scores={Room=51}] unless entity @a[scores={LastRoom=51}] run function #luigis_mansion:room/normal/armory/reset
execute if entity @a[gamemode=!spectator,x=683,y=120,z=32,dx=15,dy=6,dz=23] run function luigis_mansion:room/normal/ceramics_studio/tick
execute if score #ceramics_studio Ticking matches 1 unless entity @a[gamemode=!spectator,x=683,y=120,z=32,dx=15,dy=6,dz=23] unless entity @a[scores={Room=52}] unless entity @a[scores={LastRoom=52}] run function #luigis_mansion:room/normal/ceramics_studio/reset
execute if entity @a[gamemode=!spectator,x=683,y=111,z=-41,dx=15,dy=6,dz=31] run function luigis_mansion:room/normal/sealed_room/tick
execute if score #sealed_room Ticking matches 1 unless entity @a[gamemode=!spectator,x=683,y=111,z=-41,dx=15,dy=6,dz=31] unless entity @a[scores={Room=53}] unless entity @a[scores={LastRoom=53}] run function #luigis_mansion:room/normal/sealed_room/reset
execute if entity @a[gamemode=!spectator,x=686,y=93,z=-14,dx=12,dy=6,dz=16] run function luigis_mansion:room/normal/pipe_room/tick
execute if score #pipe_room Ticking matches 1 unless entity @a[gamemode=!spectator,x=686,y=93,z=-14,dx=12,dy=6,dz=16] unless entity @a[scores={Room=54}] unless entity @a[scores={LastRoom=54}] run function #luigis_mansion:room/normal/pipe_room/reset
execute if entity @a[gamemode=!spectator,x=699,y=93,z=-14,dx=19,dy=6,dz=16] run function luigis_mansion:room/normal/cold_storage/tick
execute if score #cold_storage Ticking matches 1 unless entity @a[gamemode=!spectator,x=699,y=93,z=-14,dx=19,dy=6,dz=16] unless entity @a[scores={Room=55}] unless entity @a[scores={LastRoom=55}] run function #luigis_mansion:room/normal/cold_storage/reset
execute if entity @a[gamemode=!spectator,x=706,y=111,z=-21,dx=12,dy=6,dz=18] run function luigis_mansion:room/normal/sitting_room/tick
execute if score #sitting_room Ticking matches 1 unless entity @a[gamemode=!spectator,x=706,y=111,z=-21,dx=12,dy=6,dz=18] unless entity @a[scores={Room=56}] unless entity @a[scores={LastRoom=56}] run function #luigis_mansion:room/normal/sitting_room/reset
execute if entity @a[gamemode=!spectator,x=706,y=111,z=-41,dx=12,dy=6,dz=19] run function luigis_mansion:room/normal/guest_room/tick
execute if score #guest_room Ticking matches 1 unless entity @a[gamemode=!spectator,x=706,y=111,z=-41,dx=12,dy=6,dz=19] unless entity @a[scores={Room=57}] unless entity @a[scores={LastRoom=57}] run function #luigis_mansion:room/normal/guest_room/reset
execute if entity @a[gamemode=!spectator,x=683,y=120,z=-40,dx=14,dy=6,dz=23] run function luigis_mansion:room/normal/artists_studio/tick
execute if score #artists_studio Ticking matches 1 unless entity @a[gamemode=!spectator,x=683,y=120,z=-40,dx=14,dy=6,dz=23] unless entity @a[scores={Room=58}] unless entity @a[scores={LastRoom=58}] run function #luigis_mansion:room/normal/artists_studio/reset
execute if entity @a[gamemode=!spectator,x=635,y=93,z=-26,dx=18,dy=6,dz=16] run function luigis_mansion:room/normal/secret_altar/tick
execute if score #secret_altar Ticking matches 1 unless entity @a[gamemode=!spectator,x=635,y=93,z=-26,dx=18,dy=6,dz=16] unless entity @a[scores={Room=59}] unless entity @a[scores={LastRoom=59}] run function #luigis_mansion:room/normal/secret_altar/reset

execute if score #clockwork_room_elevator Searched matches 1 run function luigis_mansion:room/normal/clockwork_room/raise_elevator
execute if score #clockwork_room_elevator Searched matches -1 run function luigis_mansion:room/normal/clockwork_room/lower_elevator