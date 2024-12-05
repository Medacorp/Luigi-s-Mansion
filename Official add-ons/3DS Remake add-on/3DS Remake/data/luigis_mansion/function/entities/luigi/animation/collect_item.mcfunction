scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=10,Health=41..,Shrunk=0},tag=!gooigi] run playsound luigis_mansion:entity.player.show_item.high_health player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=10,Health=41..,Shrunk=1..},tag=!gooigi] run playsound luigis_mansion:entity.player.show_item.high_health player @a[tag=same_room] ~ ~ ~ 1 2
execute if entity @s[scores={AnimationProgress=10,Health=..40,Shrunk=0},tag=!gooigi] run playsound luigis_mansion:entity.player.show_item.low_health player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=10,Health=..40,Shrunk=1..},tag=!gooigi] run playsound luigis_mansion:entity.player.show_item.low_health player @a[tag=same_room] ~ ~ ~ 1 2
scoreboard players set @s[scores={AnimationProgress=1},tag=!gooigi] Sound 70
execute if entity @s[scores={AnimationProgress=15}] unless data storage luigis_mansion:data my_memory.animation.item.components."minecraft:custom_data"{collect_orchestra:1b} run playsound luigis_mansion:item.item.get music @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=15}] if data storage luigis_mansion:data my_memory.animation.item.components."minecraft:custom_data"{collect_orchestra:1b} run playsound luigis_mansion:item.item.get_orchestra music @a[tag=same_room] ~ ~ ~ 1
execute as @a[tag=same_room,scores={Music=..70}] unless entity @s[scores={HealthMusic=1..}] unless entity @s[scores={GradualMusic=1..}] run scoreboard players set @s Music 70
execute if entity @s[scores={AnimationProgress=70}] run function luigis_mansion:entities/luigi/animation/set/none