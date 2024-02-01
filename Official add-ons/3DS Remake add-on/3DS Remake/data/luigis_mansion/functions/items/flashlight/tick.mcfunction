execute if entity @s[scores={MirrorX=-2147483648..}] run scoreboard players operation #temp MirrorX = @s MirrorX
execute if entity @s[scores={MirrorZ=-2147483648..}] run scoreboard players operation #temp MirrorZ = @s MirrorZ
execute if entity @s[nbt={Inventory:[{tag:{luigis_mansion:{namespace:"luigis_mansion",id:"flashlight"}}}]},tag=!disable_flashlight] run function luigis_mansion:items/flashlight/effects/turn_off_for_animation
execute if entity @s[tag=!turned_off_for_animation,tag=!small_second_run,nbt={Inventory:[{tag:{luigis_mansion:{namespace:"luigis_mansion",id:"flashlight"}}}]}] run function #luigis_mansion:items/flashlight/types
tag @s remove turned_off_for_animation
scoreboard players reset #temp MirrorX
scoreboard players reset #temp MirrorZ
execute unless entity @s[scores={FlashlightType=0..}] run scoreboard players set @s FlashlightType 0
execute if entity @s[nbt={Inventory:[{tag:{luigis_mansion:{namespace:"luigis_mansion",id:"flashlight"}}}]},nbt=!{Inventory:[{tag:{luigis_mansion:{namespace:"luigis_mansion",id:"flashlight",gooigi_variant:1b}}}]},tag=gooigi] run function 3ds_remake:items/flashlight/gooigi