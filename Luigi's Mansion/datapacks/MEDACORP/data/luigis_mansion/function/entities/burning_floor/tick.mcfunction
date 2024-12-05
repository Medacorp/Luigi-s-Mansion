scoreboard players add @s Time 1
execute if entity @s[scores={Time=1}] run function luigis_mansion:entities/burning_floor/move_down
tag @s add me
execute at @s[scores={Time=1}] if entity @e[scores={Time=2..},tag=!me,tag=burning_floor,distance=..0.3] run tag @s add dead
tag @s remove me
data modify storage luigis_mansion:data damage set value {method:{namespace:"luigis_mansion",id:"burning_floor"},amount:0,animation:{namespace:"luigis_mansion",id:"knockback/burn"},no_delete:1b}
data modify storage luigis_mansion:data damage.amount set from entity @s ArmorItems[3].components."minecraft:custom_data".damage.attack
execute at @e[tag=luigi,distance=..1.5] run function luigis_mansion:entities/luigi/damage
data remove storage luigis_mansion:data damage
tag @s[tag=in_water] add dead
tag @s[scores={Time=60..}] add dead
