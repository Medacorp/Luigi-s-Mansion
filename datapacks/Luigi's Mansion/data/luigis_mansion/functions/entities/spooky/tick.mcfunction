scoreboard players operation #temp GhostNr = @s GhostNr
execute as @e[tag=model_piece,scores={GhostNr=-2147483648..}] if score @s GhostNr = #temp GhostNr run tag @s add this_model

execute at @s run teleport @s ~ ~0.6 ~
execute at @s unless entity @s[scores={StunTime=1..},tag=!fleeing,tag=!hurt] as @e[tag=this_model] run teleport @s ~ ~0.6 ~

execute if entity @s[tag=dying,scores={DeathTime=1}] if data storage luigis_mansion:data current_state.current_data.portrait_ghosts.spooky{loot_at_0:1b} run function luigis_mansion:entities/spooky/drop_loot
execute if entity @s[tag=dead] run function luigis_mansion:entities/spooky/at_death
execute if entity @s[tag=vanish] store result storage luigis_mansion:data current_state.current_data.portrait_ghosts.spooky.health int 1 run scoreboard players operation @s LastHealth = @s Health
execute if entity @s[tag=vanish] store result storage luigis_mansion:data current_state.current_data.portrait_ghosts.spooky.top_vacuum_damage int 1 run scoreboard players get @s TopVacuumDamage

execute if entity @s[scores={HurtTime=1},tag=hurt,tag=!fleeing,tag=!dying] run playsound luigis_mansion:entity.spooky.hurt hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={HurtTime=1},tag=hurt,tag=!fleeing,tag=!dying] Sound 40
execute if entity @s[scores={Sound=0},tag=fleeing,tag=!dying] run playsound luigis_mansion:entity.spooky.flee hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={Sound=0},tag=fleeing,tag=!dying] Sound 40

execute at @s[tag=!fleeing,tag=!hurt,scores={StunTime=0}] run function #luigis_mansion:entities/spooky/tick

execute at @s[tag=vanish] run function luigis_mansion:entities/spooky/vanish
execute at @s[tag=fleeing] run function luigis_mansion:animations/spooky/flee
execute at @s[tag=!fleeing,tag=hurt] run function luigis_mansion:animations/spooky/hurt

execute at @s run teleport @s ~ ~-0.6 ~
execute unless entity @s[scores={StunTime=1..},tag=!fleeing,tag=!hurt] as @e[tag=this_model] at @s run teleport @s ~ ~-0.6 ~

scoreboard players reset #temp GhostNr
tag @e[tag=this_model] add found_owner
tag @e[tag=this_model] remove this_model
execute at @s[scores={LightX=-2147483648..}] run function luigis_mansion:other/cast_shadow/2_tall