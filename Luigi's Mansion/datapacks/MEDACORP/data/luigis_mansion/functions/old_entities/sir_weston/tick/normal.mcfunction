execute if entity @s[scores={Dialog=1..422}] run scoreboard players set #freeze_timer Selected 1
execute unless entity @s[scores={Dialog=483..}] if entity @s[tag=!visible,tag=!vanish] run function luigis_mansion:old_entities/ghost/turn_visible
execute unless entity @s[scores={Dialog=1..}] at @e[tag=same_room,tag=!spectator,tag=player] positioned ^ ^ ^8 if entity @s[distance=..8] run function luigis_mansion:old_entities/ghost/turn_invisible
scoreboard players add @s[scores={Dialog=483..},tag=!vanish] Dialog 1
scoreboard players add @s[scores={Dialog=423..482},tag=melt] Dialog 1
tag @s remove melt
scoreboard players add @s[scores={Dialog=1..422}] Dialog 1
execute unless entity @s[scores={Dialog=1..}] if block ^2.7 ^ ^2.7 minecraft:soul_campfire[lit=true] if block ^-2.7 ^ ^2.7 minecraft:soul_campfire[lit=true] run scoreboard players add @s Dialog 1
execute if entity @s[scores={Dialog=1}] run playsound luigis_mansion:music.solve_puzzle music @a[tag=same_room] ~ ~ ~ 1000
execute if entity @s[scores={Dialog=1}] run scoreboard players set @a[tag=same_room,tag=!spectator,scores={Music=..30}] Music 30
execute if entity @s[scores={Dialog=30}] if data storage luigis_mansion:data current_state.current_data.technical_data{sir_weston_spoke:1b} run scoreboard players set @s Dialog 422
execute if entity @s[scores={Dialog=31..421}] facing entity @e[tag=same_room,tag=!spectator,tag=player,sort=nearest,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=31..421}] as @a[tag=same_room,tag=!spectator] run function luigis_mansion:other/music/set/talking_ghost
execute if entity @s[scores={Dialog=30..420}] as @a[tag=same_room,gamemode=!spectator,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/idle
execute if entity @s[scores={Dialog=30..197}] as @a[tag=same_room,gamemode=!spectator,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/high_health_idle_no_sound
execute if entity @s[scores={Dialog=30}] run playsound luigis_mansion:entity.sir_weston.talk hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=30}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.sir_weston","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.sir_weston.1"}]}
execute if entity @s[scores={Dialog=30}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.sir_weston","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.sir_weston.1.more"}]}
execute if entity @s[scores={Dialog=110}] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.sir_weston","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.sir_weston.2"}]}
execute if entity @s[scores={Dialog=198}] as @a[tag=same_room,tag=!spectator,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/idle
execute if entity @s[scores={Dialog=198}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.sir_weston","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.sir_weston.3"}]}
execute if entity @s[scores={Dialog=198}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.sir_weston","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.sir_weston.3.more"}]}
execute if entity @s[scores={Dialog=270}] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.sir_weston","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.sir_weston.4"}]}
execute if entity @s[scores={Dialog=390}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.sir_weston","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.sir_weston.5"}]}
execute if entity @s[scores={Dialog=390}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.sir_weston","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.sir_weston.5.more"}]}
execute if entity @s[scores={Dialog=421}] as @a[tag=same_room,tag=!spectator,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/none
execute if entity @s[scores={Dialog=422}] run data modify storage luigis_mansion:data current_state.current_data.technical_data merge value {sir_weston_spoke:1b}
execute if entity @s[scores={Dialog=422..}] as @a[tag=same_room,tag=!spectator] run function luigis_mansion:other/music/set/danger
scoreboard players set @s[scores={Dialog=422}] AnimationProgress 0
scoreboard players add @s[scores={Dialog=423..482}] PathStep 1
execute at @s[scores={PathStep=20},tag=!vanish] run playsound luigis_mansion:entity.sir_weston.attack hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={PathStep=20..50,VulnerableTime=0},tag=!vanish] facing entity @e[tag=same_room,tag=!spectator,tag=player,sort=nearest,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
execute at @s[scores={PathStep=60},tag=!vanish] rotated ~ 0 run function luigis_mansion:old_entities/sir_weston/attack
scoreboard players set @s[scores={PathStep=80}] PathStep 0
execute if entity @s[scores={Dialog=483},tag=!vanish] run playsound luigis_mansion:entity.sir_weston.complain hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=483},tag=!vanish] run particle minecraft:block minecraft:ice ~ ~1.2 ~ 0.6 0.6 0.6 0 30
execute if entity @s[scores={Dialog=483},tag=!vanish] run data modify entity @e[tag=this_model,tag=sir_weston_ice,limit=1] ArmorItems[3] set value {}
scoreboard players set @s[scores={Dialog=483},tag=!vanish] VulnerableTime 40
scoreboard players set @s[scores={Dialog=483},tag=!vanish] AnimationProgress 0
scoreboard players set @s[scores={Dialog=483}] PathStep 0
execute if entity @s[scores={Dialog=523},tag=!vanish] run data modify entity @e[tag=this_model,tag=sir_weston_ice,limit=1] ArmorItems[3] set value {id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:4,CustomModelData:42}}
scoreboard players set @s[scores={Dialog=523},tag=!vanish] AnimationProgress 0
scoreboard players set @s[scores={Dialog=523}] Dialog 463

execute if entity @s[scores={Dialog=422..482},tag=!vanish] run function luigis_mansion:old_animations/sir_weston/attack
execute if entity @s[scores={Dialog=483..},tag=!vanish] run function luigis_mansion:old_animations/sir_weston/melted
execute unless entity @s[scores={Dialog=422..}] run function luigis_mansion:old_animations/sir_weston/idle

scoreboard players operation #temp Time = @s Dialog
scoreboard players remove #temp Time 423
execute if entity @s[scores={Dialog=423..482},tag=!vanish] unless score #temp Time matches 0 as @e[tag=this_model,tag=sir_weston_ice,limit=1] at @s run function luigis_mansion:old_entities/sir_weston/melt_ice
scoreboard players reset #temp Time