data modify storage luigis_mansion:data dialogs append value {name:{namespace:"luigis_mansion",id:"melody_pianissima_composer"},progress:0}
execute if predicate luigis_mansion:50_50 run data modify storage luigis_mansion:data dialogs[-1].name set value {namespace:"luigis_mansion",id:"melody_pianissima_game"}
execute store result storage luigis_mansion:data dialogs[-1].room int 1 run scoreboard players get @s Room
tag @s add playing_dialog