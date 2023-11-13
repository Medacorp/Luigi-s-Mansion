execute if data storage luigis_mansion:data furniture{no_long_shake:1b} run tag @e[tag=this_entity,limit=1] add no_long_shake_animation
execute if data storage luigis_mansion:data furniture{no_short_shake:1b} run tag @e[tag=this_entity,limit=1] add no_short_shake_animation
execute if data storage luigis_mansion:data furniture{use_medium_shake:1b} run tag @e[tag=this_entity,limit=1] add use_medium_shake
execute if data storage luigis_mansion:data furniture{no_visual_shake:1b} run tag @e[tag=this_entity,limit=1] add no_visual_shake_animation
execute if data storage luigis_mansion:data furniture.interact_animation store result score @e[tag=this_entity,limit=1] InteractionTime run data get storage luigis_mansion:data furniture.interact_animation
execute if data storage luigis_mansion:data furniture{inverted_swing:1b} run tag @e[tag=this_entity,limit=1] add inverted_swing