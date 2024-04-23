execute if entity @s[scores={Shrunk=0}] run playsound luigis_mansion:item.flashlight.on player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Shrunk=1..}] run playsound luigis_mansion:item.flashlight.on player @a[tag=same_room] ~ ~ ~ 1 2
data modify storage luigis_mansion:data inventory set from entity @s Inventory
execute store result score #temp Time run data get storage luigis_mansion:data inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"flashlight"}}}].components."minecraft:custom_model_data"
execute store result storage luigis_mansion:data inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"flashlight"}}}].components."minecraft:custom_model_data" int 1 run scoreboard players remove #temp Time 1
scoreboard players reset #temp Time
function luigis_mansion:other/sync_inventory
tag @s add had_flashlight_on