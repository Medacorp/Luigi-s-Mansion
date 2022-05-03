execute if entity @s[tag=fake,tag=!burning] run function luigis_mansion:entities/door/hit
execute if entity @s[tag=burning] as @a[tag=talked_to_villager,limit=1,sort=nearest] run function luigis_mansion:entities/door/burning
execute unless entity @s[tag=!blockade,tag=!area_blockade] if entity @s[tag=!burning,tag=!fake] as @a[tag=talked_to_villager,limit=1,sort=nearest] run function luigis_mansion:entities/door/blockade

execute if entity @s[tag=!burning,tag=!blockade,tag=!area_blockade,tag=!fake,tag=!unopenable] run function luigis_mansion:entities/door/open