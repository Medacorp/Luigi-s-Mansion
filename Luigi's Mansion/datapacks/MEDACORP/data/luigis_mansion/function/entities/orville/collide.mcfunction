execute as @e[tag=luigi,scores={Invulnerable=0},distance=..0.7] run function luigis_mansion:entities/luigi/grant_advancement {id:"luigis_mansion:vanilla/waluigi_pinball/orville"}
execute if entity @e[tag=luigi,scores={Invulnerable=0},distance=..0.7] run scoreboard players set @s[tag=!laugh] ActionTime 0
execute if entity @e[tag=luigi,scores={Invulnerable=0},distance=..0.7] run tag @s add laugh
data modify storage luigis_mansion:data damage set value {method:{namespace:"luigis_mansion",id:"plane"},amount:0,animation:{namespace:"luigis_mansion",id:"knockback/large"},no_delete:1b}
data modify storage luigis_mansion:data damage.amount set from entity @s data.damage.collision
data modify storage luigis_mansion:data damage.attacker set from entity @s UUID
execute as @e[tag=luigi,distance=..0.7] run function luigis_mansion:entities/luigi/damage
data remove storage luigis_mansion:data damage