scoreboard players set #freeze_timer Selected 1
scoreboard players add @s Dialog 1
teleport @s[scores={Dialog=1}] ^ ^-3 ^2
execute at @s[scores={Dialog=..220}] run teleport @s ~ ~-0.2 ~
scoreboard players set @s[scores={Dialog=..220}] AnimationProg 0
teleport @s[scores={Dialog=221..240}] ^ ^0.15 ^-0.1
teleport @s[scores={Dialog=241}] ~ 40 ~
tag @s[scores={Dialog=1}] add intro
data modify entity @s[scores={ActionTime=220}] ArmorItems[3].tag.CustomModelData set value 90
data modify entity @s[scores={ActionTime=260}] ArmorItems[3].tag.CustomModelData set value 88
execute if entity @s[scores={Dialog=1..259}] run function luigis_mansion:animations/bowser/roar
scoreboard players set @s[scores={Dialog=260}] AnimationProg 0
execute if entity @s[scores={Dialog=260..299}] run function luigis_mansion:animations/bowser/grab_head
tag @s[scores={Dialog=299}] remove intro
scoreboard players set @s[scores={Dialog=299}] AnimationProg 0
tag @s[scores={Dialog=340}] add breathe_fire
tag @s[scores={Dialog=500}] add intro_done
scoreboard players reset @s[scores={Dialog=500}] Dialog

execute if entity @s[tag=breathe_fire] run function luigis_mansion:entities/bowser/breathe_fire