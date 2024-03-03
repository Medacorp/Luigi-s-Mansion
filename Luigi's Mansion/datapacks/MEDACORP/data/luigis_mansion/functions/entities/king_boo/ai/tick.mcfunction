$function $(namespace):entities/king_boo/ai/mansion/$(id)

execute if entity @s[tag=laugh] run function luigis_mansion:entities/king_boo/laugh
execute if entity @s[tag=vanish] run function luigis_mansion:entities/king_boo/save_stats
tag @s[tag=vanish] add remove_from_existence