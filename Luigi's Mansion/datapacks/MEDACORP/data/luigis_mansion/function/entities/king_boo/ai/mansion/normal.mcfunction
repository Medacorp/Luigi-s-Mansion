execute if entity @s[scores={Room=18}] run function luigis_mansion:entities/king_boo/ai/mansion/normal/cutscene
execute if entity @s[scores={Room=61}] unless data storage luigis_mansion:data dialogs[{room:61}] facing entity @a[tag=same_room,sort=nearest,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Room=61},tag=!remove_from_existence] unless data storage luigis_mansion:data dialogs[{room:61}] run data modify storage luigis_mansion:data dialogs append value {name:{namespace:"luigis_mansion",id:"king_boo_warp"},room:61,progress:0,leverage:10}
execute at @s[scores={Room=72}] if entity @a[tag=same_room,tag=!spectator,distance=..5.9,limit=1] run tag @s add talk
execute if entity @s[tag=talk,scores={Room=72}] unless data storage luigis_mansion:data dialogs[{room:72}] run data modify storage luigis_mansion:data dialogs append value {name:{namespace:"luigis_mansion",id:"normal/king_boo"},room:72,progress:0}
execute if entity @s[scores={Room=76}] run function luigis_mansion:entities/king_boo/ai/mansion/normal/fight
