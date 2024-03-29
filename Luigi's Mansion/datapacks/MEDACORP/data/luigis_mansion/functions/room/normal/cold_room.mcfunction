execute if data storage luigis_mansion:data dialogs[{name:{namespace:"luigis_mansion",id:"meet_e_gadd"}}] store result score #temp Time run data get storage luigis_mansion:data dialogs[{name:{namespace:"luigis_mansion",id:"meet_e_gadd"}}].progress
execute if score #temp Time matches 1..71 run tag @s[scores={Room=3}] add cold_room
execute if score #temp Time matches 532..1186 run tag @s[scores={Room=3}] add cold_room
scoreboard players reset #temp Time
tag @s[scores={Room=68}] add cold_room