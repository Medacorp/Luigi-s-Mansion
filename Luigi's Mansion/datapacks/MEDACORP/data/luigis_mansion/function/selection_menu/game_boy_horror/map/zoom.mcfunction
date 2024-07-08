function luigis_mansion:main/update_last_position
execute unless entity @s[scores={OpenMapFocus=1..}] run tag @s[tag=zoom_in] add was_zoomed_in
execute unless entity @s[scores={OpenMapFocus=1..}] run tag @s add zoom_in
execute unless entity @s[scores={OpenMapFocus=1..}] run tag @s[tag=was_zoomed_in] remove zoom_in
execute unless entity @s[scores={OpenMapFocus=1..}] run tag @s remove was_zoomed_in
execute unless entity @s[scores={OpenMapFocus=1..}] run playsound luigis_mansion:item.game_boy_horror.map.zoom_in player @s[tag=zoom_in] ~ ~ ~ 1
execute unless entity @s[scores={OpenMapFocus=1..}] run playsound luigis_mansion:item.game_boy_horror.map.zoom_out player @s[tag=!zoom_in] ~ ~ ~ 1