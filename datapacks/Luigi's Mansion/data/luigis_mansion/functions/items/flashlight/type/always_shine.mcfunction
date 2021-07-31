tellraw @s[scores={FlashlightType=-1}] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:message.flashlight_type.set.always"}]}
scoreboard players set @s[scores={FlashlightType=-1}] FlashlightType 1
execute if entity @s[scores={FlashlightType=1}] run function luigis_mansion:items/flashlight/always_shine