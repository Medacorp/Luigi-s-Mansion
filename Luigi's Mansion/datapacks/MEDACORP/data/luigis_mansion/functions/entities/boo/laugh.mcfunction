scoreboard players add @s ActionTime 1
execute if entity @s[scores={ActionTime=1}] run playsound luigis_mansion:entity.boo.laugh hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={ActionTime=1}] AnimationProgress 0
execute at @s run function luigis_mansion:old_animations/boo/laugh
execute if entity @a[tag=!spectator,distance=..7] run tag @s[scores={ActionTime=20}] remove laugh
execute if entity @s[scores={ActionTime=20}] unless entity @a[tag=!spectator,distance=..7] if predicate luigis_mansion:boo_laugh_turn_to_taunt run tag @s add taunt
execute if entity @s[scores={ActionTime=20},tag=taunt] run playsound luigis_mansion:entity.boo.flinch hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={ActionTime=20},tag=taunt] AnimationProgress 0
execute at @s[scores={ActionTime=20},tag=taunt] run function luigis_mansion:old_animations/boo/taunt
scoreboard players set @s[scores={ActionTime=20},tag=taunt] AnimationProgress 1
scoreboard players set @s[scores={ActionTime=20},tag=taunt] ActionTime 1
tag @s[tag=taunt] remove laugh
scoreboard players set @s[scores={ActionTime=20}] AnimationProgress 0
scoreboard players set @s[scores={ActionTime=20}] ActionTime 0