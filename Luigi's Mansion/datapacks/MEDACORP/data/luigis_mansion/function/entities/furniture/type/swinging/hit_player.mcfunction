data modify storage luigis_mansion:data damage set value {method:{namespace:"luigis_mansion",id:"swinging_furniture"},amount:10,animation:{namespace:"luigis_mansion",id:"knockback/large"}}
execute at @e[tag=me,limit=1] run function luigis_mansion:entities/player/damage
tag @s remove hit_by_swinging_furniture