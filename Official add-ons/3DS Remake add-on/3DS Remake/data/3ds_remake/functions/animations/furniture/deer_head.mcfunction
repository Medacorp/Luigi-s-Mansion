scoreboard players set @s ActionTime 1
function #luigis_mansion:room/dark_room
data modify entity @s[tag=dark_room,nbt={ArmorItems:[{tag:{CustomModelData:123}}]}] ArmorItems[3].tag.CustomModelData set value -14
execute unless entity @e[tag=deer_head,tag=same_room,nbt={ArmorItems:[{tag:{CustomModelData:123}}]}] run tag @s add lit
data modify entity @s[tag=dark_room,tag=lit] ArmorItems[3].tag.CustomModelData set value -13
tag @s[tag=!dark_room] remove open
tag @s[tag=!searched,nbt={ArmorItems:[{tag:{CustomModelData:-14}}]}] remove open
tag @s remove dark_room
tag @s[tag=!open] remove lit
scoreboard players set @s[tag=!open] ActionTime 0
data modify entity @s[tag=!open] ArmorItems[3].tag.CustomModelData set value 123
