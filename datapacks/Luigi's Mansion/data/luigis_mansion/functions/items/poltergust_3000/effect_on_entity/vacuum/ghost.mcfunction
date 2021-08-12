tag @s[tag=ghost,scores={VulnerableTime=2..},tag=!dead,tag=!vanish,tag=!appear,tag=!boo,tag=!boolossus,tag=!king_boo] add hurt
tag @s[tag=ghost,tag=hurt,tag=!vanish,tag=!boo,tag=!boolossus,tag=!king_boo] add in_vacuum
execute if entity @s[tag=ghost,scores={VulnerableTime=2..},tag=!vanish,tag=!being_vacuumed] run function luigis_mansion:items/poltergust_3000/latch_onto_ghost