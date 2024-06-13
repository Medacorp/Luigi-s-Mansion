execute positioned 654 20 -15 run function luigis_mansion:blocks/dust
scoreboard players set #nanas_room_bookshelf Searched 1
execute if entity @s[tag=interact,tag=manual] unless data storage luigis_mansion:data dialogs[{room:44}] run data modify storage luigis_mansion:data dialogs append value {name:{namespace:"luigis_mansion",id:"moldy_old_journal"},room:44,progress:0}