scoreboard players add @s ActionTime 1
data modify entity @s[scores={ActionTime=1}] ArmorItems[3].tag.CustomModelData set value 88
execute if entity @s[scores={ActionTime=1}] run playsound luigis_mansion:entity.bowser.reattach_head hostile @a[tag=same_room] ~ ~ ~ 3
execute if entity @s[scores={ActionTime=1}] run scoreboard players set @s AnimationProgress 0
execute if entity @s[scores={ActionTime=1..40}] run function luigis_mansion:old_animations/bowser/grab_head
tag @s[scores={ActionTime=40}] remove grabbing_head
scoreboard players set @s[scores={ActionTime=40}] AnimationProgress 0
scoreboard players reset @s[scores={ActionTime=40}] ActionTime