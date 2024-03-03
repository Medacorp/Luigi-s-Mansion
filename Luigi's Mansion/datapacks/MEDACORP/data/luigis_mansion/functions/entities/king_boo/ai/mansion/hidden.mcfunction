execute if entity @s[scores={Room=18}] run function luigis_mansion:entities/king_boo/ai/mansion/normal/cutscene
tag @s[scores={Room=61}] add cannot_be_removed
execute if entity @s[scores={Room=61}] run function luigis_mansion:dialog/king_boo_warp/hidden
execute at @s[scores={Room=72}] if entity @a[tag=same_room,tag=!spectator,distance=..5.9,limit=1] run tag @s add talk
execute if entity @s[tag=talk,scores={Room=72}] run function luigis_mansion:dialog/king_boo/hidden
execute if entity @s[scores={Room=76}] run function luigis_mansion:entities/king_boo/ai/mansion/normal/fight
