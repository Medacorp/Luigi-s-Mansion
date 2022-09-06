execute if entity @s[scores={SelectedFrame=1..}] run function #luigis_mansion_3ds_remake:room/gallery/interact_with_portrait
execute if entity @s[scores={SelectedFrame=-1}] run function #luigis_mansion_3ds_remake:room/gallery/interact_with_trophy
scoreboard players reset @s FrameChoice
scoreboard players enable @s FrameChoice