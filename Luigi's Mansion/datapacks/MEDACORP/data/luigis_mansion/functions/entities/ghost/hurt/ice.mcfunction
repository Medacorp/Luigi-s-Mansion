tag @s[scores={Health=-2147483648..},tag=!flee] add element_hurt
execute unless entity @s[scores={Health=-2147483648..}] run tag @s add element_death
tag @s[tag=!freeze_animation] add elemental_freeze_animation
tag @s add freeze_animation
tag @s add freeze
data modify storage luigis_mansion:data temp set from entity @s data.hit_by.ice
function luigis_mansion:items/poltergust_3000/latch_each_onto_ghost
data remove storage luigis_mansion:data temp