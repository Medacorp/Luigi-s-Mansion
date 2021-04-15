scoreboard players add @s ActionTime 1
execute if entity @s[scores={ActionTime=1}] run playsound luigis_mansion:entity.blue_blaze.laugh hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={ActionTime=1}] AnimationProg 0
execute at @s run function luigis_mansion:animations/twirler/laugh
tag @s[scores={ActionTime=40}] remove laugh
tag @s[scores={ActionTime=40}] add vanish
scoreboard players set @s[scores={ActionTime=40}] AnimationProg 0
scoreboard players set @s[scores={ActionTime=40}] ActionTime 0