execute if data entity @s data.scan_result.id run function luigis_mansion:selection_menu/game_boy_horror/scan/dialog with entity @s data.scan_result
execute if data entity @s data.scan_result.x unless data entity @s data.scan_result{cleared_only:1b} run tag @s add cleared_room
execute if data entity @s data.scan_result.x if data entity @s data.scan_result{cleared_only:1b} run function luigis_mansion:room/dark_room
execute if data entity @s data.scan_result.x if entity @s[tag=cleared_room] as @a[tag=same_room] run function luigis_mansion:other/music/set/secret_revealed
execute if data entity @s data.scan_result.x if entity @s[tag=cleared_room] run tag @s add wind_warp
execute if data entity @s data{scan_result:"warp"} run tag @e[tag=this_interact,limit=1] add warp
execute if data entity @s data{scan_result:"spawn_ghost"} at @s run function luigis_mansion:entities/furniture/spawn/ghost