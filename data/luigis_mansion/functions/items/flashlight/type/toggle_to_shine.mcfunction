tellraw @s[scores={FlashlightType=-2}] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:message.flashlight_type.set.toggle"}]}
scoreboard players set @s[scores={FlashlightType=-2}] FlashlightType 2
execute if entity @s[scores={FlashlightType=2}] run function luigis_mansion:items/flashlight/toggle_to_shine