scoreboard players add @s ActionTime 1
scoreboard players set @s[scores={ActionTime=1}] AnimationProgress 0
execute if entity @s[scores={ActionTime=1..40}] run function luigis_mansion:animations/twirler/smug

execute if entity @s[scores={ActionTime=1}] run playsound luigis_mansion:entity.blue_blaze.smug hostile @a[tag=same_room] ~ ~ ~ 1
tag @s[scores={ActionTime=40}] add laugh
tag @s[scores={ActionTime=40}] remove smug
scoreboard players set @s[scores={ActionTime=40}] AnimationProgress 0
scoreboard players set @s[scores={ActionTime=40}] ActionTime 0