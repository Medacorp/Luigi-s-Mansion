give @s minecraft:diamond_pickaxe[minecraft:damage=5,minecraft:unbreakable={show_in_tooltip:0b},minecraft:attribute_modifiers={modifiers:[]},minecraft:custom_model_data=29,minecraft:item_name='{"type":"translatable","translate":"luigis_mansion:item.contest_reward_map"}',minecraft:custom_data={namespace:"luigis_mansion",id:"contest_reward_map"}]
execute in minecraft:overworld run teleport @s 858 90 -38 0 0
attribute @s minecraft:generic.max_health base set 100
attribute @s minecraft:generic.jump_strength base set 0
effect give @s minecraft:instant_health 1 19 true
gamemode adventure @s
title @s times 40 40 40
tag @s add joined
tag @s add stop_map_on_key_collect
function luigis_mansion:entities/player/save_color
function luigis_mansion:other/log_on