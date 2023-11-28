data modify storage luigis_mansion:data furniture set value {searchable:["interact","vacuum"],can_hide_boo:1b,shake_animation:["interact","vacuum"],sound:{namespace:"luigis_mansion",id:"generic"},scan_message:'{"translate":"luigis_mansion:message.player.scan_furniture.65"}'}
execute store result score #temp Variant run random value 1..5
execute if score #temp Variant matches 3..4 run data modify storage luigis_mansion:data furniture.loot set value {contents:{luigis_mansion:{poison_mushroom:1}}}
execute if score #temp Variant matches 5 unless data storage luigis_mansion:data current_state.current_data{money_spawned:["anteroom_nightstand_mounted_blue_flower_pot_1"]} run data modify storage luigis_mansion:data furniture.loot set value {name:"anteroom_nightstand_mounted_blue_flower_pot_1",contents:{luigis_mansion:{gold_bar:1}}}
scoreboard players reset #temp Variant
execute positioned 685 20 41.0 rotated -135 0 run function luigis_mansion:spawn_furniture/nightstand_mounted_blue_flower_pot