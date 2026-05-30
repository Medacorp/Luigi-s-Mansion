function luigis_mansion:dialog/play/score_results/display_total_score
execute unless data storage luigis_mansion:data current_high_score run data modify storage luigis_mansion:data current_high_score set value {data_index:-1}
execute if data storage luigis_mansion:data current_state.high_scores[0] run function luigis_mansion:dialog/play/score_results/get_high_score with storage luigis_mansion:data current_state.current_data
data modify storage luigis_mansion:data current_high_score.data_index set from storage luigis_mansion:data current_state.current_data.data_index
execute store result score #temp2 Money run data get storage luigis_mansion:data current_high_score.value
scoreboard players operation #temp2 Money > #temp Money

execute if data storage luigis_mansion:data current_high_score.value if score #temp2 Money matches 1.. run summon minecraft:text_display 756.5 82.2 -11.0 {Tags:["money_high_score","new","fade_in"],text:{type:"translatable",translate:"luigis_mansion:message.money.high_score",with:[{type:"score",score:{objective:"Money",name:"#temp2"}}]},billboard:"fixed",line_width:160,background:0,alignment:"left",brightness:{block:15,sky:0},text_opacity:-1b,Rotation:[-90.0f,0.0f]}
execute if data storage luigis_mansion:data current_high_score.value unless score #temp2 Money matches 1.. run summon minecraft:text_display 756.5 82.2 -11.0 {Tags:["money_high_score","new","fade_in"],text:{type:"translatable",translate:"luigis_mansion:message.money.high_score.no_money"},billboard:"fixed",line_width:160,background:0,alignment:"left",brightness:{block:15,sky:0},text_opacity:-1b,Rotation:[-90.0f,0.0f]}
scoreboard players set @e[tag=money_high_score,tag=new,limit=1] Room -3
execute as @e[tag=money_high_score,tag=new,limit=1] run function luigis_mansion:dialog/play/score_results/move_down with storage luigis_mansion:data dialogs[0]
tag @e[tag=money_high_score,tag=new,limit=1] remove new
execute store result storage luigis_mansion:data current_high_score.value int 1 run scoreboard players get #temp2 Money

execute if data storage luigis_mansion:data current_high_score.lowest_value store result score #temp2 Money run data get storage luigis_mansion:data current_high_score.lowest_value
execute if data storage luigis_mansion:data current_high_score.lowest_value if score #temp Money < #temp2 Money store result storage luigis_mansion:data current_high_score.lowest_value int 1 run scoreboard players get #temp Money
execute unless data storage luigis_mansion:data current_high_score.lowest_value store result storage luigis_mansion:data current_high_score.lowest_value int 1 run scoreboard players get #temp Money

execute if data storage luigis_mansion:data current_high_score.speed store result score #temp Money run data get storage luigis_mansion:data current_high_score.speed
execute if data storage luigis_mansion:data current_high_score.speed store result score #temp2 Money run data get storage luigis_mansion:data current_state.current_data.in_mansion_time
execute if data storage luigis_mansion:data current_high_score.speed if score #temp2 Money < #temp Money run data modify storage luigis_mansion:data current_high_score.speed set from storage luigis_mansion:data current_state.current_data.in_mansion_time
execute unless data storage luigis_mansion:data current_high_score.speed run data modify storage luigis_mansion:data current_high_score.speed set from storage luigis_mansion:data current_state.current_data.in_mansion_time

execute if data storage luigis_mansion:data current_high_score.health store result score #temp Money run data get storage luigis_mansion:data current_high_score.health
execute if data storage luigis_mansion:data current_high_score.health store result score #temp2 Money run data get storage luigis_mansion:data current_state.current_data.lowest_health_moment
execute if data storage luigis_mansion:data current_high_score.health if score #temp Money > #temp Money run data modify storage luigis_mansion:data current_high_score.health set from storage luigis_mansion:data current_state.current_data.lowest_health_moment
execute unless data storage luigis_mansion:data current_high_score.health run data modify storage luigis_mansion:data current_high_score.health set from storage luigis_mansion:data current_state.current_data.lowest_health_moment

data modify storage luigis_mansion:data current_state.high_scores append from storage luigis_mansion:data current_high_score
data remove storage luigis_mansion:data current_high_score
scoreboard players reset #temp Money
scoreboard players reset #temp2 Money