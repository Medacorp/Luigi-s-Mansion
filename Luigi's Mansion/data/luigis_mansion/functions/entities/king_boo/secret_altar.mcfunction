execute at @s if entity @a[tag=same_room,distance=..5.9,limit=1] run tag @s add talk
execute if entity @s[tag=talk] run function #luigis_mansion:entities/king_boo/secret_altar