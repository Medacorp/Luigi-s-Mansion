data modify storage luigis_mansion:data menu_options.options[-1].components."minecraft:custom_data".option.value set from storage 3ds_remake:data portrait_battle.mansion

execute store result score #temp Health run data get storage 3ds_remake:data portrait_battle.peaceful.health
execute store result score #temp Time run data get storage 3ds_remake:data portrait_battle.peaceful.speed
data modify storage luigis_mansion:data menu_options.options[-1].components."minecraft:lore" append value {color:"white",italic:false,type:"translatable",translate:"3ds_remake:item.menu.gallery_portrait.portrait_battle.difficulty.peaceful"}
execute unless data storage 3ds_remake:data portrait_battle.peaceful run data modify storage luigis_mansion:data menu_options.options[-1].components."minecraft:lore" append value {color:"white",italic:false,type:"translatable",translate:"3ds_remake:item.menu.gallery_portrait.portrait_battle.results.speed",with:[{type:"text",text:""},{type:"translatable",translate:"3ds_remake:item.menu.gallery_portrait.portrait_battle.not_done"},{type:"text",text:""},{type:"translatable",translate:"3ds_remake:item.menu.gallery_portrait.portrait_battle.not_done"},{type:"text",text:""},{type:"translatable",translate:"3ds_remake:item.menu.gallery_portrait.portrait_battle.not_done"}]}
execute unless data storage 3ds_remake:data portrait_battle.peaceful run data modify storage luigis_mansion:data menu_options.options[-1].components."minecraft:lore" append value {color:"white",italic:false,type:"translatable",translate:"3ds_remake:item.menu.gallery_portrait.portrait_battle.results.health",with:[{type:"translatable",translate:"3ds_remake:item.menu.gallery_portrait.portrait_battle.not_done"}]}
execute if data storage 3ds_remake:data portrait_battle.peaceful run function 3ds_remake:room/portrait_battle/convert_time
execute if data storage 3ds_remake:data portrait_battle.peaceful in minecraft:overworld run setblock 27 0 0 minecraft:oak_sign{front_text:{messages:[{color:"white",italic:false,type:"translatable",translate:"3ds_remake:item.menu.gallery_portrait.portrait_battle.results.speed",with:[{type:"score",score:{name:"#temp6",objective:"Time"}},{type:"score",score:{name:"#temp5",objective:"Time"}},{type:"score",score:{name:"#temp4",objective:"Time"}},{type:"score",score:{name:"#temp3",objective:"Time"}},{type:"score",score:{name:"#temp2",objective:"Time"}},{type:"score",score:{name:"#temp",objective:"Time"}}]},{color:"white",italic:false,type:"translatable",translate:"3ds_remake:item.menu.gallery_portrait.portrait_battle.results.health",with:[{type:"score",score:{name:"#temp",objective:"Health"}}]},{type:"text",text:""},{type:"text",text:""}]}}
execute if data storage 3ds_remake:data portrait_battle.peaceful in minecraft:overworld run data modify storage luigis_mansion:data menu_options.options[-1].components."minecraft:lore" append from block 27 0 0 front_text.messages[0]
execute if data storage 3ds_remake:data portrait_battle.peaceful in minecraft:overworld run data modify storage luigis_mansion:data menu_options.options[-1].components."minecraft:lore" append from block 27 0 0 front_text.messages[1]
execute if data storage 3ds_remake:data portrait_battle.peaceful in minecraft:overworld run setblock 27 0 0 minecraft:bedrock
scoreboard players reset #temp Health
scoreboard players reset #temp Time
scoreboard players reset #temp2 Time
scoreboard players reset #temp3 Time
scoreboard players reset #temp4 Time
scoreboard players reset #temp5 Time
scoreboard players reset #temp6 Time
data modify storage luigis_mansion:data menu_options.options[-1].components."minecraft:lore" append value {type:"text",text:""}

