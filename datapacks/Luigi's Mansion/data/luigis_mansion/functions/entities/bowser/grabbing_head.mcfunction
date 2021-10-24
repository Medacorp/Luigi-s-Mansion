scoreboard players add @s ActionTime 1
execute if entity @s[scores={ActionTime=1}] run playsound luigis_mansion:entity.bowser.reattach_head hostile @a[tag=same_room] ~ ~ ~ 3
execute if entity @s[scores={ActionTime=1}] run scoreboard players set @s AnimationProg 0
execute if entity @s[scores={ActionTime=1..40}] run function luigis_mansion:animations/bowser/grab_head
tag @s[scores={ActionTime=40}] remove grabbing_head
scoreboard players set @s[scores={ActionTime=40}] AnimationProg 0
scoreboard players reset @s[scores={ActionTime=40}] ActionTime