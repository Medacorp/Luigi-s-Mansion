teleport @s 751.5 29 17.5 -90 0
execute at @s run function luigis_mansion:entities/player/set_position
function luigis_mansion:entities/player/animation/set/answer_phone
data modify storage luigis_mansion:data dialogs append value {name:{namespace:"luigis_mansion",id:"toad_5"},room:56,progress:0,phone_caller:0}
execute store result storage luigis_mansion:data dialogs[-1].phone_caller int 1 run scoreboard players get @s ID