execute store result score #temp Health run data get storage 3ds_remake:data portrait_battle.easy.health
execute store result score #temp Time run data get storage 3ds_remake:data portrait_battle.easy.speed
data modify storage luigis_mansion:data menu_options.options[-1].components."minecraft:lore" append value {color:"white",italic:false,type:"translatable",translate:"3ds_remake:item.menu.gallery_portrait.portrait_battle.difficulty.easy"}
execute unless data storage 3ds_remake:data portrait_battle.easy run data modify storage luigis_mansion:data menu_options.options[-1].components."minecraft:lore" append value {color:"white",italic:false,type:"translatable",translate:"3ds_remake:item.menu.gallery_portrait.portrait_battle.results.speed",with:[{type:"text",text:""},{type:"translatable",translate:"3ds_remake:item.menu.gallery_portrait.portrait_battle.not_done"},{type:"text",text:""},{type:"translatable",translate:"3ds_remake:item.menu.gallery_portrait.portrait_battle.not_done"},{type:"text",text:""},{type:"translatable",translate:"3ds_remake:item.menu.gallery_portrait.portrait_battle.not_done"}]}
execute unless data storage 3ds_remake:data portrait_battle.easy run data modify storage luigis_mansion:data menu_options.options[-1].components."minecraft:lore" append value {color:"white",italic:false,type:"translatable",translate:"3ds_remake:item.menu.gallery_portrait.portrait_battle.results.health",with:[{type:"translatable",translate:"3ds_remake:item.menu.gallery_portrait.portrait_battle.not_done"}]}
execute if data storage 3ds_remake:data portrait_battle.easy run function 3ds_remake:room/portrait_battle/convert_time
execute if data storage 3ds_remake:data portrait_battle.easy in minecraft:overworld run setblock 27 0 0 minecraft:oak_sign{front_text:{messages:[{color:"white",italic:false,type:"translatable",translate:"3ds_remake:item.menu.gallery_portrait.portrait_battle.results.speed",with:[{type:"score",score:{name:"#temp6",objective:"Time"}},{type:"score",score:{name:"#temp5",objective:"Time"}},{type:"score",score:{name:"#temp4",objective:"Time"}},{type:"score",score:{name:"#temp3",objective:"Time"}},{type:"score",score:{name:"#temp2",objective:"Time"}},{type:"score",score:{name:"#temp",objective:"Time"}}]},{color:"white",italic:false,type:"translatable",translate:"3ds_remake:item.menu.gallery_portrait.portrait_battle.results.health",with:[{type:"score",score:{name:"#temp",objective:"Health"}}]},{type:"text",text:""},{type:"text",text:""}]}}
execute if data storage 3ds_remake:data portrait_battle.easy in minecraft:overworld run data modify storage luigis_mansion:data menu_options.options[-1].components."minecraft:lore" append from block 27 0 0 front_text.messages[0]
execute if data storage 3ds_remake:data portrait_battle.easy in minecraft:overworld run data modify storage luigis_mansion:data menu_options.options[-1].components."minecraft:lore" append from block 27 0 0 front_text.messages[1]
execute if data storage 3ds_remake:data portrait_battle.easy in minecraft:overworld run setblock 27 0 0 minecraft:bedrock
scoreboard players reset #temp Health
scoreboard players reset #temp Time
scoreboard players reset #temp2 Time
scoreboard players reset #temp3 Time
scoreboard players reset #temp4 Time
scoreboard players reset #temp5 Time
scoreboard players reset #temp6 Time
data modify storage luigis_mansion:data menu_options.options[-1].components."minecraft:lore" append value {type:"text",text:""}

execute store result score #temp Health run data get storage 3ds_remake:data portrait_battle.normal.health
execute store result score #temp Time run data get storage 3ds_remake:data portrait_battle.normal.speed
data modify storage luigis_mansion:data menu_options.options[-1].components."minecraft:lore" append value {color:"white",italic:false,type:"translatable",translate:"3ds_remake:item.menu.gallery_portrait.portrait_battle.difficulty.normal"}
execute unless data storage 3ds_remake:data portrait_battle.normal run data modify storage luigis_mansion:data menu_options.options[-1].components."minecraft:lore" append value {color:"white",italic:false,type:"translatable",translate:"3ds_remake:item.menu.gallery_portrait.portrait_battle.results.speed",with:[{type:"text",text:""},{type:"translatable",translate:"3ds_remake:item.menu.gallery_portrait.portrait_battle.not_done"},{type:"text",text:""},{type:"translatable",translate:"3ds_remake:item.menu.gallery_portrait.portrait_battle.not_done"},{type:"text",text:""},{type:"translatable",translate:"3ds_remake:item.menu.gallery_portrait.portrait_battle.not_done"}]}
execute unless data storage 3ds_remake:data portrait_battle.normal run data modify storage luigis_mansion:data menu_options.options[-1].components."minecraft:lore" append value {color:"white",italic:false,type:"translatable",translate:"3ds_remake:item.menu.gallery_portrait.portrait_battle.results.health",with:[{type:"translatable",translate:"3ds_remake:item.menu.gallery_portrait.portrait_battle.not_done"}]}
execute if data storage 3ds_remake:data portrait_battle.normal run function 3ds_remake:room/portrait_battle/convert_time
execute if data storage 3ds_remake:data portrait_battle.normal in minecraft:overworld run setblock 27 0 0 minecraft:oak_sign{front_text:{messages:[{color:"white",italic:false,type:"translatable",translate:"3ds_remake:item.menu.gallery_portrait.portrait_battle.results.speed",with:[{type:"score",score:{name:"#temp6",objective:"Time"}},{type:"score",score:{name:"#temp5",objective:"Time"}},{type:"score",score:{name:"#temp4",objective:"Time"}},{type:"score",score:{name:"#temp3",objective:"Time"}},{type:"score",score:{name:"#temp2",objective:"Time"}},{type:"score",score:{name:"#temp",objective:"Time"}}]},{color:"white",italic:false,type:"translatable",translate:"3ds_remake:item.menu.gallery_portrait.portrait_battle.results.health",with:[{type:"score",score:{name:"#temp",objective:"Health"}}]},{type:"text",text:""},{type:"text",text:""}]}}
execute if data storage 3ds_remake:data portrait_battle.normal in minecraft:overworld run data modify storage luigis_mansion:data menu_options.options[-1].components."minecraft:lore" append from block 27 0 0 front_text.messages[0]
execute if data storage 3ds_remake:data portrait_battle.normal in minecraft:overworld run data modify storage luigis_mansion:data menu_options.options[-1].components."minecraft:lore" append from block 27 0 0 front_text.messages[1]
execute if data storage 3ds_remake:data portrait_battle.normal in minecraft:overworld run setblock 27 0 0 minecraft:bedrock
scoreboard players reset #temp Health
scoreboard players reset #temp Time
scoreboard players reset #temp2 Time
scoreboard players reset #temp3 Time
scoreboard players reset #temp4 Time
scoreboard players reset #temp5 Time
scoreboard players reset #temp6 Time
data modify storage luigis_mansion:data menu_options.options[-1].components."minecraft:lore" append value {type:"text",text:""}

