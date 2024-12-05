execute at @s[tag=fire] as @e[tag=luigi,scores={Invulnerable=0},distance=..1] run function luigis_mansion:entities/luigi/grant_advancement {id:"luigis_mansion:vanilla/waluigi_pinball/fire_elemental_ghost"}
execute at @s[tag=water] as @e[tag=luigi,scores={Invulnerable=0},distance=..1] run function luigis_mansion:entities/luigi/grant_advancement {id:"luigis_mansion:vanilla/waluigi_pinball/water_elemental_ghost"}
execute at @s[tag=ice] as @e[tag=luigi,scores={Invulnerable=0},distance=..1] run function luigis_mansion:entities/luigi/grant_advancement {id:"luigis_mansion:vanilla/waluigi_pinball/ice_elemental_ghost"}
execute if entity @e[tag=luigi,distance=..1,scores={Invulnerable=0}] run tag @s add remove_from_existence
execute at @s[tag=fire] run data modify storage luigis_mansion:data damage set value {method:{namespace:"luigis_mansion",id:"fire"},amount:0,animation:{namespace:"luigis_mansion",id:"knockback/burn"},no_delete:1b}
execute at @s[tag=water] run data modify storage luigis_mansion:data damage set value {method:{namespace:"luigis_mansion",id:"water"},amount:0,animation:{namespace:"luigis_mansion",id:"knockback/soak"},no_delete:1b}
execute at @s[tag=ice] run data modify storage luigis_mansion:data damage set value {method:{namespace:"luigis_mansion",id:"ice"},amount:0,animation:{namespace:"luigis_mansion",id:"knockback/freeze"},no_delete:1b}
data modify storage luigis_mansion:data damage.amount set from entity @s data.damage.attack
data modify storage luigis_mansion:data damage.attacker set from entity @s UUID
execute as @e[tag=luigi,distance=..1] run function luigis_mansion:entities/luigi/damage
data remove storage luigis_mansion:data damage