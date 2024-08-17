scoreboard players add @s AnimationProgress 1
data modify entity @s[scores={AnimationProgress=1}] ArmorItems[3] merge from entity @s ArmorItems[3].components."minecraft:custom_data".model_data.scared
execute if entity @s[tag=!gooigi_model] run function luigis_mansion:animations/luigi/sync_head
execute if entity @s[tag=gooigi_model] run function 3ds_remake:animations/gooigi/sync_head