execute at @s[tag=secret_altar] if entity @a[tag=same_room,tag=!spectator,distance=..5.9,limit=1] run tag @s add talk
execute if entity @s[tag=talk,tag=secret_altar] run function luigis_mansion_3ds_remake:dialog/king_boo/hidden
execute if entity @s[tag=warp,scores={Room=1..}] run function luigis_mansion_3ds_remake:dialog/king_boo_warp/hidden
execute if entity @s[tag=cutscene] run function luigis_mansion:entities/king_boo/cutscene
execute if entity @s[tag=fight] run function luigis_mansion_3ds_remake:entities/king_boo/tick/fight/hidden

tag @s[tag=warp] add cannot_be_removed