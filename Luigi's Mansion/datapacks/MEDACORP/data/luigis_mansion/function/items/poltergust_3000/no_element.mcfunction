data modify storage luigis_mansion:data inventory set from entity @s Inventory
execute if data storage luigis_mansion:data inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"poltergust_3000"}}}] run data modify storage luigis_mansion:data inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"poltergust_3000"}}}].components."minecraft:lore" set value ['{"italic":false,"color":"gray","type":"translatable","translate":"luigis_mansion:item.poltergust_3000.element","with":[{"type":"translatable","translate":"luigis_mansion:item.poltergust_3000.element.none","color":"gray"}]}']
scoreboard players reset #temp Move
function luigis_mansion:other/sync_inventory
data modify storage luigis_mansion:data my_memory.poltergust_element set value "none"
scoreboard players set @s ElementMeter 0
function luigis_mansion:items/poltergust_3000/sync_element_meter
scoreboard players reset @s ElementMeter