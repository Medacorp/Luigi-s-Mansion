execute if entity @s[tag=had_flashlight_on] run function luigis_mansion:items/flashlight/effects/turn_off
tag @s remove flashlight
tag @s add turned_off_for_animation