execute positioned 702 23 46 run function luigis_mansion:blocks/dust
scoreboard players set #study_bookshelf_5 Searched 1
execute if entity @s[tag=interact,tag=manual] unless data storage luigis_mansion:data dialogs[{room:8}] run data modify storage luigis_mansion:data dialogs append value {name:{namespace:"luigis_mansion",id:"e_gadds_guide_to_ghosts"},room:8,progress:0}