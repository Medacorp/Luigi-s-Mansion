execute at @s[scores={Room=72}] if entity @a[tag=same_room,tag=!spectator,distance=..5.9,limit=1] run tag @s add talk
execute if entity @s[tag=talk,scores={Room=72}] run function 3ds_remake:dialog/king_boo/hidden
execute if entity @s[scores={Room=61}] run function 3ds_remake:dialog/king_boo_warp/hidden
execute if entity @s[scores={Room=18}] run function luigis_mansion:old_entities/king_boo/cutscene
execute if entity @s[scores={Room=76}] run function 3ds_remake:old_entities/king_boo/tick/fight/hidden

tag @s[scores={Room=61}] add cannot_be_removed