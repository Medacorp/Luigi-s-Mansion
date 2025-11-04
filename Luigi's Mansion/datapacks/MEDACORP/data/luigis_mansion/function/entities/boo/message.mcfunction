$execute store result score @s Variant run data get storage luigis_mansion:data current_state.current_data.boos[{name:{namespace:"$(namespace)",id:"$(id)"}}].message
$function $(namespace):entities/boo/message/$(id)
$execute store result storage luigis_mansion:data current_state.current_data.boos[{name:{namespace:"$(namespace)",id:"$(id)"}}].message int 1 run scoreboard players add @s Variant 1
scoreboard players reset @s Variant
tag @s remove say_message