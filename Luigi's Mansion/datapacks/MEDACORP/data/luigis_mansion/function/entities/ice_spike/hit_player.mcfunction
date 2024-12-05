data modify storage luigis_mansion:data damage set value {method:{namespace:"luigis_mansion",id:"ice_spike"},amount:20,animation:{namespace:"luigis_mansion",id:"knockback/medium"}}
execute as @e[tag=luigi,distance=..0.7,sort=nearest,limit=1] run function luigis_mansion:entities/luigi/damage
tag @s add breaking