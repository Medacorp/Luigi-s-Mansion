execute if entity @s[scores={MirrorX=-2147483648..}] run scoreboard players operation #temp MirrorX = @s MirrorX
execute if entity @s[scores={MirrorZ=-2147483648..}] run scoreboard players operation #temp MirrorZ = @s MirrorZ
execute if entity @s[scores={IdleTime=..-1},tag=!gameboy_horror,tag=!idle] run function #luigis_mansion:items/flashlight/types
scoreboard players reset #temp MirrorX
scoreboard players reset #temp MirrorZ
execute unless entity @s[scores={FlashlightType=0..}] run scoreboard players set @s FlashlightType 1
execute if entity @s[nbt=!{Inventory:[{tag:{luigis_mansion:{id:"luigis_mansion:flashlight"}}}]}] run function luigis_mansion:items/flashlight/give