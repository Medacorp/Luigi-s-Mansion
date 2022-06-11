function luigis_mansion:entities/item/pull_heart
execute at @s positioned ~ ~1.6 ~ if entity @a[tag=me,distance=..0.7,limit=1] run tag @s add captured