execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["dining_room_speedy_spirit"]} run function luigis_mansion:entities/speedy_spirit/give_money/silver_diamond
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["dining_room_speedy_spirit"]} run data modify storage luigis_mansion:data entity.loot.name set value "dining_room_speedy_spirit"
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["dining_room_speedy_spirit"]} positioned 699 11 -37 run function luigis_mansion:spawn_entities/ghost/speedy_spirit
execute positioned 706 11 -16 run function luigis_mansion:spawn_entities/eternal_banana_peel
execute positioned 707 11 -19 run function luigis_mansion:spawn_entities/eternal_banana_peel
execute positioned 708 11 -25 run function luigis_mansion:spawn_entities/eternal_banana_peel
execute positioned 707 11 -36 run function luigis_mansion:spawn_entities/eternal_banana_peel
execute positioned 708 11 -40 run function luigis_mansion:spawn_entities/eternal_banana_peel
execute positioned 703 11 -39 run function luigis_mansion:spawn_entities/eternal_banana_peel
data modify storage luigis_mansion:data entity set value {mansion:{namespace:"luigis_mansion",id:"hidden"},scan_message:{sender:"me",message:'{"type":"translatable","translate":"luigis_mansion:message.mr_luggs.scan"}'}}
execute positioned 702 11 -28 rotated -90 0 run function luigis_mansion:spawn_entities/portrait_ghost/mr_luggs
data modify storage luigis_mansion:data furniture set value {tags:["mr_luggs_food"]}
execute positioned 704 11.5 -28 rotated -90 0 run function luigis_mansion:spawn_furniture/food
data modify storage luigis_mansion:data entity set value {paths:[{steps:[{position:[700.5d,11.0d,-40.5d]},{position:[707.5d,11.0d,-39.5d]},{position:[709.5d,11.0d,-36.5d]},{position:[706.5d,11.0d,-29.5d]},{position:[708.5d,11.0d,-25.5d]},{position:[707.5d,11.0d,-17.5d]},{position:[702.5d,11.0d,-14.5d]},{position:[700.5d,11.0d,-16.5d]},{position:[700.5d,11.0d,-40.5d]}]}]}
execute positioned 700 11 -41 run function luigis_mansion:spawn_entities/ghost/waiter
data modify storage luigis_mansion:data entity set value {paths:[{steps:[{position:[704.5d,11.0d,-14.5d]},{position:[701.5d,11.0d,-18.5d]},{position:[700.5d,11.0d,-22.5d]},{position:[700.5d,11.0d,-29.5d]},{position:[702.5d,11.0d,-29.5d]},{position:[701.5d,11.0d,-32.5d]},{position:[701.5d,11.0d,-37.5d]},{position:[704.5d,11.0d,-39.5d]},{position:[707.5d,11.0d,-38.5d]},{position:[708.5d,11.0d,-17.5d]},{position:[704.5d,11.0d,-14.5d]}]}]}
execute positioned 704 11 -15 run function luigis_mansion:spawn_entities/ghost/waiter
scoreboard players set #dining_room Wave 1