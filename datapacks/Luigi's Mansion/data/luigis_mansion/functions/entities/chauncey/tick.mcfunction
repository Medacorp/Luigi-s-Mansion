scoreboard players operation #temp GhostNr = @s GhostNr
execute as @e[tag=model_piece,scores={GhostNr=-2147483648..}] if score @s GhostNr = #temp GhostNr run tag @s add this_model

execute if entity @s[tag=dying,scores={DeathTime=1}] run playsound luigis_mansion:entity.chauncey.vacuumed hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[tag=dying,scores={DeathTime=1}] if data storage luigis_mansion:data current_state.current_data.portrait_ghosts.chauncey{loot_at_0:1b} run function luigis_mansion:entities/chauncey/drop_loot
execute if entity @s[tag=dead] unless data storage luigis_mansion:data current_state.current_data.portrait_ghosts.chauncey{loot_at_0:1b} run function luigis_mansion:entities/chauncey/at_death
execute if entity @s[tag=vanish] store result storage luigis_mansion:data current_state.current_data.portrait_ghosts.chauncey.health int 1 run scoreboard players operation @s LastHealth = @s Health
execute if entity @s[tag=vanish] store result storage luigis_mansion:data current_state.current_data.portrait_ghosts.chauncey.top_vacuum_damage int 1 run scoreboard players get @s TopVacuumDamage

execute if entity @s[scores={HurtTime=1},tag=hurt,tag=!fleeing,tag=!dying] run playsound luigis_mansion:entity.chauncey.hurt hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={HurtTime=1},tag=hurt,tag=!fleeing,tag=!dying] Sound 40
execute if entity @s[scores={Sound=0},tag=fleeing,tag=!dying] run playsound luigis_mansion:entity.chauncey.flee hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={Sound=0},tag=fleeing,tag=!dying] Sound 40

execute if entity @s[tag=!fleeing,tag=!hurt,scores={StunTime=0}] run function #luigis_mansion:entities/chauncey/tick
execute if entity @s[tag=vanish] run function luigis_mansion:entities/chauncey/vanish
execute at @s[tag=fleeing,tag=!second_flee_state] run function luigis_mansion:animations/chauncey/flee
execute at @s[tag=fleeing,tag=second_flee_state] run function luigis_mansion:entities/chauncey/second_flee_state
execute if entity @s[tag=!fleeing,tag=hurt] run function luigis_mansion:entities/chauncey/drop_rambler
execute at @s[tag=!fleeing,tag=hurt] run function luigis_mansion:animations/chauncey/hurt

scoreboard players reset #temp GhostNr
tag @e[tag=this_model,limit=1] add found_owner
tag @e[tag=this_model,limit=1] remove this_model