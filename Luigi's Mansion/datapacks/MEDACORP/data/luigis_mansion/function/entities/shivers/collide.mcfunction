execute as @e[tag=luigi,scores={Invulnerable=0},distance=..1.6] run function luigis_mansion:entities/luigi/grant_advancement {id:"luigis_mansion:vanilla/waluigi_pinball/shivers"}
data modify storage luigis_mansion:data damage set value {method:{namespace:"luigis_mansion",id:"walked_into"},amount:0,animation:{namespace:"luigis_mansion",id:"knockback/medium"},no_delete:1b}
data modify storage luigis_mansion:data damage.amount set from entity @s data.damage.collision
data modify storage luigis_mansion:data damage.attacker set from entity @s UUID
execute as @e[tag=luigi,distance=..1.6] run function luigis_mansion:entities/luigi/damage
data remove storage luigis_mansion:data damage