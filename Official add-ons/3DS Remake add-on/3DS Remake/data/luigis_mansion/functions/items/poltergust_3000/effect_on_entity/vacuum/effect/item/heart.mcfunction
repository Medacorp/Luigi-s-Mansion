function luigis_mansion:entities/item/pull_heart
execute at @s[tag=!no_gooigi] positioned ~ ~1.6 ~ if entity @a[tag=me,distance=..0.7,limit=1] run tag @s add captured
execute at @s[tag=no_gooigi] positioned ~ ~1.6 ~ if entity @a[tag=me,tag=!gooigi,distance=..0.7,limit=1] run tag @s add captured