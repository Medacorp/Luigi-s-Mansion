scoreboard players set #freeze_timer Selected 1
scoreboard players add @s Dialog 1
teleport @s[scores={Dialog=20}] ^ ^-3 ^2
execute at @s[scores={Dialog=..220}] run teleport @s ~ ~-0.2 ~
execute if entity @s[scores={Dialog=..220}] as @e[tag=this_model] at @s run teleport @s ~ ~-0.2 ~
teleport @s[scores={Dialog=221..240}] ^ ^0.15 ^-0.1
teleport @s[scores={Dialog=241}] ~ 40 ~
tag @s[scores={Dialog=1}] add intro
scoreboard players set @s[scores={Dialog=1}] AnimationProg 0
scoreboard players set @s[scores={Dialog=21}] AnimationProg 0
scoreboard players set @s[scores={Dialog=41..220}] AnimationProg 0
data modify entity @s[scores={Dialog=220}] ArmorItems[3].tag.CustomModelData set value 91
data modify entity @s[scores={Dialog=260}] ArmorItems[3].tag.CustomModelData set value 88
execute if entity @s[scores={Dialog=1..20}] run function luigis_mansion:animations/bowser/idle
execute if entity @s[scores={Dialog=21..40}] run function luigis_mansion:animations/bowser/duck
execute if entity @s[scores={Dialog=41..259}] run function luigis_mansion:animations/bowser/roar
scoreboard players set @s[scores={Dialog=260}] AnimationProg 0
execute if entity @s[scores={Dialog=260..299}] run function luigis_mansion:animations/bowser/grab_head
tag @s[scores={Dialog=299}] remove intro
scoreboard players set @s[scores={Dialog=299}] AnimationProg 0
tag @s[scores={Dialog=340}] add breathe_fire
tag @s[scores={Dialog=500}] add intro_done
scoreboard players reset @s[scores={Dialog=500}] Dialog

execute if entity @s[tag=breathe_fire] run function luigis_mansion:entities/bowser/breathe_fire