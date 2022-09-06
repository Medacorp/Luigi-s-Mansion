execute store result score #temp Time run data get entity @s[nbt={ArmorItems:[{id:"minecraft:diamond_pickaxe",tag:{Damage:1}}]}] ArmorItems[3].tag.CustomModelData
execute if score #temp Time matches 47..63 store result entity @s ArmorItems[3].tag.CustomModelData int 1 run scoreboard players add #temp Time 79
execute if score #temp Time matches 86..87 store result entity @s ArmorItems[3].tag.CustomModelData int 1 run scoreboard players add #temp Time 57
execute if score #temp Time matches 99..100 store result entity @s ArmorItems[3].tag.CustomModelData int 1 run scoreboard players add #temp Time 46
execute store result score #temp Time run data get entity @s[nbt={HandItems:[{id:"minecraft:diamond_pickaxe",tag:{Damage:2}}]}] HandItems[0].tag.CustomModelData
execute if score #temp Time matches 47..62 store result entity @s HandItems[0].tag.CustomModelData int 1 run scoreboard players add #temp Time 79
execute if score #temp Time matches 86 store result entity @s HandItems[0].tag.CustomModelData int 1 run scoreboard players add #temp Time 57
execute if score #temp Time matches 99 store result entity @s HandItems[0].tag.CustomModelData int 1 run scoreboard players add #temp Time 46
execute store result score #temp Time run data get entity @s[nbt={HandItems:[{id:"minecraft:diamond_pickaxe",tag:{Damage:3}}]}] HandItems[1].tag.CustomModelData
execute if score #temp Time matches 47..62 store result entity @s HandItems[1].tag.CustomModelData int 1 run scoreboard players add #temp Time 79
execute if score #temp Time matches 86 store result entity @s HandItems[1].tag.CustomModelData int 1 run scoreboard players add #temp Time 57
execute if score #temp Time matches 99 store result entity @s HandItems[1].tag.CustomModelData int 1 run scoreboard players add #temp Time 46
scoreboard players reset #temp Time