execute if entity @s[tag=fake,tag=!burning] run function luigis_mansion:entities/door/hit
execute if entity @s[tag=burning] as @a[tag=try_opening_door,limit=1,sort=nearest] run function luigis_mansion:entities/door/burning
execute unless entity @s[tag=!blockade,tag=!area_blockade] if entity @s[tag=!burning,tag=!fake] as @a[tag=try_opening_door,limit=1,sort=nearest] run function luigis_mansion:entities/door/blockade

execute if entity @s[tag=!burning,tag=!blockade,tag=!area_blockade,tag=!fake,tag=!barricade,tag=!unopenable,tag=!extra_gallery,tag=!extra_gallery_leave] run function luigis_mansion:entities/door/open
execute if entity @s[tag=extra_gallery] run function luigis_mansion:entities/door/open_extra_gallery
execute if entity @s[tag=extra_gallery_leave] run function luigis_mansion:entities/door/open_extra_gallery_leave