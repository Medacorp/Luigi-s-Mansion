function luigis_mansion:entities/player/memory/get with entity @s
execute store result score @s ID run data get storage luigis_mansion:data my_memory.id
data modify storage luigis_mansion:data memory append from storage luigis_mansion:data my_memory
data remove storage luigis_mansion:data my_memory
execute unless entity @s[scores={Shrunk=0..}] run function luigis_mansion:other/initial_scores
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
execute unless entity @s[scores={FlashlightType=0..3}] run scoreboard players set @s FlashlightType 0
function luigis_mansion:entities/player/animation/set/none
execute if entity @s[scores={Room=-2}] unless data storage luigis_mansion:data dialogs[{room:-2}] run function luigis_mansion:room/underground_lab/warp_to
tag @s remove loaded_chunks
tag @s remove seen_room_name
tag @s remove got_selection_menu_how_to
execute if entity @a[name=Dhranios] run gamerule sendCommandFeedback true
execute unless entity @a[name=Dhranios] run gamerule sendCommandFeedback false
execute if entity @a[tag=gooigi] if entity @a[tag=gooigi,distance=0.1..,limit=1] run function 3ds_remake:entities/player/un_gooigi
title @s[tag=!looking_at_map] times 40 40 40
title @s[tag=looking_at_map] times 0 40 40
tag @s add warn_for_add_ons

function #luigis_mansion:login_data_sync
function #luigis_mansion:upgrade_path

tellraw @s {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.mansion","color":"green"},{"type":"translatable","translate":"luigis_mansion:message.hover_event","with":[{"type":"translatable","translate":"luigis_mansion:message.format_explanation.hover","hoverEvent":{"action":"show_text","contents":{"type":"translatable","translate":"luigis_mansion:message.format_explanation.check"}}}]}]}

execute if entity @a[tag=portrait_battle,limit=1] run gamemode spectator @s