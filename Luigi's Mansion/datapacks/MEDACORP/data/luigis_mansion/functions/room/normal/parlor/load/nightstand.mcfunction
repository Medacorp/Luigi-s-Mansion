data modify storage luigis_mansion:data furniture set value {searchable:["interact","vacuum"],can_hide_boo:1b,shake_animation:["interact","vacuum"],sound:{namespace:"luigis_mansion",id:"wood"},scan_message:'{"type":"translatable","translate":"luigis_mansion:message.player.scan_furniture.28"}'}
execute if data storage luigis_mansion:data {found_e_gadd:1b} store result score #temp Variant run random value 1..5
execute if score #temp Variant matches 4 run data modify storage luigis_mansion:data furniture.loot set value {contents:{luigis_mansion:{small_heart:1}}}
execute if score #temp Variant matches 5 unless data storage luigis_mansion:data current_state.current_data{money_spawned:["parlor_nightstand"]} run data modify storage luigis_mansion:data furniture.loot set value {name:"parlor_nightstand",contents:{luigis_mansion:{gold_coin:10}}}
scoreboard players reset #temp Variant
execute positioned 727 20 19 rotated 0 0 run function luigis_mansion:spawn_furniture/nightstand