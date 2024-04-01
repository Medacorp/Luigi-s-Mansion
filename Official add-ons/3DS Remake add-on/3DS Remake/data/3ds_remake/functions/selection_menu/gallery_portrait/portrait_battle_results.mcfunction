tag @s add gallery_portrait_menu

data modify storage luigis_mansion:data menu_options set value {no_exit:1b,options:[]}
function 3ds_remake:selection_menu/gallery_portrait/get_portrait_battle_title with storage luigis_mansion:data current_state.current_data.portrait_battle

execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.in_mansion_time
execute store result score #temp Health run data get storage luigis_mansion:data current_state.current_data.lowest_health_moment

execute if data storage luigis_mansion:data current_state.current_data{lowest_difficulty:0} store result score #temp2 Health run data get storage 3ds_remake:data loaded_mansion.high_scores.peaceful.health
execute if data storage luigis_mansion:data current_state.current_data{lowest_difficulty:0} store result score #temp2 Time run data get storage 3ds_remake:data loaded_mansion.high_scores.peaceful.speed
execute if data storage luigis_mansion:data current_state.current_data{lowest_difficulty:1} store result score #temp2 Health run data get storage 3ds_remake:data loaded_mansion.high_scores.easy.health
execute if data storage luigis_mansion:data current_state.current_data{lowest_difficulty:1} store result score #temp2 Time run data get storage 3ds_remake:data loaded_mansion.high_scores.easy.speed
execute if data storage luigis_mansion:data current_state.current_data{lowest_difficulty:2} store result score #temp2 Health run data get storage 3ds_remake:data loaded_mansion.high_scores.normal.health
execute if data storage luigis_mansion:data current_state.current_data{lowest_difficulty:2} store result score #temp2 Time run data get storage 3ds_remake:data loaded_mansion.high_scores.normal.speed
execute if data storage luigis_mansion:data current_state.current_data{lowest_difficulty:3} store result score #temp2 Health run data get storage 3ds_remake:data loaded_mansion.high_scores.hard.health
execute if data storage luigis_mansion:data current_state.current_data{lowest_difficulty:3} store result score #temp2 Time run data get storage 3ds_remake:data loaded_mansion.high_scores.hard.speed

execute if score #temp Time < #temp2 Time run scoreboard players set #temp0 Time 1
execute if score #temp Health > #temp2 Health run scoreboard players set #temp0 Health 1
execute if score #temp0 Time matches 1 run data modify storage luigis_mansion:data menu_options.options append value {id:"minecraft:diamond_pickaxe",Count:1b,tag:{Damage:22,Unbreakable:1b,CustomModelData:-28,HideFlags:63,AttributeModifiers:[],display:{Name:'{"color":"white","italic":false,"type":"translatable","translate":"3ds_remake:message.gallery.portrait_battle.results.new_high_score"}'},luigis_mansion:{option:{id:"reload"}}}}
execute unless score #temp0 Time matches 1 if score #temp0 Health matches 1 run data modify storage luigis_mansion:data menu_options.options append value {id:"minecraft:diamond_pickaxe",Count:1b,tag:{Damage:22,Unbreakable:1b,CustomModelData:-28,HideFlags:63,AttributeModifiers:[],display:{Name:'{"color":"white","italic":false,"type":"translatable","translate":"3ds_remake:message.gallery.portrait_battle.results.new_high_score"}'},luigis_mansion:{option:{id:"reload"}}}}

