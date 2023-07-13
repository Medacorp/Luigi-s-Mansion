execute at @s run summon minecraft:marker ~ ~ ~ {Tags:["home","remove_from_existence"]}
execute store result entity @e[tag=home,limit=1] Pos[0] double 0.01 run scoreboard players get @s PositionX
execute store result entity @e[tag=home,limit=1] Pos[1] double 0.01 run scoreboard players get @s PositionY
execute store result entity @e[tag=home,limit=1] Pos[2] double 0.01 run scoreboard players get @s PositionZ
execute store result entity @e[tag=home,limit=1] Rotation[0] float 0.01 run scoreboard players get @s RotationY
execute store result entity @e[tag=home,limit=1] Rotation[1] float 0.01 run scoreboard players get @s RotationX
execute at @e[tag=home,limit=1] run tp @s ~ ~ ~ ~ ~
kill @e[tag=home,limit=1]
execute at @s[nbt={OnGround:1b},tag=1] rotated ~ 0 run summon minecraft:marker ^ ^0.1 ^1 {Tags:["interact","manual","feet"]}
execute at @s[nbt={OnGround:0b},tag=1] rotated ~ 0 run summon minecraft:marker ^ ^0.1 ^1 {Tags:["interact","manual"]}
execute at @s[nbt={OnGround:1b},tag=2] rotated ~ 0 run summon minecraft:marker ^ ^1.1 ^1 {Tags:["interact","manual"]}
execute at @s[nbt={OnGround:0b},tag=2] rotated ~ 0 run summon minecraft:marker ^ ^1.1 ^1 {Tags:["interact","manual","feet"]}
execute at @s[nbt={OnGround:1b},tag=3] rotated ~ 0 run summon minecraft:marker ^ ^2.1 ^1 {Tags:["interact","manual"]}
execute at @s[nbt={OnGround:0b},tag=3] rotated ~ 0 run summon minecraft:marker ^ ^-0.9 ^1 {Tags:["interact","manual"]}
tag @s add searcher
scoreboard players add @s InteractionTime 1
execute if entity @s[scores={InteractionTime=2}] at @e[tag=interact,tag=manual,limit=1] as @e[tag=furniture,tag=same_room,tag=affected_by_interact] run function luigis_mansion:items/interact/target_furniture/get_animation
execute unless entity @s[scores={Animation=1..}] if predicate luigis_mansion:1_3 if entity @s[scores={InteractionTime=2,IdleTime=0..}] run function luigis_mansion:entities/player/animation/set/knock
execute unless entity @s[scores={Animation=1..}] if predicate luigis_mansion:50_50 if entity @s[scores={InteractionTime=2,IdleTime=0..}] run function luigis_mansion:entities/player/animation/set/hump
execute unless entity @s[scores={Animation=1..}] if entity @s[scores={InteractionTime=2,IdleTime=0..}] run function luigis_mansion:entities/player/animation/set/bash
scoreboard players operation #temp Room = @s Room
execute if entity @s[scores={Animation=43}] run tag @e[tag=interact,tag=manual,limit=1] add long_shake
#to delete
execute if entity @s[scores={InteractionTime=..16}] run tag @e[tag=interact,tag=manual,limit=1] add sound
execute if entity @s[scores={InteractionTime=2}] as @e[tag=interact,tag=manual,limit=1] at @s run function luigis_mansion:room/interactions
execute if entity @s[scores={InteractionTime=7,Animation=43}] as @e[tag=interact,tag=manual,limit=1] at @s run function luigis_mansion:room/interactions
execute if entity @s[scores={InteractionTime=9,Animation=42}] as @e[tag=interact,tag=manual,limit=1] at @s run function luigis_mansion:room/interactions
execute if entity @s[scores={InteractionTime=9,Animation=44}] as @e[tag=interact,tag=manual,limit=1] at @s run function luigis_mansion:room/interactions
execute if entity @s[scores={InteractionTime=12,Animation=43}] as @e[tag=interact,tag=manual,limit=1] at @s run function luigis_mansion:room/interactions
execute if entity @s[scores={InteractionTime=17}] as @e[tag=interact,tag=manual,limit=1] at @s run function luigis_mansion:room/interactions
#/to delete
execute if entity @s[scores={InteractionTime=2},tag=!not_facing] at @e[tag=interact,tag=manual,limit=1] as @e[tag=furniture,tag=same_room,tag=shaken_by_interact] run function luigis_mansion:items/interact/target_furniture/shake
execute if entity @s[scores={InteractionTime=2},tag=wall_bump] run function luigis_mansion:blocks/search_sound/wall
execute if entity @s[scores={InteractionTime=9,Animation=42},tag=!not_facing] at @e[tag=interact,tag=manual,limit=1] as @e[tag=furniture,tag=same_room,tag=shaken_by_interact] run function luigis_mansion:items/interact/target_furniture/shake
execute if entity @s[scores={InteractionTime=9,Animation=44},tag=!not_facing] at @e[tag=interact,tag=manual,limit=1] as @e[tag=furniture,tag=same_room,tag=shaken_by_interact] run function luigis_mansion:items/interact/target_furniture/shake
execute if entity @s[scores={InteractionTime=17},tag=!not_facing] at @e[tag=interact,tag=manual,limit=1] as @e[tag=furniture,tag=same_room,tag=searchable_by_interact] run function luigis_mansion:items/interact/target_furniture/search
scoreboard players reset #interact
scoreboard players set @s[scores={InteractionTime=2}] Sound 20
tag @s[scores={InteractionTime=17}] remove not_facing
tag @s[scores={InteractionTime=17}] remove 1
tag @s[scores={InteractionTime=17}] remove 2
tag @s[scores={InteractionTime=17}] remove 3
tag @s[scores={InteractionTime=17}] remove wall_bump
execute if entity @s[scores={InteractionTime=17}] run function luigis_mansion:entities/player/animation/set/none
scoreboard players reset @s[scores={InteractionTime=17}] InteractionTime
kill @e[tag=interact,tag=manual,limit=1]
tag @s remove searcher
scoreboard players reset #temp Room