function luigis_mansion:entities/item/pull
execute at @s positioned ~ ~1.3 ~ if entity @a[tag=me,distance=..0.7,limit=1] run tag @s add captured