data modify storage luigis_mansion:data menu_options.options append value {id:"minecraft:diamond_pickaxe",Count:1b,tag:{Damage:22,Unbreakable:1b,CustomModelData:61,HideFlags:63,AttributeModifiers:[],display:{Name:'{"color":"white","italic":false,"type":"translatable","translate":"3ds_remake:message.gallery.portrait_battle.results.recent_score"}',Lore:[]},luigis_mansion:{option:{id:"reload"}}}}
function 3ds_remake:room/portrait_battle/convert_time
execute in minecraft:overworld run setblock 27 0 0 minecraft:oak_sign{front_text:{messages:['{"color":"white","italic":false,"type":"translatable","translate":"3ds_remake:message.gallery.portrait_battle.results.speed","with":[{"type":"score","score":{"name":"#temp6","objective":"Time"}},{"type":"score","score":{"name":"#temp5","objective":"Time"}},{"type":"score","score":{"name":"#temp4","objective":"Time"}},{"type":"score","score":{"name":"#temp3","objective":"Time"}},{"type":"score","score":{"name":"#temp2","objective":"Time"}},{"type":"score","score":{"name":"#temp","objective":"Time"}}]}','{"color":"white","italic":false,"type":"translatable","translate":"3ds_remake:message.gallery.portrait_battle.results.health","with":[{"type":"score","score":{"name":"#temp","objective":"Health"}}]}','{"color":"gold","italic":false,"type":"translatable","translate":"3ds_remake:message.gallery.portrait_battle.results.speed","with":[{"type":"score","score":{"name":"#temp6","objective":"Time"}},{"type":"score","score":{"name":"#temp5","objective":"Time"}},{"type":"score","score":{"name":"#temp4","objective":"Time"}},{"type":"score","score":{"name":"#temp3","objective":"Time"}},{"type":"score","score":{"name":"#temp2","objective":"Time"}},{"type":"score","score":{"name":"#temp","objective":"Time"}}]}','{"color":"gold","italic":false,"type":"translatable","translate":"3ds_remake:message.gallery.portrait_battle.results.health","with":[{"type":"score","score":{"name":"#temp","objective":"Health"}}]}']}}
execute unless score #temp0 Time matches 1 in minecraft:overworld run data modify storage luigis_mansion:data menu_options.options[-1].tag.display.Lore append from block 27 0 0 front_text.messages[0]
execute if score #temp0 Time matches 1 in minecraft:overworld run data modify storage luigis_mansion:data menu_options.options[-1].tag.display.Lore append from block 27 0 0 front_text.messages[2]
execute unless score #temp0 Health matches 1 in minecraft:overworld run data modify storage luigis_mansion:data menu_options.options[-1].tag.display.Lore append from block 27 0 0 front_text.messages[1]
execute if score #temp0 Health matches 1 in minecraft:overworld run data modify storage luigis_mansion:data menu_options.options[-1].tag.display.Lore append from block 27 0 0 front_text.messages[3]
execute in minecraft:overworld run setblock 27 0 0 minecraft:bedrock
scoreboard players reset #temp0 Health
scoreboard players reset #temp Health
scoreboard players reset #temp0 Time
scoreboard players reset #temp Time
scoreboard players reset #temp2 Time
scoreboard players reset #temp3 Time
scoreboard players reset #temp4 Time
scoreboard players reset #temp5 Time
scoreboard players reset #temp6 Time

execute if data storage luigis_mansion:data current_state.current_data{lowest_difficulty:0} store result score #temp Health run data get storage 3ds_remake:data loaded_mansion.high_scores.peaceful.health
execute if data storage luigis_mansion:data current_state.current_data{lowest_difficulty:0} store result score #temp Time run data get storage 3ds_remake:data loaded_mansion.high_scores.peaceful.speed
execute if data storage luigis_mansion:data current_state.current_data{lowest_difficulty:1} store result score #temp Health run data get storage 3ds_remake:data loaded_mansion.high_scores.easy.health
execute if data storage luigis_mansion:data current_state.current_data{lowest_difficulty:1} store result score #temp Time run data get storage 3ds_remake:data loaded_mansion.high_scores.easy.speed
execute if data storage luigis_mansion:data current_state.current_data{lowest_difficulty:2} store result score #temp Health run data get storage 3ds_remake:data loaded_mansion.high_scores.normal.health
execute if data storage luigis_mansion:data current_state.current_data{lowest_difficulty:2} store result score #temp Time run data get storage 3ds_remake:data loaded_mansion.high_scores.normal.speed
execute if data storage luigis_mansion:data current_state.current_data{lowest_difficulty:3} store result score #temp Health run data get storage 3ds_remake:data loaded_mansion.high_scores.hard.health
execute if data storage luigis_mansion:data current_state.current_data{lowest_difficulty:3} store result score #temp Time run data get storage 3ds_remake:data loaded_mansion.high_scores.hard.speed

