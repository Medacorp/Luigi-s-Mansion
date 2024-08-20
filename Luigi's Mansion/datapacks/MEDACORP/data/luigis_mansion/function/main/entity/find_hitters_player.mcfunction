$execute if data storage luigis_mansion:data temp{vacuum:[$(UUID)]} run tag @s add vacuuming_me
$execute if data storage luigis_mansion:data temp{dust:[$(UUID)]} run tag @s add dusting_me
$execute if data storage luigis_mansion:data temp{fire:[$(UUID)]} run tag @s add burning_me
$execute if data storage luigis_mansion:data temp{water:[$(UUID)]} run tag @s add watering_me
$execute if data storage luigis_mansion:data temp{ice:[$(UUID)]} run tag @s add freezing_me
execute unless entity @s[tag=!dusting_me,tag=!burning_me,tag=!watering_me,tag=!freezing_me] run tag @s add expelling_me