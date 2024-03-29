tag @s remove exact_same_room
scoreboard players reset @s WarpTime
execute if entity @s[tag=in_selection_menu,tag=!dialog_menu] run tag @s add close_selection_menu
execute if entity @s[tag=in_selection_menu,tag=!dialog_menu] run tag @s add pause_dialog
execute if entity @s[tag=pause_dialog] run tag @e remove same_room
execute if entity @s[tag=pause_dialog] run tag @e remove exact_same_room