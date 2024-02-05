scoreboard players add @s[tag=animate] ActionTime 1
scoreboard players set @s[scores={ActionTime=1}] AnimationProgress 0
execute unless entity @s[scores={ActionTime=1..}] run function luigis_mansion:old_animations/bowser/painting_idle
execute if entity @s[scores={ActionTime=1..}] run function luigis_mansion:old_animations/bowser/painting