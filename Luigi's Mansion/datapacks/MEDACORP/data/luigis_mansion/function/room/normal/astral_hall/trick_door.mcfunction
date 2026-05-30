function luigis_mansion:entities/luigi/move/teleport {teleport:"666 20 -91 -180 0"}
data modify storage luigis_mansion:data dialogs append value {name:{namespace:"luigis_mansion",id:"trick_door"},room:45,progress:0,tricked_player:0,door:1b,observing_position:[666.5d,20.0d,-81.5d],warp_position:[666.5d,20.0d,-71.5d],animation:{push:0b,left:1b}}
execute store result storage luigis_mansion:data dialogs[-1].tricked_player int 1 run scoreboard players get @s ID
function luigis_mansion:entities/luigi/animation/set/none