data modify storage luigis_mansion:data menu_options.options[-1].tag.luigis_mansion.option.value set from storage 3ds_remake:data portrait_battle[0].mansion

execute store result score #temp Health run data get storage 3ds_remake:data portrait_battle.peaceful.health
execute store result score #temp Time run data get storage 3ds_remake:data portrait_battle.peaceful.speed
data modify storage luigis_mansion:data menu_options.options[-1].tag.display.Lore append value {"color":"white","italic":false,"type":"translatable","translate":"3ds_remake:message.gallery.portrait_battle.difficulty.peaceful"}
execute if score #temp Health matches -1 run data modify storage luigis_mansion:data menu_options.options[-1].tag.display.Lore append value '{"color":"white","italic":false,"type":"translatable","translate":"3ds_remake:message.gallery.portrait_battle.results.speed","with":[{"type":"text","text":""},{"type":"translatable","translate":"3ds_remake:message.gallery.portrait_battle.not_done"},{"type":"text","text":""},{"type":"translatable","translate":"3ds_remake:message.gallery.portrait_battle.not_done"},{"type":"text","text":""},{"type":"translatable","translate":"3ds_remake:message.gallery.portrait_battle.not_done"}]}'
execute if score #temp Health matches -1 run data modify storage luigis_mansion:data menu_options.options[-1].tag.display.Lore append value '{"color":"white","italic":false,"type":"translatable","translate":"3ds_remake:message.gallery.portrait_battle.results.health","with":[{"type":"translatable","translate":"3ds_remake:message.gallery.portrait_battle.not_done"}]}'
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
data modify storage luigis_mansion:data menu_options.options[-1].tag.display.Lore append value {"type":"text","text":""}

execute store result score #temp Health run data get storage 3ds_remake:data portrait_battle.easy.health
execute store result score #temp Time run data get storage 3ds_remake:data portrait_battle.easy.speed
data modify storage luigis_mansion:data menu_options.options[-1].tag.display.Lore append value {"color":"white","italic":false,"type":"translatable","translate":"3ds_remake:message.gallery.portrait_battle.difficulty.easy"}
execute if score #temp Health matches -1 run data modify storage luigis_mansion:data menu_options.options[-1].tag.display.Lore append value '{"color":"white","italic":false,"type":"translatable","translate":"3ds_remake:message.gallery.portrait_battle.results.speed","with":[{"type":"text","text":""},{"type":"translatable","translate":"3ds_remake:message.gallery.portrait_battle.not_done"},{"type":"text","text":""},{"type":"translatable","translate":"3ds_remake:message.gallery.portrait_battle.not_done"},{"type":"text","text":""},{"type":"translatable","translate":"3ds_remake:message.gallery.portrait_battle.not_done"}]}'
execute if score #temp Health matches -1 run data modify storage luigis_mansion:data menu_options.options[-1].tag.display.Lore append value '{"color":"white","italic":false,"type":"translatable","translate":"3ds_remake:message.gallery.portrait_battle.results.health","with":[{"type":"translatable","translate":"3ds_remake:message.gallery.portrait_battle.not_done"}]}'
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
data modify storage luigis_mansion:data menu_options.options[-1].tag.display.Lore append value {"type":"text","text":""}

execute store result score #temp Health run data get storage 3ds_remake:data portrait_battle.normal.health
execute store result score #temp Time run data get storage 3ds_remake:data portrait_battle.normal.speed
data modify storage luigis_mansion:data menu_options.options[-1].tag.display.Lore append value {"color":"white","italic":false,"type":"translatable","translate":"3ds_remake:message.gallery.portrait_battle.difficulty.normal"}
execute if score #temp Health matches -1 run data modify storage luigis_mansion:data menu_options.options[-1].tag.display.Lore append value '{"color":"white","italic":false,"type":"translatable","translate":"3ds_remake:message.gallery.portrait_battle.results.speed","with":[{"type":"text","text":""},{"type":"translatable","translate":"3ds_remake:message.gallery.portrait_battle.not_done"},{"type":"text","text":""},{"type":"translatable","translate":"3ds_remake:message.gallery.portrait_battle.not_done"},{"type":"text","text":""},{"type":"translatable","translate":"3ds_remake:message.gallery.portrait_battle.not_done"}]}'
execute if score #temp Health matches -1 run data modify storage luigis_mansion:data menu_options.options[-1].tag.display.Lore append value '{"color":"white","italic":false,"type":"translatable","translate":"3ds_remake:message.gallery.portrait_battle.results.health","with":[{"type":"translatable","translate":"3ds_remake:message.gallery.portrait_battle.not_done"}]}'
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
data modify storage luigis_mansion:data menu_options.options[-1].tag.display.Lore append value {"type":"text","text":""}

execute store result score #temp Health run data get storage 3ds_remake:data portrait_battle.hard.health
execute store result score #temp Time run data get storage 3ds_remake:data portrait_battle.hard.speed
data modify storage luigis_mansion:data menu_options.options[-1].tag.display.Lore append value {"color":"white","italic":false,"type":"translatable","translate":"3ds_remake:message.gallery.portrait_battle.difficulty.hard"}
execute if score #temp Health matches -1 run data modify storage luigis_mansion:data menu_options.options[-1].tag.display.Lore append value '{"color":"white","italic":false,"type":"translatable","translate":"3ds_remake:message.gallery.portrait_battle.results.speed","with":[{"type":"text","text":""},{"type":"translatable","translate":"3ds_remake:message.gallery.portrait_battle.not_done"},{"type":"text","text":""},{"type":"translatable","translate":"3ds_remake:message.gallery.portrait_battle.not_done"},{"type":"text","text":""},{"type":"translatable","translate":"3ds_remake:message.gallery.portrait_battle.not_done"}]}'
execute if score #temp Health matches -1 run data modify storage luigis_mansion:data menu_options.options[-1].tag.display.Lore append value '{"color":"white","italic":false,"type":"translatable","translate":"3ds_remake:message.gallery.portrait_battle.results.health","with":[{"type":"translatable","translate":"3ds_remake:message.gallery.portrait_battle.not_done"}]}'
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
data modify storage luigis_mansion:data menu_options.options[-1].tag.display.Lore append value {"type":"text","text":""}