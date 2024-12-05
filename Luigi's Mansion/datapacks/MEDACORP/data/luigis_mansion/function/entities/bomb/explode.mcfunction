data modify storage luigis_mansion:data damage set value {method:{namespace:"luigis_mansion",id:"explosion"},amount:10,animation:{namespace:"luigis_mansion",id:"knockback/burn"},no_delete:1b}
execute if data entity @s ArmorItems[3].components."minecraft:custom_data".damage.attack run data modify storage luigis_mansion:data damage.amount set from entity @s ArmorItems[3].components."minecraft:custom_data".damage.attack
data modify storage luigis_mansion:data damage.attacker set from entity @s ArmorItems[3].components."minecraft:custom_data".owner
execute if entity @e[tag=luigi,distance=..3,scores={Invulnerable=0}] run tag @s add hit
execute as @e[tag=luigi,distance=..3,scores={Invulnerable=0}] run function luigis_mansion:entities/luigi/damage
data remove storage luigis_mansion:data damage
particle minecraft:explosion ~ ~ ~ 0.2 0.2 0.2 1 4 force @a[tag=same_room]
playsound luigis_mansion:entity.ghost.explosion hostile @a[tag=same_room] ~ ~ ~ 1
data modify entity @s ArmorItems[3].components."minecraft:item_model" set value "luigis_mansion:empty"