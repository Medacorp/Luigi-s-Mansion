tag @s add this_luigi
data modify storage luigis_mansion:data luigi set value {tags:[],room:0,mirror:{},initial_animation_progress:0,alive:0b,invulnerable:0b,shrunk:0b,animation:{namespace:"luigis_mansion",id:"idle"},reset_rotation:0b,selected_item:{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:empty"}},inventory:[]}
data modify storage luigis_mansion:data luigi.animation set from entity @s data.animation
execute unless data storage luigis_mansion:data luigi.animation{namespace:"luigis_mansion",id:"idle"} run tag @s[tag=!animation_may_move,tag=!idle] remove walking
execute unless data storage luigis_mansion:data luigi.animation{namespace:"luigis_mansion",id:"idle"} run tag @s[tag=!animation_may_move,tag=!idle] remove running
execute unless data storage luigis_mansion:data luigi.animation{namespace:"luigis_mansion",id:"idle"} run tag @s[tag=!animation_may_move,tag=!idle] remove sneaking
data modify storage luigis_mansion:data luigi.tags set from entity @s Tags
execute store result storage luigis_mansion:data luigi.room int 1 run scoreboard players get @s Room
execute if entity @s[scores={MirrorX=-2147483648..}] store result storage luigis_mansion:data luigi.mirror.x int 1 run scoreboard players get @s MirrorX
execute if entity @s[scores={MirrorZ=-2147483648..}] store result storage luigis_mansion:data luigi.mirror.z int 1 run scoreboard players get @s MirrorZ
#todelete - old mirror reflections
execute store result storage luigis_mansion:data luigi.mirror.mirror_set_by_furniture_entity byte 1 if entity @s[tag=mirror_set_by_furniture_entity]
#/todelete
data modify storage luigis_mansion:data luigi.initial_animation_progress set from entity @s data.initial_animation_progress
data remove entity @s data.initial_animation_progress
execute store result storage luigis_mansion:data luigi.alive byte 1 if entity @s[tag=!death_animation]
execute store result storage luigis_mansion:data luigi.reset_rotation byte 1 if entity @s[tag=reset_rotation,tag=!separated_camera]
execute store result storage luigis_mansion:data luigi.shrunk byte 1 if entity @s[scores={Shrunk=1..}]
execute store result storage luigis_mansion:data luigi.invulnerable byte 1 if entity @s[scores={Invulnerable=1..,AnimationProgress=0},tag=!capturing_ghost]
data modify storage luigis_mansion:data luigi.inventory set from entity @s data.inventory
execute if entity @s[tag=riding_poltergust] run data modify storage luigis_mansion:data luigi.selected_item set from storage luigis_mansion:data luigi.inventory[{components:{"minecraft:custom_data":{is_poltergust:1b}}}]
execute if entity @s[tag=poltergust_grabbed,tag=dark_room] run data modify storage luigis_mansion:data luigi.selected_item set from storage luigis_mansion:data luigi.inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"flashlight"}}}]
data modify storage luigis_mansion:data luigi.selected_item set from entity @s[tag=!game_boy_horror_selected,nbt=!{data:{selected_item:{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"interact"}}}}}] data.selected_item
execute if entity @s[tag=freeze_animation] as @e[type=minecraft:armor_stand,tag=gooigi_model] run function 3ds_remake:animations/gooigi/frozen
execute if entity @s[tag=!freeze_animation] as @e[type=minecraft:armor_stand,tag=gooigi_model,tag=source,limit=1] run function 3ds_remake:animations/gooigi/main
execute if entity @s[tag=!freeze_animation] as @e[type=minecraft:armor_stand,tag=gooigi_model,tag=!source] at @e[tag=this_gooigi,tag=source,limit=1] run function 3ds_remake:animations/gooigi/main
data modify entity @s[tag=!freeze_animation] data.head_rotation set from storage luigis_mansion:data luigi.head_rotation
tag @s remove this_luigi
execute store result score #temp Time if entity @e[tag=this_gooigi]
execute if entity @s[tag=player] unless score #temp Time matches 10 run tag @e[tag=this_gooigi] add dead
scoreboard players reset #temp Time
execute if entity @s[tag=player] if entity @e[tag=this_gooigi,limit=1] run scoreboard players set @s ModelTime 0
execute if entity @s[tag=player] unless entity @e[tag=this_gooigi,limit=1] run scoreboard players add @s[tag=!looking_at_map] ModelTime 1
execute if entity @s[tag=player] unless entity @e[tag=this_gooigi,limit=1] if entity @s[scores={ModelTime=3..}] run tag @a[tag=this_player,limit=1] remove has_luigi
tag @e[tag=this_gooigi] remove this_gooigi