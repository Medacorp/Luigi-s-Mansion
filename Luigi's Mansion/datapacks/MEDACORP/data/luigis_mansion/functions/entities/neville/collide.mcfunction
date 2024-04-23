advancement grant @a[tag=!spectator,scores={Invulnerable=0},distance=..1.6] only luigis_mansion:vanilla/waluigi_pinball/neville
data modify storage luigis_mansion:data damage set value {method:{namespace:"luigis_mansion",id:"walked_into"},amount:0,animation:{namespace:"luigis_mansion",id:"knockback/medium"},no_delete:1b}
data modify storage luigis_mansion:data damage.amount set from entity @s ArmorItems[3].components."minecraft:custom_data".damage.collision
data modify storage luigis_mansion:data damage.attacker set from entity @s UUID
execute as @a[distance=..1.6,tag=!spectator] run function luigis_mansion:entities/player/damage
data remove storage luigis_mansion:data damage