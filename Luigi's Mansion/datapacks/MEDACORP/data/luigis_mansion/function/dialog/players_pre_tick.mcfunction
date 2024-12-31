execute if entity @s[tag=!loaded_chunks] if score #dialog Dialog matches ..0 run tag @s add pause_dialog
tag @s remove exact_same_room
execute if entity @s[tag=pause_dialog] run tag @e remove same_room
execute if entity @s[tag=pause_dialog] run tag @e remove exact_same_room