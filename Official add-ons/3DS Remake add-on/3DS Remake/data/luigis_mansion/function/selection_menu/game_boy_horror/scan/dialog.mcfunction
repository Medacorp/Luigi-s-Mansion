$data modify storage luigis_mansion:data dialogs append value {name:{namespace:"$(namespace)",id:"$(id)"},progress:0,room:0,scanning_player:0,scanned_entity:[I;]}
execute store storage luigis_mansion:data dialogs[-1].room int 1 run scoreboard players get @a[tag=scanning_player,limit=1] Room
execute store storage luigis_mansion:data dialogs[-1].scanning_player int 1 run scoreboard players get @a[tag=scanning_player,limit=1] ID
data modify storage luigis_mansion:data dialogs[-1].scanned_entity set from entity @s[tag=!this_interact] UUID
data modify storage luigis_mansion:data temp set string storage luigis_mansion:data dialogs[-1].name.id 0 12
execute if data storage luigis_mansion:data {temp:"scan/scanner/"} if entity @a[tag=scanning_player,tag=gooigi,limit=1] run data modify storage luigis_mansion:data dialogs[-1].name set value {namespace:"3ds_remake",id:"scan/scanner/gooigi"}
data remove storage luigis_mansion:data temp