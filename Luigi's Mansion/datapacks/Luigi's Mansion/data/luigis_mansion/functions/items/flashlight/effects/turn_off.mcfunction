execute if entity @s[scores={Shrunk=0}] run playsound luigis_mansion:item.flashlight.off player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Shrunk=1..}] run playsound luigis_mansion:item.flashlight.off player @a[tag=same_room] ~ ~ ~ 1 2
data modify storage luigis_mansion:data inventory set from entity @s Inventory
execute store result score #temp Time run data get storage luigis_mansion:data inventory[{tag:{luigis_mansion:{id:"luigis_mansion:flashlight"}}}].tag.CustomModelData
execute store result storage luigis_mansion:data inventory[{tag:{luigis_mansion:{id:"luigis_mansion:flashlight"}}}].tag.CustomModelData int 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time
function luigis_mansion:other/sync_inventory
tag @s remove had_flashlight_on