execute if entity @s[tag=using_selection_menu] run function luigis_mansion:selection_menu/close
attribute @s minecraft:scale base set 0.5
function luigis_mansion:entities/player/memory/get with entity @s
data modify storage luigis_mansion:data my_memory.inventory set from entity @s Inventory
data modify storage luigis_mansion:data memory append from storage luigis_mansion:data my_memory
data remove storage luigis_mansion:data my_memory

data modify storage luigis_mansion:data inventory set value []
data modify storage luigis_mansion:data inventory append from entity @s Inventory[{components:{"minecraft:custom_data":{keep_when_shrunk:1b}}}]
function luigis_mansion:other/sync_inventory