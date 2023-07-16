scoreboard players add @s[tag=animate] ActionTime 1
scoreboard players set @s[scores={ActionTime=1}] AnimationProgress 0
data modify entity @s[scores={ActionTime=35}] ArmorItems[3].tag.CustomModelData set value 91
execute unless entity @s[scores={ActionTime=1..}] run function luigis_mansion:animations/bowser/painting_idle
execute if entity @s[scores={ActionTime=1..}] run function luigis_mansion:animations/bowser/painting