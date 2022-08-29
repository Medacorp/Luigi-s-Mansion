execute if entity @s[tag=!saved_default_orientation] run function luigis_mansion:entities/furniture/tick/save_default_orientation
execute unless entity @s[tag=!shake,tag=!long_shake] run function luigis_mansion:entities/furniture/tick/shake_room_clear_chest
execute if entity @s[tag=!shake,tag=!long_shake,tag=was_shaking] run function luigis_mansion:entities/furniture/tick/revert_to_default_orientation

execute if entity @s[tag=search] run function luigis_mansion:entities/furniture/tick/search
tag @s[tag=search] add open
tag @s remove search
execute if entity @s[tag=drop_loot] run function luigis_mansion:entities/furniture/tick/search
tag @s remove drop_loot

execute if entity @s[tag=open] run function luigis_mansion:entities/furniture/open/room_clear_chest