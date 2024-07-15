tag @s[scores={ChangedMansion=1,Room=0}] add remove_from_existence
tag @s[tag=remove_from_existence,tag=cannot_be_removed] remove remove_from_existence

function luigis_mansion:main/find_hitters

execute if entity @s[scores={Room=..0}] if score #mirrored Selected matches 1 run scoreboard players set #mirrored Selected 2
scoreboard players operation #temp Room = @s Room
execute as @e[tag=!model_piece,tag=!reflection] run function luigis_mansion:main/get_same_room
scoreboard players reset #temp Room

execute if entity @s[type=minecraft:marker] run function luigis_mansion:entities/tick with entity @s data.entity
execute if entity @s[type=minecraft:armor_stand,tag=!furniture] run function luigis_mansion:entities/tick with entity @s ArmorItems[3].components."minecraft:custom_data".entity
execute if entity @s[type=minecraft:armor_stand,tag=furniture] run function luigis_mansion:entities/furniture/tick
scoreboard players reset #temp Move

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
scoreboard players reset @s[tag=!furniture] MirrorX
scoreboard players reset @s[tag=!furniture] MirrorZ

execute if entity @s[tag=!furniture,tag=debug_entity] run function luigis_mansion:main/debug
execute if entity @s[tag=!furniture,tag=!debug_entity] if score #debug_entities Selected matches 1.. run function luigis_mansion:main/debug

tag @e[tag=same_room] remove same_room
tag @e[tag=exact_same_room] remove exact_same_room
execute if score #mirrored Selected matches 2 run scoreboard players set #mirrored Selected 1

execute if entity @s[type=minecraft:item] run function luigis_mansion:main/items

# Fix multiple lightning loading in
execute if entity @s[type=minecraft:lightning_bolt] run kill @e[type=minecraft:lightning_bolt,distance=0.1..]
execute if entity @s[type=minecraft:lightning_bolt] run kill @e[tag=lightning]

execute if entity @s[tag=!furniture] store result score @s PositionX run data get entity @s Pos[0] 10
execute if entity @s[tag=!furniture] store result score @s PositionY run data get entity @s Pos[1] 10
execute if entity @s[tag=!furniture] store result score @s PositionZ run data get entity @s Pos[2] 10
execute if entity @s[tag=!furniture] run scoreboard players operation @s PositionY += @s EntityYOffset

tag @s remove scanned
tag @s remove in_vacuum
tag @s remove in_dust
tag @s remove in_fire
tag @s remove in_water
tag @s remove in_ice
tag @s[tag=freeze_animation_next_tick] add freeze_animation
tag @s remove freeze_animation_next_tick

tag @a remove vacuuming_me
tag @a remove expelling_me
tag @a remove dusting_me
tag @a remove burning_me
tag @a remove watering_me
tag @a remove freezing_me
execute unless data entity @s[type=minecraft:armor_stand,tag=!model_piece] ArmorItems[3].count run data modify entity @s ArmorItems[3] set value {id:"minecraft:stone_button",count:1}
data modify entity @s[type=minecraft:armor_stand,tag=!model_piece] ArmorItems[3].components."minecraft:custom_data".hit_by set value {vacuum:[],dust:[],fire:[],water:[],ice:[]}
data modify entity @s[type=minecraft:marker] data.hit_by set value {vacuum:[],dust:[],fire:[],water:[],ice:[]}

tag @e[tag=target,limit=1] remove target
tag @e[tag=potential_target] remove potential_target
tag @s[tag=remove_from_existence] add dead
teleport @s[tag=dead,tag=!captured] ~ ~-100 ~
scoreboard players reset @s[tag=dead,tag=!captured]
tag @s[tag=dead,tag=!captured] add can_die
kill @s[tag=dead,tag=!captured]
tag @s[tag=dead] remove captured
scoreboard players reset @s Steps