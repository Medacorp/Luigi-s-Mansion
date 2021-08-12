execute unless entity @a[tag=me,distance=..1.2,limit=1] if predicate luigis_mansion:boo_pull_chance run tag @s[tag=king_boo,distance=..0.7,tag=fight,tag=!dead,tag=!hurt] add is_pulled
tag @s[tag=king_boo,tag=fight,tag=!dead] add boo_hurt
tag @s[tag=king_boo,tag=fight,tag=!dead] add in_vacuum
execute if entity @s[tag=king_boo,tag=fight,tag=!dying,scores={HurtTime=1..,Health=1..},tag=!already_hurt] run function luigis_mansion:entities/king_boo/harm
execute if entity @s[tag=king_boo,tag=fight,scores={Health=..0}] run function luigis_mansion:items/poltergust_3000/latch_onto_ghost