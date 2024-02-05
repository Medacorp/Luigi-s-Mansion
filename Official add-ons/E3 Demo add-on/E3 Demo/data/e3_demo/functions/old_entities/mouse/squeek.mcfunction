scoreboard players add @s ActionTime 1
execute at @s run function luigis_mansion:old_animations/mouse/squeek
execute if entity @s[scores={ActionTime=1}] run playsound e3_demo:entity.mouse.ambient hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={ActionTime=20}] if predicate e3_demo:mouse/keep_squeeking run scoreboard players set @s ActionTime 0
execute if entity @s[scores={ActionTime=20}] run playsound e3_demo:entity.mouse.ambient_stop hostile @a[tag=same_room] ~ ~ ~ 1
tag @s[scores={ActionTime=20}] remove squeek
scoreboard players set @s[scores={ActionTime=20}] AnimationProgress 0
scoreboard players set @s[scores={ActionTime=20}] ActionTime 0