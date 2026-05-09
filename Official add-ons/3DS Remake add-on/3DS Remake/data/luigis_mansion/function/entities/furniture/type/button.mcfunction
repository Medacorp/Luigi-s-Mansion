execute if entity @s[tag=searched,tag=active] run playsound luigis_mansion:furniture.button.press block @a[tag=same_room] ~ ~ ~ 1
tag @s[tag=searched] remove active
data modify entity @s[tag=active,tag=!was_active] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.active
data modify entity @s[tag=!active,tag=was_active] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.default
tag @s remove was_active
tag @s[tag=active] add was_active
tag @s remove searched