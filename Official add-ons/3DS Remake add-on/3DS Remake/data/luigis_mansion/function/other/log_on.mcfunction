function luigis_mansion:entities/player/memory/get with entity @s
execute store result score @s ID run data get storage luigis_mansion:data my_memory.id
data modify storage luigis_mansion:data memory append from storage luigis_mansion:data my_memory
data remove storage luigis_mansion:data my_memory
execute unless entity @s[scores={Shrunk=0..}] run function luigis_mansion:other/initial_scores
function luigis_mansion:other/music/set/silence
execute unless entity @s[scores={Jukebox=0}] run function luigis_mansion:selection_menu/game_boy_horror/jukebox/stop
scoreboard players set @s Offline 0
scoreboard players set @s RoomNoise 0
scoreboard players set @s LoadedChunks 0
scoreboard players set @s CreditsTime 0
execute unless entity @s[scores={FlashlightType=0..3}] run scoreboard players set @s FlashlightType 0
function luigis_mansion:entities/player/clear_animation
execute if entity @s[tag=!dead_player] run function luigis_mansion:entities/player/camera/reset
execute if entity @s[scores={Room=-2}] unless data storage luigis_mansion:data dialogs[{room:-2}] run function luigis_mansion:room/underground_lab/warp_to
tag @s remove loaded_chunks
tag @s remove seen_room_name
tag @s remove got_selection_menu_how_to
execute if entity @a[tag=gooigi] if entity @a[tag=gooigi,distance=0.1..,limit=1] run function 3ds_remake:entities/gooigi/revert_to_luigi
title @s[tag=!looking_at_map] times 40 40 40
title @s[tag=looking_at_map] times 0 40 40
tag @s add warn_for_add_ons

function #luigis_mansion:login_data_sync
function #luigis_mansion:upgrade_path

tellraw @s {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.mansion",color:"green"},{type:"translatable",translate:"luigis_mansion:message.hover_event",with:[{type:"translatable",translate:"luigis_mansion:message.format_explanation.hover",hover_event:{action:"show_text",value:{type:"translatable",translate:"luigis_mansion:message.format_explanation.check"}}}]}]}

execute if data storage luigis_mansion:data current_state.current_data.portrait_battle run gamemode spectator @s