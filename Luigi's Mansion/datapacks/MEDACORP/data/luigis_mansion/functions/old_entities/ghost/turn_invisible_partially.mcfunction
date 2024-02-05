tag @s add no_untag
function luigis_mansion:old_entities/ghost/turn_invisible
tag @s remove no_untag

tag @s add partially_invisible
data modify entity @s ArmorItems[3] merge from entity @s ArmorItems[3].tag.luigis_mansion.model_data.invisible
data modify entity @s HandItems[0] merge from entity @s HandItems[0].tag.luigis_mansion.model_data.invisible
data modify entity @s HandItems[1] merge from entity @s HandItems[1].tag.luigis_mansion.model_data.invisible
execute as @e[tag=change_this_model] run data modify entity @s ArmorItems[3] merge from entity @s ArmorItems[3].tag.luigis_mansion.model_data.invisible
execute as @e[tag=change_this_model] run data modify entity @s HandItems[0] merge from entity @s HandItems[0].tag.luigis_mansion.model_data.invisible
execute as @e[tag=change_this_model] run data modify entity @s HandItems[1] merge from entity @s HandItems[1].tag.luigis_mansion.model_data.invisible
execute if data entity @s ArmorItems[3].tag.luigis_mansion.model_data.invisible run data modify entity @s ArmorItems[3].id set from entity @s ArmorItems[3].tag.luigis_mansion.visible
execute if data entity @s ArmorItems[3].tag.luigis_mansion.model_data.invisible run data modify entity @s HandItems[0].id set from entity @s HandItems[0].tag.luigis_mansion.visible
execute if data entity @s ArmorItems[3].tag.luigis_mansion.model_data.invisible run data modify entity @s HandItems[1].id set from entity @s HandItems[1].tag.luigis_mansion.visible
execute as @e[tag=change_this_model] if data entity @s ArmorItems[3].tag.luigis_mansion.model_data.invisible run data modify entity @s ArmorItems[3].id set from entity @s ArmorItems[3].tag.luigis_mansion.visible
execute as @e[tag=change_this_model] if data entity @s ArmorItems[3].tag.luigis_mansion.model_data.invisible run data modify entity @s HandItems[0].id set from entity @s HandItems[0].tag.luigis_mansion.visible
execute as @e[tag=change_this_model] if data entity @s ArmorItems[3].tag.luigis_mansion.model_data.invisible run data modify entity @s HandItems[1].id set from entity @s HandItems[1].tag.luigis_mansion.visible

scoreboard players reset #temp GhostNr
tag @e[tag=change_this_model] remove change_this_model