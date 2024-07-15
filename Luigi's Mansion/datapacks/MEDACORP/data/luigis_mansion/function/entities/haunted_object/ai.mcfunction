function luigis_mansion:entities/ghost/get_target
execute if entity @s[tag=attack] run function luigis_mansion:entities/haunted_object/ai/attack
execute if entity @s[tag=!attack] run function luigis_mansion:entities/haunted_object/ai/wait
function luigis_mansion:entities/ghost/ai