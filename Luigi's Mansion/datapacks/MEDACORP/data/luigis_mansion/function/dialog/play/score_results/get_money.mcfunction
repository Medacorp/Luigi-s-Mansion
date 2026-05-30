$function luigis_mansion:items/money/get_count/select {namespace:"$(namespace)",id:"$(id)"}
$execute store result score #temp Time run function $(namespace):items/money/get_value/$(id)
scoreboard players operation #temp2 Money = #temp Money
scoreboard players operation #temp2 Money *= #temp Time
scoreboard players reset #temp Time
$execute unless score #temp Money matches 0 run summon minecraft:text_display 756.5 83.0 -11.0 {Tags:["money_counter","new"],text:{type:"translatable",translate:"luigis_mansion:message.money",with:[{type:"translatable",translate:"$(namespace):item.$(id)"},{type:"score",score:{objective:"Money",name:"#temp"}},{type:"score",score:{objective:"Money",name:"#temp2"}}]},billboard:"fixed",line_width:160,background:0,alignment:"left",brightness:{block:15,sky:0},text_opacity:-1b,Rotation:[-90.0f,0.0f]}
execute if score #temp Money matches 0 run summon minecraft:text_display 756.5 83.0 -11.0 {Tags:["money_counter","new","fade_in"],text:{type:"translatable",translate:"luigis_mansion:message.money.not_obtained"},billboard:"fixed",line_width:160,background:0,alignment:"left",brightness:{block:15,sky:0},text_opacity:-1b,Rotation:[-90.0f,0.0f]}
scoreboard players set @e[tag=money_counter,tag=new,limit=1] Room -3
execute as @e[tag=money_counter,tag=new,limit=1] run function luigis_mansion:dialog/play/score_results/move_down with storage luigis_mansion:data dialogs[0]
tag @e[tag=money_counter,tag=new,limit=1] remove new
execute if score #temp Money matches 0 run scoreboard players add #dialog Dialog 35
scoreboard players reset #temp Money