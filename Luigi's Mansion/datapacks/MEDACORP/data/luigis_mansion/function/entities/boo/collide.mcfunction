execute if entity @s[tag=!attack] as @e[tag=luigi,scores={Invulnerable=0},distance=..0.7] run function luigis_mansion:entities/luigi/grant_advancement {id:"luigis_mansion:vanilla/waluigi_pinball/boo"}
execute if entity @e[tag=luigi,scores={Invulnerable=0},distance=..0.7] run scoreboard players set @s[tag=!attack,scores={Dialog=0}] ActionTime 0
execute if entity @e[tag=luigi,scores={Invulnerable=0},distance=..0.7] run tag @s[tag=!attack,tag=!appear,scores={Dialog=0}] add laugh
execute if entity @e[tag=luigi,scores={Invulnerable=0},distance=..0.7] run tag @s[tag=!attack,scores={Dialog=0}] remove taunt
execute if entity @e[tag=luigi,scores={Invulnerable=0},distance=..0.7] run tag @s[tag=!attack,tag=!appear,scores={Dialog=0}] add collided
execute if entity @s[tag=!attack] run data modify storage luigis_mansion:data damage set value {method:{namespace:"luigis_mansion",id:"walked_into"},amount:0,animation:{namespace:"luigis_mansion",id:"knockback/medium"},no_delete:1b}
execute if entity @s[tag=attack] run data modify storage luigis_mansion:data damage set value {method:{namespace:"luigis_mansion",id:"dashed_into"},amount:0,animation:{namespace:"luigis_mansion",id:"knockback/large"},no_delete:1b}
execute if entity @s[tag=!attack] run data modify storage luigis_mansion:data damage.amount set from entity @s data.damage.collision
execute if entity @s[tag=attack] run data modify storage luigis_mansion:data damage.amount set from entity @s data.damage.attack
data modify storage luigis_mansion:data damage.attacker set from entity @s UUID
execute as @e[tag=luigi,distance=..0.7] run function luigis_mansion:entities/luigi/damage
data remove storage luigis_mansion:data damage