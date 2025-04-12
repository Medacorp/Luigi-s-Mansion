tag @s remove same_room
tag @s[tag=abort_dialog_tick,tag=no_ai_dialog] remove no_ai
tag @s[tag=abort_dialog_tick,tag=no_ai_dialog] remove no_ai_dialog
tag @s[tag=abort_dialog_tick,tag=freeze_animation_dialog] remove freeze_animation
tag @s[tag=abort_dialog_tick,tag=freeze_animation_dialog] remove freeze_animation_dialog
tag @s[tag=abort_dialog_tick] remove applied_dialog_effects
tag @s[tag=!abort_dialog_tick] add in_dialog
execute if score #dialog Dialog matches 1.. run tag @s[tag=!abort_dialog_tick,tag=!prevent_item_lock,type=minecraft:player] add disable_flashlight
execute if score #dialog Dialog matches 1.. run tag @s[tag=!abort_dialog_tick,tag=!prevent_item_lock,type=minecraft:player] add disable_game_boy_horror
execute if score #dialog Dialog matches 1.. run tag @s[tag=!abort_dialog_tick,tag=!prevent_item_lock,type=minecraft:player] add disable_interact
execute if score #dialog Dialog matches 1.. run tag @s[tag=!abort_dialog_tick,tag=!prevent_item_lock,type=minecraft:player] add disable_poltergust
execute if score #dialog Dialog matches 1.. run tag @s[tag=!abort_dialog_tick,tag=!prevent_item_lock,type=minecraft:player] add disable_items
tag @s[type=minecraft:player] remove next_dialog_line
tag @s[type=minecraft:player] remove skip_dialog
tag @s[type=minecraft:player,tag=abort_dialog_tick] add aborted_dialog_tick
tag @s remove abort_dialog_tick
tag @s[tag=prevent_item_lock,type=minecraft:player] add had_prevent_item_lock
tag @s remove prevent_item_lock