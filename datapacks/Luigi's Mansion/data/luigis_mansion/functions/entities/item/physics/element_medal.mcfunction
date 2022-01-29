execute if entity @s[tag=element_medal] run function luigis_mansion:entities/item/physics
execute at @s[tag=element_medal,tag=fire] run particle minecraft:flame ~ ~1.75 ~ 0.3 0.3 0.3 0 1 normal @a[tag=same_room]
execute at @s[tag=element_medal,tag=water] run particle minecraft:rain ~ ~1.75 ~ 0.3 0.3 0.3 0 1 normal @a[tag=same_room]
execute at @s[tag=element_medal,tag=ice] run particle minecraft:firework ~ ~1.75 ~ 0.3 0.3 0.3 0 1 normal @a[tag=same_room]