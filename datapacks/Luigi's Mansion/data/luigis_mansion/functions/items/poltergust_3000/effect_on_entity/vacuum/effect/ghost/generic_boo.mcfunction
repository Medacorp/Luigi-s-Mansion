execute unless entity @a[tag=me,distance=..1.2,limit=1] if predicate luigis_mansion:boo_pull_chance run tag @s[tag=!boo_hurt] add is_pulled
tag @s add boo_hurt
tag @s add in_vacuum
execute if entity @s[scores={Health=..0}] run function luigis_mansion:items/poltergust_3000/latch_onto_ghost