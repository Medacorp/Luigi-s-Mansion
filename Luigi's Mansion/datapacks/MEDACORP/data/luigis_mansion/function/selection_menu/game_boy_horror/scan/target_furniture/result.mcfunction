execute if entity @s[nbt={data:{scan_result:{}}}] run function luigis_mansion:selection_menu/game_boy_horror/scan/dialog with entity @s data.scan_result
execute if entity @s[nbt={data:{scan_result:"warp"}}] run tag @e[tag=this_interact,limit=1] add warp
execute if entity @s[nbt={data:{scan_result:"spawn_ghost"}}] run function luigis_mansion:entities/furniture/spawn/ghost