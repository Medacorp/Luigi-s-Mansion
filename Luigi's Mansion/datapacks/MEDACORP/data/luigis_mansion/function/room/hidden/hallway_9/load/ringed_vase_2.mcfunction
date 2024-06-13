data modify storage luigis_mansion:data furniture set value {room:35,searchable:["interact","vacuum"],shake_animation:["interact","vacuum"],sound:{namespace:"luigis_mansion",id:"heavy_generic"},scan_message:'{"type":"translatable","translate":"luigis_mansion:message.player.scan_furniture.73"}'}
execute store result score #temp Variant run random value 1..5
execute if score #temp Variant matches 3 run data modify storage luigis_mansion:data furniture.loot set value {contents:{luigis_mansion:{poison_mushroom:1}}}
scoreboard players reset #temp Variant
execute positioned 680 21.5 25 rotated -90 0 run function luigis_mansion:spawn_furniture/ringed_vase