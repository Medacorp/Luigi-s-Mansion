function luigis_mansion:entities/player/memory/get with entity @s
execute store result score @s ID run data get storage luigis_mansion:data my_memory.id
data modify storage luigis_mansion:data memory append from storage luigis_mansion:data my_memory
data remove storage luigis_mansion:data my_memory
execute unless entity @s[scores={Dialog=0..}] run function luigis_mansion:other/initial_scores
execute if entity @s[scores={ClearInventory=1}] run clear @s
scoreboard players reset @s ClearInventory
scoreboard players set @s Music 0
scoreboard players set @s GradualMusic 0
scoreboard players set @s HealthMusic 0
scoreboard players set @s LastHealthMusic 1
scoreboard players set @s Offline 0
scoreboard players set @s PreviousMusicType 0
scoreboard players set @s RoomNoise 0
scoreboard players set @s LoadedChunks 0
scoreboard players set @s CreditsTime 0
execute unless entity @s[scores={FlashlightType=0..2}] run scoreboard players set @s FlashlightType 0
function luigis_mansion:entities/player/animation/set/none
execute if entity @s[scores={Room=-2}] run function luigis_mansion:room/underground_lab/warp_to
tag @s remove loaded_chunks
tag @s remove seen_room_name
tag @s remove got_selection_menu_how_to
execute if entity @a[name=Dhranios] run gamerule sendCommandFeedback true
execute unless entity @a[name=Dhranios] run gamerule sendCommandFeedback false
title @s[tag=!looking_at_map] times 40 40 40
title @s[tag=looking_at_map] times 0 40 40
execute if entity @s[scores={Room=0},x=770.5,y=90,z=8.0,distance=400..] run teleport @s 876 90 -149 -90 0

function #luigis_mansion:login_data_sync
function #luigis_mansion:upgrade_path

tellraw @s {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.mansion","color":"green"},{"type":"translatable","translate":"luigis_mansion:message.hover_event","with":[{"type":"translatable","translate":"luigis_mansion:message.format_explanation.hover","hoverEvent":{"action":"show_text","contents":{"type":"translatable","translate":"luigis_mansion:message.format_explanation.check"}}}]}]}