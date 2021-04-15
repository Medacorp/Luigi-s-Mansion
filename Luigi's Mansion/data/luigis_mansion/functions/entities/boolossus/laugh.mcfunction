scoreboard players add @s ActionTime 1
execute if entity @s[scores={ActionTime=1}] run playsound luigis_mansion:entity.boo.laugh hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={ActionTime=21}] run playsound luigis_mansion:entity.boo.laugh hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={ActionTime=41}] run playsound luigis_mansion:entity.boo.taunt hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={ActionTime=61}] run playsound luigis_mansion:entity.boo.taunt hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={ActionTime=1}] AnimationProg 0
execute at @s[scores={ActionTime=1..40}] run function luigis_mansion:animations/boo/laugh
execute at @s[scores={ActionTime=41..80}] run function luigis_mansion:animations/boo/taunt
tag @s[scores={ActionTime=80}] remove laugh
scoreboard players set @s[scores={ActionTime=80}] AnimationProg 0
scoreboard players set @s[scores={ActionTime=80}] ActionTime 0