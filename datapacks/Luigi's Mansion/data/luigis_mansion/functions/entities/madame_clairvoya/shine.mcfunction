execute at @a[tag=flashlight,tag=same_room,tag=!spectator] positioned ^ ^ ^3 run summon minecraft:marker ~ ~ ~ {Tags:["flashlight_target"]}
scoreboard players add @s[scores={PathStep=40..}] PathStep 1
execute unless entity @s[scores={PathStep=0..}] run scoreboard players set @s PathStep 0
execute positioned ^ ^0.9 ^1.5 if entity @e[type=minecraft:marker,tag=flashlight_target,distance=..3,limit=1] run scoreboard players add @s[scores={PathStep=..40}] PathStep 1
execute positioned ^ ^0.9 ^1.5 if entity @e[type=minecraft:marker,tag=flashlight_target,distance=..3,limit=1] if entity @s[scores={PathStep=1}] run playsound luigis_mansion:block.crystal_ball.flash block @a[tag=same_room] ~ ~ ~ 1
execute positioned ^ ^0.9 ^1.5 if entity @e[type=minecraft:marker,tag=flashlight_target,distance=..3,limit=1] if entity @s[scores={PathStep=10}] run playsound luigis_mansion:block.crystal_ball.shine block @a[tag=same_room] ~ ~ ~ 1
execute positioned ^ ^0.9 ^1.5 unless entity @e[type=minecraft:marker,tag=flashlight_target,distance=..3,limit=1] if entity @s[scores={PathStep=1..40}] run stopsound @a block luigis_mansion:block.crystal_ball.shine
execute positioned ^ ^0.9 ^1.5 unless entity @e[type=minecraft:marker,tag=flashlight_target,distance=..3,limit=1] run scoreboard players set @s[scores={PathStep=..40}] PathStep 0
kill @e[type=minecraft:marker,tag=flashlight_target]
execute if entity @s[scores={PathStep=1..}] positioned ^ ^1.15 ^1.5 run particle minecraft:firework ~ ~ ~ 0.2 0.1 0.2 0 1
execute if entity @s[scores={PathStep=100}] run function luigis_mansion:entities/madame_clairvoya/turn_visible
execute if entity @s[scores={PathStep=100}] run playsound luigis_mansion:music.solve_puzzle neutral @a[tag=same_room] ~ ~ ~ 1000
tag @s[scores={PathStep=100}] add can_talk_to
scoreboard players set @s[scores={PathStep=100}] Dialog 0
scoreboard players set @s[scores={PathStep=100}] PathStep 0