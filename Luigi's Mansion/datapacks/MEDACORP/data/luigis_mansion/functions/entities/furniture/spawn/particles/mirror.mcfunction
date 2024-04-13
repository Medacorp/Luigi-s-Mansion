execute if data entity @s ArmorItems[3].tag.luigis_mansion{particles:"sparkles"} run particle minecraft:crit ~ ~ ~ 0.6 0.6 0.6 0 1 normal @a[tag=same_room]
execute if data entity @s ArmorItems[3].tag.luigis_mansion{particles:"flames"} run particle minecraft:flame ~ ~ ~ 0.2 0.2 0.2 0 1 normal @a[tag=same_room]
execute if data entity @s ArmorItems[3].tag.luigis_mansion{particles:"dripping_water"} run particle minecraft:falling_water ~ ~ ~ 0 0 0 0 1 normal @a[tag=same_room]
execute if data entity @s ArmorItems[3].tag.luigis_mansion{particles:"spraying_water"} run function luigis_mansion:entities/furniture/spawn/particles/spray_water
execute if data entity @s ArmorItems[3].tag.luigis_mansion{particles:"chilly_fog"} run particle minecraft:cloud ~ ~ ~ 0.4 0.1 0.4 0 1 normal @a[tag=same_room]