execute if entity @s[scores={Shrunk=0}] run playsound luigis_mansion:item.flashlight.off player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Shrunk=1..}] run playsound luigis_mansion:item.flashlight.off player @a[tag=same_room] ~ ~ ~ 1 2
data modify entity @s data.inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"flashlight"}}}] merge from entity @s data.inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"flashlight"}}}].components."minecraft:custom_data".model_data.off
tag @s remove had_flashlight_on