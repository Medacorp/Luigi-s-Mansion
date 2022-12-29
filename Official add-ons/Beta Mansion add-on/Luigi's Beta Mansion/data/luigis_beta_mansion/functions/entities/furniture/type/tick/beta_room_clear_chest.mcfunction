execute if entity @s[tag=!saved_default_orientation] run function luigis_mansion:entities/furniture/save_default_orientation

scoreboard players add @s[scores={FurnitureSearch=..40}] FurnitureSearch 1
tag @s[scores={FurnitureSearch=20},tag=!open] add shake
tag @s[scores={FurnitureSearch=40},tag=!open] add search

execute unless entity @s[tag=!shake] run function luigis_mansion:entities/furniture/shake_room_clear_chest
execute if entity @s[tag=!shake,tag=was_shaking] run function luigis_mansion:entities/furniture/revert_to_default_orientation

execute if entity @s[tag=search,tag=!open] run function luigis_mansion:entities/furniture/search/room_clear_chest
tag @s[tag=search] add open
tag @s remove search
execute if entity @s[tag=open,nbt={ArmorItems:[{tag:{loot:{}}}]}] run function luigis_mansion:entities/furniture/search/room_clear_chest

execute if entity @s[tag=open,scores={ActionTime=0..}] run function luigis_mansion:animations/furniture/open/chest