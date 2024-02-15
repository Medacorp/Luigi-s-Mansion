execute unless data storage luigis_mansion:data reflections run data modify storage luigis_mansion:data reflections set value []
data modify storage luigis_mansion:data reflections append value {id:0,room:0,mirror:{value:0,z:0b,set_by_furniture_entity:0b},data:{},entity_id:"minecraft:armor_stand"}
execute store result storage luigis_mansion:data reflections[-1].room int 1 run scoreboard players get @s Room
execute if score @s MirrorX matches -2147483648.. store result storage luigis_mansion:data reflections[-1].mirror.value int 1 run scoreboard players get @s MirrorX
execute if score @s MirrorZ matches -2147483648.. store result storage luigis_mansion:data reflections[-1].mirror.value int 1 run scoreboard players get @s MirrorZ
execute if score @s MirrorZ matches -2147483648.. run data modify storage luigis_mansion:data reflections[-1].mirror.z set value 1b
# to remove
execute if entity @s[tag=mirror_set_by_furniture_entity] run data modify storage luigis_mansion:data reflections[-1].mirror.set_by_furniture_entity set value 1b
tag @s remove mirror_set_by_furniture_entity
# //to remove
data modify storage luigis_mansion:data reflections[-1].data set from entity @s {}
execute if entity @s[type=minecraft:item_frame] run data modify storage luigis_mansion:data reflections[-1].entity_id set value "minecraft:item_frame"

execute unless score @s ReflectionNr matches -2147483648.. run function luigis_mansion:entities/reflection/get_number
execute store result storage luigis_mansion:data reflections[-1].id int 1 run scoreboard players get @s ReflectionNr