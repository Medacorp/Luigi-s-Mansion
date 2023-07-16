scoreboard players add @s[scores={ActionTime=1..23}] ActionTime 1
execute unless entity @s[scores={ActionTime=1..}] run scoreboard players set @s ActionTime 1
execute if entity @s[scores={ActionTime=1}] run playsound luigis_mansion:entity.bogmire.hit_by_shadow_ball hostile @a[tag=same_room] ~ ~ ~ 1
execute at @s run function luigis_mansion:animations/bogmire/hurt
scoreboard players set @s[scores={ActionTime=24}] AnimationProgress 0
scoreboard players set @s[scores={ActionTime=24}] ActionTime 0