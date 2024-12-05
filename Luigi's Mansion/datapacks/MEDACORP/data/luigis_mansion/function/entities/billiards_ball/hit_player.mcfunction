execute if entity @e[tag=luigi,scores={Invulnerable=0},distance=..0.7] run tag @s add collision
data modify storage luigis_mansion:data damage set value {method:{namespace:"luigis_mansion",id:"billiards_ball"},amount:0,animation:{namespace:"luigis_mansion",id:"knockback/medium"},no_delete:1b}
data modify storage luigis_mansion:data damage.amount set from entity @s ArmorItems[3].components."minecraft:custom_data".damage.collision
execute as @e[tag=luigi,distance=..0.7] run function luigis_mansion:entities/luigi/damage
data remove storage luigis_mansion:data damage