execute unless entity @a[tag=me,distance=..1.2,limit=1] if predicate luigis_mansion:boo_pull_chance positioned ~ ~-1.3 ~ run tag @s[tag=king_boo,distance=..0.7,tag=fight,tag=!dead,tag=!hurt] add is_pulled
execute positioned ~ ~-1.3 ~ run tag @s[tag=king_boo,tag=fight,tag=!dead,distance=..0.7] add boo_hurt
execute positioned ~ ~-1.3 ~ run tag @s[tag=king_boo,tag=fight,tag=!dead,distance=..0.7] add in_vacuum
execute positioned ~ ~-1.3 ~ if entity @s[tag=king_boo,tag=fight,tag=!dying,scores={HurtTime=1..,Health=1..},tag=!already_hurt,distance=..0.7] run function luigis_mansion:entities/king_boo/harm
execute positioned ~ ~-1.3 ~ if entity @s[tag=king_boo,tag=fight,scores={Health=..0},distance=..0.7] run function luigis_mansion:items/poltergust_3000/latch_onto_ghost