data modify storage luigis_mansion:data damage set value {method:{namespace:"luigis_mansion",id:"banana"},durning_knockback_amount:5,animation:{namespace:"luigis_mansion",id:"knockback/slip"},no_delete:1b}
execute if data entity @s ArmorItems[3].components."minecraft:custom_data".damage.attack run data modify storage luigis_mansion:data damage.during_knockback_amount set from entity @s ArmorItems[3].components."minecraft:custom_data".damage.attack
data modify storage luigis_mansion:data damage.attacker set from entity @s ArmorItems[3].components."minecraft:custom_data".owner
execute as @e[tag=luigi,distance=..0.7] rotated as @s rotated ~ 0 positioned ^ ^ ^10 run function luigis_mansion:entities/luigi/damage
data remove storage luigis_mansion:data damage
tag @s add dead