tag @s remove appear
tag @s add laugh
$execute if entity @s[tag=say_message] store result score @s Variant run data get storage luigis_mansion:data current_state.current_data.boos[{name:{namespace:"$(namespace)",id:"$(id)"}}].message
$execute if entity @s[tag=say_message] run function $(namespace):entities/boo/message/$(id)
$execute if entity @s[tag=say_message] store result storage luigis_mansion:data current_state.current_data.boos[{name:{namespace:"$(namespace)",id:"$(id)"}}].message int 1 run scoreboard players add @s Variant 1
scoreboard players reset @s Variant
tag @s remove say_message
data remove entity @s data.animation