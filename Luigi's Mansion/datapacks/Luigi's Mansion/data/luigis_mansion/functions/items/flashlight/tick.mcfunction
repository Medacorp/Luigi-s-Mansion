execute if entity @s[scores={MirrorX=-2147483648..}] run scoreboard players operation #temp MirrorX = @s MirrorX
execute if entity @s[scores={MirrorZ=-2147483648..}] run scoreboard players operation #temp MirrorZ = @s MirrorZ
execute if entity @s[scores={Animation=1..},tag=!idle,tag=flashlight,nbt={Inventory:[{tag:{luigis_mansion:{id:"luigis_mansion:flashlight"}}}]}] run function luigis_mansion:items/flashlight/effects/turn_off
tag @s[scores={Animation=1..},tag=!idle,tag=flashlight,nbt={Inventory:[{tag:{luigis_mansion:{id:"luigis_mansion:flashlight"}}}]}] remove had_flashlight_on
tag @s[scores={Animation=1..},tag=!idle,tag=flashlight,nbt={Inventory:[{tag:{luigis_mansion:{id:"luigis_mansion:flashlight"}}}]}] remove flashlight
execute unless entity @s[scores={Animation=1..},tag=!idle] if entity @s[tag=!small_second_run,nbt={Inventory:[{tag:{luigis_mansion:{id:"luigis_mansion:flashlight"}}}]}] run function #luigis_mansion:items/flashlight/types
scoreboard players reset #temp MirrorX
scoreboard players reset #temp MirrorZ
execute unless entity @s[scores={FlashlightType=0..}] run scoreboard players set @s FlashlightType 0