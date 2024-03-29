execute positioned 702 23 -36 run function luigis_mansion:blocks/dust
scoreboard players set #study_bookshelf_3 Searched 1
execute if entity @s[tag=interact,tag=manual] unless data storage luigis_mansion:data dialogs[{room:8}] run data modify storage luigis_mansion:data dialogs append value {name:{namespace:"luigis_mansion",id:"darkness_is_their_cheese"},room:8,progress:0}