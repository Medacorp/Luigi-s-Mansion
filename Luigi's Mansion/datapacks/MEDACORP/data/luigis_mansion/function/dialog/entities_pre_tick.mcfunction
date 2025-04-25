tag @s remove exact_same_room
tag @s[tag=!no_dialog_freeze,tag=!no_ai,tag=!applied_dialog_effects] add no_ai_dialog
tag @s[tag=!no_dialog_freeze,tag=!no_ai,tag=!applied_dialog_effects] add no_ai
tag @s[tag=!no_dialog_freeze,tag=!freeze_animation,tag=!applied_dialog_effects] add freeze_animation_dialog
tag @s[tag=!no_dialog_freeze,tag=!freeze_animation,tag=!applied_dialog_effects] add freeze_animation
tag @s[tag=!no_dialog_freeze,tag=!applied_dialog_effects] add applied_dialog_effects
execute unless entity @s[tag=!captured,tag=!capturing_ghost] run tag @e[tag=same_room] add abort_dialog_tick