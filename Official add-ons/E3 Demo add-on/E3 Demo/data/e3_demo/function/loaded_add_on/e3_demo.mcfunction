execute in e3_demo:original run scoreboard players set #temp Time 1
execute unless score #temp Time matches 1 run data modify storage luigis_mansion:data bad_add_ons append value {type:"text",text:"E3 Demo",hover_event:{action:"show_text",value:{type:"translatable",translate:"luigis_mansion:message.debug.bad_add_on_install.dimension"}}}
execute if score #temp Time matches 1 run scoreboard players operation #e3_demo Loaded > * Loaded
execute if score #temp Time matches 1 run scoreboard players add #e3_demo Loaded 1
scoreboard players reset #temp Time