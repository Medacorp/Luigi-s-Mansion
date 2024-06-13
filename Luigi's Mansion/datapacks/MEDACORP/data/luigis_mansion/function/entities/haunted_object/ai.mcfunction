function luigis_mansion:entities/ghost/get_target
function luigis_mansion:entities/ghost/ai
execute if entity @s[tag=attack] run function luigis_mansion:entities/haunted_object/ai/attack
execute if entity @s[tag=!attack] run function luigis_mansion:entities/haunted_object/ai/wait