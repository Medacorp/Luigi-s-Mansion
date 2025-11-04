data modify storage luigis_mansion:data dialogs append value {name:{namespace:"luigis_mansion",id:"boo_appears"},room:0,progress:0,scanned_entity:[I;]}
data modify storage luigis_mansion:data dialogs[-1].scanned_entity set from entity @s UUID
execute store result storage luigis_mansion:data dialogs[-1].room int 1 run scoreboard players get @s Room
scoreboard players set @s[tag=countdown] BooTimer 601