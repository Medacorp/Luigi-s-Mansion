data modify entity @s ArmorItems[3].components."minecraft:custom_model_data".flags[0] set value 0b
data modify storage luigis_mansion:data macro.item set from entity @s ArmorItems[3]
$function $(namespace):entities/item/picked_up/$(id)
$execute if entity @s[tag=picked_up] unless data storage luigis_mansion:data current_state.current_data{no_collect_animation:["$(namespace):$(id)"]} as @a[tag=collector,limit=1] run function luigis_mansion:entities/player/animation/set/collect_item with storage luigis_mansion:data macro