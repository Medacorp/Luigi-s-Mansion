tag @s[scores={ChangedMansion=1,Room=0}] add remove_from_existence
tag @s[tag=remove_from_existence,tag=cannot_be_removed] remove remove_from_existence

execute if entity @s[scores={Room=..0}] if score #mirrored Selected matches 1 run scoreboard players set #mirrored Selected 2
scoreboard players operation #temp Room = @s Room
execute as @e[tag=!model_piece,tag=!reflection] run function luigis_mansion:main/get_same_room
scoreboard players reset #temp Room

function luigis_mansion:main/entity/find_hitters

execute if entity @s[tag=!furniture] run function luigis_mansion:main/entity/non_furniture
execute if entity @s[tag=furniture] run function luigis_mansion:main/entity/furniture

execute if entity @s[tag=applied_dialog_effects,tag=!in_dialog] run function luigis_mansion:dialog/unapply_effects
tag @s remove in_dialog
tag @s[scores={MirrorX=-2147483648..},tag=!no_reflection] add mirrored
tag @s[scores={MirrorZ=-2147483648..},tag=!no_reflection] add mirrored
execute if entity @s[tag=mirrored,tag=!hidden] unless entity @s[type=!minecraft:armor_stand,type=!minecraft:item_frame] run function luigis_mansion:entities/reflection/add
scoreboard players reset @s[tag=!mirrored] ReflectionNr
tag @s[tag=mirrored] remove mirrored
scoreboard players reset @s LightX
scoreboard players reset @s LightY
scoreboard players reset @s LightZ

execute as @e[tag=same_room] run function luigis_mansion:main/entity/untag_same_room
execute if score #mirrored Selected matches 2 run scoreboard players set #mirrored Selected 1

tag @s remove scanned
tag @s remove in_vacuum
tag @s remove in_dust
tag @s remove in_fire
tag @s remove in_water
tag @s remove in_ice
tag @s[tag=freeze_animation_next_tick] add freeze_animation
tag @s remove freeze_animation_next_tick

execute unless data entity @s[type=minecraft:armor_stand] ArmorItems[3].count run data modify entity @s ArmorItems[3] set value {id:"minecraft:stone_button",count:1}

tag @s[tag=remove_from_existence] add dead
teleport @s[tag=dead] ~ ~-100 ~
scoreboard players reset @s[tag=dead]
kill @s[tag=dead]