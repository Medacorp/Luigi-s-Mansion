data modify storage luigis_mansion:data damage set value {method:{namespace:"luigis_mansion",id:"rocking_horse"},amount:10,animation:{namespace:"luigis_mansion",id:"knockback/large"},no_delete:1b}
data modify storage luigis_mansion:data damage.attacker set from entity @s data.owner
execute as @e[tag=luigi,distance=..3] run function luigis_mansion:entities/luigi/damage
data remove storage luigis_mansion:data damage
execute if data entity @s data.owner run function luigis_mansion:entities/ghost/owner_laugh with entity @s data
tag @s add dead