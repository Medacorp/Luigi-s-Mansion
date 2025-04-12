execute if score #dialog Dialog matches ..0 run tag @s[tag=!loaded_chunks] add pause_dialog
tag @s remove exact_same_room
execute if entity @s[tag=pause_dialog] run tag @a add aborted_dialog_tick
execute if entity @s[tag=pause_dialog] run tag @e remove same_room
execute if entity @s[tag=pause_dialog] run tag @e remove exact_same_room
tag @s remove pause_dialog