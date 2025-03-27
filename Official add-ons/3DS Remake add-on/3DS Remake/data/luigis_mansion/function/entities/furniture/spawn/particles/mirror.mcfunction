execute if data entity @s data{particles:"sparkles"} run particle minecraft:crit ~ ~ ~ 0.6 0.6 0.6 0 1 normal @a[tag=same_room]
execute if data entity @s data{particles:"flames"} run particle minecraft:flame ~ ~ ~ 0.2 0.2 0.2 0 1 normal @a[tag=same_room]
execute if data entity @s data{particles:"dripping_water"} as @e[tag=temp,limit=1] at @s run function luigis_mansion:entities/furniture/spawn/particles/direct_water {power:0.6f}
execute if data entity @s data{particles:"spraying_water"} as @e[tag=temp,limit=1] at @s run function luigis_mansion:entities/furniture/spawn/particles/direct_water {power:0.6f}
execute if data entity @s data{particles:"shooting_water"} as @e[tag=temp,limit=1] at @s run function luigis_mansion:entities/furniture/spawn/particles/direct_water {power:0.8f}
execute if data entity @s data{particles:"leaking_water"} as @e[tag=temp,limit=1] at @s run function luigis_mansion:entities/furniture/spawn/particles/direct_water {power:0.1f}
execute if data entity @s data{particles:"chilly_fog"} run particle minecraft:cloud ~ ~ ~ 0.4 0.1 0.4 0 1 normal @a[tag=same_room]
execute if entity @s[tag=incense] as @e[tag=temp,limit=1] at @s run function luigis_mansion:entities/furniture/spawn/particles/direct_incense {power:0.075f}