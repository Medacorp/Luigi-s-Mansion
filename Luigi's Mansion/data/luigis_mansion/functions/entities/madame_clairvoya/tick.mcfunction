scoreboard players operation #temp GhostNr = @s GhostNr
execute as @e[tag=madame_clairvoya_head] if score @s GhostNr = #temp GhostNr run tag @s add this_model
execute as @e[tag=madame_clairvoya_body] if score @s GhostNr = #temp GhostNr run tag @s add this_model

execute if entity @s[tag=dying,scores={HurtTime=1}] run playsound luigis_mansion:entity.madame_clairvoya.vacuumed hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[tag=dead] run function luigis_mansion:entities/madame_clairvoya/drop_loot
execute if entity @s[tag=dead] run particle minecraft:dust 0.7 1 1 1 ~-0.1 ~ ~0.1 0.2 0.6 0.2 1 30
execute if entity @s[tag=dead] run teleport @s ~ -100 ~
execute if entity @s[tag=dead] store result storage luigis_mansion:data current_state.current_data.portrait_ghosts.madame_clairvoya.health int 1 run scoreboard players set @s Health 0
execute if entity @s[tag=dead] run advancement grant @a only luigis_mansion:portrait_ghosts/madame_clairvoya
execute if entity @s[tag=vanish] store result storage luigis_mansion:data current_state.current_data.portrait_ghosts.madame_clairvoya.health int 1 run scoreboard players operation @s LastHealth = @s Health

execute if entity @s[scores={HurtTime=1},tag=hurt] run playsound luigis_mansion:entity.madame_clairvoya.hurt hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={HurtTime=1},tag=hurt] Sound 40
execute if entity @s[scores={Sound=0},tag=fleeing] run playsound luigis_mansion:entity.madame_clairvoya.flee hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={Sound=0},tag=fleeing] Sound 40

tag @s[tag=!visible,tag=talk] remove talk
execute if entity @s[tag=!visible] run function luigis_mansion:entities/madame_clairvoya/shine
execute if entity @s[tag=visible,tag=!fleeing,tag=!hurt] run function #luigis_mansion:entities/madame_clairvoya/visible_tick
tag @s[scores={VulnerableTime=1..},tag=talk] remove talk

execute if entity @s[tag=vanish] run function luigis_mansion:entities/madame_clairvoya/vanish
execute at @s[tag=nod] as @e[tag=this_model,tag=madame_clairvoya_head,limit=1] run function luigis_mansion:animations/madame_clairvoya/nod
execute at @s[tag=listen] as @e[tag=this_model,tag=madame_clairvoya_head,limit=1] run function luigis_mansion:animations/madame_clairvoya/listen
execute at @s[tag=explain] as @e[tag=this_model,tag=madame_clairvoya_head,limit=1] run function luigis_mansion:animations/madame_clairvoya/explain
execute at @s[tag=power] as @e[tag=this_model,tag=madame_clairvoya_head,limit=1] run function luigis_mansion:animations/madame_clairvoya/power
execute at @s[tag=power] positioned ^0.4 ^1.4 ^0.5 run particle minecraft:dust 1 0 1 1 ~ ~ ~ 0 0 0 0 1
execute at @s[tag=power] positioned ^-0.4 ^1.4 ^0.5 run particle minecraft:dust 1 0 1 1 ~ ~ ~ 0 0 0 0 1
execute at @s[tag=laugh,tag=!fleeing,tag=!hurt,tag=!vanish,scores={StunTime=0}] as @e[tag=this_model,tag=madame_clairvoya_head,limit=1] run function luigis_mansion:animations/madame_clairvoya/laugh
execute at @s[tag=!hurt,tag=!fleeing,tag=!nod,tag=!listen,tag=!explain,tag=!power,tag=!laugh,tag=!vanish,scores={StunTime=0}] as @e[tag=this_model,tag=madame_clairvoya_head,limit=1] run function luigis_mansion:animations/madame_clairvoya/idle
execute at @s[tag=fleeing] as @e[tag=this_model,tag=madame_clairvoya_head,limit=1] run function luigis_mansion:animations/madame_clairvoya/flee
execute at @s[tag=!fleeing,tag=hurt] as @e[tag=this_model,tag=madame_clairvoya_head,limit=1] run function luigis_mansion:animations/madame_clairvoya/hurt

execute unless entity @s[tag=!dead,tag=!remove_from_existence] run teleport @e[tag=this_model] ~ -100 ~
execute unless entity @s[tag=!dead,tag=!remove_from_existence] run tag @e[tag=this_model] add dead

scoreboard players reset #temp GhostNr
tag @e[tag=this_model] remove this_model
execute at @s[scores={LightX=-2147483648..}] run function luigis_mansion:other/cast_shadow/2_tall