data modify storage luigis_mansion:data damage set value {method:{namespace:"luigis_mansion",id:"freeze"},amount:10,animation:{namespace:"luigis_mansion",id:"knockback/freeze"},no_delete:1b}
data modify storage luigis_mansion:data damage.amount set from entity @s data.damage.attack
data modify storage luigis_mansion:data damage.attacker set from entity @s data.owner
execute as @e[tag=luigi,dx=1,dy=1,dz=1] run function luigis_mansion:entities/luigi/damage
data remove storage luigis_mansion:data damage
tag @s add dead
execute if entity @s[scores={ActionTime=1..6}] run function luigis_mansion:entities/ice_spikes/kill_spawner