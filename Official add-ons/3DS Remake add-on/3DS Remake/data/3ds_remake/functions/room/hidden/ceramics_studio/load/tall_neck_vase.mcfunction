data modify storage luigis_mansion:data furniture set value {tags:["jarvis_fight_vase","jarvis_game_vase"],searchable:["interact","vacuum"],can_hide_boo:1b,shake_animation:["interact","vacuum"],sound:{namespace:"luigis_mansion",id:"ceramic"},scan_message:'{"type":"translatable","translate":"luigis_mansion:message.player.scan_furniture.8"}'}
execute store result score #temp Variant run random value 1..5
execute if score #temp Variant matches 4 run data modify storage luigis_mansion:data furniture.loot set value {contents:{luigis_mansion:{poison_mushroom:1}}}
scoreboard players reset #temp Variant
execute positioned 701 29 70 rotated -90 0 run function luigis_mansion:spawn_furniture/tall_neck_vase