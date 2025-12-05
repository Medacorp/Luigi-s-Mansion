$function $(namespace):entities/portrificationizing_ghost/portrait/$(id)
$execute if data storage luigis_mansion:data dialogs[{portraits:{}}] run data modify storage luigis_mansion:data dialogs[{portraits:{}}].portraits.new append value {namespace:"$(namespace)",id:"$(id)"}
execute if data storage luigis_mansion:data dialogs[{portraits:{}}] store result score #temp Time run data get storage luigis_mansion:data dialogs[{portraits:{}}].portraits.total
execute if data storage luigis_mansion:data dialogs[{portraits:{}}] store result storage luigis_mansion:data dialogs[{portraits:{}}].portraits.total int 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time