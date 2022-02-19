tellraw @s[scores={SettingsCheck=-1}] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:settings.game","color":"green","clickEvent":{"action":"run_command","value":"/trigger SettingsCheck set -2"}}]}
tellraw @s[scores={SettingsCheck=-1}] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:settings.map","color":"green","clickEvent":{"action":"run_command","value":"/trigger SettingsCheck set -3"}}]}
execute if entity @s[scores={SettingsCheck=-2}] run function luigis_mansion:settings/game
execute unless entity @s[scores={SettingsCheck=-2..0}] run function #luigis_mansion:settings/map
scoreboard players set @s SettingsCheck 0
scoreboard players enable @s SettingsCheck