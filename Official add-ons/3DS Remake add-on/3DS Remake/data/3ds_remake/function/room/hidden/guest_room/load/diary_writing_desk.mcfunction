data modify storage luigis_mansion:data furniture set value {room:70,candle_flames:[{lit:1b}],searchable:["interact","vacuum"],shake_animation:["interact","vacuum"],sound:{namespace:"luigis_mansion",id:"heavy_generic"},can_hide_boo:1b,scan_result:{namespace:"luigis_mansion",id:"scan/scanner/28"}}
execute if block 742 21 -52 minecraft:redstone_lamp run data modify storage luigis_mansion:data furniture.pose set value [0.01f,0.0f,-180.0f]
execute if block 742 21 -52 minecraft:redstone_lamp positioned 736 27 -45.0 rotated -90 0 run function luigis_mansion:spawn_furniture/diary_writing_desk/left_handed
execute unless block 742 21 -52 minecraft:redstone_lamp positioned 736 20 -45.0 rotated -90 0 run function luigis_mansion:spawn_furniture/diary_writing_desk/right_handed
