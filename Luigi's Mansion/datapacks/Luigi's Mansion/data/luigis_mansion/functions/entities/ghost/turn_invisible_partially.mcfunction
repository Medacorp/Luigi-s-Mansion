tag @s add no_untag
function luigis_mansion:entities/ghost/turn_invisible
tag @s remove no_untag

tag @s add partially_invisible
data modify entity @s ArmorItems[3].tag.CustomModelData set from entity @s ArmorItems[3].tag.variants.invisible
data modify entity @s HandItems[0].tag.CustomModelData set from entity @s HandItems[0].tag.variants.invisible
data modify entity @s HandItems[1].tag.CustomModelData set from entity @s HandItems[1].tag.variants.invisible
execute as @e[tag=change_this_model] run data modify entity @s ArmorItems[3].tag.CustomModelData set from entity @s ArmorItems[3].tag.variants.invisible
execute as @e[tag=change_this_model] run data modify entity @s HandItems[0].tag.CustomModelData set from entity @s HandItems[0].tag.variants.invisible
execute as @e[tag=change_this_model] run data modify entity @s HandItems[1].tag.CustomModelData set from entity @s HandItems[1].tag.variants.invisible
execute if data entity @s ArmorItems[3].tag.variants.invisible run data modify entity @s ArmorItems[3].id set from entity @s ArmorItems[3].tag.visible
execute if data entity @s ArmorItems[3].tag.variants.invisible run data modify entity @s HandItems[0].id set from entity @s HandItems[0].tag.visible
execute if data entity @s ArmorItems[3].tag.variants.invisible run data modify entity @s HandItems[1].id set from entity @s HandItems[1].tag.visible
execute as @e[tag=change_this_model] if data entity @s ArmorItems[3].tag.variants.invisible run data modify entity @s ArmorItems[3].id set from entity @s ArmorItems[3].tag.visible
execute as @e[tag=change_this_model] if data entity @s ArmorItems[3].tag.variants.invisible run data modify entity @s HandItems[0].id set from entity @s HandItems[0].tag.visible
execute as @e[tag=change_this_model] if data entity @s ArmorItems[3].tag.variants.invisible run data modify entity @s HandItems[1].id set from entity @s HandItems[1].tag.visible

scoreboard players reset #temp GhostNr
tag @e[tag=change_this_model] remove change_this_model