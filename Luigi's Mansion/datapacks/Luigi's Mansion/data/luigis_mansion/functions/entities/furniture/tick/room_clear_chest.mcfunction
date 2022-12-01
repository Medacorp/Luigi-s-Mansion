execute if entity @s[tag=!saved_default_orientation] run function luigis_mansion:entities/furniture/tick/save_default_orientation
execute unless entity @s[tag=!shake,tag=!long_shake] run function luigis_mansion:entities/furniture/tick/shake_room_clear_chest
execute if entity @s[tag=!shake,tag=!long_shake,tag=was_shaking] run function luigis_mansion:entities/furniture/tick/revert_to_default_orientation

execute if entity @s[tag=search,tag=!open] run function luigis_mansion:entities/furniture/tick/search_room_clear_chest
tag @s[tag=search] add open
tag @s remove search
execute if entity @s[tag=drop_loot] run function luigis_mansion:entities/furniture/tick/search_room_clear_chest
tag @s remove drop_loot
execute if entity @s[tag=open,nbt={ArmorItems:[{tag:{loot:{}}}]}] run function luigis_mansion:entities/furniture/tick/search_room_clear_chest

execute if entity @s[tag=open,scores={ActionTime=0..}] run function luigis_mansion:animations/furniture/open/chest

execute if entity @s[tag=sparkles,tag=!open] run function luigis_mansion:entities/furniture/tick/spawn_sparkles