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
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,tag=selected,limit=1,tag=study] run scoreboard players set @s Room 7
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,tag=selected,limit=1,tag=master_bedroom] run scoreboard players set @s Room 8
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,tag=selected,limit=1,tag=nursery] run scoreboard players set @s Room 9
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,tag=selected,limit=1,tag=twins_room] run scoreboard players set @s Room 39
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,tag=selected,limit=1,tag=laundry_room] run scoreboard players set @s Room 18
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,tag=selected,limit=1,tag=hidden_room] run scoreboard players set @s Room 20
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,tag=selected,limit=1,tag=kitchen] run scoreboard players set @s Room 23
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,tag=selected,limit=1,tag=fortune_tellers_room] run scoreboard players set @s Room 16
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,tag=selected,limit=1,tag=dining_room] run scoreboard players set @s Room 22
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,tag=selected,limit=1,tag=ball_room] run scoreboard players set @s Room 13
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,tag=selected,limit=1,tag=storage_room] run scoreboard players set @s Room 14
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,tag=selected,limit=1,tag=projection_room] run scoreboard players set @s Room 38
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,tag=selected,limit=1,tag=rec_room] run scoreboard players set @s Room 28
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,tag=selected,limit=1,tag=conservatory] run scoreboard players set @s Room 21
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,tag=selected,limit=1,tag=billiards_room] run scoreboard players set @s Room 37
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,tag=selected,limit=1,tag=washroom_1] run scoreboard players set @s Room 15
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,tag=selected,limit=1,tag=bathroom_1] run scoreboard players set @s Room 12
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,tag=selected,limit=1,tag=guest_room] run scoreboard players set @s Room 57
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,tag=selected,limit=1,tag=sitting_room] run scoreboard players set @s Room 56
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,tag=selected,limit=1,tag=parlor] run scoreboard players set @s Room 2
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,tag=selected,limit=1,tag=astral_hall] run scoreboard players set @s Room 35
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,tag=selected,limit=1,tag=anteroom] run scoreboard players set @s Room 3
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,tag=selected,limit=1,tag=tea_room] run scoreboard players set @s Room 30
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,tag=selected,limit=1,tag=nanas_room] run scoreboard players set @s Room 34
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,tag=selected,limit=1,tag=wardrobe_room] run scoreboard players set @s Room 4
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,tag=selected,limit=1,tag=washroom_2] run scoreboard players set @s Room 32
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,tag=selected,limit=1,tag=bathroom_2] run scoreboard players set @s Room 33
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,tag=selected,limit=1,tag=safari_room] run scoreboard players set @s Room 40
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,tag=selected,limit=1,tag=artist_studio] run scoreboard players set @s Room 58
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,tag=selected,limit=1,tag=telephone_room] run scoreboard players set @s Room 44
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,tag=selected,limit=1,tag=clockwork_room] run scoreboard players set @s Room 49
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,tag=selected,limit=1,tag=armory] run scoreboard players set @s Room 51
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,tag=selected,limit=1,tag=cermatics_studio] run scoreboard players set @s Room 52
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,tag=selected,limit=1,tag=breaker_room] run scoreboard players set @s Room 45
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,tag=selected,limit=1,tag=cellar] run scoreboard players set @s Room 46
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,tag=selected,limit=1,tag=pipe_room] run scoreboard players set @s Room 54
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,tag=selected,limit=1,tag=cold_storage] run scoreboard players set @s Room 55
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,tag=selected,limit=1] run function luigis_mansion:entities/boo/warp/all/normal