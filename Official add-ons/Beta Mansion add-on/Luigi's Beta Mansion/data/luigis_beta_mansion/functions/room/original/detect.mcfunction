execute as @a[scores={Room=1..73},tag=!looking_at_map,tag=!warp,nbt={Dimension:"luigis_beta_mansion:original"}] at @s run function luigis_beta_mansion:room/original/floor_header
execute as @a[gamemode=spectator,tag=!already_ticked,distance=0..,scores={HomeX=743..758,HomeY=9..26,HomeZ=-2..19}] at @s run function luigis_beta_mansion:room/original/entrance/spectator_tick
execute if entity @a[x=735,y=9,z=-2,dx=21,dy=17,dz=21] run function luigis_beta_mansion:room/original/entrance/tick
execute if score #entrance Ticking matches 1 unless entity @a[x=735,y=9,z=-2,dx=21,dy=17,dz=21] unless entity @a[scores={Room=1}] run function luigis_beta_mansion:room/original/entrance/not_ticking
execute as @a[gamemode=spectator,tag=!already_ticked,distance=0..,scores={HomeX=735..742,HomeY=18..26,HomeZ=-2..19}] at @s run function luigis_beta_mansion:room/original/hallway_1/spectator_tick
execute if entity @a[x=735,y=9,z=-2,dx=21,dy=17,dz=21] run function luigis_beta_mansion:room/original/hallway_1/tick
execute if score #hallway_1 Ticking matches 1 unless entity @a[x=735,y=9,z=-2,dx=21,dy=17,dz=21] unless entity @a[scores={Room=2}] run function luigis_beta_mansion:room/original/hallway_1/not_ticking
execute as @a[gamemode=spectator,tag=!already_ticked,distance=0..,scores={HomeX=712..729,HomeY=18..26,HomeZ=17..38}] at @s run function luigis_beta_mansion:room/original/living_room/spectator_tick
execute if entity @a[x=712,y=18,z=17,dx=17,dy=8,dz=21] run function luigis_beta_mansion:room/original/living_room/tick
execute if score #living_room Ticking matches 1 unless entity @a[x=712,y=18,z=17,dx=17,dy=8,dz=21] unless entity @a[scores={Room=3}] run function luigis_beta_mansion:room/original/living_room/not_ticking
execute as @a[gamemode=spectator,tag=!already_ticked,distance=0..,scores={HomeX=722..730,HomeY=18..26,HomeZ=42..80}] at @s run function luigis_beta_mansion:room/original/hallway_2/spectator_tick
execute if entity @a[x=722,y=18,z=42,dx=8,dy=8,dz=38] run function luigis_beta_mansion:room/original/hallway_2/tick
execute if score #hallway_2 Ticking matches 1 unless entity @a[x=722,y=18,z=42,dx=8,dy=8,dz=38] unless entity @a[scores={Room=4}] run function luigis_beta_mansion:room/original/hallway_2/not_ticking
execute as @a[gamemode=spectator,tag=!already_ticked,distance=0..,scores={HomeX=700..717,HomeY=18..26,HomeZ=42..63}] at @s run function luigis_beta_mansion:room/original/study/spectator_tick
execute if entity @a[x=700,y=18,z=42,dx=17,dy=8,dz=21] run function luigis_beta_mansion:room/original/study/tick
execute if score #study Ticking matches 1 unless entity @a[x=700,y=18,z=42,dx=17,dy=8,dz=21] unless entity @a[scores={Room=5}] run function luigis_beta_mansion:room/original/study/not_ticking
execute as @a[gamemode=spectator,tag=!already_ticked,distance=0..,scores={HomeX=683..698,HomeY=109..117,HomeZ=38..56}] at @s run function luigis_beta_mansion:room/original/bed_room_1/spectator_tick
execute if entity @a[x=683,y=109,z=38,dx=15,dy=8,dz=18] run function luigis_beta_mansion:room/original/bed_room_1/tick
execute if score #bed_room_1 Ticking matches 1 unless entity @a[x=683,y=109,z=38,dx=15,dy=8,dz=18] unless entity @a[scores={Room=6}] run function luigis_beta_mansion:room/original/bed_room_1/not_ticking
execute as @a[gamemode=spectator,tag=!already_ticked,distance=0..,scores={HomeX=737..751,HomeY=18..26,HomeZ=53..73}] at @s run function luigis_beta_mansion:room/original/childs_room/spectator_tick
execute if entity @a[x=737,y=18,z=53,dx=14,dy=8,dz=20] run function luigis_beta_mansion:room/original/childs_room/tick
execute if score #childs_room Ticking matches 1 unless entity @a[x=737,y=18,z=53,dx=14,dy=8,dz=20] unless entity @a[scores={Room=7}] run function luigis_beta_mansion:room/original/childs_room/not_ticking
execute as @a[gamemode=spectator,tag=!already_ticked,distance=0..,scores={HomeX=713..720,HomeY=9..17,HomeZ=-35..25}] at @s run function luigis_beta_mansion:room/original/hallway_3/spectator_tick
execute if entity @a[x=713,y=9,z=-35,dx=7,dy=8,dz=60] run function luigis_beta_mansion:room/original/hallway_3/tick
execute unless entity @a[x=713,y=9,z=-35,dx=7,dy=8,dz=60] if entity @a[x=678,y=9,z=-23,dx=42,dy=8,dz=8] run function luigis_beta_mansion:room/original/hallway_3/tick
execute if score #hallway_3 Ticking matches 1 unless entity @a[x=713,y=9,z=-35,dx=7,dy=8,dz=60] unless entity @a[x=678,y=9,z=-23,dx=42,dy=8,dz=8] unless entity @a[scores={Room=8}] run function luigis_beta_mansion:room/original/hallway_3/not_ticking
execute as @a[gamemode=spectator,tag=!already_ticked,distance=0..,scores={HomeX=686..712,HomeY=9..17,HomeZ=-23..-15}] at @s run function luigis_beta_mansion:room/original/hallway_4/spectator_tick
execute if entity @a[x=679,y=9,z=-35,dx=41,dy=8,dz=60] run function luigis_beta_mansion:room/original/hallway_4/tick
execute if score #hallway_4 Ticking matches 1 unless entity @a[x=679,y=9,z=-35,dx=41,dy=8,dz=60] unless entity @a[scores={Room=9}] run function luigis_beta_mansion:room/original/hallway_4/not_ticking
execute as @a[gamemode=spectator,tag=!already_ticked,distance=0..,scores={HomeX=679..685,HomeY=9..17,HomeZ=-29..12}] at @s run function luigis_beta_mansion:room/original/hallway_5/spectator_tick
execute if entity @a[x=667,y=9,z=-54,dx=18,dy=8,dz=66] run function luigis_beta_mansion:room/original/hallway_5/tick
execute unless entity @a[x=667,y=9,z=-54,dx=18,dy=8,dz=66] if entity @a[x=678,y=9,z=-23,dx=42,dy=8,dz=8] run function luigis_beta_mansion:room/original/hallway_5/tick
execute if score #hallway_5 Ticking matches 1 unless entity @a[x=667,y=9,z=-54,dx=18,dy=8,dz=66] unless entity @a[x=678,y=9,z=-23,dx=42,dy=8,dz=8] unless entity @a[scores={Room=10}] run function luigis_beta_mansion:room/original/hallway_5/not_ticking
execute as @a[gamemode=spectator,tag=!already_ticked,distance=0..,scores={HomeX=667..678,HomeY=9..17,HomeZ=4..12}] at @s run function luigis_beta_mansion:room/original/hallway_6/spectator_tick
execute if entity @a[x=667,y=9,z=-30,dx=18,dy=8,dz=42] run function luigis_beta_mansion:room/original/hallway_6/tick
execute if score #hallway_6 Ticking matches 1 unless entity @a[x=667,y=9,z=-30,dx=18,dy=8,dz=42] unless entity @a[scores={Room=11}] run function luigis_beta_mansion:room/original/hallway_6/not_ticking
execute as @a[gamemode=spectator,tag=!already_ticked,distance=0..,scores={HomeX=648..660,HomeY=9..17,HomeZ=15..29}] at @s run function luigis_beta_mansion:room/original/bath_room/spectator_tick
execute if entity @a[x=648,y=9,z=15,dx=12,dy=8,dz=14] run function luigis_beta_mansion:room/original/bath_room/tick
execute if score #bath_room Ticking matches 1 unless entity @a[x=648,y=9,z=15,dx=12,dy=8,dz=14] unless entity @a[scores={Room=12}] run function luigis_beta_mansion:room/original/bath_room/not_ticking
execute as @a[gamemode=spectator,tag=!already_ticked,distance=0..,scores={HomeX=660..668,HomeY=9..17,HomeZ=34..48}] at @s run function luigis_beta_mansion:room/original/lavatory/spectator_tick
execute if entity @a[x=660,y=9,z=34,dx=8,dy=8,dz=14] run function luigis_beta_mansion:room/original/lavatory/tick
execute if score #lavatory Ticking matches 1 unless entity @a[x=660,y=9,z=34,dx=8,dy=8,dz=14] unless entity @a[scores={Room=13}] run function luigis_beta_mansion:room/original/lavatory/not_ticking
execute as @a[gamemode=spectator,tag=!already_ticked,distance=0..,scores={HomeX=697..711,HomeY=9..17,HomeZ=28..58}] at @s run function luigis_beta_mansion:room/original/dining_room/spectator_tick
execute if entity @a[x=697,y=9,z=28,dx=14,dy=8,dz=30] run function luigis_beta_mansion:room/original/dining_room/tick
execute if score #dining_room Ticking matches 1 unless entity @a[x=697,y=9,z=28,dx=14,dy=8,dz=30] unless entity @a[scores={Room=14}] run function luigis_beta_mansion:room/original/dining_room/not_ticking
execute as @a[gamemode=spectator,tag=!already_ticked,distance=0..,scores={HomeX=697..711,HomeY=9..17,HomeZ=61..92}] at @s run function luigis_beta_mansion:room/original/kitchen/spectator_tick
execute if entity @a[x=697,y=9,z=61,dx=14,dy=8,dz=31] run function luigis_beta_mansion:room/original/kitchen/tick
execute if score #kitchen Ticking matches 1 unless entity @a[x=697,y=9,z=61,dx=14,dy=8,dz=31] unless entity @a[scores={Room=15}] run function luigis_beta_mansion:room/original/kitchen/not_ticking
execute as @a[gamemode=spectator,tag=!already_ticked,distance=0..,scores={HomeX=672..685,HomeY=100..108,HomeZ=38..56}] at @s run function luigis_beta_mansion:room/original/back_yard/spectator_tick
execute if entity @a[x=672,y=100,z=38,dx=12,dy=8,dz=17] run function luigis_beta_mansion:room/original/back_yard/tick
execute if score #back_yard Ticking matches 1 unless entity @a[x=672,y=100,z=38,dx=12,dy=8,dz=17] unless entity @a[scores={Room=16}] run function luigis_beta_mansion:room/original/back_yard/not_ticking
execute as @a[gamemode=spectator,tag=!already_ticked,distance=0..,scores={HomeX=683..695,HomeY=18..26,HomeZ=22..43}] at @s run function luigis_beta_mansion:room/original/missingno_1/spectator_tick
execute if entity @a[x=683,y=18,z=22,dx=12,dy=8,dz=21] run function luigis_beta_mansion:room/original/missingno_1/tick
execute if score #missingno_1 Ticking matches 1 unless entity @a[x=683,y=18,z=22,dx=12,dy=8,dz=21] unless entity @a[scores={Room=17}] run function luigis_beta_mansion:room/original/missingno_1/not_ticking
execute as @a[gamemode=spectator,tag=!already_ticked,distance=0..,scores={HomeX=676..688,HomeY=18..26,HomeZ=55..76}] at @s run function luigis_beta_mansion:room/original/missingno_2/spectator_tick
execute if entity @a[x=676,y=18,z=55,dx=12,dy=8,dz=21] run function luigis_beta_mansion:room/original/missingno_2/tick
execute if score #missingno_2 Ticking matches 1 unless entity @a[x=676,y=18,z=55,dx=12,dy=8,dz=21] unless entity @a[scores={Room=18}] run function luigis_beta_mansion:room/original/missingno_2/not_ticking
execute as @a[gamemode=spectator,tag=!already_ticked,distance=0..,scores={HomeX=673..681,HomeY=109..117,HomeZ=38..44}] at @s run function luigis_beta_mansion:room/original/missingno_3/spectator_tick
execute if entity @a[x=673,y=109,z=38,dx=28,dy=8,dz=18] run function luigis_beta_mansion:room/original/missingno_3/tick
execute if score #missingno_3 Ticking matches 1 unless entity @a[x=673,y=109,z=38,dx=28,dy=8,dz=18] unless entity @a[scores={Room=19}] run function luigis_beta_mansion:room/original/missingno_3/not_ticking
execute as @a[gamemode=spectator,tag=!already_ticked,distance=0..,scores={HomeX=679..685,HomeY=9..26,HomeZ=-54..-30}] at @s run function luigis_beta_mansion:room/original/missingno_4/spectator_tick
execute if entity @a[x=679,y=9,z=-54,dx=8,dy=17,dz=66] run function luigis_beta_mansion:room/original/missingno_4/tick
execute if score #missingno_4 Ticking matches 1 unless entity @a[x=679,y=9,z=-54,dx=8,dy=17,dz=66] unless entity @a[scores={Room=20}] run function luigis_beta_mansion:room/original/missingno_4/not_ticking
execute as @a[gamemode=spectator,tag=!already_ticked,distance=0..,scores={HomeX=679..685,HomeY=18..26,HomeZ=-29..12}] at @s run function luigis_beta_mansion:room/original/missingno_5/spectator_tick
execute if entity @a[x=667,y=18,z=-54,dx=18,dy=8,dz=66] run function luigis_beta_mansion:room/original/missingno_5/tick
execute unless entity @a[x=667,y=18,z=-54,dx=18,dy=8,dz=66] if entity @a[x=678,y=18,z=-23,dx=42,dy=8,dz=8] run function luigis_beta_mansion:room/original/missingno_5/tick
execute if score #missingno_5 Ticking matches 1 unless entity @a[x=667,y=18,z=-54,dx=18,dy=8,dz=66] unless entity @a[x=678,y=18,z=-23,dx=42,dy=8,dz=8] unless entity @a[scores={Room=21}] run function luigis_beta_mansion:room/original/missingno_5/not_ticking
execute as @a[gamemode=spectator,tag=!already_ticked,distance=0..,scores={HomeX=667..678,HomeY=18..26,HomeZ=4..12}] at @s run function luigis_beta_mansion:room/original/missingno_6/spectator_tick
execute if entity @a[x=667,y=18,z=-30,dx=18,dy=8,dz=42] run function luigis_beta_mansion:room/original/missingno_6/tick
execute if score #missingno_6 Ticking matches 1 unless entity @a[x=667,y=18,z=-30,dx=18,dy=8,dz=42] unless entity @a[scores={Room=22}] run function luigis_beta_mansion:room/original/missingno_6/not_ticking
execute as @a[gamemode=spectator,tag=!already_ticked,distance=0..,scores={HomeX=686..696,HomeY=18..26,HomeZ=-23..-15}] at @s run function luigis_beta_mansion:room/original/missingno_7/spectator_tick
execute if entity @a[x=679,y=18,z=-43,dx=41,dy=8,dz=67] run function luigis_beta_mansion:room/original/missingno_7/tick
execute if score #missingno_7 Ticking matches 1 unless entity @a[x=679,y=18,z=-43,dx=41,dy=8,dz=67] unless entity @a[scores={Room=23}] run function luigis_beta_mansion:room/original/missingno_7/not_ticking
execute as @a[gamemode=spectator,tag=!already_ticked,distance=0..,scores={HomeX=697..712,HomeY=18..26,HomeZ=-23..-15}] at @s run function luigis_beta_mansion:room/original/missingno_8/spectator_tick
execute if entity @a[x=679,y=18,z=-43,dx=41,dy=8,dz=67] run function luigis_beta_mansion:room/original/missingno_8/tick
execute if score #missingno_8 Ticking matches 1 unless entity @a[x=679,y=18,z=-43,dx=41,dy=8,dz=67] unless entity @a[scores={Room=24}] run function luigis_beta_mansion:room/original/missingno_8/not_ticking
execute as @a[gamemode=spectator,tag=!already_ticked,distance=0..,scores={HomeX=713..720,HomeY=18..26,HomeZ=-42..-15}] at @s run function luigis_beta_mansion:room/original/missingno_9/spectator_tick
execute if entity @a[x=713,y=18,z=-42,dx=7,dy=8,dz=27] run function luigis_beta_mansion:room/original/missingno_9/tick
execute unless entity @a[x=713,y=18,z=-42,dx=7,dy=8,dz=27] if entity @a[x=678,y=18,z=-23,dx=42,dy=8,dz=8] run function luigis_beta_mansion:room/original/missingno_9/tick
execute unless entity @a[x=713,y=18,z=-42,dx=7,dy=8,dz=27] unless entity @a[x=678,y=18,z=-23,dx=42,dy=8,dz=8] if entity @a[x=712,y=18,z=-55,dx=8,dy=17,dz=12] run function luigis_beta_mansion:room/original/missingno_9/tick
execute if score #missingno_9 Ticking matches 1 unless entity @a[x=713,y=18,z=-42,dx=7,dy=8,dz=27] unless entity @a[x=678,y=18,z=-23,dx=42,dy=8,dz=8] unless entity @a[x=712,y=18,z=-55,dx=8,dy=19,dz=12] unless entity @a[scores={Room=25}] run function luigis_beta_mansion:room/original/missingno_9/not_ticking
execute as @a[gamemode=spectator,tag=!already_ticked,distance=0..,scores={HomeX=712..720,HomeY=18..35,HomeZ=-55..-43}] at @s run function luigis_beta_mansion:room/original/missingno_10/spectator_tick
execute if entity @a[x=712,y=18,z=-55,dx=8,dy=17,dz=12] run function luigis_beta_mansion:room/original/missingno_10/tick
execute unless entity @a[x=712,y=18,z=-55,dx=8,dy=17,dz=12] if entity @a[x=713,y=18,z=-42,dx=7,dy=8,dz=27] run function luigis_beta_mansion:room/original/missingno_10/tick
execute unless entity @a[x=712,y=18,z=-55,dx=8,dy=17,dz=12] unless entity @a[x=713,y=18,z=-42,dx=7,dy=8,dz=27] if entity @a[x=712,y=27,z=-42,dx=8,dy=8,dz=13] run function luigis_beta_mansion:room/original/missingno_10/tick
execute if score #missingno_10 Ticking matches 1 unless entity @a[x=712,y=18,z=-55,dx=8,dy=17,dz=12] unless entity @a[x=713,y=18,z=-42,dx=7,dy=8,dz=27] unless entity @a[x=712,y=27,z=-42,dx=8,dy=8,dz=13] unless entity @a[scores={Room=26}] run function luigis_beta_mansion:room/original/missingno_10/not_ticking
execute as @a[gamemode=spectator,tag=!already_ticked,distance=0..,scores={HomeX=712..720,HomeY=27..35,HomeZ=-42..-29}] at @s run function luigis_beta_mansion:room/original/missingno_11/spectator_tick
execute if entity @a[x=712,y=27,z=-42,dx=8,dy=8,dz=13] run function luigis_beta_mansion:room/original/missingno_11/tick
execute unless entity @a[x=712,y=27,z=-42,dx=8,dy=8,dz=13] if entity @a[x=712,y=18,z=-55,dx=8,dy=17,dz=12] run function luigis_beta_mansion:room/original/missingno_11/tick
execute if score #missingno_11 Ticking matches 1 unless entity @a[x=712,y=27,z=-42,dx=8,dy=8,dz=13] unless entity @a[x=712,y=18,z=-55,dx=8,dy=17,dz=12] unless entity @a[scores={Room=27}] run function luigis_beta_mansion:room/original/missingno_11/not_ticking
execute as @a[gamemode=spectator,tag=!already_ticked,distance=0..,scores={HomeX=712..720,HomeY=0..17,HomeZ=-63..-42}] at @s run function luigis_beta_mansion:room/original/missingno_12/spectator_tick
execute if entity @a[x=712,y=0,z=-63,dx=8,dy=17,dz=21] run function luigis_beta_mansion:room/original/missingno_12/tick
execute if score #missingno_12 Ticking matches 1 unless entity @a[x=712,y=0,z=-63,dx=8,dy=17,dz=21] unless entity @a[scores={Room=28}] run function luigis_beta_mansion:room/original/missingno_12/not_ticking
execute as @a[gamemode=spectator,tag=!already_ticked,distance=0..,scores={HomeX=695..712,HomeY=9..17,HomeZ=-70..-37}] at @s run function luigis_beta_mansion:room/original/missingno_13/spectator_tick
execute if entity @a[x=695,y=9,z=-70,dx=17,dy=8,dz=33] run function luigis_beta_mansion:room/original/missingno_13/tick
execute if score #missingno_13 Ticking matches 1 unless entity @a[x=695,y=9,z=-70,dx=17,dy=8,dz=33] unless entity @a[scores={Room=29}] run function luigis_beta_mansion:room/original/missingno_13/not_ticking
execute as @a[gamemode=spectator,tag=!already_ticked,distance=0..,scores={HomeX=679..691,HomeY=9..17,HomeZ=-88..-55}] at @s run function luigis_beta_mansion:room/original/missingno_14/spectator_tick
execute if entity @a[x=679,y=9,z=-88,dx=12,dy=8,dz=33] run function luigis_beta_mansion:room/original/missingno_14/tick
execute if score #missingno_14 Ticking matches 1 unless entity @a[x=679,y=9,z=-88,dx=12,dy=8,dz=33] unless entity @a[scores={Room=30}] run function luigis_beta_mansion:room/original/missingno_14/not_ticking
execute as @a[gamemode=spectator,tag=!already_ticked,distance=0..,scores={HomeX=734..748,HomeY=9..17,HomeZ=-39..-19}] at @s run function luigis_beta_mansion:room/original/missingno_15/spectator_tick
execute if entity @a[x=734,y=9,z=-39,dx=14,dy=8,dz=20] run function luigis_beta_mansion:room/original/missingno_15/tick
execute if score #missingno_15 Ticking matches 1 unless entity @a[x=734,y=9,z=-39,dx=14,dy=8,dz=20] unless entity @a[scores={Room=31}] run function luigis_beta_mansion:room/original/missingno_15/not_ticking
execute as @a[gamemode=spectator,tag=!already_ticked,distance=0..,scores={HomeX=734..748,HomeY=9..17,HomeZ=-63..-42}] at @s run function luigis_beta_mansion:room/original/missingno_16/spectator_tick
execute if entity @a[x=734,y=9,z=-63,dx=14,dy=8,dz=21] run function luigis_beta_mansion:room/original/missingno_16/tick
execute if score #missingno_16 Ticking matches 1 unless entity @a[x=734,y=9,z=-63,dx=14,dy=8,dz=21] unless entity @a[scores={Room=32}] run function luigis_beta_mansion:room/original/missingno_16/not_ticking
execute as @a[gamemode=spectator,tag=!already_ticked,distance=0..,scores={HomeX=712..720,HomeY=9..17,HomeZ=57..77}] at @s run function luigis_beta_mansion:room/original/missingno_17/spectator_tick
execute if entity @a[x=712,y=9,z=57,dx=8,dy=8,dz=20] run function luigis_beta_mansion:room/original/missingno_17/tick
execute if score #missingno_17 Ticking matches 1 unless entity @a[x=712,y=9,z=57,dx=8,dy=8,dz=20] unless entity @a[scores={Room=33}] run function luigis_beta_mansion:room/original/missingno_17/not_ticking
execute as @a[gamemode=spectator,tag=!already_ticked,distance=0..,scores={HomeX=737..751,HomeY=9..17,HomeZ=53..73}] at @s run function luigis_beta_mansion:room/original/missingno_18/spectator_tick
execute if entity @a[x=737,y=9,z=53,dx=14,dy=8,dz=20] run function luigis_beta_mansion:room/original/missingno_18/tick
execute if score #missingno_18 Ticking matches 1 unless entity @a[x=737,y=9,z=53,dx=14,dy=8,dz=20] unless entity @a[scores={Room=34}] run function luigis_beta_mansion:room/original/missingno_18/not_ticking
execute as @a[gamemode=spectator,tag=!already_ticked,distance=0..,scores={HomeX=736..750,HomeY=9..17,HomeZ=29..50}] at @s run function luigis_beta_mansion:room/original/missingno_19/spectator_tick
execute if entity @a[x=736,y=9,z=29,dx=14,dy=8,dz=21] run function luigis_beta_mansion:room/original/missingno_19/tick
execute if score #missingno_19 Ticking matches 1 unless entity @a[x=736,y=9,z=29,dx=14,dy=8,dz=21] unless entity @a[scores={Room=35}] run function luigis_beta_mansion:room/original/missingno_19/not_ticking
execute as @a[gamemode=spectator,tag=!already_ticked,distance=0..,scores={HomeX=652..664,HomeY=9..17,HomeZ=-29..-1}] at @s run function luigis_beta_mansion:room/original/missingno_20/spectator_tick
execute if entity @a[x=652,y=9,z=-29,dx=12,dy=8,dz=28] run function luigis_beta_mansion:room/original/missingno_20/tick
execute if score #missingno_20 Ticking matches 1 unless entity @a[x=652,y=9,z=-29,dx=12,dy=8,dz=28] unless entity @a[scores={Room=36}] run function luigis_beta_mansion:room/original/missingno_20/not_ticking
execute as @a[gamemode=spectator,tag=!already_ticked,distance=0..,scores={HomeX=644..671,HomeY=100..108,HomeZ=38..56}] at @s run function luigis_beta_mansion:room/original/missingno_21/spectator_tick
execute if entity @a[x=645,y=100,z=39,dx=25,dy=8,dz=16] run function luigis_beta_mansion:room/original/missingno_21/tick
execute if score #missingno_21 Ticking matches 1 unless entity @a[x=645,y=100,z=39,dx=25,dy=8,dz=16] unless entity @a[scores={Room=37}] run function luigis_beta_mansion:room/original/missingno_21/not_ticking
execute as @a[gamemode=spectator,tag=!already_ticked,distance=0..,scores={HomeX=637..649,HomeY=9..17,HomeZ=-62..-29}] at @s run function luigis_beta_mansion:room/original/missingno_22/spectator_tick
execute if entity @a[x=637,y=9,z=-62,dx=12,dy=8,dz=33] run function luigis_beta_mansion:room/original/missingno_22/tick
execute if score #missingno_22 Ticking matches 1 unless entity @a[x=637,y=9,z=-62,dx=12,dy=8,dz=33] unless entity @a[scores={Room=38}] run function luigis_beta_mansion:room/original/missingno_22/not_ticking
execute as @a[gamemode=spectator,tag=!already_ticked,distance=0..,scores={HomeX=644..653,HomeY=100..108,HomeZ=-41..38}] at @s run function luigis_beta_mansion:room/original/missingno_23/spectator_tick
execute if entity @a[x=645,y=100,z=-40,dx=8,dy=8,dz=77] run function luigis_beta_mansion:room/original/missingno_23/tick
execute unless entity @a[x=645,y=100,z=-40,dx=8,dy=8,dz=77] if entity @a[x=646,y=91,z=-10,dx=4,dy=10,dz=10] run function luigis_beta_mansion:room/original/missingno_23/tick
execute if score #missingno_23 Ticking matches 1 unless entity @a[x=645,y=100,z=-40,dx=8,dy=8,dz=77] unless entity @a[x=646,y=91,z=-10,dx=4,dy=10,dz=10] unless entity @a[scores={Room=39}] run function luigis_beta_mansion:room/original/missingno_23/not_ticking
execute as @a[gamemode=spectator,tag=!already_ticked,distance=0..,scores={HomeX=646..650,HomeY=91..99,HomeZ=-9..-1}] at @s run function luigis_beta_mansion:room/original/missingno_24/spectator_tick
execute if entity @a[x=635,y=91,z=-40,dx=18,dy=17,dz=77] run function luigis_beta_mansion:room/original/missingno_24/tick
execute if score #missingno_24 Ticking matches 1 unless entity @a[x=635,y=91,z=-40,dx=18,dy=17,dz=77] unless entity @a[scores={Room=40}] run function luigis_beta_mansion:room/original/missingno_24/not_ticking
execute as @a[gamemode=spectator,tag=!already_ticked,distance=0..,scores={HomeX=637..649,HomeY=18..26,HomeZ=-62..-29}] at @s run function luigis_beta_mansion:room/original/missingno_25/spectator_tick
execute if entity @a[x=637,y=18,z=-62,dx=12,dy=8,dz=33] run function luigis_beta_mansion:room/original/missingno_25/tick
execute if score #missingno_25 Ticking matches 1 unless entity @a[x=637,y=18,z=-62,dx=12,dy=8,dz=33] unless entity @a[scores={Room=41}] run function luigis_beta_mansion:room/original/missingno_25/not_ticking
execute as @a[gamemode=spectator,tag=!already_ticked,distance=0..,scores={HomeX=660..668,HomeY=18..26,HomeZ=34..48}] at @s run function luigis_beta_mansion:room/original/missingno_26/spectator_tick
execute if entity @a[x=660,y=18,z=34,dx=8,dy=8,dz=14] run function luigis_beta_mansion:room/original/missingno_26/tick
execute if score #missingno_26 Ticking matches 1 unless entity @a[x=660,y=18,z=34,dx=8,dy=8,dz=14] unless entity @a[scores={Room=42}] run function luigis_beta_mansion:room/original/missingno_26/not_ticking
execute as @a[gamemode=spectator,tag=!already_ticked,distance=0..,scores={HomeX=648..660,HomeY=18..26,HomeZ=15..29}] at @s run function luigis_beta_mansion:room/original/missingno_27/spectator_tick
execute if entity @a[x=648,y=18,z=15,dx=12,dy=8,dz=14] run function luigis_beta_mansion:room/original/missingno_27/tick
execute if score #missingno_27 Ticking matches 1 unless entity @a[x=648,y=18,z=15,dx=12,dy=8,dz=14] unless entity @a[scores={Room=43}] run function luigis_beta_mansion:room/original/missingno_27/not_ticking
execute as @a[gamemode=spectator,tag=!already_ticked,distance=0..,scores={HomeX=652..664,HomeY=18..26,HomeZ=-29..-1}] at @s run function luigis_beta_mansion:room/original/missingno_28/spectator_tick
execute if entity @a[x=652,y=18,z=-29,dx=12,dy=8,dz=28] run function luigis_beta_mansion:room/original/missingno_28/tick
execute if score #missingno_28 Ticking matches 1 unless entity @a[x=652,y=18,z=-29,dx=12,dy=8,dz=28] unless entity @a[scores={Room=44}] run function luigis_beta_mansion:room/original/missingno_28/not_ticking
execute as @a[gamemode=spectator,tag=!already_ticked,distance=0..,scores={HomeX=660..672,HomeY=18..26,HomeZ=-93..-71}] at @s run function luigis_beta_mansion:room/original/missingno_29/spectator_tick
execute if entity @a[x=660,y=18,z=-93,dx=12,dy=8,dz=22] run function luigis_beta_mansion:room/original/missingno_29/tick
execute if score #missingno_29 Ticking matches 1 unless entity @a[x=660,y=18,z=-93,dx=12,dy=8,dz=22] unless entity @a[scores={Room=45}] run function luigis_beta_mansion:room/original/missingno_29/not_ticking
execute as @a[gamemode=spectator,tag=!already_ticked,distance=0..,scores={HomeX=640..650,HomeY=15..26,HomeZ=-83..-73}] at @s run function luigis_beta_mansion:room/original/missingno_30/spectator_tick
execute if entity @a[x=640,y=14,z=-83,dx=10,dy=13,dz=10] run function luigis_beta_mansion:room/original/missingno_30/tick
execute if score #missingno_30 Ticking matches 1 unless entity @a[x=640,y=14,z=-83,dx=10,dy=13,dz=10] unless entity @a[scores={Room=46}] run function luigis_beta_mansion:room/original/missingno_30/not_ticking
execute as @a[gamemode=spectator,tag=!already_ticked,distance=0..,scores={HomeX=673..688,HomeY=9..17,HomeZ=64..91}] at @s run function luigis_beta_mansion:room/original/missingno_31/spectator_tick
execute if entity @a[x=673,y=9,z=64,dx=15,dy=8,dz=27] run function luigis_beta_mansion:room/original/missingno_31/tick
execute if score #missingno_31 Ticking matches 1 unless entity @a[x=673,y=9,z=64,dx=15,dy=8,dz=27] unless entity @a[scores={Room=47}] run function luigis_beta_mansion:room/original/missingno_31/not_ticking
execute as @a[gamemode=spectator,tag=!already_ticked,distance=0..,scores={HomeX=673..688,HomeY=9..17,HomeZ=30..46}] at @s run function luigis_beta_mansion:room/original/missingno_32/spectator_tick
execute if entity @a[x=673,y=9,z=30,dx=15,dy=8,dz=16] run function luigis_beta_mansion:room/original/missingno_32/tick
execute if score #missingno_32 Ticking matches 1 unless entity @a[x=673,y=9,z=30,dx=15,dy=8,dz=16] unless entity @a[scores={Room=48}] run function luigis_beta_mansion:room/original/missingno_32/not_ticking
execute as @a[gamemode=spectator,tag=!already_ticked,distance=0..,scores={HomeX=736..750,HomeY=18..26,HomeZ=29..50}] at @s run function luigis_beta_mansion:room/original/missingno_33/spectator_tick
execute if entity @a[x=736,y=18,z=29,dx=14,dy=8,dz=21] run function luigis_beta_mansion:room/original/missingno_33/tick
execute if score #missingno_33 Ticking matches 1 unless entity @a[x=736,y=18,z=29,dx=14,dy=8,dz=21] unless entity @a[scores={Room=49}] run function luigis_beta_mansion:room/original/missingno_33/not_ticking
execute as @a[gamemode=spectator,tag=!already_ticked,distance=0..,scores={HomeX=732..746,HomeY=27..35,HomeZ=-59..-34}] at @s run function luigis_beta_mansion:room/original/missingno_34/spectator_tick
execute if entity @a[x=732,y=27,z=-59,dx=14,dy=8,dz=25] run function luigis_beta_mansion:room/original/missingno_34/tick
execute if score #missingno_34 Ticking matches 1 unless entity @a[x=732,y=27,z=-59,dx=14,dy=8,dz=25] unless entity @a[scores={Room=50}] run function luigis_beta_mansion:room/original/missingno_34/not_ticking
execute as @a[gamemode=spectator,tag=!already_ticked,distance=0..,scores={HomeX=741..760,HomeY=27..35,HomeZ=-17..-9}] at @s run function luigis_beta_mansion:room/original/missingno_35/spectator_tick
execute if entity @a[x=724,y=27,z=-17,dx=36,dy=8,dz=8] run function luigis_beta_mansion:room/original/missingno_35/tick
execute if score #missingno_35 Ticking matches 1 unless entity @a[x=724,y=27,z=-17,dx=36,dy=8,dz=8] unless entity @a[scores={Room=51}] run function luigis_beta_mansion:room/original/missingno_35/not_ticking
execute as @a[gamemode=spectator,tag=!already_ticked,distance=0..,scores={HomeX=724..740,HomeY=27..35,HomeZ=-17..-9}] at @s run function luigis_beta_mansion:room/original/missingno_36/spectator_tick
execute if entity @a[x=724,y=27,z=-17,dx=36,dy=8,dz=8] run function luigis_beta_mansion:room/original/missingno_36/tick
execute if score #missingno_36 Ticking matches 1 unless entity @a[x=724,y=27,z=-17,dx=36,dy=8,dz=8] unless entity @a[scores={Room=52}] run function luigis_beta_mansion:room/original/missingno_36/not_ticking
execute as @a[gamemode=spectator,tag=!already_ticked,distance=0..,scores={HomeX=654..682,HomeY=118..242,HomeZ=-41..37}] at @s run function luigis_beta_mansion:room/original/missingno_37/spectator_tick
execute if entity @a[x=654,y=118,z=-41,dx=28,dy=24,dz=78] run function luigis_beta_mansion:room/original/missingno_37/tick
execute if score #missingno_37 Ticking matches 1 unless entity @a[x=654,y=118,z=-41,dx=28,dy=24,dz=78] unless entity @a[scores={Room=53}] run function luigis_beta_mansion:room/original/missingno_37/not_ticking
execute as @a[gamemode=spectator,tag=!already_ticked,distance=0..,scores={HomeX=673..681,HomeY=118..126,HomeZ=38..44}] at @s run function luigis_beta_mansion:room/original/missingno_38/spectator_tick
execute if entity @a[x=673,y=118,z=38,dx=11,dy=8,dz=8] run function luigis_beta_mansion:room/original/missingno_38/tick
execute if score #missingno_38 Ticking matches 1 unless entity @a[x=673,y=118,z=38,dx=11,dy=8,dz=8] unless entity @a[scores={Room=54}] run function luigis_beta_mansion:room/original/missingno_38/not_ticking
execute as @a[gamemode=spectator,tag=!already_ticked,distance=0..,scores={HomeX=723..739,HomeY=27..35,HomeZ=40..48}] at @s run function luigis_beta_mansion:room/original/missingno_39/spectator_tick
execute if entity @a[x=723,y=27,z=40,dx=36,dy=8,dz=8] run function luigis_beta_mansion:room/original/missingno_39/tick
execute if score #missingno_39 Ticking matches 1 unless entity @a[x=723,y=27,z=40,dx=36,dy=8,dz=8] unless entity @a[scores={Room=55}] run function luigis_beta_mansion:room/original/missingno_39/not_ticking
execute as @a[gamemode=spectator,tag=!already_ticked,distance=0..,scores={HomeX=740..759,HomeY=27..35,HomeZ=40..48}] at @s run function luigis_beta_mansion:room/original/missingno_40/spectator_tick
execute if entity @a[x=723,y=27,z=40,dx=36,dy=8,dz=8] run function luigis_beta_mansion:room/original/missingno_40/tick
execute if score #missingno_40 Ticking matches 1 unless entity @a[x=723,y=27,z=40,dx=36,dy=8,dz=8] unless entity @a[scores={Room=56}] run function luigis_beta_mansion:room/original/missingno_40/not_ticking
execute as @a[gamemode=spectator,tag=!already_ticked,distance=0..,scores={HomeX=736..756,HomeY=27..35,HomeZ=0..35}] at @s run function luigis_beta_mansion:room/original/missingno_41/spectator_tick
execute if entity @a[x=736,y=27,z=0,dx=20,dy=8,dz=35] run function luigis_beta_mansion:room/original/missingno_41/tick
execute if score #missingno_41 Ticking matches 1 unless entity @a[x=736,y=27,z=0,dx=20,dy=8,dz=35] unless entity @a[scores={Room=57}] run function luigis_beta_mansion:room/original/missingno_41/not_ticking
execute as @a[gamemode=spectator,tag=!already_ticked,distance=0..,scores={HomeX=734..748,HomeY=0..8,HomeZ=-63..-42}] at @s run function luigis_beta_mansion:room/original/missingno_42/spectator_tick
execute if entity @a[x=734,y=0,z=-63,dx=14,dy=8,dz=21] run function luigis_beta_mansion:room/original/missingno_42/tick
execute if score #missingno_42 Ticking matches 1 unless entity @a[x=734,y=0,z=-63,dx=14,dy=8,dz=21] unless entity @a[scores={Room=58}] run function luigis_beta_mansion:room/original/missingno_42/not_ticking
execute as @a[gamemode=spectator,tag=!already_ticked,distance=0..,scores={HomeX=713..735,HomeY=0..8,HomeZ=-22..-14}] at @s run function luigis_beta_mansion:room/original/missingno_43/spectator_tick
execute if entity @a[x=699,y=0,z=-22,dx=36,dy=8,dz=8] run function luigis_beta_mansion:room/original/missingno_43/tick
execute if score #missingno_43 Ticking matches 1 unless entity @a[x=699,y=0,z=-22,dx=36,dy=8,dz=8] unless entity @a[scores={Room=59}] run function luigis_beta_mansion:room/original/missingno_43/not_ticking
execute as @a[gamemode=spectator,tag=!already_ticked,distance=0..,scores={HomeX=699..712,HomeY=0..8,HomeZ=-22..-14}] at @s run function luigis_beta_mansion:room/original/missingno_44/spectator_tick
execute if entity @a[x=699,y=0,z=-22,dx=36,dy=8,dz=8] run function luigis_beta_mansion:room/original/missingno_44/tick
execute if score #missingno_44 Ticking matches 1 unless entity @a[x=699,y=0,z=-22,dx=36,dy=8,dz=8] unless entity @a[scores={Room=60}] run function luigis_beta_mansion:room/original/missingno_44/not_ticking
execute as @a[gamemode=spectator,tag=!already_ticked,distance=0..,scores={HomeX=653..686,HomeY=0..8,HomeZ=-22..-14}] at @s run function luigis_beta_mansion:room/original/missingno_45/spectator_tick
execute if entity @a[x=653,y=0,z=-22,dx=33,dy=8,dz=8] run function luigis_beta_mansion:room/original/missingno_45/tick
execute if score #missingno_45 Ticking matches 1 unless entity @a[x=653,y=0,z=-22,dx=33,dy=8,dz=8] unless entity @a[scores={Room=61}] run function luigis_beta_mansion:room/original/missingno_45/not_ticking
execute as @a[gamemode=spectator,tag=!already_ticked,distance=0..,scores={HomeX=686..700,HomeY=0..8,HomeZ=-63..-42}] at @s run function luigis_beta_mansion:room/original/missingno_46/spectator_tick
execute if entity @a[x=686,y=0,z=-63,dx=14,dy=8,dz=21] run function luigis_beta_mansion:room/original/missingno_46/tick
execute if score #missingno_46 Ticking matches 1 unless entity @a[x=686,y=0,z=-63,dx=14,dy=8,dz=21] unless entity @a[scores={Room=62}] run function luigis_beta_mansion:room/original/missingno_46/not_ticking
execute as @a[gamemode=spectator,tag=!already_ticked,distance=0..,scores={HomeX=683..698,HomeY=118..126,HomeZ=-9..24}] at @s run function luigis_beta_mansion:room/original/missingno_47/spectator_tick
execute if entity @a[x=683,y=118,z=-9,dx=15,dy=10,dz=33] run function luigis_beta_mansion:room/original/missingno_47/tick
execute if score #missingno_47 Ticking matches 1 unless entity @a[x=683,y=118,z=-9,dx=15,dy=10,dz=33] unless entity @a[scores={Room=63}] run function luigis_beta_mansion:room/original/missingno_47/not_ticking
execute as @a[gamemode=spectator,tag=!already_ticked,distance=0..,scores={HomeX=683..712,HomeY=127..146,HomeZ=-30..45}] at @s run function luigis_beta_mansion:room/original/missingno_48/spectator_tick
execute if entity @a[x=683,y=127,z=-30,dx=29,dy=19,dz=75] run function luigis_beta_mansion:room/original/missingno_48/tick
execute if score #missingno_48 Ticking matches 1 unless entity @a[x=683,y=127,z=-30,dx=29,dy=19,dz=75] unless entity @a[scores={Room=64}] run function luigis_beta_mansion:room/original/missingno_48/not_ticking
execute as @a[gamemode=spectator,tag=!already_ticked,distance=0..,scores={HomeX=744..766,HomeY=27..35,HomeZ=54..79}] at @s run function luigis_beta_mansion:room/original/missingno_49/spectator_tick
execute if entity @a[x=744,y=27,z=54,dx=22,dy=8,dz=25] run function luigis_beta_mansion:room/original/missingno_49/tick
execute if score #missingno_49 Ticking matches 1 unless entity @a[x=744,y=27,z=54,dx=22,dy=8,dz=25] unless entity @a[scores={Room=65}] run function luigis_beta_mansion:room/original/missingno_49/not_ticking
execute as @a[gamemode=spectator,tag=!already_ticked,distance=0..,scores={HomeX=696..713,HomeY=27..35,HomeZ=56..81}] at @s run function luigis_beta_mansion:room/original/missingno_50/spectator_tick
execute if entity @a[x=696,y=27,z=56,dx=17,dy=8,dz=25] run function luigis_beta_mansion:room/original/missingno_50/tick
execute if score #missingno_50 Ticking matches 1 unless entity @a[x=696,y=27,z=56,dx=17,dy=8,dz=25] unless entity @a[scores={Room=66}] run function luigis_beta_mansion:room/original/missingno_50/not_ticking
execute as @a[gamemode=spectator,tag=!already_ticked,distance=0..,scores={HomeX=693..710,HomeY=18..26,HomeZ=-88..-55}] at @s run function luigis_beta_mansion:room/original/missingno_51/spectator_tick
execute if entity @a[x=693,y=18,z=-88,dx=17,dy=8,dz=33] run function luigis_beta_mansion:room/original/missingno_51/tick
execute if score #missingno_51 Ticking matches 1 unless entity @a[x=693,y=18,z=-88,dx=17,dy=8,dz=33] unless entity @a[scores={Room=67}] run function luigis_beta_mansion:room/original/missingno_51/not_ticking
execute as @a[gamemode=spectator,tag=!already_ticked,distance=0..,scores={HomeX=686..700,HomeY=0..8,HomeZ=-6..12}] at @s run function luigis_beta_mansion:room/original/missingno_52/spectator_tick
execute if entity @a[x=686,y=0,z=-6,dx=14,dy=8,dz=18] run function luigis_beta_mansion:room/original/missingno_52/tick
execute if score #missingno_52 Ticking matches 1 unless entity @a[x=686,y=0,z=-6,dx=14,dy=8,dz=18] unless entity @a[scores={Room=68}] run function luigis_beta_mansion:room/original/missingno_52/not_ticking
execute as @a[gamemode=spectator,tag=!already_ticked,distance=0..,scores={HomeX=721..742,HomeY=0..8,HomeZ=-6..12}] at @s run function luigis_beta_mansion:room/original/missingno_53/spectator_tick
execute if entity @a[x=721,y=-1,z=-6,dx=21,dy=8,dz=18] run function luigis_beta_mansion:room/original/missingno_53/tick
execute if score #missingno_53 Ticking matches 1 unless entity @a[x=721,y=-1,z=-6,dx=21,dy=8,dz=18] unless entity @a[scores={Room=69}] run function luigis_beta_mansion:room/original/missingno_53/not_ticking
execute as @a[gamemode=spectator,tag=!already_ticked,distance=0..,scores={HomeX=734..748,HomeY=18..26,HomeZ=-39..-19}] at @s run function luigis_beta_mansion:room/original/missingno_54/spectator_tick
execute if entity @a[x=734,y=18,z=-39,dx=14,dy=8,dz=20] run function luigis_beta_mansion:room/original/missingno_54/tick
execute if score #missingno_54 Ticking matches 1 unless entity @a[x=734,y=18,z=-39,dx=14,dy=8,dz=20] unless entity @a[scores={Room=70}] run function luigis_beta_mansion:room/original/missingno_54/not_ticking
execute as @a[gamemode=spectator,tag=!already_ticked,distance=0..,scores={HomeX=734..748,HomeY=18..26,HomeZ=-63..-42}] at @s run function luigis_beta_mansion:room/original/missingno_55/spectator_tick
execute if entity @a[x=734,y=18,z=-63,dx=14,dy=8,dz=21] run function luigis_beta_mansion:room/original/missingno_55/tick
execute if score #missingno_55 Ticking matches 1 unless entity @a[x=734,y=18,z=-63,dx=14,dy=8,dz=21] unless entity @a[scores={Room=71}] run function luigis_beta_mansion:room/original/missingno_55/not_ticking
execute as @a[gamemode=spectator,tag=!already_ticked,distance=0..,scores={HomeX=687..703,HomeY=27..35,HomeZ=-80..-55}] at @s run function luigis_beta_mansion:room/original/missingno_56/spectator_tick
execute if entity @a[x=687,y=27,z=-80,dx=16,dy=8,dz=25] run function luigis_beta_mansion:room/original/missingno_56/tick
execute if score #missingno_56 Ticking matches 1 unless entity @a[x=687,y=27,z=-80,dx=16,dy=8,dz=25] unless entity @a[scores={Room=72}] run function luigis_beta_mansion:room/original/missingno_56/not_ticking
execute as @a[gamemode=spectator,tag=!already_ticked,distance=0..,scores={HomeX=635..653,HomeY=91..99,HomeZ=-26..-10}] at @s run function luigis_beta_mansion:room/original/missingno_57/spectator_tick
execute if entity @a[x=635,y=91,z=-26,dx=18,dy=8,dz=16] run function luigis_beta_mansion:room/original/missingno_57/tick
execute unless entity @a[x=635,y=91,z=-26,dx=18,dy=8,dz=16] if entity @a[x=646,y=91,z=-10,dx=4,dy=10,dz=10] run function luigis_beta_mansion:room/original/missingno_57/tick
execute if score #missingno_57 Ticking matches 1 unless entity @a[x=635,y=91,z=-26,dx=18,dy=8,dz=16] unless entity @a[x=646,y=91,z=-10,dx=4,dy=10,dz=10] unless entity @a[scores={Room=73}] run function luigis_beta_mansion:room/original/missingno_57/not_ticking

execute if predicate luigis_mansion:lightning_strike_chance run function luigis_mansion:other/lightning_strike
execute in minecraft:overworld if predicate luigis_mansion:lightning_strike_chance run function luigis_mansion:other/lightning_strike
tag @e[tag=portrait_ghost] add no_poison_mushroom_dropping
execute if score #gbh_clock Selected matches 108000.. unless entity @a[tag=e_gadd_call,limit=1] run tag @r[scores={Room=0..},tag=!spectator] add e_gadd_call
scoreboard players set #temp Time 1