data modify storage luigis_mansion:data furniture set value {room:39,searchable:["interact","vacuum"],shake_animation:["interact","vacuum"],sound:{namespace:"luigis_mansion",id:"ceramic"},scan_message:'{"type":"translatable","translate":"luigis_mansion:message.player.scan_furniture.29"}'}
execute store result score #temp Variant run random value 1..5
execute if score #temp Variant matches 4 run data modify storage luigis_mansion:data furniture.loot set value {contents:{luigis_mansion:{small_heart:1}}}
scoreboard players reset #temp Variant
execute positioned 714 21.5 43 rotated -90 0 run function luigis_mansion:spawn_furniture/ringed_vase