execute in e3_demo:original run scoreboard players set #temp Time 1
execute unless score #temp Time matches 1 run tellraw @a[tag=warn_for_add_ons] {type:"translatable",translate:"luigis_mansion:message.debug.format",color:"white",with:[{type:"translatable",translate:"luigis_mansion:message.debug",color:"gold"},{type:"translatable",translate:"luigis_mansion:message.debug.bad_add_on_install",color:"red",with:[{type:"text",text:"E3 Demo"}]}]}
execute if score #temp Time matches 1 run scoreboard players operation #e3_demo Loaded > * Loaded
execute if score #temp Time matches 1 run scoreboard players add #e3_demo Loaded 1
scoreboard players reset #temp Time