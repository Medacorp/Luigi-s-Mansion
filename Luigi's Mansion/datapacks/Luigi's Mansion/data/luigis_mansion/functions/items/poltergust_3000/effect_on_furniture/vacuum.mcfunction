tag @s[tag=searchable_by_vacuum] add in_vacuum
execute at @s[tag=incense_particle] facing entity @a[tag=me,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute at @s[tag=incense_particle] if entity @a[tag=me,limit=1,distance=..1.2] run tag @s add dead
tag @s[tag=shaken_by_vacuum,tag=!rolling] add shake
execute if entity @s[tag=searchable_by_vacuum,tag=swinging] run function luigis_mansion:items/poltergust_3000/effect_on_furniture/swing_pull
execute if entity @s[tag=searchable_by_vacuum,tag=swirling] run function luigis_mansion:items/poltergust_3000/effect_on_furniture/swirl