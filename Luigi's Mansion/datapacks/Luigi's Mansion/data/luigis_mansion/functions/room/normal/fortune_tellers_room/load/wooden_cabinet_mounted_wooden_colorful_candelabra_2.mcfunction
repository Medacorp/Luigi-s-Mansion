data modify storage luigis_mansion:data furniture set value {candle_flames:[{lit:0b,tags:["light_me"]},{lit:0b,tags:["light_me"]},{lit:0b,tags:["light_me"]}],searchable:["interact","vacuum"],shake_animation:["interact","vacuum"],sound:"luigis_mansion:heavy_generic",scan_message:'{"translate":"luigis_mansion:message.player.scan_furniture.28"}'}
summon minecraft:marker ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
summon minecraft:marker ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
summon minecraft:marker ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
summon minecraft:marker ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
summon minecraft:marker ~ ~ ~ {Tags:["chance","money"],Duration:1}
tag @e[type=minecraft:marker,tag=chance,sort=random,limit=1] add selected
execute if entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=money] unless data storage luigis_mansion:data current_state.current_data{money_spawned:["fortune_tellers_room_wooden_cabinet_mounted_wooden_colorful_candelabra_2"]} run data modify storage luigis_mansion:data furniture.loot set value {name:"fortune_tellers_room_wooden_cabinet_mounted_wooden_colorful_candelabra_2",contents:{luigis_mansion:{gold_bar:1}}}
kill @e[type=minecraft:marker,tag=chance]
execute positioned 736 11 -35.8 rotated -90 0 run function luigis_mansion:spawn_furniture/wooden_cabinet_mounted_wooden_colorful_candelabra/blue_green_red