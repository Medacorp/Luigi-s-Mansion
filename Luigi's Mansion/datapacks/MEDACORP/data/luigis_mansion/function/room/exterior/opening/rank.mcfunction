function luigis_mansion:entities/luigi/move/teleport {teleport:"781 89.9375 8.0 90 0"}
data modify storage luigis_mansion:data dialogs append value {name:{namespace:"luigis_mansion",id:"exterior/opening_cleared"},room:0,progress:0,player:0}
data modify storage luigis_mansion:data dialogs[0].rank set from storage luigis_mansion:data loaded_exterior.rank
execute store result storage luigis_mansion:data dialogs[-1].player int 1 run scoreboard players get @s ID