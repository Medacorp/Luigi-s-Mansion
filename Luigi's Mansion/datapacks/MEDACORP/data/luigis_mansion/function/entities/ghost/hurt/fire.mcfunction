tag @s[scores={Health=-2147483648..},tag=!flee] add element_hurt
tag @s[scores={Health=-2147483648..},tag=!flee] add element_hurt_now
execute unless entity @s[scores={Health=-2147483648..}] run tag @s add element_death
data modify storage luigis_mansion:data temp set value []
execute as @e[tag=burning_me] run function luigis_mansion:items/poltergust_3000/get_player_id
function luigis_mansion:items/poltergust_3000/latch_each_onto_ghost
data remove storage luigis_mansion:data temp