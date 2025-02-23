scoreboard players add @s ActionTime 1
data modify entity @s[scores={ActionTime=1}] data.animation set value {namespace:"luigis_mansion",id:"tail_attack"}
execute if entity @s[scores={ActionTime=11..30}] run data modify storage luigis_mansion:data damage set value {method:{namespace:"luigis_mansion",id:"tail"},amount:0,animation:{namespace:"luigis_mansion",id:"knockback/large"},no_delete:1b}
execute if entity @s[scores={ActionTime=11..30}] run data modify storage luigis_mansion:data damage.amount set from entity @s data.damage.tail
execute if entity @s[scores={ActionTime=11..30}] run data modify storage luigis_mansion:data damage.attacker set from entity @s UUID
execute at @s[scores={ActionTime=11..30}] positioned ^ ^ ^-5.333 as @e[tag=luigi,distance=..4] positioned ^ ^ ^2.667 run function luigis_mansion:entities/luigi/damage
execute if entity @s[scores={ActionTime=11..30}] run data remove storage luigis_mansion:data damage
tag @s[scores={ActionTime=40}] remove tail_attack
tag @s[scores={ActionTime=40}] add turn_around
data remove entity @s[scores={ActionTime=40}] data.animation
scoreboard players reset @s[scores={ActionTime=40}] ActionTime