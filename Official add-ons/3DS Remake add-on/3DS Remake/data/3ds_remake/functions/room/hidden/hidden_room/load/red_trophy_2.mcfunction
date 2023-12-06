data modify storage luigis_mansion:data furniture set value {searchable:["interact","vacuum"],shake_animation:["interact","vacuum"],sound:{namespace:"luigis_mansion",id:"ceramic"},scan_message:'{"type":"translatable","translate":"luigis_mansion:message.player.scan_furniture.84"}'}
execute store result score #temp Variant run random value 1..5
execute if score #temp Variant matches 4 run data modify storage luigis_mansion:data furniture.loot set value {contents:{luigis_mansion:{poison_mushroom:1}}}
execute if score #temp Variant matches 5 unless data storage luigis_mansion:data current_state.current_data{money_spawned:["hidden_room_red_trophy_2"]} run data modify storage luigis_mansion:data furniture.loot set value {name:"hidden_room_red_trophy_2",contents:{luigis_mansion:{gold_bar:1}}}
scoreboard players reset #temp Variant
execute positioned 746 13 32 rotated 0 0 run function luigis_mansion:spawn_furniture/red_trophy