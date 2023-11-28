data modify storage luigis_mansion:data furniture set value {searchable:["interact","vacuum"],can_hide_boo:1b,shake_animation:["interact","vacuum"],sound:{namespace:"luigis_mansion",id:"wood"},scan_message:'{"translate":"luigis_mansion:message.player.scan_furniture.28"}'}
execute store result score #temp Variant run random value 1..5
execute if score #temp Variant matches 3 run data modify storage luigis_mansion:data furniture.loot set value {contents:{luigis_mansion:{poison_mushroom:1}}}
execute if score #temp Variant matches 5 unless data storage luigis_mansion:data current_state.current_data{money_spawned:["parlor_nightstand"]} run data modify storage luigis_mansion:data furniture.loot set value {name:"parlor_nightstand",contents:{luigis_mansion:{gold_coin:10}}}
scoreboard players reset #temp Variant
execute positioned 727 20 -4 rotated -180 0 run function luigis_mansion:spawn_furniture/nightstand