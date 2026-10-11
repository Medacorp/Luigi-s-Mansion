tag @s add reset_rotation
function luigis_mansion:entities/luigi/move/execute {execute:"in luigis_mansion:exterior/mansion",teleport:"781 89.9375 8.0 90 0"}
execute unless data storage luigis_mansion:data dialogs[{name:{namespace:"luigis_mansion",id:"exterior/opening"}}] run data modify storage luigis_mansion:data dialogs append value {name:{namespace:"luigis_mansion",id:"exterior/opening"},room:0,progress:0,player:0}
execute store result storage luigis_mansion:data dialogs[{name:{namespace:"luigis_mansion",id:"exterior/opening"}}].player int 1 run scoreboard players get @s ID