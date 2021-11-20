scoreboard players add @s ActionTime 1
scoreboard players set @s[scores={ActionTime=1}] AnimationProg 0
execute if entity @s[scores={ActionTime=1}] run playsound luigis_mansion:entity.bowser.breathe_fire hostile @a[tag=same_room] ~ ~ ~ 3
teleport @s[scores={ActionTime=1..20}] ^ ^-0.15 ^0.1
data modify entity @s[scores={ActionTime=15}] ArmorItems[3].tag.CustomModelData set value 91
tag @s[scores={ActionTime=21}] add can_decapitate
execute if entity @s[scores={ActionTime=20}] run scoreboard players set @s Time 0
execute if entity @s[scores={ActionTime=21..41}] run scoreboard players add @s Time 15
execute if entity @s[scores={ActionTime=41..81}] run scoreboard players remove @s Time 15
execute if entity @s[scores={ActionTime=81..121}] run scoreboard players add @s Time 15
execute if entity @s[scores={ActionTime=21..121}] store result score #temp Time run data get entity @s Rotation[0] 10
execute if entity @s[scores={ActionTime=21..121}] if score #mirrored Selected matches 0 store result entity @s Rotation[0] float 0.1 run scoreboard players operation #temp Time -= @s Time
execute if entity @s[scores={ActionTime=21..121}] if score #mirrored Selected matches 1 store result entity @s Rotation[0] float 0.1 run scoreboard players operation #temp Time += @s Time
execute at @s[scores={ActionTime=21..121}] positioned ^ ^ ^5 run function luigis_mansion:spawn_entities/burning_floor
execute at @s[scores={ActionTime=21..121}] positioned ^ ^ ^2 as @e[distance=..2,tag=gameboy_horror_location] run function luigis_mansion:entities/gameboy_horror_location/bring_player_back
execute at @s[scores={ActionTime=21..121}] positioned ^ ^ ^2 run effect give @a[tag=!spectator,distance=..2] minecraft:instant_damage 1 0 true
execute at @s[scores={ActionTime=21..121}] positioned ^ ^ ^2 run scoreboard players set @a[tag=!spectator,distance=..2] ForcedDamage 4
execute at @s[scores={ActionTime=21..121}] positioned ^ ^ ^2 as @a[distance=..2,tag=!spectator] positioned ^ ^ ^-2 run function luigis_mansion:entities/player/knockback/burn
execute at @s[scores={ActionTime=21}] run playsound luigis_mansion:entity.bowser.fire hostile @a[tag=same_room] ~ ~ ~ 3
execute at @s[scores={ActionTime=21..121}] run particle minecraft:block minecraft:fire ^1 ^0.5 ^5 0 0 0 0 1 normal @a[tag=same_room]
execute at @s[scores={ActionTime=21..121}] run particle minecraft:block minecraft:fire ^ ^0.5 ^6 0 0 0 0 1 normal @a[tag=same_room]
execute at @s[scores={ActionTime=21..121}] run particle minecraft:block minecraft:fire ^-1 ^0.5 ^5 0 0 0 0 1 normal @a[tag=same_room]
execute at @s[scores={ActionTime=21..121}] run particle minecraft:block minecraft:fire ^0.8 ^0.6 ^4 0 0 0 0 1 normal @a[tag=same_room]
execute at @s[scores={ActionTime=21..121}] run particle minecraft:block minecraft:fire ^ ^0.6 ^5 0 0 0 0 1 normal @a[tag=same_room]
execute at @s[scores={ActionTime=21..121}] run particle minecraft:block minecraft:fire ^-0.8 ^0.6 ^4 0 0 0 0 1 normal @a[tag=same_room]
execute at @s[scores={ActionTime=21..121}] run particle minecraft:block minecraft:fire ^0.6 ^0.7 ^3 0 0 0 0 1 normal @a[tag=same_room]
execute at @s[scores={ActionTime=21..121}] run particle minecraft:block minecraft:fire ^ ^0.7 ^4 0 0 0 0 1 normal @a[tag=same_room]
execute at @s[scores={ActionTime=21..121}] run particle minecraft:block minecraft:fire ^-0.6 ^0.7 ^3 0 0 0 0 1 normal @a[tag=same_room]
execute at @s[scores={ActionTime=21..121}] run particle minecraft:block minecraft:fire ^0.4 ^0.8 ^2 0 0 0 0 1 normal @a[tag=same_room]
execute at @s[scores={ActionTime=21..121}] run particle minecraft:block minecraft:fire ^ ^0.8 ^3 0 0 0 0 1 normal @a[tag=same_room]
execute at @s[scores={ActionTime=21..121}] run particle minecraft:block minecraft:fire ^-0.4 ^0.8 ^2 0 0 0 0 1 normal @a[tag=same_room]
execute at @s[scores={ActionTime=21..121}] run particle minecraft:block minecraft:fire ^0.2 ^0.9 ^1 0 0 0 0 1 normal @a[tag=same_room]
execute at @s[scores={ActionTime=21..121}] run particle minecraft:block minecraft:fire ^ ^0.9 ^2 0 0 0 0 1 normal @a[tag=same_room]
execute at @s[scores={ActionTime=21..121}] run particle minecraft:block minecraft:fire ^-0.2 ^0.9 ^1 0 0 0 0 1 normal @a[tag=same_room]
execute at @s[scores={ActionTime=21..121}] run particle minecraft:block minecraft:fire ^ ^1 ^1 0 0 0 0 1 normal @a[tag=same_room]
execute if entity @s[scores={ActionTime=21..121}] run teleport @s ~ ~ ~ ~ ~
scoreboard players reset #temp Time
data modify entity @s[scores={ActionTime=125}] ArmorItems[3].tag.CustomModelData set value 88
tag @s[scores={ActionTime=120}] remove can_decapitate
teleport @s[scores={ActionTime=121..140}] ^ ^0.15 ^-0.1
tag @s[scores={ActionTime=140}] remove breathe_fire
scoreboard players set @s[scores={ActionTime=140}] AnimationProg 0
scoreboard players reset @s[scores={ActionTime=140}] ActionTime

function luigis_mansion:animations/bowser/breathe_fire