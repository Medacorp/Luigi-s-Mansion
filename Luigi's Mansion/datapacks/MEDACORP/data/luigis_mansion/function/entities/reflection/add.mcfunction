execute unless data storage luigis_mansion:data reflections run data modify storage luigis_mansion:data reflections set value []
data modify storage luigis_mansion:data reflections append value {id:0,room:0,mirror:{value:0,z:0b,set_by_furniture_entity:0b},data:{},no_sync:{}}
execute store result storage luigis_mansion:data reflections[-1].room int 1 run scoreboard players get @s Room
execute if score @s MirrorX matches -2147483648.. store result storage luigis_mansion:data reflections[-1].mirror.value int 1 run scoreboard players get @s MirrorX
execute if score @s MirrorZ matches -2147483648.. store result storage luigis_mansion:data reflections[-1].mirror.value int 1 run scoreboard players get @s MirrorZ
execute if score @s MirrorZ matches -2147483648.. run data modify storage luigis_mansion:data reflections[-1].mirror.z set value 1b
#todelete - old mirror reflections
execute if entity @s[tag=mirror_set_by_furniture_entity] run data modify storage luigis_mansion:data reflections[-1].mirror.set_by_furniture_entity set value 1b
tag @s remove mirror_set_by_furniture_entity
#/todelete
data modify storage luigis_mansion:data reflections[-1].no_sync.Pos set from entity @s Pos
data modify storage luigis_mansion:data reflections[-1].no_sync.Rotation set from entity @s Rotation
data modify storage luigis_mansion:data reflections[-1].no_sync.tags set from entity @s Tags
data modify storage luigis_mansion:data reflections[-1].data.item set from entity @s item
data modify storage luigis_mansion:data reflections[-1].data.item merge from storage luigis_mansion:data reflections[-1].data.item.components."minecraft:custom_data".mirror
data modify storage luigis_mansion:data reflections[-1].data.transformation set from entity @s transformation
execute if data storage luigis_mansion:data reflections[-1].data.transformation store result storage luigis_mansion:data reflections[-1].data.transformation.translation[0] float 0.01 run data get storage luigis_mansion:data reflections[-1].data.transformation.translation[0] -100
execute if data storage luigis_mansion:data reflections[-1].data.transformation store result storage luigis_mansion:data reflections[-1].data.transformation.left_rotation[1] float 0.01 run data get storage luigis_mansion:data reflections[-1].data.transformation.left_rotation[1] -100
execute if data storage luigis_mansion:data reflections[-1].data.transformation store result storage luigis_mansion:data reflections[-1].data.transformation.left_rotation[2] float 0.01 run data get storage luigis_mansion:data reflections[-1].data.transformation.left_rotation[2] -100
execute if data storage luigis_mansion:data reflections[-1].data.transformation store result storage luigis_mansion:data reflections[-1].data.transformation.right_rotation[1] float 0.01 run data get storage luigis_mansion:data reflections[-1].data.transformation.right_rotation[1] -100
execute if data storage luigis_mansion:data reflections[-1].data.transformation store result storage luigis_mansion:data reflections[-1].data.transformation.right_rotation[2] float 0.01 run data get storage luigis_mansion:data reflections[-1].data.transformation.right_rotation[2] -100

execute unless score @s ReflectionNr matches -2147483648.. run function luigis_mansion:entities/reflection/get_number
execute store result storage luigis_mansion:data reflections[-1].id int 1 run scoreboard players get @s ReflectionNr