$execute positioned ~ ~0.2 ~ run summon minecraft:text_display ~ ~$(up) ~ {CustomName:{type:"translatable",translate:"luigis_mansion:entity.ghost_heart"},text:{type:"text",text:"\u221d",color:"light_purple"},brightness:{block:15,sky:15},Tags:["health_display","this_health_display"]}
scoreboard players operation @e[tag=this_health_display,limit=1] Room = #temp Room
scoreboard players operation @e[tag=this_health_display,limit=1] GhostNr = @s GhostNr
scoreboard players add #temp Health 98
scoreboard players operation #temp Health /= #100 Constants
scoreboard players operation @e[tag=this_health_display,limit=1] Health = #temp Health
execute if entity @s[tag=!infinite_health] run data modify entity @e[tag=this_health_display,limit=1] text set value {type:"score",score:{objective:"Health",name:"#temp"},color:"light_purple"}
execute unless entity @s[tag=!infinite_health] run tag @e[tag=this_health_display,limit=1] add infinite_health
execute unless entity @s[tag=!infinite_health] run tag @e[tag=this_health_display,limit=1] add was_infinite_health
tag @s add spawned_health_display