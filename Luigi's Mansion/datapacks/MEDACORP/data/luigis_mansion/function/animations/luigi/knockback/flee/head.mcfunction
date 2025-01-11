scoreboard players add @s AnimationProgress 1
data modify entity @s[scores={AnimationProgress=1}] ArmorItems[3] merge from entity @s ArmorItems[3].components."minecraft:custom_data".model_data.scared
function luigis_mansion:animations/luigi/sync_head
scoreboard players set @s[scores={AnimationProgress=60..}] AnimationProgress 0