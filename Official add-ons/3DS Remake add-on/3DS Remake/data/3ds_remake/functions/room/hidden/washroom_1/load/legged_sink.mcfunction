data modify storage luigis_mansion:data furniture set value {can_hide_boo:1b,searchable:["interact","vacuum"],shake_animation:["interact","vacuum"],sound:{namespace:"luigis_mansion",id:"stone"},scan_message:'{"type":"translatable","translate":"luigis_mansion:message.player.scan_furniture.80"}'}
execute store result score #temp Variant run random value 1..5
execute if score #temp Variant matches 4 run data modify storage luigis_mansion:data furniture.loot set value {contents:{luigis_mansion:{poison_mushroom:1}}}
scoreboard players reset #temp Variant
execute positioned 662.6 11 40 rotated -90 0 run function luigis_mansion:spawn_furniture/legged_sink