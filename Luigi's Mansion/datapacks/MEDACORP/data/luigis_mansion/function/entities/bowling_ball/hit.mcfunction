data modify storage luigis_mansion:data damage set value {method:{namespace:"luigis_mansion",id:"bowling_ball"},amount:5,animation:{namespace:"luigis_mansion",id:"knockback/small"},no_delete:1b}
execute if data entity @s ArmorItems[3].components."minecraft:custom_data".damage.attack run data modify storage luigis_mansion:data damage.amount set from entity @s ArmorItems[3].components."minecraft:custom_data".damage.attack
data modify storage luigis_mansion:data damage.attacker set from entity @s ArmorItems[3].components."minecraft:custom_data".owner
execute as @e[tag=luigi,distance=..1] run function luigis_mansion:entities/luigi/damage
data remove storage luigis_mansion:data damage
tag @s add dead
tag @s add hit
playsound luigis_mansion:entity.bowling_ball.clap hostile @a[tag=same_room] ~ ~ ~ 1