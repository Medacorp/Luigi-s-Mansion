function luigis_mansion:entities/item/pull_key
execute positioned ~ ~0.3 ~ if entity @a[tag=me,distance=..0.7,limit=1] run tag @s add captured