data modify storage luigis_mansion:data furniture set value {room:13,searchable:["interact","vacuum"],shake_animation:["interact","vacuum"],sound:{namespace:"luigis_mansion",id:"ceramic"},scan_message:'{"type":"translatable","translate":"luigis_mansion:message.player.scan_furniture.73"}'}
execute store result score #temp Variant run random value 1..5
execute if score #temp Variant matches 3 run data modify storage luigis_mansion:data furniture.loot set value {contents:{luigis_mansion:{poison_mushroom:1}}}
execute if score #temp Variant matches 4 run data modify storage luigis_mansion:data furniture.loot set value {contents:{luigis_mansion:{small_heart:1}}}
execute if score #temp Variant matches 5 unless data storage luigis_mansion:data current_state.current_data{money_spawned:["hallway_5_ringed_vase_1"]} run data modify storage luigis_mansion:data furniture.loot set value {name:"hallway_5_ringed_vase_1",contents:{luigis_mansion:{gold_coin:10}}}
scoreboard players reset #temp Variant
execute positioned 680 12.5 -10 rotated -90 0 run function luigis_mansion:spawn_furniture/ringed_vase