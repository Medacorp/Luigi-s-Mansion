execute if entity @s[scores={GhostNr=-2147483648..}] run scoreboard players operation #temp GhostNr = @s GhostNr
execute if entity @s[scores={GhostNr=-2147483648..}] as @e[tag=model_piece,scores={GhostNr=-2147483648..}] if score @s GhostNr = #temp GhostNr run tag @s add change_this_model

tag @s add visible
tag @s add big
tag @s remove dropped_equipment
tag @s remove partially_invisible
data modify entity @s ArmorItems[3].id set from entity @s ArmorItems[3].tag.visible
data modify entity @s ArmorItems[0].id set from entity @s HandItems[0].tag.visible
data modify entity @s ArmorItems[1].id set from entity @s HandItems[1].tag.visible
execute as @e[tag=change_this_model] run data modify entity @s ArmorItems[3].id set from entity @s ArmorItems[3].tag.visible
execute as @e[tag=change_this_model] run data modify entity @s ArmorItems[0].id set from entity @s HandItems[0].tag.visible
execute as @e[tag=change_this_model] run data modify entity @s ArmorItems[1].id set from entity @s HandItems[1].tag.visible
data modify entity @s ArmorItems[3].tag.CustomModelData set from entity @s ArmorItems[3].tag.variants.big
data modify entity @s ArmorItems[0].tag.CustomModelData set from entity @s HandItems[0].tag.variants.big
data modify entity @s ArmorItems[1].tag.CustomModelData set from entity @s HandItems[1].tag.variants.big
execute as @e[tag=change_this_model] run data modify entity @s ArmorItems[3].tag.CustomModelData set from entity @s ArmorItems[3].tag.variants.big
execute as @e[tag=change_this_model] run data modify entity @s ArmorItems[0].tag.CustomModelData set from entity @s HandItems[0].tag.variants.big
execute as @e[tag=change_this_model] run data modify entity @s ArmorItems[1].tag.CustomModelData set from entity @s HandItems[1].tag.variants.big
data modify entity @s CustomNameVisible set value 1b
data modify entity @s Marker set value 0b
data modify entity @e[tag=change_this_model,tag=make_name_visible] CustomNameVisible set value 1b
data modify entity @e[tag=change_this_model,tag=make_name_visible] Marker set value 0b

scoreboard players reset #temp GhostNr
tag @e[tag=change_this_model] remove change_this_model