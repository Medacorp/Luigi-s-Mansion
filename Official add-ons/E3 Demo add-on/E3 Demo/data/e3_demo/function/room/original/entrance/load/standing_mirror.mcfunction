data modify storage luigis_mansion:data furniture set value {room:1,shake_animation:["interact","vacuum"],sound:{namespace:"luigis_mansion",id:"heavy_generic"}}
execute positioned 747 11 4 rotated -67.5 0 run function luigis_mansion:spawn_furniture/standing_mirror
data modify storage luigis_mansion:data furniture set value {room:1,hitbox:{rotated_box:{left:12,up:20,forward:4},type:"standing"},scan_result:""}
execute positioned 747 11.6 4 rotated -67.5 0 run function luigis_mansion:spawn_furniture/scan_area