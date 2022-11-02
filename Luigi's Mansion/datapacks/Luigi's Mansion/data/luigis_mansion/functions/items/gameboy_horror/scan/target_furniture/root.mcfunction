execute if entity @s[scores={FurnitureSizeX=1..}] run function luigis_mansion:items/gameboy_horror/scan/target_furniture/collision_box_check
execute if entity @s[scores={FurnitureRadius=1..}] run function luigis_mansion:items/gameboy_horror/scan/target_furniture/collision_radius_check
execute if entity @s[tag=hit] run tellraw @a {"translate":"chat.type.text","with":[{"selector":"@p[tag=scanning_player,gamemode=!spectator]","color":"green"},{"nbt":"ArmorItems[3].tag.scan_message","entity":"@s","interpret":true}]}
execute if entity @s[tag=hit] run tag @e[tag=this_interact,limit=1] add furniture_scanned
tag @s remove hit