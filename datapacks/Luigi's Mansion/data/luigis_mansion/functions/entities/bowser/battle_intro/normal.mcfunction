scoreboard players set #freeze_timer Selected 1
scoreboard players add @s Dialog 1
teleport @s[scores={Dialog=20}] ^ ^-3 ^2
execute at @s[scores={Dialog=177..220}] run teleport @s ~ ~-1 ~
execute if entity @s[scores={Dialog=177..220}] as @e[tag=this_model] at @s run teleport @s ~ ~-1 ~
execute if entity @s[scores={Dialog=220}] run playsound luigis_mansion:entity.bowser.land hostile @a[tag=same_room] ~ ~ ~ 3
execute if entity @s[scores={Dialog=220}] as @a[tag=same_room,tag=looking_at_map] run function luigis_mansion:items/gameboy_horror/map/close
execute if entity @s[scores={Dialog=220}] as @a[tag=same_room] at @s positioned ^ ^ ^1 run function luigis_mansion:entities/player/scare/bash_no_move
execute if entity @s[scores={Dialog=220..329}] if score #mirrored Selected matches 0 at @e[tag=this_model,tag=right_leg] positioned ^0.63 ^ ^0.7 as @a[tag=same_room,scores={ScareTime=20}] at @s positioned ^ ^ ^1 unless entity @e[tag=this_model,distance=..3,limit=1] positioned ^ ^ ^1 unless entity @e[tag=this_model,distance=..3,limit=1] positioned ^ ^ ^1 unless entity @e[tag=this_model,distance=..3,limit=1] positioned ^ ^ ^1 unless entity @e[tag=this_model,distance=..3,limit=1] positioned ^ ^ ^1 unless entity @e[tag=this_model,distance=..3,limit=1] positioned ^ ^ ^1 unless entity @e[tag=this_model,distance=..3,limit=1] positioned ^ ^ ^1 unless entity @e[tag=this_model,distance=..3,limit=1] at @s rotated ~5 0 positioned ^ ^ ^-0.1 run function luigis_mansion:entities/player/scared_bashed_force_move
execute if entity @s[scores={Dialog=220..329}] if score #mirrored Selected matches 1 at @e[tag=this_model,tag=right_leg] positioned ^0.63 ^ ^0.7 as @a[tag=same_room,scores={ScareTime=20}] at @s positioned ^ ^ ^1 unless entity @e[tag=this_model,distance=..3,limit=1] positioned ^ ^ ^1 unless entity @e[tag=this_model,distance=..3,limit=1] positioned ^ ^ ^1 unless entity @e[tag=this_model,distance=..3,limit=1] positioned ^ ^ ^1 unless entity @e[tag=this_model,distance=..3,limit=1] positioned ^ ^ ^1 unless entity @e[tag=this_model,distance=..3,limit=1] positioned ^ ^ ^1 unless entity @e[tag=this_model,distance=..3,limit=1] positioned ^ ^ ^1 unless entity @e[tag=this_model,distance=..3,limit=1] at @s rotated ~-5 0 positioned ^ ^ ^-0.1 run function luigis_mansion:entities/player/scared_bashed_force_move
execute if entity @s[scores={Dialog=220..329}] at @e[tag=this_model,tag=right_leg] positioned ^0.63 ^ ^0.7 as @a[tag=same_room,scores={ScareTime=20},distance=..9] at @s positioned ^ ^ ^5 if entity @e[tag=this_model,distance=..5,limit=1] at @s facing entity @e[tag=bowser,scores={Dialog=220..329},limit=1] feet rotated ~ 0 positioned ^ ^ ^-0.1 run function luigis_mansion:entities/player/scared_bashed_force_move
execute if entity @s[scores={Dialog=220..329}] run scoreboard players set @a[tag=same_room,limit=1,scores={ScareTime=20}] ScareTime 21
teleport @s[scores={Dialog=251..270}] ^ ^0.15 ^-0.1
teleport @s[scores={Dialog=271}] ~ 40 ~
tag @s[scores={Dialog=1}] add intro
scoreboard players set @s[scores={Dialog=1}] AnimationProg 0
scoreboard players set @s[scores={Dialog=21}] AnimationProg 0
scoreboard players set @s[scores={Dialog=41..250}] AnimationProg 0
data modify entity @s[scores={Dialog=250}] ArmorItems[3].tag.CustomModelData set value 91
data modify entity @s[scores={Dialog=290}] ArmorItems[3].tag.CustomModelData set value 88
execute if entity @s[scores={Dialog=1..20}] run function luigis_mansion:animations/bowser/idle
execute if entity @s[scores={Dialog=21..40}] run function luigis_mansion:animations/bowser/duck
execute if entity @s[scores={Dialog=41..289}] run function luigis_mansion:animations/bowser/roar
scoreboard players set @s[scores={Dialog=290}] AnimationProg 0
execute if entity @s[scores={Dialog=290..329}] run function luigis_mansion:animations/bowser/grab_head
tag @s[scores={Dialog=329}] remove intro
scoreboard players set @s[scores={Dialog=329}] AnimationProg 0
tag @s[scores={Dialog=370}] add breathe_fire
tag @s[scores={Dialog=530}] add intro_done
scoreboard players reset @s[scores={Dialog=530}] Dialog

execute if entity @s[tag=breathe_fire] run function luigis_mansion:entities/bowser/breathe_fire