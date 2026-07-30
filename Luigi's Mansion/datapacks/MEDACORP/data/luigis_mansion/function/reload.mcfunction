tellraw @a[scores={Offline=0}] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.mansion",color:"green"},{type:"translatable",translate:"luigis_mansion:message.reloaded"}]}
execute unless entity @a[scores={Offline=0}] if data storage luigis_mansion:data saved_state unless data storage luigis_mansion:data {no_return_to_title_screen:1b} unless data storage luigis_mansion:data dialogs[{save:1b}] run function luigis_mansion:data/back_to_title

function #luigis_mansion:anti_cheating/scores
scoreboard players reset * Loaded
scoreboard players set #training_choice Selected 0
scoreboard players set #extra_gallery Selected 0
data modify storage luigis_mansion:data bad_add_ons set value []
function #luigis_mansion:loaded_add_ons
function #luigis_mansion:post_loaded_add_ons

tag @a add warn_for_add_ons
scoreboard players add * Offline 1
scoreboard players reset @e Offline
scoreboard players set @a Offline 0

function luigis_mansion:room/forceload_mansion with storage luigis_mansion:data current_state.luigis_mansion.current_data.mansion_id