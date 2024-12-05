data modify storage luigis_mansion:data damage set value {method:{namespace:"luigis_mansion",id:"stomp"},amount:0,animation:{namespace:"luigis_mansion",id:"knockback/large"}}
data modify storage luigis_mansion:data damage.amount set from entity @s data.damage.collide
data modify storage luigis_mansion:data damage.attacker set from entity @s UUID
tag @s add me
execute as @e[tag=luigi,distance=..3] at @e[tag=me,limit=1] run function luigis_mansion:entities/luigi/damage
tag @s remove me
data remove storage luigis_mansion:data damage