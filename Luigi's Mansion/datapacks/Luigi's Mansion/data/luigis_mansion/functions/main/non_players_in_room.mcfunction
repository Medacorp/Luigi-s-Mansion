execute store result score #temp Room run scoreboard players get @s Room
execute as @e run function #luigis_mansion:get_same_room
scoreboard players reset #temp Room

execute if entity @s[tag=first_key,tag=play] run function luigis_mansion:dialog/first_key
execute if entity @s[tag=burning_floor] run function luigis_mansion:blocks/burning_floor

function #luigis_mansion:entities
scoreboard players reset #temp Move

tag @s[scores={MirrorX=-2147483648..},tag=!no_reflection] add mirrored
tag @s[scores={MirrorZ=-2147483648..},tag=!no_reflection] add mirrored
execute if entity @s[tag=mirrored] unless entity @s[type=!minecraft:armor_stand,type=!minecraft:item_frame] run function luigis_mansion:entities/reflection/add
scoreboard players reset @s[tag=!mirrored] ReflectionNr
tag @s[tag=mirrored] remove mirrored
scoreboard players reset @s LightX
scoreboard players reset @s LightY
scoreboard players reset @s LightZ
scoreboard players reset @s MirrorX
scoreboard players reset @s MirrorZ

tag @e[tag=same_room] remove same_room