tag @s add in_vacuum
data modify entity @s data.hit_by.vacuum append from entity @e[tag=me,limit=1] UUID
execute if entity @s[scores={VulnerableTime=1..}] run function luigis_mansion:items/poltergust_3000/effect_on_entity/vacuum_latch with entity @s