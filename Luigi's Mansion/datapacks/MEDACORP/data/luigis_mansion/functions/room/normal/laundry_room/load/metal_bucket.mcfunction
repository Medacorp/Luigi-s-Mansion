data modify storage luigis_mansion:data furniture set value {searchable:["interact","vacuum"],shake_animation:["interact","vacuum"],can_hide_boo:1b,sound:{namespace:"luigis_mansion",id:"metal"},scan_message:'{"translate":"luigis_mansion:message.player.scan_furniture.82"}'}
execute store result score #temp Variant run random value 1..5
execute if score #temp Variant matches 5 unless data storage luigis_mansion:data current_state.current_data{money_spawned:["laundry_room_metal_bucket"]} run data modify storage luigis_mansion:data furniture.loot set value {name:"laundry_room_metal_bucket",contents:{luigis_mansion:{gold_coin:5}}}
scoreboard players reset #temp Variant
execute positioned 714 11 61 rotated -135 0 run function luigis_mansion:spawn_furniture/metal_bucket