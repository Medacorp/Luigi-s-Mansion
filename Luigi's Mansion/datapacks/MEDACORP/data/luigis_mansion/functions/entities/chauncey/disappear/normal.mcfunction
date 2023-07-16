scoreboard players set @s PathStep 0
scoreboard players set @s[tag=big] Dialog 1661
tag @s remove dizzy
data modify entity @s[tag=!big] ArmorItems[3].tag merge value {CustomModelData:10}
data modify entity @s[tag=big] ArmorItems[3].tag merge value {CustomModelData:13}