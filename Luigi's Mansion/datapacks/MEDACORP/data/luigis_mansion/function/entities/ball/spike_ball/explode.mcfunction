tag @s add me
execute if entity @s[tag=spit] as @e[tag=can_decapitate,nbt={data:{entity:{namespace:"luigis_mansion",id:"bowser"}}}] run function luigis_mansion:entities/ball/spike_ball/decapitate_bowser
execute if entity @s[tag=spit] positioned ~ ~-1.4 ~ as @e[tag=can_decapitate,nbt={data:{entity:{namespace:"luigis_mansion",id:"bowser_head"}}},distance=..3] run function luigis_mansion:entities/ball/spike_ball/decapitate_bowser_head
tag @s remove me
data modify storage luigis_mansion:data damage set value {method:{namespace:"luigis_mansion",id:"explosion"},amount:10,animation:{namespace:"luigis_mansion",id:"knockback/burn"},no_delete:1b}
execute if data entity @s data.damage.attack run data modify storage luigis_mansion:data damage.amount set from entity @s data.damage.attack
data modify storage luigis_mansion:data damage.attacker set from entity @s data.owner
execute as @e[tag=luigi,distance=..3] run function luigis_mansion:entities/luigi/damage
data remove storage luigis_mansion:data damage

particle minecraft:explosion ~ ~ ~ 0.2 0.2 0.2 1 4 force @a[tag=same_room]
playsound luigis_mansion:entity.ghost.explosion hostile @a[tag=same_room] ~ ~ ~ 1

data modify storage luigis_mansion:data entity set value {}
execute if data entity @s data.damage.attack run data modify storage luigis_mansion:data entity.damage set from entity @s data.damage
execute if data entity @s data.owner run data modify storage luigis_mansion:data entity.owner set from entity @s data.owner
function luigis_mansion:spawn_entities/burning_floor
tag @s add dead