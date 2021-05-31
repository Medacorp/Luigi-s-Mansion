scoreboard players add @s ActionTime 1
teleport @s[scores={ActionTime=5..}] ^ ^0.3 ^0.14
execute if entity @s[scores={ActionTime=1}] run playsound luigis_mansion:entity.purple_bomber.disappear hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={ActionTime=1}] AnimationProg 0
execute at @s run function luigis_mansion:animations/ceiling_ghost/vanish
teleport @s[scores={ActionTime=20}] ^ ^-4.8 ^-2.1
tag @s[scores={ActionTime=20}] add disappear