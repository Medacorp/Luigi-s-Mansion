execute if entity @s[scores={Shrunk=0}] run playsound luigis_mansion:item.flashlight.off player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Shrunk=1..}] run playsound luigis_mansion:item.flashlight.off player @a[tag=same_room] ~ ~ ~ 1 2
data modify storage luigis_mansion:data inventory set from entity @s Inventory
data modify storage luigis_mansion:data inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"flashlight"}}}] merge from storage luigis_mansion:data inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"flashlight"}}}]."minecraft:custom_data".model_data.off
function luigis_mansion:other/sync_inventory
tag @s remove had_flashlight_on