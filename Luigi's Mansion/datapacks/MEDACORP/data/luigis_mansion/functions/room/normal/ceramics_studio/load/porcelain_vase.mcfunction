data modify storage luigis_mansion:data furniture set value {tags:["jarvis_fight_vase"],searchable:["interact","vacuum"],can_hide_boo:1b,shake_animation:["interact","vacuum"],sound:{namespace:"luigis_mansion",id:"ceramic"},scan_message:'{"type":"translatable","translate":"luigis_mansion:message.player.scan_furniture.8"}'}
execute store result score #temp Variant run random value 1..5
execute if score #temp Variant matches 4 run data modify storage luigis_mansion:data furniture.loot set value {contents:{luigis_mansion:{small_heart:1}}}
execute if score #temp Variant matches 5 unless data storage luigis_mansion:data current_state.current_data{money_spawned:["ceramics_studio_orange_stained_vase"]} run data modify storage luigis_mansion:data furniture.loot set value {name:"ceramics_studio_orange_stained_vase",contents:{luigis_mansion:{gold_bar:1}}}
scoreboard players reset #temp Variant
execute positioned 711 29 66.0 rotated -90 0 run function luigis_mansion:spawn_furniture/porcelain_vase