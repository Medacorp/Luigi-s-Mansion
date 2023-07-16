scoreboard players add @s ActionTime 1
scoreboard players set @s[scores={ActionTime=1}] AnimationProgress 0
function luigis_mansion:animations/bowser/look_around
tag @s[scores={ActionTime=40}] remove look_around
tag @s[scores={ActionTime=40}] add turn_around
scoreboard players set @s[scores={ActionTime=40}] AnimationProgress 0
scoreboard players reset @s[scores={ActionTime=40}] ActionTime