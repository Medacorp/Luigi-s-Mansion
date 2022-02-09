scoreboard players operation #temp GhostNr = @s GhostNr
execute as @e[tag=model_piece,scores={GhostNr=-2147483648..}] if score @s GhostNr = #temp GhostNr run tag @s add this_model
execute as @e[tag=food] if score @s GhostNr = #temp GhostNr run tag @s add this_food

execute if entity @s[tag=dying,scores={DeathTime=1}] if data storage luigis_mansion:data current_state.current_data.portrait_ghosts.mr_luggs{loot_at_0:1b} run function luigis_mansion:entities/mr_luggs/drop_loot
execute if entity @s[tag=dead] run function luigis_mansion:entities/mr_luggs/at_death
execute if entity @s[tag=vanish] store result storage luigis_mansion:data current_state.current_data.portrait_ghosts.mr_luggs.health int 1 run scoreboard players operation @s LastHealth = @s Health
execute if entity @s[tag=vanish] store result storage luigis_mansion:data current_state.current_data.portrait_ghosts.mr_luggs.top_vacuum_damage int 1 run scoreboard players get @s TopVacuumDamage

execute if entity @s[scores={HurtTime=1},tag=hurt,tag=!fleeing,tag=!dying] run playsound luigis_mansion:entity.mr_luggs.hurt hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={HurtTime=1},tag=hurt,tag=!fleeing,tag=!dying] Sound 40
execute if entity @s[scores={Sound=0},tag=fleeing,tag=!dying] run playsound luigis_mansion:entity.mr_luggs.flee hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={Sound=0},tag=fleeing,tag=!dying] Sound 40

execute if entity @e[tag=same_room,tag=!spectator,distance=..1.6,limit=1] if entity @s[tag=!vanish,tag=!dying,tag=!dead,tag=!captured,tag=!removed_from_existence,tag=!hurt,tag=!fleeing] run function luigis_mansion:entities/mr_luggs/collide

execute if entity @s[tag=!fleeing,tag=!hurt,scores={StunTime=0}] run function #luigis_mansion:entities/mr_luggs/tick

execute if entity @s[tag=vanish] run function luigis_mansion:entities/mr_luggs/vanish
execute at @s[tag=fleeing] run function luigis_mansion:animations/mr_luggs/flee
execute at @s[tag=!fleeing,tag=hurt] run function luigis_mansion:animations/mr_luggs/hurt

execute unless entity @s[tag=!dead,tag=!remove_from_existence] run teleport @e[tag=this_food] ~ -100 ~
execute unless entity @s[tag=!dead,tag=!remove_from_existence] run tag @e[tag=this_food] add dead

scoreboard players reset #temp GhostNr
tag @e[tag=this_model] add found_owner
tag @e[tag=this_model] remove this_model
tag @e[tag=this_food,limit=1] remove this_food
execute at @s[scores={LightX=-2147483648..}] run function luigis_mansion:other/cast_shadow/2_tall