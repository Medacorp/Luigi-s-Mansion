$data modify storage luigis_mansion:data dialogs append value {name:{namespace:"$(namespace)",id:"$(id)"},progress:0,room:0,scanning_player:0,scanned_entity:[I;]}
execute store result storage luigis_mansion:data dialogs[-1].room int 1 run scoreboard players get @a[tag=scanning_player,limit=1] Room
execute store result storage luigis_mansion:data dialogs[-1].scanning_player int 1 run scoreboard players get @a[tag=scanning_player,limit=1] ID
data modify storage luigis_mansion:data dialogs[-1].scanned_entity set from entity @s[tag=!this_interact] UUID
execute if entity @s[tag=game_boy_horror_location] run function luigis_mansion:entities/game_boy_horror_location/tag_for_dialog