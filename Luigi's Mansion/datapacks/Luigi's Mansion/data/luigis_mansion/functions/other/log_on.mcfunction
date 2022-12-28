execute unless entity @s[scores={Dialog=0..}] run function luigis_mansion:other/initial_scores
execute if entity @s[scores={ClearInventory=1}] run clear @s
scoreboard players reset @s ClearInventory
scoreboard players set @s Music 0
scoreboard players set @s GradualMusic 0
scoreboard players set @s HealthMusic 0
scoreboard players set @s LastHealthMusic 1
scoreboard players set @s Offline 0
scoreboard players set @s PrevMusicType 0
scoreboard players set @s RoomNoise 0
scoreboard players set @s LoadedChunks 0
scoreboard players set @s CreditsTime 0
execute unless entity @s[scores={FlashlightType=0..2}] run scoreboard players set @s FlashlightType 0
function luigis_mansion:entities/player/animation/set/none
scoreboard players reset @s ID
scoreboard players operation @s ID > @a ID
scoreboard players add @s ID 1
scoreboard players set @s SettingsCheck -1
execute if entity @s[scores={Room=-2}] run function luigis_mansion:room/underground_lab/warp_to
tag @s remove loaded_chunks
tag @s remove seen_room_name
execute if entity @a[name=Dhranios] run gamerule sendCommandFeedback true
execute unless entity @a[name=Dhranios] run gamerule sendCommandFeedback false
title @s[tag=!looking_at_map] times 40 40 40
title @s[tag=looking_at_map] times 0 40 40

function #luigis_mansion:login_data_sync

tellraw @s {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:message.format_explanation.click","color":"green","clickEvent":{"action":"run_command","value":"/trigger ClickEventCheck set 1"}}]}
tellraw @s {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:message.hover_event","with":[{"translate":"luigis_mansion:message.format_explanation.hover","hoverEvent":{"action":"show_text","contents":{"translate":"luigis_mansion:message.format_explanation.check"}}}]}]}

tellraw @s[gamemode=spectator] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:dialog.reset_mansion.1"}]}
tellraw @s[gamemode=spectator] {"translate":"luigis_mansion:dialog.reset_mansion.yes","color":"green","clickEvent":{"action":"run_command","value":"/trigger ResetChoice set 1"},"extra":[{"text":"\n"},{"translate":"luigis_mansion:dialog.reset_mansion.no","clickEvent":{"action":"run_command","value":"/trigger ResetChoice set 2"}}]}
scoreboard players enable @s[gamemode=spectator] ResetChoice