execute in minecraft:overworld run forceload add 775 -17 746 -58
data merge storage 3ds_remake:data {data_version:5,saved_state:{mansion_rank_s_achieved:0b,selected_portraits:{neville:-1b,lydia:-1b,chauncey:-1b,floating_whirlindas:-1b,madame_clairvoya:-1b,shivers:-1b,melody_pianissima:-1b,mr_luggs:-1b,spooky:-1b,bogmire:-1b,biff_atlas:-1b,miss_petunia:-1b,nana:-1b,slim_bankshot:-1b,henry_and_orville:-1b,boolossus:-1b,uncle_grimmly:-1b,clockwork_soldiers:-1b,jarvis:-1b,sir_weston:-1b,sue_pea:-1b,vincent_van_gore:-1b,king_boo:-1b,mansion_rank:-1b},trophy:{beginner:{done:0b,task_1:0b,task_2:0b,task_3:0b,task_4:0b,task_5:0b,task_6:0b,task_7:0b,task_8:0b,task_9:0b},easy:{done:0b,task_1:0b,task_2:0b,task_3:0b,task_4:0b,task_5:0b,task_6:0b,task_7:0b,task_8:0b,task_9:0b,has_element_medals:{fire:0b,water:0b,ice:0b}},normal:{done:0b,task_1:0b,task_2:0b,task_3:0b,task_4:0b,task_5:0b,task_6:0b,task_7:0b,task_8:0b,task_9:0b,read_books:{book_of_riddles:0b,darkness_is_their_cheese:0b,e_gadds_guide_to_ghosts:0b,lydias_child_care_diary:0b,moldy_old_journal:0b,nevilles_big_baby_care_diary:0b,the_book_of_pericles:0b}},hard:{done:0b,task_1:0b,task_2:0b,task_3:0b,task_4:0b,task_5:0b,task_6:0b,task_7:0b,task_8:0b,task_9:0b},master:{done:0b,task_1:0b,task_2:0b,task_3:0b,task_4:0b,task_5:0b,task_6:0b,task_7:0b,task_8:0b,task_9:0b,found_posters:{washroom_2:0b,projection_room:0b}}}},current_state:{mansion_rank_s_achieved:0b,selected_portraits:{neville:-1b,lydia:-1b,chauncey:-1b,floating_whirlindas:-1b,madame_clairvoya:-1b,shivers:-1b,melody_pianissima:-1b,mr_luggs:-1b,spooky:-1b,bogmire:-1b,biff_atlas:-1b,miss_petunia:-1b,nana:-1b,slim_bankshot:-1b,henry_and_orville:-1b,boolossus:-1b,uncle_grimmly:-1b,clockwork_soldiers:-1b,jarvis:-1b,sir_weston:-1b,sue_pea:-1b,vincent_van_gore:-1b,king_boo:-1b,mansion_rank:-1b},trophy:{beginner:{done:0b,task_1:0b,task_2:0b,task_3:0b,task_4:0b,task_5:0b,task_6:0b,task_7:0b,task_8:0b,task_9:0b},easy:{done:0b,task_1:0b,task_2:0b,task_3:0b,task_4:0b,task_5:0b,task_6:0b,task_7:0b,task_8:0b,task_9:0b,has_element_medals:{fire:0b,water:0b,ice:0b}},normal:{done:0b,task_1:0b,task_2:0b,task_3:0b,task_4:0b,task_5:0b,task_6:0b,task_7:0b,task_8:0b,task_9:0b,read_books:{book_of_riddles:0b,darkness_is_their_cheese:0b,e_gadds_guide_to_ghosts:0b,lydias_child_care_diary:0b,moldy_old_journal:0b,nevilles_big_baby_care_diary:0b,the_book_of_pericles:0b}},hard:{done:0b,task_1:0b,task_2:0b,task_3:0b,task_4:0b,task_5:0b,task_6:0b,task_7:0b,task_8:0b,task_9:0b},master:{done:0b,task_1:0b,task_2:0b,task_3:0b,task_4:0b,task_5:0b,task_6:0b,task_7:0b,task_8:0b,task_9:0b,found_posters:{washroom_2:0b,projection_room:0b}}}},loaded_mansion:{settings:{},data:{}},obtained_gameboy_horror_part:0b,shown_gameboy_horror_part:0b,spoke_with_future_e_gadd:0b}
execute store result score #temp Time run data get storage luigis_mansion:data current_state.ghosts_caught.total
execute if score #temp Time matches 50.. run data modify storage 3ds_remake:data current_state.trophy.beginner.task_1 set value 1b
execute if score #temp Time matches 100.. run data modify storage 3ds_remake:data current_state.trophy.easy.task_1 set value 1b
execute if score #temp Time matches 250.. run data modify storage 3ds_remake:data current_state.trophy.normal.task_1 set value 1b
execute if score #temp Time matches 500.. run data modify storage 3ds_remake:data current_state.trophy.hard.task_1 set value 1b
execute if score #temp Time matches 1000.. run data modify storage 3ds_remake:data current_state.trophy.master.task_1 set value 1b
scoreboard players reset #temp Time
execute store result score #temp Time run data get storage luigis_mansion:data current_state.money_grabbed.total
execute if score #temp Time matches 1000.. run data modify storage 3ds_remake:data current_state.trophy.beginner.task_2 set value 1b
execute if score #temp Time matches 30000.. run data modify storage 3ds_remake:data current_state.trophy.easy.task_2 set value 1b
execute if score #temp Time matches 100000.. run data modify storage 3ds_remake:data current_state.trophy.normal.task_2 set value 1b
execute if score #temp Time matches 300000.. run data modify storage 3ds_remake:data current_state.trophy.hard.task_2 set value 1b
execute if score #temp Time matches 500000.. run data modify storage 3ds_remake:data current_state.trophy.master.task_2 set value 1b
scoreboard players reset #temp Time
function 3ds_remake:selection_menu/gallery_trophy/get_count/money/jewels
execute if data storage 3ds_remake:data current_state.trophy.beginner{task_6:0b} if score #temp Time matches 1.. run data modify storage 3ds_remake:data current_state.trophy.beginner.task_6 set value 1b
execute if data storage 3ds_remake:data current_state.trophy.master{task_5:0b} if score #temp Time matches 100.. run data modify storage 3ds_remake:data current_state.trophy.master.task_5 set value 1b
scoreboard players reset #temp Time
execute if data storage luigis_mansion:data current_state.portrait_ghosts_defeated_in.luigis_mansion.chauncey[{mansion:{namespace:"luigis_mansion",id:"normal"}}] run data modify storage 3ds_remake:data current_state.trophy.beginner.task_3 set value 1b
execute store result score #temp Time run data get storage luigis_mansion:data current_state.ghosts_caught.caught.luigis_mansion.gold_ghost
execute if score #temp Time matches 10.. run data modify storage 3ds_remake:data current_state.trophy.beginner.task_4 set value 1b
scoreboard players reset #temp Time
execute if data storage luigis_mansion:data current_state.ghosts_caught.caught.luigis_mansion.fake_door run data modify storage 3ds_remake:data current_state.trophy.beginner.task_8 set value 1b
scoreboard players reset #temp Time
function 3ds_remake:selection_menu/gallery_trophy/get_count/portrait/bronze
execute if score #temp Time matches 5.. run data modify storage 3ds_remake:data current_state.trophy.beginner.task_9 set value 1b
execute if score #temp Time matches 23.. run data modify storage 3ds_remake:data current_state.trophy.normal.task_3 set value 1b
scoreboard players reset #temp Time
function 3ds_remake:selection_menu/gallery_trophy/get_count/portrait/gold
execute if score #temp Time matches 23.. run data modify storage 3ds_remake:data current_state.trophy.hard.task_3 set value 1b
scoreboard players reset #temp Time
function 3ds_remake:selection_menu/gallery_trophy/get_count/portrait/platinum
execute if score #temp Time matches 23.. run data modify storage 3ds_remake:data current_state.trophy.master.task_3 set value 1b
scoreboard players reset #temp Time
execute if data storage luigis_mansion:data current_state.current_data{data_index:0} if data storage luigis_mansion:data current_state.current_data.obtained_items{fire_element_medal:1b} run data modify storage 3ds_remake:data current_state.trophy.easy.has_element_medal.fire set value 1b
execute if data storage luigis_mansion:data current_state.current_data{data_index:0} if data storage luigis_mansion:data current_state.current_data.obtained_items{water_element_medal:1b} run data modify storage 3ds_remake:data current_state.trophy.easy.has_element_medal.water set value 1b
execute if data storage luigis_mansion:data current_state.current_data{data_index:0} if data storage luigis_mansion:data current_state.current_data.obtained_items{ice_element_medal:1b} run data modify storage 3ds_remake:data current_state.trophy.easy.has_element_medal.ice set value 1b
execute if data storage luigis_mansion:data current_state.mansion_data[{data_index:0}] if data storage luigis_mansion:data current_state.mansion_data[{data_index:0}].obtained_items{fire_element_medal:1b} run data modify storage 3ds_remake:data current_state.trophy.easy.has_element_medal.fire set value 1b
execute if data storage luigis_mansion:data current_state.mansion_data[{data_index:0}] if data storage luigis_mansion:data current_state.mansion_data[{data_index:0}].obtained_items{water_element_medal:1b} run data modify storage 3ds_remake:data current_state.trophy.easy.has_element_medal.water set value 1b
execute if data storage luigis_mansion:data current_state.mansion_data[{data_index:0}] if data storage luigis_mansion:data current_state.mansion_data[{data_index:0}].obtained_items{ice_element_medal:1b} run data modify storage 3ds_remake:data current_state.trophy.easy.has_element_medal.ice set value 1b
execute if data storage 3ds_remake:data current_state.trophy.easy.has_element_medals{fire:1b,water:1b,ice:1b} run data modify storage 3ds_remake:data current_state.trophy.easy.task_3 set value 1b
execute store result score #temp Time run data get storage luigis_mansion:data current_state.ghosts_caught.caught.luigis_mansion.gold_mouse
execute if score #temp Time matches 1.. run data modify storage 3ds_remake:data current_state.trophy.easy.task_5 set value 1b
execute if score #temp Time matches 20.. run data modify storage 3ds_remake:data current_state.trophy.hard.task_7 set value 1b
scoreboard players reset #temp Time
execute store result score #temp Time run data get storage luigis_mansion:data current_state.ghosts_caught.caught.luigis_mansion.speedy_spirit
execute if score #temp Time matches 1.. run data modify storage 3ds_remake:data current_state.trophy.easy.task_6 set value 1b
execute if score #temp Time matches 30.. run data modify storage 3ds_remake:data current_state.trophy.hard.task_8 set value 1b
scoreboard players reset #temp Time
scoreboard players set #temp Time 0
function #3ds_remake:selection_menu/gallery_trophy/get_count/boo
execute if score #temp Time matches 20.. run data modify storage 3ds_remake:data current_state.trophy.easy.task_9 set value 1b
execute if score #temp Time matches 50.. run data modify storage 3ds_remake:data current_state.trophy.hard.task_9 set value 1b
scoreboard players reset #temp Time
execute if data storage luigis_mansion:data current_state.current_data{data_index:0} if data storage luigis_mansion:data current_state.current_data.rooms.hidden_room{seen:1b} run data modify storage 3ds_remake:data current_state.trophy.easy.task_8 set value 1b
execute if data storage luigis_mansion:data current_state.current_data{data_index:0} if data storage luigis_mansion:data current_state.current_data.rooms.sealed_room{seen:1b} run data modify storage 3ds_remake:data current_state.trophy.easy.task_8 set value 1b
execute if data storage luigis_mansion:data current_state.mansion_data[{data_index:0}] if data storage luigis_mansion:data current_state.mansion_data[{data_index:0}].rooms.hidden_room{seen:1b} run data modify storage 3ds_remake:data current_state.trophy.easy.task_8 set value 1b
execute if data storage luigis_mansion:data current_state.mansion_data[{data_index:0}] if data storage luigis_mansion:data current_state.mansion_data[{data_index:0}].rooms.sealed_room{seen:1b} run data modify storage 3ds_remake:data current_state.trophy.easy.task_8 set value 1b
execute if data storage luigis_mansion:data current_state.high_scores[{data_index:0}] run data modify storage 3ds_remake:data current_state.trophy.normal.task_4 set value 1b
execute if data storage luigis_mansion:data current_state.mansion_data[{data_index:0}] if data storage luigis_mansion:data current_state.current_data.obtained_keys{hallway_8:1b} run data modify storage 3ds_remake:data current_state.trophy.normal.task_5 set value 1b
execute if data storage luigis_mansion:data current_state.mansion_data[{data_index:0}] if data storage luigis_mansion:data current_state.mansion_data[{data_index:0}].obtained_keys{hallway_8:1b} run data modify storage 3ds_remake:data current_state.trophy.normal.task_5 set value 1b
execute if data storage luigis_mansion:data current_state.high_scores[0] run function 3ds_remake:selection_menu/gallery_trophy/get_count/highest_score
execute if data storage luigis_mansion:data new_high_scores run data modify storage luigis_mansion:data current_state.high_scores set from storage luigis_mansion:data new_high_scores
data remove storage luigis_mansion:data new_high_scores
execute if score #temp Money matches 70000.. run data modify storage 3ds_remake:data current_state.trophy.normal.task_7 set value 1b
execute if score #temp Money matches 100000.. run data modify storage 3ds_remake:data current_state.trophy.hard.task_4 set value 1b
execute if score #temp Money matches 130000.. run data modify storage 3ds_remake:data current_state.trophy.master.task_4 set value 1b
execute if score #temp Money matches 130000.. run data modify storage 3ds_remake:data current_state.mansion_rank_s_achieved set value 1b
scoreboard players reset #temp Money
scoreboard players reset #temp2 Money
scoreboard players set #temp Money 6000
scoreboard players set #temp Time 0
function 3ds_remake:selection_menu/gallery_trophy/get_count/portrait_speed
execute if score #temp Money matches 23.. run data modify storage 3ds_remake:data current_state.trophy.normal.task_9 set value 1b
scoreboard players reset #temp Time
scoreboard players set #temp Money 3600
scoreboard players set #temp Time 0
function 3ds_remake:selection_menu/gallery_trophy/get_count/portrait_speed
execute if score #temp Money matches 23.. run data modify storage 3ds_remake:data current_state.trophy.master.task_8 set value 1b
scoreboard players reset #temp Time
scoreboard players set #temp Time 0
scoreboard players set #temp Money 50
execute if data storage luigis_mansion:data current_state.high_scores[0] run function 3ds_remake:selection_menu/gallery_trophy/get_count/lowest_health
execute if data storage luigis_mansion:data new_high_scores run data modify storage luigis_mansion:data current_state.high_scores set from storage luigis_mansion:data new_high_scores
data remove storage luigis_mansion:data new_high_scores
execute unless score #temp Time matches 0 if data storage 3ds_remake:data current_state.trophy.hard{task_6:0b} run data modify storage 3ds_remake:data current_state.trophy.hard.task_6 set value 1b
scoreboard players reset #temp Time
scoreboard players reset #temp Money
scoreboard players reset #temp2 Money
scoreboard players set #temp Time 0
scoreboard players set #temp Money 80
execute if data storage luigis_mansion:data current_state.high_scores[0] run function 3ds_remake:selection_menu/gallery_trophy/get_count/lowest_health
execute if data storage luigis_mansion:data new_high_scores run data modify storage luigis_mansion:data current_state.high_scores set from storage luigis_mansion:data new_high_scores
data remove storage luigis_mansion:data new_high_scores
execute unless score #temp Time matches 0 if data storage 3ds_remake:data current_state.trophy.master{task_6:0b} run data modify storage 3ds_remake:data current_state.trophy.master.task_6 set value 1b
scoreboard players reset #temp Time
scoreboard players reset #temp Money
scoreboard players reset #temp2 Money
scoreboard players set #temp Time 2147483647
execute if data storage luigis_mansion:data current_state.high_scores[0] run function 3ds_remake:selection_menu/gallery_trophy/get_count/quickest_time
execute if data storage luigis_mansion:data new_high_scores run data modify storage luigis_mansion:data current_state.high_scores set from storage luigis_mansion:data new_high_scores
data remove storage luigis_mansion:data new_high_scores
execute if score #temp Time matches ..216000 if data storage 3ds_remake:data current_state.trophy.master{task_7:0b} run data modify storage 3ds_remake:data current_state.trophy.master.task_7 set value 1b
scoreboard players reset #temp Time
scoreboard players reset #temp Money
execute if data storage luigis_mansion:data current_state.current_data.mansion_id{namespace:"luigis_mansion",id:"hidden"} if entity @a[advancements={luigis_mansion:vanilla/clear_hidden_mansion=false}] run function 3ds_remake:other/upgrade_path/convert_hidden_data
execute if entity @a[advancements={luigis_mansion:vanilla/clear_hidden_mansion=true}] unless data storage luigis_mansion:data current_state.high_scores[{data_index:1}] run data modify storage 3ds_remake:data current_state.trophy.hard.task_5 set value 1b
execute if entity @a[advancements={luigis_mansion:vanilla/clear_hidden_mansion=true}] unless data storage luigis_mansion:data current_state.high_scores[{data_index:1}] if data storage luigis_mansion:data current_state.high_scores[{data_index:0}] run function 3ds_remake:other/upgrade_path/clone_high_score
execute if entity @a[advancements={luigis_mansion:vanilla/unlock_hidden_mansion=true}] run advancement grant @a only 3ds_remake:3ds_remake/unlock_hidden_mansion
execute if entity @a[advancements={luigis_mansion:vanilla/unlock_hidden_mansion=true,luigis_mansion:vanilla/clear_hidden_mansion=false}] run advancement revoke @a only luigis_mansion:vanilla/unlock_hidden_mansion
execute if data storage 3ds_remake:data current_state.trophy.hard{task_5:1b} run advancement grant @a only 3ds_remake:3ds_remake/clear_hidden_mansion
execute if data storage luigis_mansion:data rooms.training_room{cleared:1b} run data merge storage 3ds_remake:data {obtained_gameboy_horror_part:1b,shown_gameboy_horror_part:1b,spoke_with_future_e_gadd:1b}
execute if data storage luigis_mansion:data saved_state.mansion_data[{data_index:0,can_clear_hidden:0b}] if data storage luigis_mansion:data saved_state.mansion_data[{data_index:0,can_clear_hidden:0b}].boos[{name:"booligan"}] run data modify storage luigis_mansion:data saved_state.mansion_data[{data_index:0,can_clear_hidden:0b}].boos[{name:"booligan"}].name set value "boolldog"
execute if data storage luigis_mansion:data current_state.mansion_data[{data_index:0,can_clear_hidden:0b}] if data storage luigis_mansion:data current_state.mansion_data[{data_index:0,can_clear_hidden:0b}].boos[{name:"booligan"}] run data modify storage luigis_mansion:data current_state.mansion_data[{data_index:0,can_clear_hidden:0b}].boos[{name:"booligan"}].name set value "boolldog"
execute if data storage luigis_mansion:data current_state.current_data{namespace:"luigis_mansion",id:"hidden"} if data storage luigis_mansion:data current_state.current_data.boos[{name:"booligan"}] run data modify storage luigis_mansion:data current_state.current_data.boos[{name:"booligan"}].name set value "boolldog"