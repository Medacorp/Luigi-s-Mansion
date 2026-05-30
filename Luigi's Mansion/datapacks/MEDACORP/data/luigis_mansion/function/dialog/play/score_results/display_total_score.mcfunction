scoreboard players set #temp Money 0
scoreboard players set #temp2 Money 0
data modify storage luigis_mansion:data current_state.current_data.new_money_grabbed set from storage luigis_mansion:data current_state.current_data.money_grabbed
execute if data storage luigis_mansion:data current_state.current_data.new_money_grabbed[0] run function luigis_mansion:dialog/play/score_results/get_total_score_loop
data remove storage luigis_mansion:data current_state.current_data.new_money_grabbed
scoreboard players reset #temp Time
execute if data storage luigis_mansion:data current_state.current_data{lowest_difficulty:0} run summon minecraft:text_display 756.5 83.0 -11.0 {Tags:["money_modifier","new","fade_in"],text:{type:"translatable",translate:"luigis_mansion:message.money.multiplier.peaceful"},billboard:"fixed",line_width:160,background:0,alignment:"left",brightness:{block:15,sky:0},text_opacity:-1b,Rotation:[-90.0f,0.0f]}
execute if data storage luigis_mansion:data current_state.current_data{lowest_difficulty:1} run summon minecraft:text_display 756.5 83.0 -11.0 {Tags:["money_modifier","new","fade_in"],text:{type:"translatable",translate:"luigis_mansion:message.money.multiplier.easy"},billboard:"fixed",line_width:160,background:0,alignment:"left",brightness:{block:15,sky:0},text_opacity:-1b,Rotation:[-90.0f,0.0f]}
execute if data storage luigis_mansion:data current_state.current_data{lowest_difficulty:2} run summon minecraft:text_display 756.5 83.0 -11.0 {Tags:["money_modifier","new","fade_in"],text:{type:"translatable",translate:"luigis_mansion:message.money.multiplier.normal"},billboard:"fixed",line_width:160,background:0,alignment:"left",brightness:{block:15,sky:0},text_opacity:-1b,Rotation:[-90.0f,0.0f]}
execute if data storage luigis_mansion:data current_state.current_data{lowest_difficulty:3} run summon minecraft:text_display 756.5 83.0 -11.0 {Tags:["money_modifier","new","fade_in"],text:{type:"translatable",translate:"luigis_mansion:message.money.multiplier.hard"},billboard:"fixed",line_width:160,background:0,alignment:"left",brightness:{block:15,sky:0},text_opacity:-1b,Rotation:[-90.0f,0.0f]}
scoreboard players set @e[tag=money_modifier,tag=new,limit=1] Room -3
execute if data storage luigis_mansion:data current_state.current_data{lowest_difficulty:0} run scoreboard players operation #temp Money /= #4 Constants
execute if data storage luigis_mansion:data current_state.current_data{lowest_difficulty:1} run scoreboard players operation #temp Money /= #2 Constants
#execute if data storage luigis_mansion:data current_state.current_data{lowest_difficulty:2} run scoreboard players operation #temp Money *= #1 Constants
execute if data storage luigis_mansion:data current_state.current_data{lowest_difficulty:3} run scoreboard players operation #temp Money *= #2 Constants
execute unless score #temp Money matches 0 run summon minecraft:text_display 756.5 82.6 -11.0 {Tags:["money_total_counter","new","fade_in"],text:{type:"translatable",translate:"luigis_mansion:message.money.total",with:[{type:"score",score:{objective:"Money",name:"#temp"}}]},billboard:"fixed",line_width:160,background:0,alignment:"left",brightness:{block:15,sky:0},text_opacity:-1b,Rotation:[-90.0f,0.0f]}
execute if score #temp Money matches 0 run summon minecraft:text_display 756.5 82.6 -11.0 {Tags:["money_total_counter","new","fade_in"],text:{type:"translatable",translate:"luigis_mansion:message.money.total.no_money"},billboard:"fixed",line_width:160,background:0,alignment:"left",brightness:{block:15,sky:0},text_opacity:-1b,Rotation:[-90.0f,0.0f]}
scoreboard players set @e[tag=money_total_counter,tag=new,limit=1] Room -3
execute as @e[tag=new] run function luigis_mansion:dialog/play/score_results/move_down with storage luigis_mansion:data dialogs[0]
tag @e[tag=new] remove new
execute if score #temp Money matches 0 run scoreboard players add #dialog Dialog 20
scoreboard players reset #temp2 Money