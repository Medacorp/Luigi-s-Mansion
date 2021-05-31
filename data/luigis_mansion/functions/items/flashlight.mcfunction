function #luigis_mansion:items/flashlight/types
execute unless entity @s[scores={FlashlightType=0..}] run scoreboard players set @s FlashlightType 1
execute if entity @s[scores={FlashlightType=..-1}] run scoreboard players set @s FlashlightType 1
scoreboard players enable @s FlashlightType