scoreboard players set @s[tag=attack] AnimationProgress 0
scoreboard players set @s[tag=attack] ActionTime 0
tag @s remove attack
scoreboard players add @s ActionTime 1
scoreboard players set @s[scores={ActionTime=1}] AnimationProgress 0
execute if entity @s[scores={ActionTime=1}] run playsound luigis_mansion:entity.biff_atlas.laugh hostile @a[tag=same_room] ~ ~ ~ 1
function luigis_mansion:old_animations/biff_atlas/laugh
tag @s[scores={ActionTime=40}] remove laugh
scoreboard players set @s[scores={ActionTime=40}] ActionTime 0