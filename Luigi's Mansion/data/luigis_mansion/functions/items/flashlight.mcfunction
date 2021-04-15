tellraw @s[scores={FlashlightType=10}] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:message.flashlight_type.set.always"}]}
tellraw @s[scores={FlashlightType=11}] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:message.flashlight_type.set.toggle"}]}
tellraw @s[scores={FlashlightType=12}] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:message.flashlight_type.set.select"}]}
scoreboard players remove @s[scores={FlashlightType=10..12}] FlashlightType 10
execute unless entity @s[scores={FlashlightType=0..2}] run scoreboard players set @s FlashlightType 0
execute if entity @s[scores={FlashlightType=0}] run function luigis_mansion:items/flashlight/always_shine
execute if entity @s[scores={FlashlightType=1}] run function luigis_mansion:items/flashlight/toggle_to_shine
execute if entity @s[scores={FlashlightType=2}] run function luigis_mansion:items/flashlight/select_to_shine
scoreboard players enable @s FlashlightType