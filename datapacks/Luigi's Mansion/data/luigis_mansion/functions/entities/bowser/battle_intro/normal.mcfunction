scoreboard players set #freeze_timer Selected 1
scoreboard players add @s Dialog 1
teleport @s[scores={Dialog=20}] ^ ^-3 ^2
execute at @s[scores={Dialog=177..220}] run teleport @s ~ ~-1 ~
execute if entity @s[scores={Dialog=177..220}] as @e[tag=this_model] at @s run teleport @s ~ ~-1 ~
execute if entity @s[scores={Dialog=220}] run playsound luigis_mansion:entity.bowser.land hostile @a[tag=same_room] ~ ~ ~ 3
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