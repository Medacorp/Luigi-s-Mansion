data modify storage luigis_mansion:data furniture set value {searchable:["interact","vacuum"],shake_animation:["interact","vacuum"],sound:{namespace:"luigis_mansion",id:"metal"},scan_message:'{"type":"translatable","translate":"luigis_mansion:message.player.scan_furniture.84"}'}
execute store result score #temp Variant run random value 1..5
execute if score #temp Variant matches 5 unless data storage luigis_mansion:data current_state.current_data{money_spawned:["sealed_room_emblemized_trophy_1"]} run data modify storage luigis_mansion:data furniture.loot set value {name:"sealed_room_emblemized_trophy_1",contents:{luigis_mansion:{gold_bar:1}}}
scoreboard players reset #temp Variant
execute positioned 696 23 100 rotated -135 0 run function luigis_mansion:spawn_furniture/emblemized_trophy