execute if entity @s[tag=using_selection_menu] run function luigis_mansion:entities/player/memory/get with entity @s
execute if entity @s[tag=using_selection_menu] run data modify storage luigis_mansion:data inventory set from storage luigis_mansion:data my_memory.selection_menu.inventory
tag @s[tag=using_selection_menu] add modifying_inventory
clear @s[tag=using_selection_menu]
execute if entity @s[tag=using_selection_menu] run function luigis_mansion:other/sync_inventory
execute if entity @s[tag=using_selection_menu] run data modify storage luigis_mansion:data my_memory.selection_menu set value {}
execute if entity @s[tag=using_selection_menu] run data modify storage luigis_mansion:data memory append from storage luigis_mansion:data my_memory
execute if entity @s[tag=using_selection_menu] run data remove storage luigis_mansion:data my_memory
execute if entity @s[tag=using_selection_menu] run data remove storage luigis_mansion:data menu_options

scoreboard players reset @s AvailableSlot
tag @s remove selection_menu_free_to_move
tag @s remove using_selection_menu