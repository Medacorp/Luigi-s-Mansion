execute unless entity @a[tag=me,distance=..1.2,limit=1] if predicate luigis_mansion:boo_pull_chance positioned as @s facing entity @a[tag=me,limit=1] feet run teleport @s ^ ^ ^0.01
execute unless entity @a[tag=me,distance=..1.2,limit=1] run tag @s add is_pulled
tag @s add boo_hurt
tag @s add in_vacuum
execute if entity @s[scores={Health=..0}] run function luigis_beta_mansion:items/poltergust_500/latch_onto_ghost