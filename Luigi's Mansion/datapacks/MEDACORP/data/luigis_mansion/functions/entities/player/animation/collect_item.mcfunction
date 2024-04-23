scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=1}] run data modify storage luigis_mansion:data dialogs prepend value {name:{namespace:"luigis_mansion",id:"collect_item_freeze"},progress:0,room:0}
execute if entity @s[scores={AnimationProgress=1}] store result storage luigis_mansion:data dialogs[0].room int 1 run scoreboard players get @s Room
execute if entity @s[scores={AnimationProgress=1,Health=41..,Shrunk=0}] run playsound luigis_mansion:entity.player.show_item.high_health player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=1,Health=41..,Shrunk=1..}] run playsound luigis_mansion:entity.player.show_item.high_health player @a[tag=same_room] ~ ~ ~ 1 2
execute if entity @s[scores={AnimationProgress=1,Health=..40,Shrunk=0}] run playsound luigis_mansion:entity.player.show_item.low_health player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=1,Health=..40,Shrunk=1..}] run playsound luigis_mansion:entity.player.show_item.low_health player @a[tag=same_room] ~ ~ ~ 1 2
scoreboard players set @s[scores={AnimationProgress=1}] Sound 20
execute unless data storage luigis_mansion:data my_memory.animation.item.components."minecraft:custom_data"{collect_orchestra:1b} run playsound luigis_mansion:item.item.get music @a[tag=same_room] ~ ~ ~ 1
execute if data storage luigis_mansion:data my_memory.animation.item.components."minecraft:custom_data"{collect_orchestra:1b} run playsound luigis_mansion:item.key.get_area music @a[tag=same_room] ~ ~ ~ 1
execute as @a[tag=same_room,scores={Music=..70}] unless entity @s[scores={HealthMusic=1..}] unless entity @s[scores={GradualMusic=1..}] run scoreboard players set @s Music 70
execute if entity @s[scores={AnimationProgress=70}] run function luigis_mansion:entities/player/animation/set/none