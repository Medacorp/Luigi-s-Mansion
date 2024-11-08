scoreboard players set @s ActionTime 1
function luigis_mansion:room/dark_room
data modify entity @s[tag=dark_room,tag=!lit,nbt={ArmorItems:[{components:{"minecraft:custom_model_data":{floats:[0f]}}}]}] ArmorItems[3] merge from entity @s ArmorItems[3].components."minecraft:custom_data".model_data.open
execute unless entity @e[tag=same_room,tag=furniture,tag=!open,nbt={ArmorItems:[{components:{"minecraft:custom_data":{open_animation:{namespace:"3ds_remake",id:"deer_head"}}}}]}] run tag @s add lit
data modify entity @s[tag=dark_room,tag=lit] ArmorItems[3] merge from entity @s ArmorItems[3].components."minecraft:custom_data".model_data.lit
tag @s[tag=!dark_room] remove open
tag @s[tag=!searched,tag=!lit] remove open
tag @s remove dark_room
tag @s[tag=!open] remove lit
scoreboard players set @s[tag=!open] ActionTime 0
data modify entity @s[tag=!open] ArmorItems[3] merge from entity @s ArmorItems[3].components."minecraft:custom_data".model_data.default
