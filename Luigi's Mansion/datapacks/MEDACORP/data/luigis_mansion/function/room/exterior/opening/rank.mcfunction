tag @s add reset_rotation
function luigis_mansion:entities/luigi/move/execute {execute:"in luigis_mansion:exterior/rank",teleport:"781 89.9375 8.0 90 0"}
execute unless data storage luigis_mansion:data dialogs[{name:{namespace:"luigis_mansion",id:"exterior/opening_cleared"}}] run data modify storage luigis_mansion:data dialogs append value {name:{namespace:"luigis_mansion",id:"exterior/opening_cleared"},room:0,progress:0,player:0,rank:"h"}
data modify storage luigis_mansion:data dialogs[{name:{namespace:"luigis_mansion",id:"exterior/opening_cleared"}}].rank set from storage luigis_mansion:data loaded_exterior.rank
execute store result storage luigis_mansion:data dialogs[{name:{namespace:"luigis_mansion",id:"exterior/opening_cleared"}}].player int 1 run scoreboard players get @s ID