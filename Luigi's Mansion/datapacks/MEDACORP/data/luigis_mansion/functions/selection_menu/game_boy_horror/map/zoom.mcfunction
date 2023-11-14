tag @s[tag=zoom_in] add was_zoomed_in
tag @s add zoom_in
tag @s[tag=was_zoomed_in] remove zoom_in
tag @s remove was_zoomed_in
playsound luigis_mansion:item.game_boy_horror.map.zoom_in player @s[tag=zoom_in] ~ ~ ~ 1
playsound luigis_mansion:item.game_boy_horror.map.zoom_out player @s[tag=!zoom_in] ~ ~ ~ 1