function luigis_mansion:entities/player/memory/get with entity @s
data modify storage luigis_mansion:data my_memory.poltergust_element set value "ice"
data modify storage luigis_mansion:data inventory set from entity @s Inventory
data modify storage luigis_mansion:data inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"poltergust_3000"}}}].components."minecraft:lore" set value ['{"italic":false,"color":"gray","type":"translatable","translate":"luigis_mansion:item.poltergust_3000.element","with":[{"type":"translatable","translate":"luigis_mansion:item.poltergust_3000.element.ice","color":"white"}]}']
function luigis_mansion:other/sync_inventory
scoreboard players set @s ElementMeter 440
function luigis_mansion:items/poltergust_3000/sync_element_meter
data modify storage luigis_mansion:data memory append from storage luigis_mansion:data my_memory
data remove storage luigis_mansion:data my_memory