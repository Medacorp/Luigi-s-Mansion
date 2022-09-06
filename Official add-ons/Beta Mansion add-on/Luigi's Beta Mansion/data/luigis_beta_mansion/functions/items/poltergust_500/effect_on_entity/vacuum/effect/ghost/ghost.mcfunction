execute if entity @s[tag=!being_vacuumed] store result score @s TargetY run data get entity @a[tag=me,limit=1] Pos[1] 10
execute if entity @s[tag=!being_vacuumed] if entity @a[tag=me,limit=1,tag=!flipped_gravity] run scoreboard players add @s TargetY 20
execute if entity @s[tag=!being_vacuumed] if entity @a[tag=me,limit=1,tag=flipped_gravity] run scoreboard players remove @s TargetY 20
tag @s add hurt
tag @s add in_vacuum
execute if entity @s[tag=!being_vacuumed] run function luigis_beta_mansion:items/poltergust_500/latch_onto_ghost