execute if data entity @s ArmorItems[3].components."minecraft:custom_data".owner if entity @e[distance=..0.7,tag=luigi,scores={Invulnerable=0},limit=1] run function luigis_mansion:entities/ghost/owner_laugh with entity @s ArmorItems[3].components."minecraft:custom_data"
execute if data entity @s ArmorItems[3].components."minecraft:custom_data".owner unless entity @e[distance=..0.7,tag=luigi,scores={Invulnerable=0},limit=1] run function luigis_mansion:entities/ghost/owner_complain with entity @s ArmorItems[3].components."minecraft:custom_data"
data modify storage luigis_mansion:data damage set value {method:{namespace:"luigis_mansion",id:"bone"},amount:5,animation:{namespace:"luigis_mansion",id:"knockback/small"},no_delete:1b}
execute if data entity @s ArmorItems[3].components."minecraft:custom_data".damage.attack run data modify storage luigis_mansion:data damage.amount set from entity @s ArmorItems[3].components."minecraft:custom_data".damage.attack
data modify storage luigis_mansion:data damage.attacker set from entity @s ArmorItems[3].components."minecraft:custom_data".owner
execute as @e[tag=luigi,distance=..0.7] run function luigis_mansion:entities/luigi/damage
data remove storage luigis_mansion:data damage
