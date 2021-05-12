execute if entity @a[gamemode=!spectator,scores={Room=0}] in minecraft:overworld run function luigis_mansion:room/normal/door/boo_woods_foyer
execute as @a[scores={Room=1..},tag=!looking_at_map,tag=!warp] at @s run function luigis_mansion:room/normal/floor_header
execute as @a[gamemode=spectator,x=735,y=11,z=-2,dx=21,dy=15,dz=21] at @s run function luigis_mansion:room/normal/foyer/spectator_tick
execute if entity @a[gamemode=!spectator,x=735,y=11,z=-2,dx=21,dy=15,dz=21] run function luigis_mansion:room/normal/foyer/tick
execute if score #foyer Ticking matches 1 unless entity @a[gamemode=!spectator,x=735,y=11,z=-2,dx=21,dy=15,dz=21] unless entity @a[gamemode=!spectator,scores={Room=1}] run function luigis_mansion:room/normal/foyer/not_ticking
execute as @a[gamemode=spectator,x=712,y=20,z=17,dx=17,dy=6,dz=21] at @s run function luigis_mansion:room/normal/parlor/spectator_tick
execute if entity @a[gamemode=!spectator,x=712,y=20,z=17,dx=17,dy=6,dz=21] run function luigis_mansion:room/normal/parlor/tick
execute if score #parlor Ticking matches 1 unless entity @a[gamemode=!spectator,x=712,y=20,z=17,dx=17,dy=6,dz=21] unless entity @a[gamemode=!spectator,scores={Room=2}] run function luigis_mansion:room/normal/parlor/not_ticking
execute as @a[gamemode=spectator,x=683,y=20,z=22,dx=12,dy=6,dz=21] at @s run function luigis_mansion:room/normal/anteroom/spectator_tick
execute if entity @a[gamemode=!spectator,x=683,y=20,z=22,dx=12,dy=6,dz=21] run function luigis_mansion:room/normal/anteroom/tick
execute if score #anteroom Ticking matches 1 unless entity @a[gamemode=!spectator,x=683,y=20,z=22,dx=12,dy=6,dz=21] unless entity @a[gamemode=!spectator,scores={Room=3}] run function luigis_mansion:room/normal/anteroom/not_ticking
execute as @a[gamemode=spectator,x=676,y=20,z=55,dx=12,dy=6,dz=21] at @s run function luigis_mansion:room/normal/wardrobe_room/spectator_tick
execute if entity @a[gamemode=!spectator,x=676,y=20,z=55,dx=12,dy=6,dz=21] run function luigis_mansion:room/normal/wardrobe_room/tick
execute if score #wardrobe_room Ticking matches 1 unless entity @a[gamemode=!spectator,x=676,y=20,z=55,dx=12,dy=6,dz=21] unless entity @a[gamemode=!spectator,scores={Room=4}] run function luigis_mansion:room/normal/wardrobe_room/not_ticking
execute as @a[gamemode=spectator,x=673,y=111,z=38,dx=6,dy=6,dz=5] at @s run function luigis_mansion:room/normal/balcony_1/spectator_tick
execute if entity @a[gamemode=!spectator,x=673,y=111,z=38,dx=6,dy=6,dz=5] run function luigis_mansion:room/normal/balcony_1/tick
execute if score #balcony_1 Ticking matches 1 unless entity @a[gamemode=!spectator,x=673,y=111,z=38,dx=6,dy=6,dz=5] unless entity @a[gamemode=!spectator,scores={Room=5}] run function luigis_mansion:room/normal/balcony_1/not_ticking
execute as @a[gamemode=spectator,x=722,y=20,z=42,dx=8,dy=6,dz=38] at @s run function luigis_mansion:room/normal/small_hallway/spectator_tick
execute if entity @a[gamemode=!spectator,x=722,y=20,z=42,dx=8,dy=6,dz=38] run function luigis_mansion:room/normal/small_hallway/tick
execute if score #small_hallway Ticking matches 1 unless entity @a[gamemode=!spectator,x=722,y=20,z=42,dx=8,dy=6,dz=38] unless entity @a[gamemode=!spectator,scores={Room=6}] run function luigis_mansion:room/normal/small_hallway/not_ticking
execute as @a[gamemode=spectator,x=700,y=20,z=42,dx=17,dy=6,dz=21] at @s run function luigis_mansion:room/normal/study/spectator_tick
execute if entity @a[gamemode=!spectator,x=700,y=20,z=42,dx=17,dy=6,dz=21] run function luigis_mansion:room/normal/study/tick
execute if score #study Ticking matches 1 unless entity @a[gamemode=!spectator,x=700,y=20,z=42,dx=17,dy=6,dz=21] unless entity @a[gamemode=!spectator,scores={Room=7}] run function luigis_mansion:room/normal/study/not_ticking
execute as @a[gamemode=spectator,x=683,y=111,z=38,dx=15,dy=6,dz=18] at @s run function luigis_mansion:room/normal/master_bedroom/spectator_tick
execute if entity @a[gamemode=!spectator,x=683,y=111,z=38,dx=15,dy=6,dz=18] run function luigis_mansion:room/normal/master_bedroom/tick
execute if score #master_bedroom Ticking matches 1 unless entity @a[gamemode=!spectator,x=683,y=111,z=38,dx=15,dy=6,dz=18] unless entity @a[gamemode=!spectator,scores={Room=8}] run function luigis_mansion:room/normal/master_bedroom/not_ticking
execute as @a[gamemode=spectator,x=737,y=20,z=53,dx=14,dy=6,dz=20] at @s run function luigis_mansion:room/normal/nursery/spectator_tick
execute if entity @a[gamemode=!spectator,x=737,y=20,z=53,dx=14,dy=6,dz=20] run function luigis_mansion:room/normal/nursery/tick
execute if score #nursery Ticking matches 1 unless entity @a[gamemode=!spectator,x=737,y=20,z=53,dx=14,dy=6,dz=20] unless entity @a[gamemode=!spectator,scores={Room=9}] run function luigis_mansion:room/normal/nursery/not_ticking
execute as @a[gamemode=spectator,x=667,y=11,z=-35,dx=53,dy=6,dz=60] at @s run function luigis_mansion:room/normal/main_hallway/spectator_tick
execute if entity @a[gamemode=!spectator,x=667,y=11,z=-35,dx=53,dy=6,dz=60] run function luigis_mansion:room/normal/main_hallway/tick
execute if score #main_hallway Ticking matches 1 unless entity @a[gamemode=!spectator,x=667,y=11,z=-35,dx=53,dy=6,dz=60] unless entity @a[gamemode=!spectator,scores={Room=10}] run function luigis_mansion:room/normal/main_hallway/not_ticking
execute as @a[gamemode=spectator,x=712,y=2,z=-63,dx=8,dy=15,dz=21] at @s run function luigis_mansion:room/normal/basement_stairs/spectator_tick
execute if entity @a[gamemode=!spectator,x=712,y=2,z=-63,dx=8,dy=15,dz=21] run function luigis_mansion:room/normal/basement_stairs/tick
execute if score #basement_stairs Ticking matches 1 unless entity @a[gamemode=!spectator,x=712,y=2,z=-63,dx=8,dy=15,dz=21] unless entity @a[gamemode=!spectator,scores={Room=11}] run function luigis_mansion:room/normal/basement_stairs/not_ticking
execute as @a[gamemode=spectator,x=648,y=11,z=15,dx=12,dy=6,dz=14] at @s run function luigis_mansion:room/normal/bathroom_1/spectator_tick
execute if entity @a[gamemode=!spectator,x=648,y=11,z=15,dx=12,dy=6,dz=14] run function luigis_mansion:room/normal/bathroom_1/tick
execute if score #bathroom_1 Ticking matches 1 unless entity @a[gamemode=!spectator,x=648,y=11,z=15,dx=12,dy=6,dz=14] unless entity @a[gamemode=!spectator,scores={Room=12}] run function luigis_mansion:room/normal/bathroom_1/not_ticking
execute as @a[gamemode=spectator,x=695,y=11,z=-70,dx=17,dy=6,dz=33] at @s run function luigis_mansion:room/normal/ball_room/spectator_tick
execute if entity @a[gamemode=!spectator,x=695,y=11,z=-70,dx=17,dy=6,dz=33] run function luigis_mansion:room/normal/ball_room/tick
execute if score #ball_room Ticking matches 1 unless entity @a[gamemode=!spectator,x=695,y=11,z=-70,dx=17,dy=6,dz=33] unless entity @a[gamemode=!spectator,scores={Room=13}] run function luigis_mansion:room/normal/ball_room/not_ticking
execute as @a[gamemode=spectator,x=679,y=11,z=-70,dx=12,dy=6,dz=33] at @s run function luigis_mansion:room/normal/storage_room/spectator_tick
execute if entity @a[gamemode=!spectator,x=679,y=11,z=-70,dx=12,dy=6,dz=33] run function luigis_mansion:room/normal/storage_room/tick
execute if score #storage_room Ticking matches 1 unless entity @a[gamemode=!spectator,x=679,y=11,z=-70,dx=12,dy=6,dz=33] unless entity @a[gamemode=!spectator,scores={Room=14}] run function luigis_mansion:room/normal/storage_room/not_ticking
execute as @a[gamemode=spectator,x=660,y=11,z=34,dx=8,dy=6,dz=14] at @s run function luigis_mansion:room/normal/washroom_1/spectator_tick
execute if entity @a[gamemode=!spectator,x=660,y=11,z=34,dx=8,dy=6,dz=14] run function luigis_mansion:room/normal/washroom_1/tick
execute if score #washroom_1 Ticking matches 1 unless entity @a[gamemode=!spectator,x=660,y=11,z=34,dx=8,dy=6,dz=14] unless entity @a[gamemode=!spectator,scores={Room=15}] run function luigis_mansion:room/normal/washroom_1/not_ticking
execute as @a[gamemode=spectator,x=734,y=11,z=-39,dx=14,dy=6,dz=20] at @s run function luigis_mansion:room/normal/fortune_tellers_room/spectator_tick
execute if entity @a[gamemode=!spectator,x=734,y=11,z=-39,dx=14,dy=6,dz=20] run function luigis_mansion:room/normal/fortune_tellers_room/tick
execute if score #fortune_tellers_room Ticking matches 1 unless entity @a[gamemode=!spectator,x=734,y=11,z=-39,dx=14,dy=6,dz=20] unless entity @a[gamemode=!spectator,scores={Room=16}] run function luigis_mansion:room/normal/fortune_tellers_room/not_ticking
execute as @a[gamemode=spectator,x=734,y=11,z=-63,dx=14,dy=6,dz=21] at @s run function luigis_mansion:room/normal/mirror_room/spectator_tick
execute if entity @a[gamemode=!spectator,x=734,y=11,z=-63,dx=14,dy=6,dz=21] run function luigis_mansion:room/normal/mirror_room/tick
execute if score #mirror_room Ticking matches 1 unless entity @a[gamemode=!spectator,x=734,y=11,z=-63,dx=14,dy=6,dz=21] unless entity @a[gamemode=!spectator,scores={Room=17}] run function luigis_mansion:room/normal/mirror_room/not_ticking
execute as @a[gamemode=spectator,x=712,y=11,z=57,dx=8,dy=6,dz=20] at @s run function luigis_mansion:room/normal/laundry_room/spectator_tick
execute if entity @a[gamemode=!spectator,x=712,y=11,z=57,dx=8,dy=6,dz=20] run function luigis_mansion:room/normal/laundry_room/tick
execute if score #laundry_room Ticking matches 1 unless entity @a[gamemode=!spectator,x=712,y=11,z=57,dx=8,dy=6,dz=20] unless entity @a[gamemode=!spectator,scores={Room=18}] run function luigis_mansion:room/normal/laundry_room/not_ticking
execute as @a[gamemode=spectator,x=737,y=11,z=53,dx=14,dy=6,dz=20] at @s run function luigis_mansion:room/normal/butlers_room/spectator_tick
execute if entity @a[gamemode=!spectator,x=737,y=11,z=53,dx=14,dy=6,dz=20] run function luigis_mansion:room/normal/butlers_room/tick
execute if score #butlers_room Ticking matches 1 unless entity @a[gamemode=!spectator,x=737,y=11,z=53,dx=14,dy=6,dz=20] unless entity @a[gamemode=!spectator,scores={Room=19}] run function luigis_mansion:room/normal/butlers_room/not_ticking
execute as @a[gamemode=spectator,x=736,y=11,z=29,dx=14,dy=6,dz=21] at @s run function luigis_mansion:room/normal/hidden_room/spectator_tick
execute if entity @a[gamemode=!spectator,x=736,y=11,z=29,dx=14,dy=6,dz=21] run function luigis_mansion:room/normal/hidden_room/tick
execute if score #hidden_room Ticking matches 1 unless entity @a[gamemode=!spectator,x=736,y=11,z=29,dx=14,dy=6,dz=21] unless entity @a[gamemode=!spectator,scores={Room=20}] run function luigis_mansion:room/normal/hidden_room/not_ticking
execute as @a[gamemode=spectator,x=652,y=11,z=-29,dx=12,dy=6,dz=28] at @s run function luigis_mansion:room/normal/conservatory/spectator_tick
execute if entity @a[gamemode=!spectator,x=652,y=11,z=-29,dx=12,dy=6,dz=28] run function luigis_mansion:room/normal/conservatory/tick
execute if score #conservatory Ticking matches 1 unless entity @a[gamemode=!spectator,x=652,y=11,z=-29,dx=12,dy=6,dz=28] unless entity @a[gamemode=!spectator,scores={Room=21}] run function luigis_mansion:room/normal/conservatory/not_ticking
execute as @a[gamemode=spectator,x=697,y=11,z=28,dx=14,dy=6,dz=30] at @s run function luigis_mansion:room/normal/dining_room/spectator_tick
execute if entity @a[gamemode=!spectator,x=697,y=11,z=28,dx=14,dy=6,dz=30] run function luigis_mansion:room/normal/dining_room/tick
execute if score #dining_room Ticking matches 1 unless entity @a[gamemode=!spectator,x=697,y=11,z=28,dx=14,dy=6,dz=30] unless entity @a[gamemode=!spectator,scores={Room=22}] run function luigis_mansion:room/normal/dining_room/not_ticking
execute as @a[gamemode=spectator,x=697,y=11,z=61,dx=14,dy=6,dz=31] at @s run function luigis_mansion:room/normal/kitchen/spectator_tick
execute if entity @a[gamemode=!spectator,x=697,y=11,z=61,dx=14,dy=6,dz=31] run function luigis_mansion:room/normal/kitchen/tick
execute if score #kitchen Ticking matches 1 unless entity @a[gamemode=!spectator,x=697,y=11,z=61,dx=14,dy=6,dz=31] unless entity @a[gamemode=!spectator,scores={Room=23}] run function luigis_mansion:room/normal/kitchen/not_ticking
execute as @a[gamemode=spectator,x=672,y=102,z=38,dx=12,dy=6,dz=17] at @s run function luigis_mansion:room/normal/boneyard/spectator_tick
execute if entity @a[gamemode=!spectator,x=672,y=102,z=38,dx=12,dy=6,dz=17] run function luigis_mansion:room/normal/boneyard/tick
execute if score #boneyard Ticking matches 1 unless entity @a[gamemode=!spectator,x=672,y=102,z=38,dx=12,dy=6,dz=17] unless entity @a[gamemode=!spectator,scores={Room=24}] run function luigis_mansion:room/normal/boneyard/not_ticking
execute as @a[gamemode=spectator,x=645,y=102,z=39,dx=25,dy=6,dz=16] at @s run function luigis_mansion:room/normal/graveyard/spectator_tick
execute if entity @a[gamemode=!spectator,x=645,y=102,z=39,dx=25,dy=6,dz=16] run function luigis_mansion:room/normal/graveyard/tick
execute if score #graveyard Ticking matches 1 unless entity @a[gamemode=!spectator,x=645,y=102,z=39,dx=25,dy=6,dz=16] unless entity @a[gamemode=!spectator,scores={Room=25}] run function luigis_mansion:room/normal/graveyard/not_ticking
execute as @a[gamemode=spectator,x=645,y=102,z=-40,dx=8,dy=6,dz=77] at @s run function luigis_mansion:room/normal/courtyard/spectator_tick
execute if entity @a[gamemode=!spectator,x=645,y=102,z=-40,dx=8,dy=6,dz=77] run function luigis_mansion:room/normal/courtyard/tick
execute if score #courtyard Ticking matches 1 unless entity @a[gamemode=!spectator,x=645,y=102,z=-40,dx=8,dy=6,dz=77] unless entity @a[gamemode=!spectator,scores={Room=26}] run function luigis_mansion:room/normal/courtyard/not_ticking
execute as @a[gamemode=spectator,x=646,y=93,z=-12,dx=4,dy=6,dz=8] at @s run function luigis_mansion:room/normal/bottom_of_the_well/spectator_tick
execute if entity @a[gamemode=!spectator,x=646,y=93,z=-10,dx=4,dy=8,dz=10] run function luigis_mansion:room/normal/bottom_of_the_well/tick
execute if score #bottom_of_the_well Ticking matches 1 unless entity @a[gamemode=!spectator,x=646,y=93,z=-10,dx=4,dy=8,dz=10] unless entity @a[gamemode=!spectator,scores={Room=27}] run function luigis_mansion:room/normal/bottom_of_the_well/not_ticking
execute as @a[gamemode=spectator,x=637,y=11,z=-62,dx=12,dy=6,dz=33] at @s run function luigis_mansion:room/normal/rec_room/spectator_tick
execute if entity @a[gamemode=!spectator,x=637,y=11,z=-62,dx=12,dy=6,dz=33] run function luigis_mansion:room/normal/rec_room/tick
execute if score #rec_room Ticking matches 1 unless entity @a[gamemode=!spectator,x=637,y=11,z=-62,dx=12,dy=6,dz=33] unless entity @a[gamemode=!spectator,scores={Room=28}] run function luigis_mansion:room/normal/rec_room/not_ticking
execute as @a[gamemode=spectator,x=659,y=11,z=-62,dx=8,dy=15,dz=26] at @s run function luigis_mansion:room/normal/main_stairs/spectator_tick
execute if entity @a[gamemode=!spectator,x=659,y=11,z=-62,dx=8,dy=15,dz=26] run function luigis_mansion:room/normal/main_stairs/tick
execute if score #main_stairs Ticking matches 1 unless entity @a[gamemode=!spectator,x=659,y=11,z=-62,dx=8,dy=15,dz=26] unless entity @a[gamemode=!spectator,scores={Room=29}] run function luigis_mansion:room/normal/main_stairs/not_ticking
execute as @a[gamemode=spectator,x=637,y=20,z=-62,dx=12,dy=6,dz=33] at @s run function luigis_mansion:room/normal/tea_room/spectator_tick
execute if entity @a[gamemode=!spectator,x=637,y=20,z=-62,dx=12,dy=6,dz=33] run function luigis_mansion:room/normal/tea_room/tick
execute if score #tea_room Ticking matches 1 unless entity @a[gamemode=!spectator,x=637,y=20,z=-62,dx=12,dy=6,dz=33] unless entity @a[gamemode=!spectator,scores={Room=30}] run function luigis_mansion:room/normal/tea_room/not_ticking
execute as @a[gamemode=spectator,x=667,y=20,z=-55,dx=53,dy=15,dz=67] at @s run function luigis_mansion:room/normal/hallway/spectator_tick
execute if entity @a[gamemode=!spectator,x=667,y=20,z=-55,dx=53,dy=15,dz=67] run function luigis_mansion:room/normal/hallway/tick
execute if score #hallway Ticking matches 1 unless entity @a[gamemode=!spectator,x=667,y=20,z=-55,dx=53,dy=15,dz=67] unless entity @a[gamemode=!spectator,scores={Room=31}] run function luigis_mansion:room/normal/hallway/not_ticking
execute as @a[gamemode=spectator,x=660,y=20,z=34,dx=8,dy=6,dz=14] at @s run function luigis_mansion:room/normal/washroom_2/spectator_tick
execute if entity @a[gamemode=!spectator,x=660,y=20,z=34,dx=8,dy=6,dz=14] run function luigis_mansion:room/normal/washroom_2/tick
execute if score #washroom_2 Ticking matches 1 unless entity @a[gamemode=!spectator,x=660,y=20,z=34,dx=8,dy=6,dz=14] unless entity @a[gamemode=!spectator,scores={Room=32}] run function luigis_mansion:room/normal/washroom_2/not_ticking
execute as @a[gamemode=spectator,x=648,y=20,z=15,dx=12,dy=6,dz=14] at @s run function luigis_mansion:room/normal/bathroom_2/spectator_tick
execute if entity @a[gamemode=!spectator,x=648,y=20,z=15,dx=12,dy=6,dz=14] run function luigis_mansion:room/normal/bathroom_2/tick
execute if score #bathroom_2 Ticking matches 1 unless entity @a[gamemode=!spectator,x=648,y=20,z=15,dx=12,dy=6,dz=14] unless entity @a[gamemode=!spectator,scores={Room=33}] run function luigis_mansion:room/normal/bathroom_2/not_ticking
execute as @a[gamemode=spectator,x=652,y=20,z=-29,dx=12,dy=6,dz=28] at @s run function luigis_mansion:room/normal/nanas_room/spectator_tick
execute if entity @a[gamemode=!spectator,x=652,y=20,z=-29,dx=12,dy=6,dz=28] run function luigis_mansion:room/normal/nanas_room/tick
execute if score #nanas_room Ticking matches 1 unless entity @a[gamemode=!spectator,x=652,y=20,z=-29,dx=12,dy=6,dz=28] unless entity @a[gamemode=!spectator,scores={Room=34}] run function luigis_mansion:room/normal/nanas_room/not_ticking
execute as @a[gamemode=spectator,x=660,y=20,z=-93,dx=12,dy=6,dz=22] at @s run function luigis_mansion:room/normal/astral_hall/spectator_tick
execute if entity @a[gamemode=!spectator,x=660,y=20,z=-93,dx=12,dy=6,dz=22] run function luigis_mansion:room/normal/astral_hall/tick
execute if score #astral_hall Ticking matches 1 unless entity @a[gamemode=!spectator,x=660,y=20,z=-93,dx=12,dy=6,dz=22] unless entity @a[gamemode=!spectator,scores={Room=35}] run function luigis_mansion:room/normal/astral_hall/not_ticking
execute as @a[gamemode=spectator,x=635,y=20,z=-145,dx=16,dy=6,dz=72] at @s run function luigis_mansion:room/normal/observatory/spectator_tick
execute if entity @a[gamemode=!spectator,x=635,y=20,z=-145,dx=16,dy=6,dz=72] run function luigis_mansion:room/normal/observatory/tick
execute if score #observatory Ticking matches 1 unless entity @a[gamemode=!spectator,x=635,y=20,z=-145,dx=16,dy=6,dz=72] unless entity @a[gamemode=!spectator,scores={Room=36}] run function luigis_mansion:room/normal/observatory/not_ticking
execute as @a[gamemode=spectator,x=673,y=11,z=64,dx=15,dy=6,dz=27] at @s run function luigis_mansion:room/normal/billiards_room/spectator_tick
execute if entity @a[gamemode=!spectator,x=673,y=11,z=64,dx=15,dy=6,dz=27] run function luigis_mansion:room/normal/billiards_room/tick
execute if score #billiards_room Ticking matches 1 unless entity @a[gamemode=!spectator,x=673,y=11,z=64,dx=15,dy=6,dz=27] unless entity @a[gamemode=!spectator,scores={Room=37}] run function luigis_mansion:room/normal/billiards_room/not_ticking
execute as @a[gamemode=spectator,x=673,y=11,z=30,dx=15,dy=6,dz=16] at @s run function luigis_mansion:room/normal/projection_room/spectator_tick
execute if entity @a[gamemode=!spectator,x=673,y=11,z=30,dx=15,dy=6,dz=16] run function luigis_mansion:room/normal/projection_room/tick
execute if score #projection_room Ticking matches 1 unless entity @a[gamemode=!spectator,x=673,y=11,z=30,dx=15,dy=6,dz=16] unless entity @a[gamemode=!spectator,scores={Room=38}] run function luigis_mansion:room/normal/projection_room/not_ticking
execute as @a[gamemode=spectator,x=736,y=20,z=29,dx=14,dy=6,dz=21] at @s run function luigis_mansion:room/normal/twins_room/spectator_tick
execute if entity @a[gamemode=!spectator,x=736,y=20,z=29,dx=14,dy=6,dz=21] run function luigis_mansion:room/normal/twins_room/tick
execute if score #twins_room Ticking matches 1 unless entity @a[gamemode=!spectator,x=736,y=20,z=29,dx=14,dy=6,dz=21] unless entity @a[gamemode=!spectator,scores={Room=39}] run function luigis_mansion:room/normal/twins_room/not_ticking
execute as @a[gamemode=spectator,x=732,y=29,z=-59,dx=14,dy=6,dz=25] at @s run function luigis_mansion:room/normal/safari_room/spectator_tick
execute if entity @a[gamemode=!spectator,x=732,y=29,z=-59,dx=14,dy=6,dz=25] run function luigis_mansion:room/normal/safari_room/tick
execute if score #safari_room Ticking matches 1 unless entity @a[gamemode=!spectator,x=732,y=29,z=-59,dx=14,dy=6,dz=25] unless entity @a[gamemode=!spectator,scores={Room=40}] run function luigis_mansion:room/normal/safari_room/not_ticking
execute as @a[gamemode=spectator,x=724,y=29,z=-17,dx=40,dy=6,dz=8] at @s run function luigis_mansion:room/normal/attic_hallway_1/spectator_tick
execute if entity @a[gamemode=!spectator,x=724,y=29,z=-17,dx=40,dy=6,dz=8] run function luigis_mansion:room/normal/attic_hallway_1/tick
execute if score #attic_hallway_1 Ticking matches 1 unless entity @a[gamemode=!spectator,x=724,y=29,z=-17,dx=40,dy=6,dz=8] unless entity @a[gamemode=!spectator,scores={Room=41}] run function luigis_mansion:room/normal/attic_hallway_1/not_ticking
execute as @a[gamemode=spectator,x=654,y=120,z=-41,dx=28,dy=22,dz=78] at @s run function luigis_mansion:room/normal/balcony_2/spectator_tick
execute if entity @a[gamemode=!spectator,x=654,y=120,z=-41,dx=28,dy=22,dz=78] run function luigis_mansion:room/normal/balcony_2/tick
execute if score #balcony_2 Ticking matches 1 unless entity @a[gamemode=!spectator,x=654,y=120,z=-41,dx=28,dy=22,dz=78] unless entity @a[gamemode=!spectator,scores={Room=42}] run function luigis_mansion:room/normal/balcony_2/not_ticking
execute as @a[gamemode=spectator,x=723,y=29,z=40,dx=40,dy=6,dz=8] at @s run function luigis_mansion:room/normal/attic_hallway_2/spectator_tick
execute if entity @a[gamemode=!spectator,x=723,y=29,z=40,dx=40,dy=6,dz=8] run function luigis_mansion:room/normal/attic_hallway_2/tick
execute if score #attic_hallway_2 Ticking matches 1 unless entity @a[gamemode=!spectator,x=723,y=29,z=40,dx=40,dy=6,dz=8] unless entity @a[gamemode=!spectator,scores={Room=43}] run function luigis_mansion:room/normal/attic_hallway_2/not_ticking
execute as @a[gamemode=spectator,x=736,y=29,z=0,dx=24,dy=6,dz=35] at @s run function luigis_mansion:room/normal/telephone_room/spectator_tick
execute if entity @a[gamemode=!spectator,x=736,y=29,z=0,dx=24,dy=6,dz=35] run function luigis_mansion:room/normal/telephone_room/tick
execute if score #telephone_room Ticking matches 1 unless entity @a[gamemode=!spectator,x=736,y=29,z=0,dx=24,dy=6,dz=35] unless entity @a[gamemode=!spectator,scores={Room=44}] run function luigis_mansion:room/normal/telephone_room/not_ticking
execute as @a[gamemode=spectator,x=686,y=2,z=-63,dx=14,dy=6,dz=21] at @s run function luigis_mansion:room/normal/breaker_room/spectator_tick
execute if entity @a[gamemode=!spectator,x=686,y=2,z=-63,dx=14,dy=6,dz=21] run function luigis_mansion:room/normal/breaker_room/tick
execute if score #breaker_room Ticking matches 1 unless entity @a[gamemode=!spectator,x=686,y=2,z=-63,dx=14,dy=6,dz=21] unless entity @a[gamemode=!spectator,scores={Room=45}] run function luigis_mansion:room/normal/breaker_room/not_ticking
execute as @a[gamemode=spectator,x=734,y=2,z=-63,dx=14,dy=6,dz=21] at @s run function luigis_mansion:room/normal/cellar/spectator_tick
execute if entity @a[gamemode=!spectator,x=734,y=2,z=-63,dx=14,dy=6,dz=21] run function luigis_mansion:room/normal/cellar/tick
execute if score #cellar Ticking matches 1 unless entity @a[gamemode=!spectator,x=734,y=2,z=-63,dx=14,dy=6,dz=21] unless entity @a[gamemode=!spectator,scores={Room=46}] run function luigis_mansion:room/normal/cellar/not_ticking
execute as @a[gamemode=spectator,x=699,y=2,z=-22,dx=36,dy=6,dz=8] at @s run function luigis_mansion:room/normal/basement_hallway/spectator_tick
execute if entity @a[gamemode=!spectator,x=699,y=2,z=-22,dx=36,dy=6,dz=8] run function luigis_mansion:room/normal/basement_hallway/tick
execute if score #basement_hallway Ticking matches 1 unless entity @a[gamemode=!spectator,x=699,y=2,z=-22,dx=36,dy=6,dz=8] unless entity @a[gamemode=!spectator,scores={Room=47}] run function luigis_mansion:room/normal/basement_hallway/not_ticking
execute as @a[gamemode=spectator,x=653,y=2,z=-24,dx=33,dy=6,dz=12] at @s run function luigis_mansion:room/normal/curved_hallway/spectator_tick
execute if entity @a[gamemode=!spectator,x=653,y=2,z=-24,dx=33,dy=6,dz=12] run function luigis_mansion:room/normal/curved_hallway/tick
execute if score #curved_hallway Ticking matches 1 unless entity @a[gamemode=!spectator,x=653,y=2,z=-24,dx=33,dy=6,dz=12] unless entity @a[gamemode=!spectator,scores={Room=48}] run function luigis_mansion:room/normal/curved_hallway/not_ticking
execute as @a[gamemode=spectator,x=683,y=120,z=-9,dx=15,dy=6,dz=33] at @s run function luigis_mansion:room/normal/clockwork_room/spectator_tick
execute if entity @a[gamemode=!spectator,x=683,y=120,z=-9,dx=15,dy=8,dz=33] run function luigis_mansion:room/normal/clockwork_room/tick
execute if score #clockwork_room Ticking matches 1 unless entity @a[gamemode=!spectator,x=683,y=120,z=-9,dx=15,dy=8,dz=33] unless entity @a[gamemode=!spectator,scores={Room=49}] run function luigis_mansion:room/normal/clockwork_room/not_ticking
execute as @a[gamemode=spectator,x=683,y=129,z=-30,dx=29,dy=17,dz=75] at @s run function luigis_mansion:room/normal/roof/spectator_tick
execute if entity @a[gamemode=!spectator,x=683,y=129,z=-30,dx=29,dy=17,dz=75] run function luigis_mansion:room/normal/roof/tick
execute if score #roof Ticking matches 1 unless entity @a[gamemode=!spectator,x=683,y=129,z=-30,dx=29,dy=17,dz=75] unless entity @a[gamemode=!spectator,scores={Room=50}] run function luigis_mansion:room/normal/roof/not_ticking
execute as @a[gamemode=spectator,x=744,y=29,z=54,dx=22,dy=6,dz=25] at @s run function luigis_mansion:room/normal/armory/spectator_tick
execute if entity @a[gamemode=!spectator,x=744,y=29,z=54,dx=22,dy=6,dz=25] run function luigis_mansion:room/normal/armory/tick
execute if score #armory Ticking matches 1 unless entity @a[gamemode=!spectator,x=744,y=29,z=54,dx=22,dy=6,dz=25] unless entity @a[gamemode=!spectator,scores={Room=51}] run function luigis_mansion:room/normal/armory/not_ticking
execute as @a[gamemode=spectator,x=696,y=29,z=56,dx=17,dy=6,dz=25] at @s run function luigis_mansion:room/normal/ceramics_studio/spectator_tick
execute if entity @a[gamemode=!spectator,x=696,y=29,z=56,dx=17,dy=6,dz=25] run function luigis_mansion:room/normal/ceramics_studio/tick
execute if score #ceramics_studio Ticking matches 1 unless entity @a[gamemode=!spectator,x=696,y=29,z=56,dx=17,dy=6,dz=25] unless entity @a[gamemode=!spectator,scores={Room=52}] run function luigis_mansion:room/normal/ceramics_studio/not_ticking
execute as @a[gamemode=spectator,x=693,y=20,z=-88,dx=17,dy=6,dz=33] at @s run function luigis_mansion:room/normal/sealed_room/spectator_tick
execute if entity @a[gamemode=!spectator,x=693,y=20,z=-88,dx=17,dy=6,dz=33] run function luigis_mansion:room/normal/sealed_room/tick
execute if score #sealed_room Ticking matches 1 unless entity @a[gamemode=!spectator,x=693,y=20,z=-88,dx=17,dy=6,dz=33] unless entity @a[gamemode=!spectator,scores={Room=53}] run function luigis_mansion:room/normal/sealed_room/not_ticking
execute as @a[gamemode=spectator,x=686,y=2,z=-6,dx=14,dy=6,dz=18] at @s run function luigis_mansion:room/normal/pipe_room/spectator_tick
execute if entity @a[gamemode=!spectator,x=686,y=2,z=-6,dx=14,dy=6,dz=18] run function luigis_mansion:room/normal/pipe_room/tick
execute if score #pipe_room Ticking matches 1 unless entity @a[gamemode=!spectator,x=686,y=2,z=-6,dx=14,dy=6,dz=18] unless entity @a[gamemode=!spectator,scores={Room=54}] run function luigis_mansion:room/normal/pipe_room/not_ticking
execute as @a[gamemode=spectator,x=721,y=1,z=-6,dx=21,dy=6,dz=18] at @s run function luigis_mansion:room/normal/cold_storage/spectator_tick
execute if entity @a[gamemode=!spectator,x=721,y=1,z=-6,dx=21,dy=6,dz=18] run function luigis_mansion:room/normal/cold_storage/tick
execute if score #cold_storage Ticking matches 1 unless entity @a[gamemode=!spectator,x=721,y=1,z=-6,dx=21,dy=6,dz=18] unless entity @a[gamemode=!spectator,scores={Room=55}] run function luigis_mansion:room/normal/cold_storage/not_ticking
execute as @a[gamemode=spectator,x=734,y=20,z=-39,dx=14,dy=6,dz=20] at @s run function luigis_mansion:room/normal/sitting_room/spectator_tick
execute if entity @a[gamemode=!spectator,x=734,y=20,z=-39,dx=14,dy=6,dz=20] run function luigis_mansion:room/normal/sitting_room/tick
execute if score #sitting_room Ticking matches 1 unless entity @a[gamemode=!spectator,x=734,y=20,z=-39,dx=14,dy=6,dz=20] unless entity @a[gamemode=!spectator,scores={Room=56}] run function luigis_mansion:room/normal/sitting_room/not_ticking
execute as @a[gamemode=spectator,x=734,y=20,z=-63,dx=14,dy=6,dz=21] at @s run function luigis_mansion:room/normal/guest_room/spectator_tick
execute if entity @a[gamemode=!spectator,x=734,y=20,z=-63,dx=14,dy=6,dz=21] run function luigis_mansion:room/normal/guest_room/tick
execute if score #guest_room Ticking matches 1 unless entity @a[gamemode=!spectator,x=734,y=20,z=-63,dx=14,dy=6,dz=21] unless entity @a[gamemode=!spectator,scores={Room=57}] run function luigis_mansion:room/normal/guest_room/not_ticking
execute as @a[gamemode=spectator,x=687,y=29,z=-80,dx=16,dy=6,dz=25] at @s run function luigis_mansion:room/normal/artists_studio/spectator_tick
execute if entity @a[gamemode=!spectator,x=687,y=29,z=-80,dx=16,dy=6,dz=25] run function luigis_mansion:room/normal/artists_studio/tick
execute if score #artists_studio Ticking matches 1 unless entity @a[gamemode=!spectator,x=687,y=29,z=-80,dx=16,dy=6,dz=25] unless entity @a[gamemode=!spectator,scores={Room=58}] run function luigis_mansion:room/normal/artists_studio/not_ticking
execute as @a[gamemode=spectator,x=635,y=93,z=-26,dx=18,dy=6,dz=16] at @s run function luigis_mansion:room/normal/secret_altar/spectator_tick
execute if entity @a[gamemode=!spectator,x=635,y=93,z=-26,dx=18,dy=6,dz=16] run function luigis_mansion:room/normal/secret_altar/tick
execute if score #secret_altar Ticking matches 1 unless entity @a[gamemode=!spectator,x=635,y=93,z=-26,dx=18,dy=6,dz=16] unless entity @a[gamemode=!spectator,scores={Room=59}] run function luigis_mansion:room/normal/secret_altar/not_ticking

execute if score #clockwork_room_elevator Searched matches 1 run function luigis_mansion:room/normal/clockwork_room/raise_elevator
execute if score #clockwork_room_elevator Searched matches -1 run function luigis_mansion:room/normal/clockwork_room/lower_elevator
execute unless entity @a[tag=blackout_lightning,limit=1] if predicate luigis_mansion:lightning_strike_chance run function luigis_mansion:other/lightning_strike