execute store result score #temp Health run data get storage 3ds_remake:data portrait_battle.hard.health
execute store result score #temp Time run data get storage 3ds_remake:data portrait_battle.hard.speed
data modify storage luigis_mansion:data menu_options.options[-1].components."minecraft:lore" append value {color:"white",italic:false,type:"translatable",translate:"3ds_remake:item.menu.gallery_portrait.portrait_battle.difficulty.hard"}
execute unless data storage 3ds_remake:data portrait_battle.hard run data modify storage luigis_mansion:data menu_options.options[-1].components."minecraft:lore" append value {color:"white",italic:false,type:"translatable",translate:"3ds_remake:item.menu.gallery_portrait.portrait_battle.results.speed",with:[{type:"text",text:""},{type:"translatable",translate:"3ds_remake:item.menu.gallery_portrait.portrait_battle.not_done"},{type:"text",text:""},{type:"translatable",translate:"3ds_remake:item.menu.gallery_portrait.portrait_battle.not_done"},{type:"text",text:""},{type:"translatable",translate:"3ds_remake:item.menu.gallery_portrait.portrait_battle.not_done"}]}
execute unless data storage 3ds_remake:data portrait_battle.hard run data modify storage luigis_mansion:data menu_options.options[-1].components."minecraft:lore" append value {color:"white",italic:false,type:"translatable",translate:"3ds_remake:item.menu.gallery_portrait.portrait_battle.results.health",with:[{type:"translatable",translate:"3ds_remake:item.menu.gallery_portrait.portrait_battle.not_done"}]}
execute if data storage 3ds_remake:data portrait_battle.hard run function 3ds_remake:room/portrait_battle/convert_time
execute if data storage 3ds_remake:data portrait_battle.hard in minecraft:overworld run setblock 27 0 0 minecraft:oak_sign{front_text:{messages:[{color:"white",italic:false,type:"translatable",translate:"3ds_remake:item.menu.gallery_portrait.portrait_battle.results.speed",with:[{type:"score",score:{name:"#temp6",objective:"Time"}},{type:"score",score:{name:"#temp5",objective:"Time"}},{type:"score",score:{name:"#temp4",objective:"Time"}},{type:"score",score:{name:"#temp3",objective:"Time"}},{type:"score",score:{name:"#temp2",objective:"Time"}},{type:"score",score:{name:"#temp",objective:"Time"}}]},{color:"white",italic:false,type:"translatable",translate:"3ds_remake:item.menu.gallery_portrait.portrait_battle.results.health",with:[{type:"score",score:{name:"#temp",objective:"Health"}}]},{type:"text",text:""},{type:"text",text:""}]}}
execute if data storage 3ds_remake:data portrait_battle.hard in minecraft:overworld run data modify storage luigis_mansion:data menu_options.options[-1].components."minecraft:lore" append from block 27 0 0 front_text.messages[0]
execute if data storage 3ds_remake:data portrait_battle.hard in minecraft:overworld run data modify storage luigis_mansion:data menu_options.options[-1].components."minecraft:lore" append from block 27 0 0 front_text.messages[1]
execute if data storage 3ds_remake:data portrait_battle.hard in minecraft:overworld run setblock 27 0 0 minecraft:bedrock
scoreboard players reset #temp Health
scoreboard players reset #temp Time
scoreboard players reset #temp2 Time
scoreboard players reset #temp3 Time
scoreboard players reset #temp4 Time
scoreboard players reset #temp5 Time
scoreboard players reset #temp6 Time