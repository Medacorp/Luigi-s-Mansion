execute if entity @s[tag=burning] as @e[tag=luigi,tag=try_opening_door,limit=1,sort=nearest] run function luigis_mansion:entities/furniture/type/door/burning
execute unless entity @s[tag=!blockade,tag=!area_blockade] if entity @s[tag=!burning] as @e[tag=luigi,tag=try_opening_door,limit=1,sort=nearest] run function luigis_mansion:entities/furniture/type/door/blockade

execute if entity @s[tag=!burning,tag=!blockade,tag=!area_blockade,tag=!barricade,tag=!unopenable,tag=!extra_gallery_door,tag=!extra_gallery_door_exit] run function luigis_mansion:entities/furniture/type/door/open
execute if entity @s[tag=extra_gallery_door] run function luigis_mansion:entities/furniture/type/door/open_extra_gallery
execute if entity @s[tag=extra_gallery_door_exit] run function luigis_mansion:entities/furniture/type/door/open_extra_gallery_leave