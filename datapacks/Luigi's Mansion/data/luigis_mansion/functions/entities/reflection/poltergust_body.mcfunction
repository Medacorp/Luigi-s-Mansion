execute store result score #temp Time run data get entity @s ArmorItems[3].tag.CustomModelData
execute if score #mirrored Selected matches 0 store result entity @s ArmorItems[3].tag.CustomModelData int 1 run scoreboard players add #temp Time 1
execute if score #mirrored Selected matches 1 store result entity @s ArmorItems[3].tag.CustomModelData int 1 run scoreboard players remove #temp Time 1
scoreboard players reset #temp Time