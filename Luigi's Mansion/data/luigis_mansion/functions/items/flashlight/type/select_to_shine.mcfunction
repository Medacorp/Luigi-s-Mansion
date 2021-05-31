tellraw @s[scores={FlashlightType=-3}] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:message.flashlight_type.set.select"}]}
scoreboard players set @s[scores={FlashlightType=-3}] FlashlightType 3
execute if entity @s[scores={FlashlightType=3}] run function luigis_mansion:items/flashlight/select_to_shine
