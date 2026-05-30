data modify storage luigis_mansion:data furniture set value {room:66,no_ai:1b,animation:{frozen:1b},scan_result:{namespace:"luigis_mansion",id:"scan/scanner/7"}}
scoreboard players add #mirrored Selected 1
execute positioned 708.93 23.5 98 rotated 90 0 run function luigis_mansion:spawn_furniture/bouquet_portrait
scoreboard players remove #mirrored Selected 1