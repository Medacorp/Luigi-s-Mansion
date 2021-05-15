scoreboard players operation #temp GhostNr = @s GhostNr
execute as @e[tag=melody_pianissima_body] if score @s GhostNr = #temp GhostNr run tag @s add this_model

execute if entity @s[tag=dying,scores={HurtTime=1}] run playsound luigis_mansion:entity.melody_pianissima.vacuumed hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[tag=dead] run loot spawn ~ ~ ~ loot luigis_mansion:entities/ghost/melody_pianissima
execute if entity @s[tag=dead] run particle minecraft:dust 0.7 1 1 1 ~-0.1 ~ ~0.1 0.2 0.6 0.2 1 30
execute if entity @s[tag=dead] run teleport @s ~ -100 ~
execute if entity @s[tag=dead] store result storage luigis_mansion:data current_state.current_data.portrait_ghosts.melody_pianissima.health int 1 run scoreboard players set @s Health 0
execute if entity @s[tag=dead] run advancement grant @a only luigis_mansion:portrait_ghosts/melody_pianissima
execute if entity @s[tag=vanish] store result storage luigis_mansion:data current_state.current_data.portrait_ghosts.melody_pianissima.health int 1 run scoreboard players operation @s LastHealth = @s Health

execute if entity @s[scores={HurtTime=1},tag=hurt] run playsound luigis_mansion:entity.melody_pianissima.hurt hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={HurtTime=1},tag=hurt] Sound 40
execute if entity @s[scores={Sound=0},tag=fleeing] run playsound luigis_mansion:entity.melody_pianissima.flee hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={Sound=0},tag=fleeing] Sound 40

execute if entity @s[tag=visible,tag=!talk] run function luigis_mansion:entities/melody_pianissima/turn_invisible
execute if entity @s[tag=talk] run function #luigis_mansion:entities/melody_pianissima/play
execute if entity @s[tag=!talk] if entity @a[gamemode=!spectator,distance=..5] run function #luigis_mansion:entities/melody_pianissima/play

execute if entity @s[tag=vanish] run function luigis_mansion:entities/melody_pianissima/vanish
execute at @s[tag=nod] run function luigis_mansion:animations/melody_pianissima/nod
execute at @s[tag=listen] run function luigis_mansion:animations/melody_pianissima/listen
execute at @s[tag=rage] run function luigis_mansion:animations/melody_pianissima/rage
execute at @s[tag=laugh] run function luigis_mansion:animations/melody_pianissima/laugh
execute at @s[tag=complain,tag=!fleeing,tag=!hurt,tag=!vanish,scores={StunTime=0}] run function luigis_mansion:animations/melody_pianissima/complain
execute at @s[tag=!hurt,tag=!fleeing,tag=!complain,tag=!nod,tag=!listen,tag=!rage,tag=!laugh,tag=!vanish,scores={StunTime=0}] run function luigis_mansion:animations/melody_pianissima/idle
execute at @s[tag=fleeing] run function luigis_mansion:animations/melody_pianissima/flee
execute at @s[tag=!fleeing,tag=hurt] run function luigis_mansion:animations/melody_pianissima/hurt

execute unless entity @s[tag=!dead,tag=!remove_from_existence] run teleport @e[tag=this_model] ~ -100 ~
execute unless entity @s[tag=!dead,tag=!remove_from_existence] run tag @e[tag=this_model] add dead

scoreboard players reset #temp GhostNr
tag @e[tag=this_model,limit=1] remove this_model
execute at @s[scores={LightX=-2147483648..}] run function luigis_mansion:other/cast_shadow/2_tall