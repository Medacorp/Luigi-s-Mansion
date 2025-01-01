execute if data storage luigis_mansion:data furniture{no_long_shake:1b} run tag @e[tag=this_entity,limit=1] add no_long_shake_animation
execute if data storage luigis_mansion:data furniture{no_short_shake:1b} run tag @e[tag=this_entity,limit=1] add no_short_shake_animation
execute if data storage luigis_mansion:data furniture{use_medium_shake:1b} run tag @e[tag=this_entity,limit=1] add use_medium_shake
execute if data storage luigis_mansion:data furniture{no_visual_shake:1b} run tag @e[tag=this_entity,limit=1] add no_visual_shake_animation
execute if data storage luigis_mansion:data furniture{inverted_swing:1b} run tag @e[tag=this_entity,limit=1] add inverted_swing
execute if data storage luigis_mansion:data furniture.interact_animation run data remove entity @e[tag=this_entity,limit=1] ArmorItems[3].components."minecraft:custom_data".interact_animation
execute if data storage luigis_mansion:data furniture.interact_animation.id run data modify entity @e[tag=this_entity,limit=1] ArmorItems[3].components."minecraft:custom_data".interact_animation set value {namespace:"luigis_mansion",id:"null"}
execute if data storage luigis_mansion:data furniture.interact_animation.namespace run data modify entity @e[tag=this_entity,limit=1] ArmorItems[3].components."minecraft:custom_data".interact_animation.namespace set from storage luigis_mansion:data furniture.interact_animation.namespace
execute if data storage luigis_mansion:data furniture.interact_animation.id run data modify entity @e[tag=this_entity,limit=1] ArmorItems[3].components."minecraft:custom_data".interact_animation.id set from storage luigis_mansion:data furniture.interact_animation.id
scoreboard players set @e[tag=this_entity,limit=1] FurnitureShakeTime -1
scoreboard players set @e[tag=this_entity,limit=1] Sound 0