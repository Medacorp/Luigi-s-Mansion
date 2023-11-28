data modify storage luigis_mansion:data furniture set value {water_elemental_source:{},searchable:["interact","vacuum"],can_hide_boo:1b,shake_animation:["interact","vacuum"],sound:{namespace:"luigis_mansion",id:"ceramic"},scan_message:'{"translate":"luigis_mansion:message.player.scan_furniture.65"}'}
execute store result score #temp Variant run random value 1..5
execute if score #temp Variant matches 4 run data modify storage luigis_mansion:data furniture.loot set value {contents:{luigis_mansion:{small_heart:1}}}
scoreboard players reset #temp Variant
execute positioned 746 20 36 rotated 0 0 run function luigis_mansion:spawn_furniture/nightstand_mounted_fishbowl