data modify storage luigis_mansion:data furniture set value {room:-4,searchable:["interact","vacuum"],shake_animation:["interact","vacuum"],shake_sound:{namespace:"luigis_mansion",id:"stone"},search_command:"function luigis_mansion:room/gallery/clear",scan_result:{namespace:"luigis_mansion",id:"scan/scanner/99"}}
execute positioned 13.0 2 23.0 rotated -180 0 run function luigis_mansion:spawn_furniture/angel_statue
data modify storage luigis_mansion:data furniture set value {room:-4,hitbox:{box:{width:8,height:2}},scan_result:{namespace:"luigis_mansion",id:"scan/scanner/124"}}
execute positioned 13.0 3 23.6 run function luigis_mansion:spawn_furniture/scan_area
