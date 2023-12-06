data modify storage luigis_mansion:data furniture set value {searchable:["interact","vacuum"],can_hide_boo:1b,shake_animation:["interact","vacuum"],sound:{namespace:"luigis_mansion",id:"heavy_generic"},scan_message:'{"type":"translatable","translate":"luigis_mansion:message.player.scan_furniture.16"}'}
execute store result score #temp Variant run random value 1..5
execute if score #temp Variant matches 3 run data modify storage luigis_mansion:data furniture.loot set value {contents:{luigis_mansion:{poison_mushroom:1}}}
execute if score #temp Variant matches 5 unless data storage luigis_mansion:data current_state.current_data{money_spawned:["billiards_room_nightstand_1"]} run data modify storage luigis_mansion:data furniture.loot set value {name:"billiards_room_nightstand_1",contents:{luigis_mansion:{gold_coin:5}}}
scoreboard players reset #temp Variant
execute positioned 679 11 88 rotated -180 0 run function luigis_mansion:spawn_furniture/nightstand