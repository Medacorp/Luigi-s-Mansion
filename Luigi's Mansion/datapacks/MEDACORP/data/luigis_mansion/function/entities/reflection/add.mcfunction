execute unless data storage luigis_mansion:data reflections run data modify storage luigis_mansion:data reflections set value []
data modify storage luigis_mansion:data reflections append value {id:0,room:0,mirror:{value:0,z:0b,set_by_furniture_entity:0b},data:{},no_sync:{},entity_id:"minecraft:armor_stand"}
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
data modify storage luigis_mansion:data reflections[-1].no_sync.HasVisualFire set from entity @s HasVisualFire
data modify storage luigis_mansion:data reflections[-1].no_sync.tags set from entity @s Tags
data modify storage luigis_mansion:data reflections[-1].data.Pose set from entity @s Pose
execute store result storage luigis_mansion:data mirror.data.Pose.Head[1] float 0.01 run data get storage luigis_mansion:data reflections[-1].data.Head[1] -100
execute store result storage luigis_mansion:data mirror.data.Pose.Head[2] float 0.01 run data get storage luigis_mansion:data reflections[-1].data.Head[2] -100
data modify storage luigis_mansion:data reflections[-1].data.ArmorItems set from entity @s ArmorItems
data modify storage luigis_mansion:data reflections[-1].data.ArmorItems[3] merge from storage luigis_mansion:data reflections[-1].data.ArmorItems[3].components."minecraft:custom_data".mirror
data modify storage luigis_mansion:data reflections[-1].data.attributes set from entity @s attributes
#todelete - old painting furniture
data modify storage luigis_mansion:data reflections[-1].data.Item set from entity @s Item
data modify storage luigis_mansion:data reflections[-1].data.ItemRotation set from entity @s ItemRotation
data modify storage luigis_mansion:data reflections[-1].no_sync.Facing set from entity @s Facing
execute if entity @s[type=minecraft:item_frame] run data modify storage luigis_mansion:data reflections[-1].entity_id set value "minecraft:item_frame"
#/todelete

execute unless score @s ReflectionNr matches -2147483648.. run function luigis_mansion:entities/reflection/get_number
execute store result storage luigis_mansion:data reflections[-1].id int 1 run scoreboard players get @s ReflectionNr