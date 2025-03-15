data modify storage luigis_mansion:data damage set value {method:{namespace:"luigis_mansion",id:"fire"},amount:10,animation:{namespace:"luigis_mansion",id:"knockback/burn"},no_delete:1b}
execute if data entity @s data.damage.attack run data modify storage luigis_mansion:data damage.amount set from entity @s data.damage.attack
data modify storage luigis_mansion:data damage.attacker set from entity @s data.owner
execute as @e[tag=luigi,dx=0,dy=1,dz=0] run function luigis_mansion:entities/luigi/damage
data remove storage luigis_mansion:data damage
tag @s add dead