execute unless score #temp Time matches -1 run data modify storage luigis_mansion:data menu_options.options append value {id:"minecraft:diamond_pickaxe",Count:1b,tag:{Damage:22,Unbreakable:1b,CustomModelData:61,HideFlags:63,AttributeModifiers:[],display:{Name:'{"color":"white","italic":false,"type":"translatable","translate":"3ds_remake:message.gallery.portrait_battle.results.high_score"}',Lore:[]},luigis_mansion:{option:{id:"reload"}}}}
execute unless score #temp Time matches -1 run function 3ds_remake:room/portrait_battle/convert_time
execute unless score #temp Health matches -1 in minecraft:overworld run setblock 27 0 0 minecraft:oak_sign{front_text:{messages:['{"color":"white","italic":false,"type":"translatable","translate":"3ds_remake:message.gallery.portrait_battle.results.speed","with":[{"type":"score","score":{"name":"#temp6","objective":"Time"}},{"type":"score","score":{"name":"#temp5","objective":"Time"}},{"type":"score","score":{"name":"#temp4","objective":"Time"}},{"type":"score","score":{"name":"#temp3","objective":"Time"}},{"type":"score","score":{"name":"#temp2","objective":"Time"}},{"type":"score","score":{"name":"#temp","objective":"Time"}}]}','{"color":"white","italic":false,"type":"translatable","translate":"3ds_remake:message.gallery.portrait_battle.results.health","with":[{"type":"score","score":{"name":"#temp","objective":"Health"}}]}','{"type":"text","text":""}','{"type":"text","text":""}']}}
execute unless score #temp Health matches -1 in minecraft:overworld run data modify storage luigis_mansion:data menu_options.options[-1].tag.display.Lore append from block 27 0 0 front_text.messages[0]
execute unless score #temp Health matches -1 in minecraft:overworld run data modify storage luigis_mansion:data menu_options.options[-1].tag.display.Lore append from block 27 0 0 front_text.messages[1]
execute unless score #temp Health matches -1 in minecraft:overworld run setblock 27 0 0 minecraft:bedrock
scoreboard players reset #temp Health
scoreboard players reset #temp Time
scoreboard players reset #temp2 Time
scoreboard players reset #temp3 Time
scoreboard players reset #temp4 Time
scoreboard players reset #temp5 Time
scoreboard players reset #temp6 Time

function 3ds_remake:room/portrait_battle/save_results with storage luigis_mansion:data current_state.current_data.portrait_battle

data modify storage luigis_mansion:data menu_options.options append value {id:"minecraft:diamond_pickaxe",Count:1b,tag:{Damage:22,Unbreakable:1b,CustomModelData:6,HideFlags:63,AttributeModifiers:[],display:{Name:'{"color":"white","italic":false,"type":"translatable","translate":"luigis_mansion:item.menu.dialog.progress"}'},luigis_mansion:{option:{id:"portrait_battle_results_retry"}}}}
execute if score #temp0 ActionTime matches 1 run data modify storage luigis_mansion:data menu_options.options[-1].tag.luigis_mansion.option.id set value "portrait_battle_results_frame"
scoreboard players reset #temp0 ActionTime

function 3ds_remake:entities/portrificationizing_ghost/try_to_clear_portrait_task
scoreboard players set #temp Money 6000
scoreboard players set #temp Time 0
execute if data storage 3ds_remake:data current_state.trophy.normal{task_9:0b} run function 3ds_remake:selection_menu/gallery_trophy/get_count/portrait_speed
execute if score #temp Time matches 23 if data storage 3ds_remake:data current_state.trophy.normal{task_9:0b} run function 3ds_remake:selection_menu/gallery_trophy/complete/normal/task_9
scoreboard players reset #temp Time
scoreboard players set #temp Money 3600
scoreboard players set #temp Time 0
execute if data storage 3ds_remake:data current_state.trophy.master{task_8:0b} run function 3ds_remake:selection_menu/gallery_trophy/get_count/portrait_speed
execute if score #temp Time matches 23 if data storage 3ds_remake:data current_state.trophy.master{task_8:0b} run function 3ds_remake:selection_menu/gallery_trophy/complete/master/task_8
scoreboard players reset #temp Time
scoreboard players reset #temp Money
function 3ds_remake:selection_menu/gallery_trophy/get_count/portrait_hard
execute if score #temp Time matches 23 run advancement grant @a only 3ds_remake:3ds_remake/hard_labor
scoreboard players reset #temp Time
function 3ds_remake:selection_menu/gallery_trophy/get_count/portrait_no_damage
execute if score #temp Time matches 23 run advancement grant @a only 3ds_remake:3ds_remake/no_touchy
scoreboard players reset #temp Time

function luigis_mansion:entities/player/selection_menu/load