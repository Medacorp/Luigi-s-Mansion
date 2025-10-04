#Name discrepency is intended; originally this is a bouquet, 3DS Replaces it
data modify storage luigis_mansion:data furniture set value {room:3,pose:[0.0f,0.0f,5.0f],no_ai:1b,animation:{frozen:1b},scan_result:{namespace:"luigis_mansion",id:"scan/scanner/14"}}
execute positioned 727.93 22.5 34.0 rotated 90 0 run function luigis_mansion:spawn_furniture/bouquet_portrait