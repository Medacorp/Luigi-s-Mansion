execute positioned 702 23 -29 run function luigis_mansion:blocks/dust
scoreboard players set #study_bookshelf_6 Searched 1
execute if entity @s[tag=interact,tag=manual] unless data storage luigis_mansion:data dialogs[{room:8}] run data modify storage luigis_mansion:data dialogs append value {name:{namespace:"luigis_mansion",id:"lydias_child_care_diary"},room:8,progress:0}