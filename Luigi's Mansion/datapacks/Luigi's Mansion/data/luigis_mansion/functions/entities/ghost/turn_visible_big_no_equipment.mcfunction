execute if entity @s[scores={GhostNr=-2147483648..}] run scoreboard players operation #temp GhostNr = @s GhostNr
execute if entity @s[scores={GhostNr=-2147483648..}] as @e[tag=model_piece,scores={GhostNr=-2147483648..}] if score @s GhostNr = #temp GhostNr run tag @s add change_this_model

tag @s add visible
tag @s add big
tag @s add dropped_equipment
tag @s remove partially_invisible
data modify entity @s ArmorItems[3].id set from entity @s ArmorItems[3].tag.visible
data modify entity @s HandItems[0].id set from entity @s HandItems[0].tag.visible
data modify entity @s HandItems[1].id set from entity @s HandItems[1].tag.visible
execute as @e[tag=change_this_model] run data modify entity @s ArmorItems[3].id set from entity @s ArmorItems[3].tag.visible
execute as @e[tag=change_this_model] run data modify entity @s HandItems[0].id set from entity @s HandItems[0].tag.visible
execute as @e[tag=change_this_model] run data modify entity @s HandItems[1].id set from entity @s HandItems[1].tag.visible
data modify entity @s ArmorItems[3] merge from entity @s ArmorItems[3].tag.variants.big_no_equipment
data modify entity @s HandItems[0] merge from entity @s HandItems[0].tag.variants.big_no_equipment
data modify entity @s HandItems[1] merge from entity @s HandItems[1].tag.variants.big_no_equipment
execute as @e[tag=change_this_model] run data modify entity @s ArmorItems[3] merge from entity @s ArmorItems[3].tag.variants.big_no_equipment
execute as @e[tag=change_this_model] run data modify entity @s HandItems[0] merge from entity @s HandItems[0].tag.variants.big_no_equipment
execute as @e[tag=change_this_model] run data modify entity @s HandItems[1] merge from entity @s HandItems[1].tag.variants.big_no_equipment
data modify entity @s CustomNameVisible set value 1b
data modify entity @s Marker set value 0b
execute as @e[tag=change_this_model,tag=make_name_visible] run data modify entity @s CustomNameVisible set value 1b
execute as @e[tag=change_this_model,tag=make_name_visible] run data modify entity @s Marker set value 0b

scoreboard players reset #temp GhostNr
tag @e[tag=change_this_model] remove change_this_model