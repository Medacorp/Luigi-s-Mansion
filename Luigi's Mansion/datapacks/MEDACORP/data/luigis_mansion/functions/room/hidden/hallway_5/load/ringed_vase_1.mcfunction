data modify storage luigis_mansion:data furniture set value {searchable:["interact","vacuum"],shake_animation:["interact","vacuum"],sound:"luigis_mansion:ceramic",scan_message:'{"translate":"luigis_mansion:message.player.scan_furniture.73"}'}
execute store result score #temp Variant run roll value 1..5
execute if score #temp Variant matches 5unless data storage luigis_mansion:data current_state.current_data{money_spawned:["hallway_5_ringed_vase_1"]} run data modify storage luigis_mansion:data furniture.loot set value {name:"hallway_5_ringed_vase_1",contents:{luigis_mansion:{gold_coin:10}}}
scoreboard players reset #temp Variant
execute positioned 680 12.5 25 rotated -90 0 run function luigis_mansion:spawn_furniture/ringed_vase