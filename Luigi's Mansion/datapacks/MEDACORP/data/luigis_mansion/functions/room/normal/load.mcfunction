execute unless score #loaded_exterior Selected matches 0 in minecraft:overworld run function luigis_mansion:room/load_exterior/mansion
experience set @s 0 levels
execute if entity @a[nbt={Inventory:[{tag:{luigis_mansion:{id:"luigis_mansion:poltergust_3000"}}}]}] run function luigis_mansion:items/poltergust_3000/reset_element
execute if score #mansion_type Selected matches 0 if score #mansion_data_index Selected matches 0 run tag @s add no_load
execute unless entity @s[tag=no_load] run function luigis_mansion:room/normal/load_data
tag @s remove no_load
function luigis_mansion:room/underground_lab/leave