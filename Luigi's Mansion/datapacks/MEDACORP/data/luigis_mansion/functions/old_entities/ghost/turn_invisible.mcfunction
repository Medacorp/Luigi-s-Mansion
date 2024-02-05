execute if entity @s[scores={GhostNr=-2147483648..}] run scoreboard players operation #temp GhostNr = @s GhostNr
execute if entity @s[scores={GhostNr=-2147483648..}] as @e[tag=model_piece,scores={GhostNr=-2147483648..}] if score @s GhostNr = #temp GhostNr run tag @s add change_this_model

tag @s remove visible
tag @s remove big
tag @s remove dropped_equipment
tag @s remove partially_invisible
data modify entity @s ArmorItems[3].id set from entity @s ArmorItems[3].tag.luigis_mansion.invisible
data modify entity @s HandItems[0].id set from entity @s HandItems[0].tag.luigis_mansion.invisible
data modify entity @s HandItems[1].id set from entity @s HandItems[1].tag.luigis_mansion.invisible
execute as @e[tag=change_this_model] run data modify entity @s ArmorItems[3].id set from entity @s ArmorItems[3].tag.luigis_mansion.invisible
execute as @e[tag=change_this_model] run data modify entity @s HandItems[0].id set from entity @s HandItems[0].tag.luigis_mansion.invisible
execute as @e[tag=change_this_model] run data modify entity @s HandItems[1].id set from entity @s HandItems[1].tag.luigis_mansion.invisible
data modify entity @s ArmorItems[3] merge from entity @s ArmorItems[3].tag.luigis_mansion.model_data.default
data modify entity @s HandItems[0] merge from entity @s HandItems[0].tag.luigis_mansion.model_data.default
data modify entity @s HandItems[1] merge from entity @s HandItems[1].tag.luigis_mansion.model_data.default
execute as @e[tag=change_this_model] run data modify entity @s ArmorItems[3] merge from entity @s ArmorItems[3].tag.luigis_mansion.model_data.default
execute as @e[tag=change_this_model] run data modify entity @s HandItems[0] merge from entity @s HandItems[0].tag.luigis_mansion.model_data.default
execute as @e[tag=change_this_model] run data modify entity @s HandItems[1] merge from entity @s HandItems[1].tag.luigis_mansion.model_data.default
data modify entity @s CustomNameVisible set value 0b
data modify entity @s Marker set value 1b
execute as @e[tag=change_this_model,tag=make_name_visible] run data modify entity @s CustomNameVisible set value 0b
execute as @e[tag=change_this_model,tag=make_name_visible] run data modify entity @s Marker set value 1b

scoreboard players reset #temp GhostNr
execute if entity @s[tag=!no_untag] run tag @e[tag=change_this_model] remove change_this_model