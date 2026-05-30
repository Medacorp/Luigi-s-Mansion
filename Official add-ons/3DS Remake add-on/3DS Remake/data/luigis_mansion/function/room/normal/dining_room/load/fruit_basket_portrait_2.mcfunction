data modify storage luigis_mansion:data furniture set value {room:26,no_ai:1b,animation:{frozen:1b},scan_result:{namespace:"luigis_mansion",id:"scan/scanner/28"}}
scoreboard players add #mirrored Selected 1
execute positioned 709.93 14.5 43 rotated 90 0 run function luigis_mansion:spawn_furniture/fruit_basket_portrait
scoreboard players remove #mirrored Selected 1