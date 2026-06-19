scoreboard players set #temp Time 0
scoreboard players add #temp Health 98
scoreboard players operation #temp Health /= #100 Constants
execute if entity @s[tag=!infinite_health] run tag @e[tag=this_health_display,limit=1] remove infinite_health
execute unless score @s Health = #temp Health run data modify entity @s text set value {type:"score",score:{objective:"Health",name:"#temp"},color:"light_purple"}
execute if entity @s[tag=was_infinite_health,tag=!infinite_health] run data modify entity @s text set value {type:"score",score:{objective:"Health",name:"#temp"},color:"light_purple"}
tag @s[tag=was_infinite_health,tag=!infinite_health] remove was_infinite_health
$execute positioned ~ ~0.2 ~ run teleport @s ~ ~$(up) ~ ~ ~
scoreboard players operation @s Health = #temp Health
scoreboard players operation @s Room = #temp Room
scoreboard players reset #temp Time