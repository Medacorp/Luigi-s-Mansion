execute unless entity @a[tag=me,distance=..1.2,limit=1] if predicate luigis_mansion:boo_pull_chance run tag @s[tag=boo,distance=..0.7,tag=!dead,tag=!hurt] add is_pulled
tag @s[tag=boo,tag=!dead,tag=!appear] add boo_hurt
tag @s[tag=boo,tag=!dead,tag=!appear] add in_vacuum
execute if entity @s[tag=boo,tag=!dying,scores={HurtTime=1..,Health=1..},tag=!already_hurt,tag=!appear] run function luigis_mansion:entities/boo/harm
execute if entity @s[tag=boo,scores={Health=..0}] run function luigis_mansion:items/poltergust_3000/latch_onto_ghost