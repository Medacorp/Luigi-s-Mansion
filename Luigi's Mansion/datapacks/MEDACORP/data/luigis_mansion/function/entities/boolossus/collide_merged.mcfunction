execute as @e[tag=luigi,scores={Invulnerable=0},distance=..3] run function luigis_mansion:entities/luigi/grant_advancement {id:"luigis_mansion:vanilla/waluigi_pinball/boo"}
data modify storage luigis_mansion:data damage set value {method:{namespace:"luigis_mansion",id:"bounced_on"},amount:0,animation:{namespace:"luigis_mansion",id:"knockback/large"},no_delete:1b}
data modify storage luigis_mansion:data damage.amount set from entity @s data.damage.attack
data modify storage luigis_mansion:data damage.attacker set from entity @s UUID
execute as @e[tag=luigi,distance=..3] run function luigis_mansion:entities/luigi/damage
data remove storage luigis_mansion:data damage