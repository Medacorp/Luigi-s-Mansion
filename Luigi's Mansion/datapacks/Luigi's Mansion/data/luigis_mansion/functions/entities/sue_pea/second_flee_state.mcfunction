scoreboard players add @s[scores={ActionTime=1..23}] ActionTime 1
execute unless entity @s[scores={ActionTime=1..}] run scoreboard players set @s ActionTime 1
execute if entity @s[scores={ActionTime=1}] run playsound luigis_mansion:entity.sue_pea.hurt hostile @a[tag=same_room] ~ ~ ~ 1
execute at @s run function luigis_mansion:animations/sue_pea/hurt
scoreboard players set @s[scores={ActionTime=24}] AnimationProg 0
scoreboard players set @s[scores={ActionTime=24}] ActionTime 0