tag @s add this_luigi
function luigis_mansion:entities/player/memory/get with entity @s
data modify storage luigis_mansion:data luigi set value {tags:[],alive:0b,gliding:0b,swimming:0b,invulnerable:0b,animation:{namespace:"luigis_mansion",id:"idle"},reset_rotation:0b,mainhand:{},offhand:{},poltergust:{}}
data modify storage luigis_mansion:data luigi.animation set from storage luigis_mansion:data my_memory.animation
execute unless data storage luigis_mansion:data luigi.animation{namespace:"luigis_mansion",id:"idle"} run tag @s[tag=!animation_may_move] remove walking
execute unless data storage luigis_mansion:data luigi.animation{namespace:"luigis_mansion",id:"idle"} run tag @s[tag=!animation_may_move] remove running
execute unless data storage luigis_mansion:data luigi.animation{namespace:"luigis_mansion",id:"idle"} run tag @s[tag=!animation_may_move] remove sneaking
data modify storage luigis_mansion:data memory append from storage luigis_mansion:data my_memory
data remove storage luigis_mansion:data my_memory
data modify storage luigis_mansion:data luigi.tags set from entity @s Tags
data modify storage luigis_mansion:data luigi.gliding set from entity @s FallFlying
execute store result storage luigis_mansion:data luigi.alive byte 1 if entity @s[scores={Health=1..}]
execute store result storage luigis_mansion:data luigi.reset_rotation byte 1 if entity @s[tag=reset_rotation,tag=!stop_model]
execute store result storage luigis_mansion:data luigi.swimming byte 1 if entity @s[tag=swimming]
execute store result storage luigis_mansion:data luigi.invulnerable byte 1 if entity @s[scores={Invulnerable=1..,AnimationProgress=0},tag=!capturing_ghost]
execute if entity @s[nbt={Inventory:[{tag:{luigis_mansion:{is_poltergust:1b}}}]}] run data modify storage luigis_mansion:data luigi.poltergust set from entity @s Inventory[{tag:{luigis_mansion:{is_poltergust:1b}}}]
data modify storage luigis_mansion:data luigi.mainhand set from entity @s[tag=dark_room] Inventory[{tag:{luigis_mansion:{namespace:"luigis_mansion",id:"flashlight"}}}]
execute if entity @s[nbt=!{SelectedItem:{tag:{luigis_mansion:{namespace:"luigis_mansion",id:"flashlight"}}}},nbt=!{SelectedItem:{tag:{luigis_mansion:{namespace:"luigis_mansion",id:"game_boy_horror"}}}},nbt=!{SelectedItem:{tag:{luigis_mansion:{namespace:"luigis_mansion",id:"interact"}}}}] run data modify storage luigis_mansion:data luigi.mainhand set from entity @s SelectedItem
execute if entity @s[nbt={Inventory:[{tag:{luigis_mansion:{namespace:"luigis_mansion",id:"game_boy_horror"}}}]}] run data modify storage luigis_mansion:data luigi.offhand set from entity @s Inventory[{tag:{luigis_mansion:{namespace:"luigis_mansion",id:"game_boy_horror"}}}]
$execute if entity @s[tag=freeze_animation] as @e[type=minecraft:armor_stand,tag=luigi_model,scores={ID=$(id)}] run tag @s add found_owner
$execute if entity @s[tag=freeze_animation] as @e[type=minecraft:armor_stand,tag=luigi_model,scores={ID=$(id)}] run tag @s add this_luigi
$execute if entity @s[tag=!freeze_animation] as @e[type=minecraft:armor_stand,tag=luigi_model,tag=source,scores={ID=$(id)},limit=1] run function luigis_mansion:animations/luigi/main
$execute if entity @s[tag=!freeze_animation] as @e[type=minecraft:armor_stand,tag=luigi_model,tag=!source,scores={ID=$(id)}] at @e[tag=luigi_model,tag=source,scores={ID=$(id)},limit=1] run function luigis_mansion:animations/luigi/main
tag @s remove this_luigi
execute store result score #temp Time if entity @e[tag=this_luigi]
execute unless score #temp Time matches 10 run tag @e[tag=this_luigi] add dead
scoreboard players reset #temp Time
execute if entity @e[tag=this_luigi,limit=1] run scoreboard players set @s ModelTime 0
execute unless entity @e[tag=this_luigi,limit=1] run scoreboard players add @s ModelTime 1
execute unless entity @e[tag=this_luigi,limit=1] if entity @s[scores={ModelTime=3..}] run function luigis_mansion:spawn_entities/luigi
tag @e[tag=this_luigi] remove this_luigi