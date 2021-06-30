scoreboard players set @s PathStep 0
scoreboard players set @s[tag=fight] Dialog 1461
tag @s remove dizzy
data modify entity @s[tag=!fight] ArmorItems[3].tag merge value {CustomModelData:10}
data modify entity @s[tag=fight] ArmorItems[3].tag merge value {CustomModelData:13}