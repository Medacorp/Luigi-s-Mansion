tag @s add this_luigi
data modify storage luigis_mansion:data luigi set value {tags:[],room:0,mirror:{},initial_animation_progress:0,alive:0b,gliding:0b,swimming:0b,invulnerable:0b,shrunk:0b,animation:{namespace:"luigis_mansion",id:"idle"},reset_rotation:0b,mainhand:{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:empty"}},offhand:{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:empty"}},poltergust:{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:empty"}},flashlight:{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:empty"}}}
data modify storage luigis_mansion:data luigi.animation set from entity @s data.animation
execute unless data storage luigis_mansion:data luigi.animation{namespace:"luigis_mansion",id:"idle"} run tag @s[tag=!animation_may_move,tag=!idle] remove walking
execute unless data storage luigis_mansion:data luigi.animation{namespace:"luigis_mansion",id:"idle"} run tag @s[tag=!animation_may_move,tag=!idle] remove running
execute unless data storage luigis_mansion:data luigi.animation{namespace:"luigis_mansion",id:"idle"} run tag @s[tag=!animation_may_move,tag=!idle] remove sneaking
data modify storage luigis_mansion:data luigi.tags set from entity @s Tags
data modify storage luigis_mansion:data luigi.gliding set from entity @s FallFlying
execute store result storage luigis_mansion:data luigi.room int 1 run scoreboard players get @s Room
execute if entity @s[scores={MirrorX=-2147483648..}] store result storage luigis_mansion:data luigi.mirror.x int 1 run scoreboard players get @s MirrorX
execute if entity @s[scores={MirrorZ=-2147483648..}] store result storage luigis_mansion:data luigi.mirror.z int 1 run scoreboard players get @s MirrorZ
#todelete - old mirror reflections
execute store result storage luigis_mansion:data luigi.mirror.mirror_set_by_furniture_entity byte 1 if entity @s[tag=mirror_set_by_furniture_entity]
#/todelete
data modify storage luigis_mansion:data luigi.initial_animation_progress set from entity @s data.initial_animation_progress
data remove entity @s data.initial_animation_progress
execute store result storage luigis_mansion:data luigi.alive byte 1 if entity @s[tag=!death_animation]
execute store result storage luigis_mansion:data luigi.reset_rotation byte 1 if entity @s[tag=reset_rotation]
execute store result storage luigis_mansion:data luigi.shrunk byte 1 if entity @s[scores={Shrunk=1..}]
execute store result storage luigis_mansion:data luigi.swimming byte 1 if entity @s[tag=swimming]
execute store result storage luigis_mansion:data luigi.invulnerable byte 1 if entity @s[scores={Invulnerable=1..,AnimationProgress=0},tag=!capturing_ghost]
execute if entity @s[nbt={data:{inventory:[{components:{"minecraft:custom_data":{is_poltergust:1b}}}]}}] run data modify storage luigis_mansion:data luigi.poltergust set from entity @s data.inventory[{components:{"minecraft:custom_data":{is_poltergust:1b}}}]
execute if entity @s[nbt={data:{inventory:[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"flashlight"}}}]}}] run data modify storage luigis_mansion:data luigi.flashlight set from entity @s data.inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"flashlight"}}}]
execute if entity @s[tag=poltergust_grabbed] unless entity @s[tag=riding_poltergust,tag=!dark_room] run data modify storage luigis_mansion:data luigi.mainhand set from storage luigis_mansion:data luigi.flashlight
execute if entity @s[tag=poltergust_grabbed,tag=riding_poltergust,tag=!dark_room] run data modify storage luigis_mansion:data luigi.mainhand set from storage luigis_mansion:data luigi.poltergust
execute if entity @s[tag=!using_selection_menu,nbt=!{data:{selected_item:{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"flashlight"}}}}},nbt=!{data:{selected_item:{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"game_boy_horror"}}}}},nbt=!{data:{selected_item:{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"interact"}}}}}] run data modify storage luigis_mansion:data luigi.mainhand set from entity @s data.selected_item
execute if entity @s[nbt={data:{inventory:[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"game_boy_horror"}}}]}}] run data modify storage luigis_mansion:data luigi.offhand set from entity @s data.inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"game_boy_horror"}}}]
$execute if entity @s[tag=freeze_animation] as @e[type=minecraft:armor_stand,tag=luigi_model,scores={ID=$(id)}] run function luigis_mansion:animations/luigi/frozen
$execute if entity @s[tag=!freeze_animation] as @e[type=minecraft:armor_stand,tag=luigi_model,tag=source,scores={ID=$(id)},limit=1] run function luigis_mansion:animations/luigi/main
$execute if entity @s[tag=!freeze_animation] as @e[type=minecraft:armor_stand,tag=luigi_model,tag=!source,scores={ID=$(id)}] at @e[tag=luigi_model,tag=source,scores={ID=$(id)},limit=1] run function luigis_mansion:animations/luigi/main
data modify entity @s[tag=!freeze_animation] data.head_rotation set from storage luigis_mansion:data luigi.head_rotation
tag @s remove this_luigi
execute store result score #temp Time if entity @e[tag=this_luigi]
execute unless score #temp Time matches 10 run tag @e[tag=this_luigi] add dead
scoreboard players reset #temp Time
execute if entity @e[tag=this_luigi,limit=1] run scoreboard players set @s ModelTime 0
execute unless entity @e[tag=this_luigi,limit=1] run scoreboard players add @s ModelTime 1
execute unless entity @e[tag=this_luigi,limit=1] if entity @s[scores={ModelTime=3..}] run tag @a[tag=this_player,limit=1] remove has_luigi
tag @e[tag=this_luigi] remove this_luigi