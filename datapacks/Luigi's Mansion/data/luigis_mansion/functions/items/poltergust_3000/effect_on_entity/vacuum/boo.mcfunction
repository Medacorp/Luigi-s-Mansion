execute unless entity @a[tag=me,distance=..1.2,limit=1] if predicate luigis_mansion:boo_pull_chance positioned ~ ~-1.3 ~ run tag @s[tag=boo,distance=..0.7,tag=!dead,tag=!hurt] add is_pulled
execute positioned ~ ~-1.3 ~ run tag @s[tag=boo,tag=!dead,tag=!appear,distance=..0.7] add boo_hurt
execute positioned ~ ~-1.3 ~ run tag @s[tag=boo,tag=!dead,tag=!appear,distance=..0.7] add in_vacuum
execute positioned ~ ~-1.3 ~ if entity @s[tag=boo,tag=!dying,scores={HurtTime=1..,Health=1..},tag=!already_hurt,tag=!appear,distance=..0.7] run function luigis_mansion:entities/boo/harm
execute positioned ~ ~-1.3 ~ if entity @s[tag=boo,scores={Health=..0},distance=..0.7] run function luigis_mansion:items/poltergust_3000/latch_onto_ghost