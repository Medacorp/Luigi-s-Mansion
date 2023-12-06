scoreboard players add @s[scores={ActionTime=1..19}] ActionTime 1
execute unless entity @s[scores={ActionTime=1..}] run scoreboard players set @s ActionTime 1
execute at @s run function luigis_mansion:old_animations/mr_luggs/rage
scoreboard players set @s[scores={ActionTime=20}] AnimationProgress 0
scoreboard players set @s[scores={ActionTime=20}] ActionTime 0