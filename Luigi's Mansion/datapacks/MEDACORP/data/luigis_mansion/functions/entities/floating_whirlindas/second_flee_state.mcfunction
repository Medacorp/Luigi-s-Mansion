scoreboard players add @s[scores={ActionTime=1..23}] ActionTime 1
execute unless entity @s[scores={ActionTime=1..}] run scoreboard players set @s ActionTime 1
execute if entity @s[scores={ActionTime=1}] run playsound luigis_mansion:entity.floating_whirlindas.male.hurt hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={ActionTime=1}] at @e[tag=this_model,tag=floating_whirlindas_female,tag=main,limit=1] run playsound luigis_mansion:entity.floating_whirlindas.female.hurt hostile @a[tag=same_room] ~ ~ ~ 1
execute at @s run function luigis_mansion:old_animations/floating_whirlindas/hurt
scoreboard players set @s[scores={ActionTime=24}] AnimationProgress 0
scoreboard players set @s[scores={ActionTime=24}] ActionTime 0