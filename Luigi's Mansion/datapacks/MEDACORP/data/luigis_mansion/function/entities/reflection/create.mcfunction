data modify storage luigis_mansion:data mirror set from storage luigis_mansion:data reflections[-1]
data remove storage luigis_mansion:data reflections[-1]
execute if data storage luigis_mansion:data mirror{entity_id:"minecraft:armor_stand"} run function luigis_mansion:entities/reflection/new/armor_stand
#todelete - old painting furniture
execute if data storage luigis_mansion:data mirror{entity_id:"minecraft:item_frame"} run function luigis_mansion:entities/reflection/new/item_frame
#/todelete
execute if data storage luigis_mansion:data mirror{entity_id:"minecraft:item_display"} run function luigis_mansion:entities/reflection/new/item_display
data remove storage luigis_mansion:data mirror
execute if data storage luigis_mansion:data reflections[-1] run function luigis_mansion:entities/reflection/create