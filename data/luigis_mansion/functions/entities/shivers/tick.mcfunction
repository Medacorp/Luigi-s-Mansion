scoreboard players operation #temp GhostNr = @s GhostNr
execute as @e[tag=model_piece,scores={GhostNr=-2147483648..}] if score @s GhostNr = #temp GhostNr run tag @s add this_model

execute if entity @s[tag=dying,scores={HurtTime=1}] run playsound luigis_mansion:entity.shivers.vacuumed hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[tag=dead] run function luigis_mansion:entities/shivers/at_death
execute if entity @s[tag=vanish] store result storage luigis_mansion:data current_state.current_data.portrait_ghosts.shivers.health int 1 run scoreboard players operation @s LastHealth = @s Health
execute if entity @s[tag=vanish] store result storage luigis_mansion:data current_state.current_data.portrait_ghosts.shivers.top_vacuum_damage int 1 run scoreboard players get @s TopVacuumDamage

execute if entity @s[scores={HurtTime=1},tag=hurt] run playsound luigis_mansion:entity.shivers.hurt hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={HurtTime=1},tag=hurt] Sound 40
execute if entity @s[scores={Sound=0},tag=fleeing] run playsound luigis_mansion:entity.shivers.flee hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={Sound=0},tag=fleeing] Sound 40

execute if entity @s[tag=!fleeing,tag=!hurt,tag=!vanish,scores={StunTime=0}] run function #luigis_mansion:entities/shivers/wander

execute if entity @s[tag=vanish] run function luigis_mansion:entities/shivers/vanish
execute at @s[tag=look_around] run function luigis_mansion:animations/shivers/look_around
execute at @s[tag=panic] run function luigis_mansion:animations/shivers/panic
execute at @s[tag=run] run function luigis_mansion:animations/shivers/run
execute at @s[tag=sit_down] run function luigis_mansion:animations/shivers/sit_down
execute at @s[tag=burn,tag=!fleeing,tag=!hurt,tag=!vanish,scores={StunTime=0}] run function luigis_mansion:animations/shivers/burn
execute at @s[tag=!hurt,tag=!fleeing,tag=!burn,tag=!vanish,tag=!look_around,tag=!panic,tag=!run,tag=!sit_down,scores={StunTime=0}] run function luigis_mansion:animations/shivers/idle
execute at @s[tag=fleeing] run function luigis_mansion:animations/shivers/flee
execute at @s[tag=!fleeing,tag=hurt] run function luigis_mansion:animations/shivers/hurt

scoreboard players reset #temp GhostNr
tag @e[tag=this_model,limit=1] add found_owner
tag @e[tag=this_model,limit=1] remove this_model
execute at @s[scores={LightX=-2147483648..}] run function luigis_mansion:other/cast_shadow/2_tall