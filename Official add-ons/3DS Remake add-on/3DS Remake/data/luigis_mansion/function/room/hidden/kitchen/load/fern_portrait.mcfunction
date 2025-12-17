data modify storage luigis_mansion:data furniture set value {room:27,pose:[0.0f,0.0f,-10.0f],no_ai:1b,animation:{frozen:1b},scan_result:{namespace:"luigis_mansion",id:"scan/scanner/7"}}
scoreboard players add #mirrored Selected 1
execute positioned 709.93 14.5 -51 rotated 90 0 run function luigis_mansion:spawn_furniture/fern_portrait
scoreboard players remove #mirrored Selected 1