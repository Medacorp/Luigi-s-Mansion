scoreboard players add @s ActionTime 1
execute if entity @s[scores={ActionTime=1},tag=visible] run playsound luigis_mansion:entity.ceiling_surprise.disappear hostile @a[tag=same_room] ~ ~ ~ 1
teleport @s[scores={ActionTime=5..}] ^ ^0.3 ^0.14
scoreboard players set @s[scores={ActionTime=1}] AnimationProgress 0
execute at @s run function luigis_mansion:old_animations/ceiling_ghost/vanish
teleport @s[scores={ActionTime=20}] ^ ^-4.8 ^-2.1
tag @s[scores={ActionTime=20}] add disappear