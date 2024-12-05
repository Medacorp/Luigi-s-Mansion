execute if entity @e[tag=luigi,distance=..0.7] run scoreboard players set @s WaitTime 0
data modify storage luigis_mansion:data damage set value {method:{namespace:"luigis_mansion",id:"haunted_object"},amount:0,animation:{namespace:"luigis_mansion",id:"knockback/small"},no_delete:1b}
data modify storage luigis_mansion:data damage.amount set from entity @s data.damage.collision
data modify storage luigis_mansion:data damage.attacker set from entity @s UUID
execute as @e[tag=luigi,distance=..0.7] run function luigis_mansion:entities/luigi/damage
data remove storage luigis_mansion:data damage