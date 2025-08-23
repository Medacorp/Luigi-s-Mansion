$execute if entity @s[tag=!boo_poster] at @e[tag=vacuuming_me,scores={ID=$(puller)},limit=1] run function luigis_mansion:spawn_entities/vacuumed_cloth
tag @s[tag=!boo_poster] add remove_from_existence
execute store result score #temp Time run data get entity @s[tag=boo_poster] transformation.scale[0] 10
execute store result score #temp2 Time run data get entity @s[tag=boo_poster] transformation.scale[1] 10
execute unless score #temp Time < #temp2 Time run data modify entity @s[tag=boo_poster] item.components."minecraft:item_model" set value "3ds_remake:furniture/poster/boo_horizontal"
execute if score #temp Time < #temp2 Time run data modify entity @s[tag=boo_poster] item.components."minecraft:item_model" set value "3ds_remake:furniture/poster/boo_vertical"
scoreboard players reset #temp Time
scoreboard players reset #temp2 Time
data modify storage luigis_mansion:data damage set value {method:{namespace:"luigis_mansion",id:"poster"},amount:5,animation:{namespace:"luigis_mansion",id:"knockback/large"}}
execute if entity @s[tag=boo_poster] as @e[tag=same_room,tag=vacuuming_me] run function luigis_mansion:entities/luigi/damage
data remove storage luigis_mansion:data damage
tag @s remove open