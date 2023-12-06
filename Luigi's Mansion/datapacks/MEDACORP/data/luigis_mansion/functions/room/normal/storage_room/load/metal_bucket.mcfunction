data modify storage luigis_mansion:data furniture set value {searchable:["interact","vacuum"],shake_animation:["interact","vacuum"],sound:{namespace:"luigis_mansion",id:"metal"},scan_message:'{"type":"translatable","translate":"luigis_mansion:message.player.scan_furniture.77"}'}
execute store result score #temp Variant run random value 1..5
execute if score #temp Variant matches 3 run data modify storage luigis_mansion:data furniture.loot set value {contents:{luigis_mansion:{poison_mushroom:1}}}
execute if score #temp Variant matches 4 run data modify storage luigis_mansion:data furniture.loot set value {contents:{luigis_mansion:{small_heart:1}}}
execute if score #temp Variant matches 5 unless data storage luigis_mansion:data current_state.current_data{money_spawned:["storage_room_metal_bucket"]} run data modify storage luigis_mansion:data furniture.loot set value {name:"storage_room_metal_bucket",contents:{luigis_mansion:{gold_coin:5}}}
scoreboard players reset #temp Variant
execute positioned 681 11 -55 rotated -135 0 run function luigis_mansion:spawn_furniture/metal_bucket