scoreboard players add @s[scores={ActionTime=31..}] ActionTime 1
scoreboard players add @s[scores={ActionTime=1..29}] ActionTime 1
execute unless entity @s[scores={ActionTime=1..}] run scoreboard players set @s ActionTime 1
scoreboard players reset #temp Time
scoreboard players set @s[scores={ActionTime=1}] AnimationProg 0
execute if entity @s[scores={ActionTime=1}] run playsound luigis_mansion:entity.bowser.vacuum_start hostile @a[tag=same_room] ~ ~ ~ 3
data modify entity @s[scores={ActionTime=15}] ArmorItems[3].tag.CustomModelData set value 91
scoreboard players set @s[scores={ActionTime=20}] AnimationProg 0
teleport @s[scores={ActionTime=1..20}] ^ ^-0.15 ^0.1
tag @s[scores={ActionTime=20}] add can_decapitate
execute if entity @s[scores={ActionTime=21..30,Sound=0}] run playsound luigis_mansion:entity.bowser.vacuum hostile @a[tag=same_room] ~ ~ ~ 3
scoreboard players set @s[scores={ActionTime=21..30,Sound=0}] Sound 10
execute if entity @s[scores={ActionTime=21..30}] positioned ^ ^0.9 ^1.5 run function luigis_mansion:entities/bowser/suck
execute if entity @s[scores={ActionTime=30}] run tag @a[tag=got_sucked,distance=..4,sort=nearest,limit=1] add vacuumed
execute if entity @a[tag=got_sucked,distance=..4] run scoreboard players add @s[scores={ActionTime=30}] ActionTime 1
execute if entity @s[scores={ActionTime=30}] unless entity @a[tag=got_sucked] run scoreboard players set @s ActionTime 120
scoreboard players set @s[scores={ActionTime=31}] AnimationProg 0
execute if entity @s[scores={ActionTime=32..89}] at @e[tag=this_model,tag=right_leg] run teleport @a[tag=vacuumed,limit=1] ^0.63 ^2.45 ^0.2
data modify entity @s[scores={ActionTime=32}] ArmorItems[3].tag.CustomModelData set value 88
tag @s[scores={ActionTime=40}] remove can_decapitate
teleport @s[scores={ActionTime=41..60}] ^ ^0.15 ^-0.1
execute if entity @s[scores={ActionTime=90}] as @a[tag=vacuumed,limit=1,tag=looking_at_map] run function luigis_mansion:items/gameboy_horror/map/close
execute if entity @s[scores={ActionTime=90}] run effect give @a[tag=vacuumed,limit=1] minecraft:instant_damage 1 0 true
execute if entity @s[scores={ActionTime=90}] run scoreboard players set @a[tag=vacuumed,limit=1] ForcedDamage 9
data modify entity @s[scores={ActionTime=86}] ArmorItems[3].tag.CustomModelData set value 91
execute if entity @s[scores={ActionTime=86}] run playsound luigis_mansion:entity.bowser.vacuum_spit hostile @a[tag=same_room] ~ ~ ~ 3
execute if entity @s[scores={ActionTime=90}] as @a[tag=vacuumed,limit=1] positioned as @s run teleport @s ~ ~2 ~
execute if entity @s[scores={ActionTime=90..99}] if score #mirrored Selected matches 0 rotated ~-45 ~ as @a[tag=vacuumed,limit=1] positioned as @s run teleport @s ^ ^ ^0.3
execute if entity @s[scores={ActionTime=90..99}] if score #mirrored Selected matches 1 rotated ~45 ~ as @a[tag=vacuumed,limit=1] positioned as @s run teleport @s ^ ^ ^0.3
data modify entity @s[scores={ActionTime=94}] ArmorItems[3].tag.CustomModelData set value 88
execute if entity @s[scores={ActionTime=100}] run tag @a[tag=vacuumed] remove vacuumed
tag @s[scores={ActionTime=110}] remove vacuum
scoreboard players set @s[scores={ActionTime=110}] AnimationProg 0
scoreboard players reset @s[scores={ActionTime=110}] ActionTime

tag @s[scores={ActionTime=121}] remove can_decapitate
scoreboard players set @s[scores={ActionTime=121}] AnimationProg 0
data modify entity @s[scores={ActionTime=125}] ArmorItems[3].tag.CustomModelData set value 88
teleport @s[scores={ActionTime=121..140}] ^ ^0.15 ^-0.1
tag @s[scores={ActionTime=140}] remove vacuum
scoreboard players set @s[scores={ActionTime=140}] AnimationProg 0
scoreboard players reset @s[scores={ActionTime=140}] ActionTime
tag @a[tag=got_sucked] remove got_sucked
tag @a[tag=pulled] remove pulled
scoreboard players reset #temp Time

execute if entity @s[scores={ActionTime=1..20}] run function luigis_mansion:animations/bowser/duck
execute if entity @s[scores={ActionTime=21..30}] run function luigis_mansion:animations/bowser/vacuum
execute if entity @s[scores={ActionTime=31..110}] run function luigis_mansion:animations/bowser/chew
execute if entity @s[scores={ActionTime=121..140}] run function luigis_mansion:animations/bowser/get_up