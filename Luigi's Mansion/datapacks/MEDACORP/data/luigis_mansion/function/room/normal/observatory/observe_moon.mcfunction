function luigis_mansion:entities/luigi/move/teleport {teleport:"643 20 -80 -180 0"}
data modify storage luigis_mansion:data dialogs append value {name:{namespace:"luigis_mansion",id:"observe_moon"},room:46,progress:0,observing_position:[643.5d,21.0d,-88.5d],observing_player:0}
execute store result storage luigis_mansion:data dialogs[-1].observing_player int 1 run scoreboard players get @s ID