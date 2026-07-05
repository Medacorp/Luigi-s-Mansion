execute if entity @s[scores={Health=1}] as @e[tag=luigi,scores={Invulnerable=0},distance=..0.5] run function luigis_mansion:entities/luigi/grant_advancement {id:"luigis_mansion:vanilla/waluigi_pinball/boo"}
execute if entity @s[scores={Health=2}] as @e[tag=luigi,scores={Invulnerable=0},distance=..1] run function luigis_mansion:entities/luigi/grant_advancement {id:"luigis_mansion:vanilla/waluigi_pinball/boo"}
execute if entity @s[scores={Health=3}] as @e[tag=luigi,scores={Invulnerable=0},distance=..1.2] run function luigis_mansion:entities/luigi/grant_advancement {id:"luigis_mansion:vanilla/waluigi_pinball/boo"}
execute if entity @s[scores={Health=4}] as @e[tag=luigi,scores={Invulnerable=0},distance=..1.3] run function luigis_mansion:entities/luigi/grant_advancement {id:"luigis_mansion:vanilla/waluigi_pinball/boo"}
execute if entity @s[scores={Health=5}] as @e[tag=luigi,scores={Invulnerable=0},distance=..1.5] run function luigis_mansion:entities/luigi/grant_advancement {id:"luigis_mansion:vanilla/waluigi_pinball/boo"}
execute if entity @s[scores={Health=6}] as @e[tag=luigi,scores={Invulnerable=0},distance=..1.6] run function luigis_mansion:entities/luigi/grant_advancement {id:"luigis_mansion:vanilla/waluigi_pinball/boo"}
execute if entity @s[scores={Health=7}] as @e[tag=luigi,scores={Invulnerable=0},distance=..1.8] run function luigis_mansion:entities/luigi/grant_advancement {id:"luigis_mansion:vanilla/waluigi_pinball/boo"}
execute if entity @s[scores={Health=8}] as @e[tag=luigi,scores={Invulnerable=0},distance=..1.9] run function luigis_mansion:entities/luigi/grant_advancement {id:"luigis_mansion:vanilla/waluigi_pinball/boo"}
execute if entity @s[scores={Health=9}] as @e[tag=luigi,scores={Invulnerable=0},distance=..2.1] run function luigis_mansion:entities/luigi/grant_advancement {id:"luigis_mansion:vanilla/waluigi_pinball/boo"}
execute if entity @s[scores={Health=10}] as @e[tag=luigi,scores={Invulnerable=0},distance=..2.2] run function luigis_mansion:entities/luigi/grant_advancement {id:"luigis_mansion:vanilla/waluigi_pinball/boo"}
execute if entity @s[scores={Health=11}] as @e[tag=luigi,scores={Invulnerable=0},distance=..2.4] run function luigis_mansion:entities/luigi/grant_advancement {id:"luigis_mansion:vanilla/waluigi_pinball/boo"}
execute if entity @s[scores={Health=12}] as @e[tag=luigi,scores={Invulnerable=0},distance=..2.5] run function luigis_mansion:entities/luigi/grant_advancement {id:"luigis_mansion:vanilla/waluigi_pinball/boo"}
execute if entity @s[scores={Health=13}] as @e[tag=luigi,scores={Invulnerable=0},distance=..2.7] run function luigis_mansion:entities/luigi/grant_advancement {id:"luigis_mansion:vanilla/waluigi_pinball/boo"}
execute if entity @s[scores={Health=14}] as @e[tag=luigi,scores={Invulnerable=0},distance=..2.8] run function luigis_mansion:entities/luigi/grant_advancement {id:"luigis_mansion:vanilla/waluigi_pinball/boo"}
execute if entity @s[scores={Health=15..}] as @e[tag=luigi,scores={Invulnerable=0},distance=..3] run function luigis_mansion:entities/luigi/grant_advancement {id:"luigis_mansion:vanilla/waluigi_pinball/boo"}
data modify storage luigis_mansion:data damage set value {method:{namespace:"luigis_mansion",id:"bounced_on"},amount:0,animation:{namespace:"luigis_mansion",id:"knockback/large"},no_delete:1b}
data modify storage luigis_mansion:data damage.amount set from entity @s data.damage.attack
data modify storage luigis_mansion:data damage.attacker set from entity @s UUID
execute if entity @s[scores={Health=1}] as @e[tag=luigi,distance=..0.5] run function luigis_mansion:entities/luigi/damage
execute if entity @s[scores={Health=2}] as @e[tag=luigi,distance=..1] run function luigis_mansion:entities/luigi/damage
execute if entity @s[scores={Health=3}] as @e[tag=luigi,distance=..1.2] run function luigis_mansion:entities/luigi/damage
execute if entity @s[scores={Health=4}] as @e[tag=luigi,distance=..1.3] run function luigis_mansion:entities/luigi/damage
execute if entity @s[scores={Health=5}] as @e[tag=luigi,distance=..1.5] run function luigis_mansion:entities/luigi/damage
execute if entity @s[scores={Health=6}] as @e[tag=luigi,distance=..1.6] run function luigis_mansion:entities/luigi/damage
execute if entity @s[scores={Health=7}] as @e[tag=luigi,distance=..1.8] run function luigis_mansion:entities/luigi/damage
execute if entity @s[scores={Health=8}] as @e[tag=luigi,distance=..1.9] run function luigis_mansion:entities/luigi/damage
execute if entity @s[scores={Health=9}] as @e[tag=luigi,distance=..2.1] run function luigis_mansion:entities/luigi/damage
execute if entity @s[scores={Health=10}] as @e[tag=luigi,distance=..2.2] run function luigis_mansion:entities/luigi/damage
execute if entity @s[scores={Health=11}] as @e[tag=luigi,distance=..2.4] run function luigis_mansion:entities/luigi/damage
execute if entity @s[scores={Health=12}] as @e[tag=luigi,distance=..2.5] run function luigis_mansion:entities/luigi/damage
execute if entity @s[scores={Health=13}] as @e[tag=luigi,distance=..2.7] run function luigis_mansion:entities/luigi/damage
execute if entity @s[scores={Health=14}] as @e[tag=luigi,distance=..2.8] run function luigis_mansion:entities/luigi/damage
execute if entity @s[scores={Health=15..}] as @e[tag=luigi,distance=..3] run function luigis_mansion:entities/luigi/damage
data remove storage luigis_mansion:data damage