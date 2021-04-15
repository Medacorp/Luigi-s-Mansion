scoreboard players set @s Music 0
scoreboard players set @s Offline 0
scoreboard players set @s PrevMusicType 0
scoreboard players set @s HallwayNoise 0
scoreboard players set @s LoadedChunks 0
scoreboard players reset @s ID
scoreboard players operation @s ID > @a ID
scoreboard players add @s ID 1
tag @s remove seen_room_name_2
tag @s remove seen_room_name
tellraw @s {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:item.flashlight","color":"green"},{"translate":"luigis_mansion:message.flashlight_type"}]}
tellraw @s {"translate":"luigis_mansion:message.options","color":"green","extra":[{"text":"\n"},{"translate":"luigis_mansion:message.flashlight_type.always","clickEvent":{"action":"run_command","value":"/trigger FlashlightType set 10"}},{"text":"\n"},{"translate":"luigis_mansion:message.flashlight_type.toggle","clickEvent":{"action":"run_command","value":"/trigger FlashlightType set 11"}},{"text":"\n"},{"translate":"luigis_mansion:message.flashlight_type.select","clickEvent":{"action":"run_command","value":"/trigger FlashlightType set 12"}}]}

function #luigis_mansion:load_data

tellraw @s[gamemode=spectator] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:dialog.reset_mansion.1"}]}
tellraw @s[gamemode=spectator] {"translate":"luigis_mansion:message.options","color":"green","extra":[{"text":"\n"},{"translate":"luigis_mansion:dialog.reset_mansion.yes","clickEvent":{"action":"run_command","value":"/trigger ResetChoice set 1"}},{"text":"\n"},{"translate":"luigis_mansion:dialog.reset_mansion.no","clickEvent":{"action":"run_command","value":"/trigger ResetChoice set 2"}}]}
scoreboard players enable @s[gamemode=spectator] ResetChoice