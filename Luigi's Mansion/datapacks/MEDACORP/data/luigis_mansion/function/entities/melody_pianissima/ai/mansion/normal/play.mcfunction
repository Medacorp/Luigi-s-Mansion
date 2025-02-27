data modify storage luigis_mansion:data dialogs append value {name:{namespace:"luigis_mansion",id:"melody_pianissima_composer"},progress:0}
execute if predicate luigis_mansion:melody_pianissima/play_game_quiz_chance run data modify storage luigis_mansion:data dialogs[-1].name set value {namespace:"luigis_mansion",id:"melody_pianissima_game"}
execute store result storage luigis_mansion:data dialogs[-1].room int 1 run scoreboard players get @s Room
tag @s add playing_dialog