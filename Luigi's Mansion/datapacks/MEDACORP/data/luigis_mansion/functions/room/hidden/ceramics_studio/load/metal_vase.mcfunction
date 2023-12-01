data modify storage luigis_mansion:data furniture set value {searchable:["interact","vacuum"],can_hide_boo:1b,shake_animation:["interact","vacuum"],sound:{namespace:"luigis_mansion",id:"ceramic"},scan_message:'{"translate":"luigis_mansion:message.player.scan_furniture.8"}'}
execute store result score #temp Variant run random value 1..5
execute if score #temp Variant matches 3 run data modify storage luigis_mansion:data furniture.loot set value {contents:{luigis_mansion:{poison_mushroom:1}}}
execute if score #temp Variant matches 5 unless data storage luigis_mansion:data current_state.current_data{money_spawned:["ceramics_studio_metal_vase"]} run data modify storage luigis_mansion:data furniture.loot set value {name:"ceramics_studio_metal_vase",contents:{luigis_mansion:{gold_bar:1}}}
scoreboard players reset #temp Variant
execute positioned 701 29 -49 rotated -90 0 run function luigis_mansion:spawn_furniture/metal_vase