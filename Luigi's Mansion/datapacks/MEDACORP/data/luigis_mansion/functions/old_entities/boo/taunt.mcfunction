scoreboard players add @s ActionTime 1
execute if entity @s[scores={ActionTime=1}] run playsound luigis_mansion:entity.boo.taunt hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={ActionTime=1}] AnimationProgress 0
execute at @s run function luigis_mansion:old_animations/boo/taunt
execute if entity @a[tag=!spectator,distance=..7] run tag @s[scores={ActionTime=10}] remove taunt
scoreboard players set @s[scores={ActionTime=10}] AnimationProgress 0
scoreboard players set @s[scores={ActionTime=10}] ActionTime 0