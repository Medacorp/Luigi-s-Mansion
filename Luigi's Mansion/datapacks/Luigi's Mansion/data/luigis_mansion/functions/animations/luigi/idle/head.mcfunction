data modify entity @s[tag=!dark_room_head,nbt={ArmorItems:[{tag:{CustomModelData:20}}]}] ArmorItems[3].tag.CustomModelData set value 18
data modify entity @s[tag=!dark_room_head,nbt={ArmorItems:[{tag:{CustomModelData:24}}]}] ArmorItems[3].tag.CustomModelData set value 22
data modify entity @s[tag=dark_room_head,nbt={ArmorItems:[{tag:{CustomModelData:18}}]}] ArmorItems[3].tag.CustomModelData set value 20
data modify entity @s[tag=dark_room_head,nbt={ArmorItems:[{tag:{CustomModelData:22}}]}] ArmorItems[3].tag.CustomModelData set value 24
data modify entity @s[scores={Time=1..}] Pose.Head[2] set value 0.001f
data modify entity @s[scores={Time=1..},tag=flipped_gravity] Pose.Head[2] set value -180.0f
scoreboard players set @s Time 0