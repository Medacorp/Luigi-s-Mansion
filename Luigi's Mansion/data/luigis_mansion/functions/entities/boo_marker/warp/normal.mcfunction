execute if entity @s[scores={Room=6}] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["choice","study"]}
execute if entity @s[scores={Room=6}] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["choice","master_bedroom"]}
execute if entity @s[scores={Room=6}] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["choice","nursery"]}
execute if entity @s[scores={Room=6}] unless entity @s[tag=!area_3,tag=!area_4] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["choice","twins_room"]}
execute if entity @s[scores={Room=10,HallwaySection=1}] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["choice","laundry_room"]}
execute if entity @s[scores={Room=10,HallwaySection=1}] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["choice","hidden_room"]}
execute if entity @s[scores={Room=10,HallwaySection=1}] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["choice","kitchen"]}
execute if entity @s[scores={Room=10,HallwaySection=1}] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["choice","fortune_tellers_room"]}
execute if entity @s[scores={Room=10,HallwaySection=1..2}] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["choice","dining_room"]}
execute if entity @s[scores={Room=10,HallwaySection=1..2}] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["choice","ball_room"]}
execute if entity @s[scores={Room=10,HallwaySection=2..3}] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["choice","storage_room"]}
execute if entity @s[scores={Room=10,HallwaySection=2..3}] unless entity @s[tag=!area_3,tag=!area_4] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["choice","projection_room"]}
execute if entity @s[scores={Room=10,HallwaySection=3}] unless entity @s[tag=!area_3,tag=!area_4] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["choice","rec_room"]}
execute if entity @s[scores={Room=10,HallwaySection=3..4}] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["choice","conservatory"]}
execute if entity @s[scores={Room=10,HallwaySection=3..4}] unless entity @s[tag=!area_3,tag=!area_4] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["choice","billiards_room"]}
execute if entity @s[scores={Room=10,HallwaySection=3..4}] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["choice","washroom_1"]}
execute if entity @s[scores={Room=10,HallwaySection=4}] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["choice","bathroom_1"]}
execute if entity @s[scores={Room=31,HallwaySection=1}] unless entity @s[tag=!area_4] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["choice","guest_room"]}
execute if entity @s[scores={Room=31,HallwaySection=1}] unless entity @s[tag=!area_4] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["choice","sitting_room"]}
execute if entity @s[scores={Room=31,HallwaySection=1..2}] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["choice","parlor"]}
execute if entity @s[scores={Room=31,HallwaySection=2..3}] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["choice","astral_hall"]}
execute if entity @s[scores={Room=31,HallwaySection=2..3}] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["choice","anteroom"]}
execute if entity @s[scores={Room=31,HallwaySection=3}] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["choice","tea_room"]}
execute if entity @s[scores={Room=31,HallwaySection=3..4}] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["choice","nanas_room"]}
execute if entity @s[scores={Room=31,HallwaySection=3..4}] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["choice","wardrobe_room"]}
execute if entity @s[scores={Room=31,HallwaySection=3..4}] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["choice","washroom_2"]}
execute if entity @s[scores={Room=31,HallwaySection=4}] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["choice","bathroom_2"]}
execute if entity @s[scores={Room=41}] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["choice","safari_room"]}
execute if entity @s[scores={Room=41}] unless entity @s[tag=!area_4] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["choice","artist_studio"]}
execute if entity @s[scores={Room=43}] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["choice","telephone_room"]}
execute if entity @s[scores={Room=43}] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["choice","clockwork_room"]}
execute if entity @s[scores={Room=43}] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["choice","armory"]}
execute if entity @s[scores={Room=43}] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["choice","cermatics_studio"]}
execute if entity @s[scores={Room=47}] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["choice","breaker_room"]}
execute if entity @s[scores={Room=47}] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["choice","cellar"]}
execute if entity @s[scores={Room=47}] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["choice","pipe_room"]}
execute if entity @s[scores={Room=47}] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["choice","cold_storage"]}
tag @e[type=minecraft:area_effect_cloud,tag=choice,sort=random,limit=1] add selected
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,tag=selected,limit=1,tag=study] run teleport @s 692.0 112 29.0
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,tag=selected,limit=1,tag=master_bedroom] run teleport @s 690.0 112 49.0
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,tag=selected,limit=1,tag=nursery] run teleport @s 713.0 112 49.0
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,tag=selected,limit=1,tag=twins_room] run teleport @s 713 112 29
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,tag=selected,limit=1,tag=laundry_room] run teleport @s 702 102 49
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,tag=selected,limit=1,tag=hidden_room] run teleport @s 713.0 102 29.0
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,tag=selected,limit=1,tag=kitchen] run teleport @s 691 102 43
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,tag=selected,limit=1,tag=fortune_tellers_room] run teleport @s 713.0 102 -13
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,tag=selected,limit=1,tag=dining_room] run teleport @s 691 102 12
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,tag=selected,limit=1,tag=ball_room] run teleport @s 691.0 102 -27.0
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,tag=selected,limit=1,tag=storage_room] run teleport @s 678.0 102 -27.0
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,tag=selected,limit=1,tag=projection_room] run teleport @s 678 102 5
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,tag=selected,limit=1,tag=rec_room] run teleport @s 659.0 102 -27.0
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,tag=selected,limit=1,tag=conservatory] run teleport @s 658 102 3
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,tag=selected,limit=1,tag=billiards_room] run teleport @s 678 102 27
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,tag=selected,limit=1,tag=washroom_1] run teleport @s 668 102 32
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,tag=selected,limit=1,tag=bathroom_1] run teleport @s 659 102 32
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,tag=selected,limit=1,tag=guest_room] run teleport @s 713.0 114 -33.0
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,tag=selected,limit=1,tag=sitting_room] run teleport @s 713.0 112 -13
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,tag=selected,limit=1,tag=parlor] run teleport @s 692.0 112 8.0
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,tag=selected,limit=1,tag=astral_hall] run teleport @s 678.0 112 -21.0
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,tag=selected,limit=1,tag=anteroom] run teleport @s 678 112 8.0
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,tag=selected,limit=1,tag=tea_room] run teleport @s 659.0 112 -27.0
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,tag=selected,limit=1,tag=nanas_room] run teleport @s 658 112 3
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,tag=selected,limit=1,tag=wardrobe_room] run teleport @s 678 112 29.0
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,tag=selected,limit=1,tag=washroom_2] run teleport @s 668 112 32
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,tag=selected,limit=1,tag=bathroom_2] run teleport @s 659 112 32
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,tag=selected,limit=1,tag=safari_room] run teleport @s 713.0 122 -28
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,tag=selected,limit=1,tag=artist_studio] run teleport @s 690 122 -30
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,tag=selected,limit=1,tag=telephone_room] run teleport @s 708 122 8.0
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,tag=selected,limit=1,tag=clockwork_room] run teleport @s 690 122 8.0
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,tag=selected,limit=1,tag=armory] run teleport @s 708 122 43
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,tag=selected,limit=1,tag=cermatics_studio] run teleport @s 690 122 43
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,tag=selected,limit=1,tag=breaker_room] run teleport @s 691 92 -33
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,tag=selected,limit=1,tag=cellar] run teleport @s 713.0 92 -33.0
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,tag=selected,limit=1,tag=pipe_room] run teleport @s 691 93 -6
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,tag=selected,limit=1,tag=cold_storage] run teleport @s 709 92 -6
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,tag=selected,limit=1] run function #luigis_mansion:entities/boo/warp_all