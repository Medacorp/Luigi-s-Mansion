teleport @s 751.5 29 8.5 -90 0
execute at @s run function luigis_mansion:entities/player/set_position
tag @s add reset_rotation
function luigis_mansion:entities/player/animation/set/answer_phone
data modify storage luigis_mansion:data dialogs append value {name:{namespace:"luigis_mansion",id:"uncle_grimmly"},room:56,progress:0,phone_caller:0}
execute store result storage luigis_mansion:data dialogs[-1].phone_caller int 1 run scoreboard players get @s ID