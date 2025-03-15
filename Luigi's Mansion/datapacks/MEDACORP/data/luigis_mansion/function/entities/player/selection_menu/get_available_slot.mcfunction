execute if data storage luigis_mansion:data my_memory run tag @s add keep_loaded
execute if entity @s[tag=!keep_loaded] run function luigis_mansion:entities/player/memory/get with entity @s
scoreboard players set @s AvailableSlot -1
execute unless data storage luigis_mansion:data my_memory.selection_menu.inventory[{Slot:35b}] run scoreboard players set @s AvailableSlot 35
execute unless data storage luigis_mansion:data my_memory.selection_menu.inventory[{Slot:34b}] run scoreboard players set @s AvailableSlot 34
execute unless data storage luigis_mansion:data my_memory.selection_menu.inventory[{Slot:33b}] run scoreboard players set @s AvailableSlot 33
execute unless data storage luigis_mansion:data my_memory.selection_menu.inventory[{Slot:32b}] run scoreboard players set @s AvailableSlot 32
execute unless data storage luigis_mansion:data my_memory.selection_menu.inventory[{Slot:31b}] run scoreboard players set @s AvailableSlot 31
execute unless data storage luigis_mansion:data my_memory.selection_menu.inventory[{Slot:30b}] run scoreboard players set @s AvailableSlot 30
execute unless data storage luigis_mansion:data my_memory.selection_menu.inventory[{Slot:29b}] run scoreboard players set @s AvailableSlot 29
execute unless data storage luigis_mansion:data my_memory.selection_menu.inventory[{Slot:28b}] run scoreboard players set @s AvailableSlot 28
execute unless data storage luigis_mansion:data my_memory.selection_menu.inventory[{Slot:27b}] run scoreboard players set @s AvailableSlot 27
execute unless data storage luigis_mansion:data my_memory.selection_menu.inventory[{Slot:26b}] run scoreboard players set @s AvailableSlot 26
execute unless data storage luigis_mansion:data my_memory.selection_menu.inventory[{Slot:25b}] run scoreboard players set @s AvailableSlot 25
execute unless data storage luigis_mansion:data my_memory.selection_menu.inventory[{Slot:24b}] run scoreboard players set @s AvailableSlot 24
execute unless data storage luigis_mansion:data my_memory.selection_menu.inventory[{Slot:23b}] run scoreboard players set @s AvailableSlot 23
execute unless data storage luigis_mansion:data my_memory.selection_menu.inventory[{Slot:22b}] run scoreboard players set @s AvailableSlot 22
execute unless data storage luigis_mansion:data my_memory.selection_menu.inventory[{Slot:21b}] run scoreboard players set @s AvailableSlot 21
execute unless data storage luigis_mansion:data my_memory.selection_menu.inventory[{Slot:20b}] run scoreboard players set @s AvailableSlot 20
execute unless data storage luigis_mansion:data my_memory.selection_menu.inventory[{Slot:19b}] run scoreboard players set @s AvailableSlot 19
execute unless data storage luigis_mansion:data my_memory.selection_menu.inventory[{Slot:18b}] run scoreboard players set @s AvailableSlot 18
execute unless data storage luigis_mansion:data my_memory.selection_menu.inventory[{Slot:17b}] run scoreboard players set @s AvailableSlot 17
execute unless data storage luigis_mansion:data my_memory.selection_menu.inventory[{Slot:16b}] run scoreboard players set @s AvailableSlot 16
execute unless data storage luigis_mansion:data my_memory.selection_menu.inventory[{Slot:15b}] run scoreboard players set @s AvailableSlot 15
execute unless data storage luigis_mansion:data my_memory.selection_menu.inventory[{Slot:14b}] run scoreboard players set @s AvailableSlot 14
execute unless data storage luigis_mansion:data my_memory.selection_menu.inventory[{Slot:13b}] run scoreboard players set @s AvailableSlot 13
execute unless data storage luigis_mansion:data my_memory.selection_menu.inventory[{Slot:12b}] run scoreboard players set @s AvailableSlot 12
execute unless data storage luigis_mansion:data my_memory.selection_menu.inventory[{Slot:11b}] run scoreboard players set @s AvailableSlot 11
execute unless data storage luigis_mansion:data my_memory.selection_menu.inventory[{Slot:10b}] run scoreboard players set @s AvailableSlot 10
execute unless data storage luigis_mansion:data my_memory.selection_menu.inventory[{Slot:9b}] run scoreboard players set @s AvailableSlot 9
execute unless data storage luigis_mansion:data my_memory.selection_menu.inventory[{Slot:8b}] run scoreboard players set @s AvailableSlot 8
execute unless data storage luigis_mansion:data my_memory.selection_menu.inventory[{Slot:7b}] run scoreboard players set @s AvailableSlot 7
execute unless data storage luigis_mansion:data my_memory.selection_menu.inventory[{Slot:6b}] run scoreboard players set @s AvailableSlot 6
execute unless data storage luigis_mansion:data my_memory.selection_menu.inventory[{Slot:5b}] run scoreboard players set @s AvailableSlot 5
execute unless data storage luigis_mansion:data my_memory.selection_menu.inventory[{Slot:4b}] run scoreboard players set @s AvailableSlot 4
execute unless data storage luigis_mansion:data my_memory.selection_menu.inventory[{Slot:3b}] run scoreboard players set @s AvailableSlot 3
execute unless data storage luigis_mansion:data my_memory.selection_menu.inventory[{Slot:2b}] run scoreboard players set @s AvailableSlot 2
execute unless data storage luigis_mansion:data my_memory.selection_menu.inventory[{Slot:1b}] run scoreboard players set @s AvailableSlot 1
execute unless data storage luigis_mansion:data my_memory.selection_menu.inventory[{Slot:0b}] run scoreboard players set @s AvailableSlot 0
execute if entity @s[tag=!keep_loaded] run data modify storage luigis_mansion:data memory append from storage luigis_mansion:data my_memory
execute if entity @s[tag=!keep_loaded] run data remove storage luigis_mansion:data my_memory
tag @s remove keep_loaded