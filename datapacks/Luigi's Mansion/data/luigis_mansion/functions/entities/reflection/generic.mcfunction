execute if entity @s[tag=!immobile] run function luigis_mansion:entities/reflection/generic_mobile
function luigis_mansion:entities/reflection/switch_arms

tag @s remove this_reflection
scoreboard players reset #temp ReflectionNr
scoreboard players reset #temp MirrorX
scoreboard players reset #temp MirrorZ
scoreboard players reset #temp HomeX
scoreboard players reset #temp HomeZ
execute at @s if block ~ ~ ~ minecraft:black_concrete run data merge entity @s {ArmorItems:[],HandItems:[],Invisible:1b}
execute if block ~ ~ ~ #minecraft:doors run data merge entity @s {ArmorItems:[],HandItems:[],Invisible:1b}