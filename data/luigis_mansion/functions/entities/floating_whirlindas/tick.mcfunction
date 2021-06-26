scoreboard players operation #temp GhostNr = @s GhostNr
execute as @e[tag=model_piece,scores={GhostNr=-2147483648..}] if score @s GhostNr = #temp GhostNr run tag @s add this_model

execute if entity @s[tag=dying,scores={HurtTime=1}] run playsound luigis_mansion:entity.floating_whirlindas.vacuumed hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[tag=dead] run function luigis_mansion:entities/floating_whirlindas/at_death
execute if entity @s[tag=vanish] store result storage luigis_mansion:data current_state.current_data.portrait_ghosts.floating_whirlindas.health int 1 run scoreboard players operation @s LastHealth = @s Health
execute if entity @s[tag=vanish] store result storage luigis_mansion:data current_state.current_data.portrait_ghosts.floating_whirlindas.top_vacuum_damage int 1 run scoreboard players get @s TopVacuumDamage

execute if entity @s[scores={HurtTime=1},tag=hurt,tag=!fleeing] run playsound luigis_mansion:entity.floating_whirlindas.hurt hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={HurtTime=1},tag=hurt,tag=!fleeing] Sound 40
execute if entity @s[scores={Sound=0},tag=fleeing] run playsound luigis_mansion:entity.floating_whirlindas.flee hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={Sound=0},tag=fleeing] Sound 40

execute at @s[tag=!fleeing,tag=!hurt,tag=!vanish,scores={StunTime=0}] run function #luigis_mansion:entities/floating_whirlindas/dance
execute at @s unless entity @s[tag=!fleeing,tag=!hurt] run teleport @e[tag=floating_whirlindas_female,tag=this_model,limit=1] ^-0.5 ^ ^1 ~ ~

execute if entity @s[tag=vanish] run function luigis_mansion:entities/floating_whirlindas/vanish
execute at @s[tag=bow,tag=!fleeing,tag=!hurt,tag=!vanish,scores={StunTime=0}] run function luigis_mansion:animations/floating_whirlindas/bow
execute at @s[tag=!hurt,tag=!fleeing,tag=!bow,tag=!vanish,scores={StunTime=0}] run function luigis_mansion:animations/floating_whirlindas/idle
execute at @s[tag=fleeing] run function luigis_mansion:animations/floating_whirlindas/flee
execute at @s[tag=!fleeing,tag=hurt] run function luigis_mansion:animations/floating_whirlindas/hurt

execute at @s[scores={LightX=-2147483648..}] run function luigis_mansion:other/cast_shadow/2_tall
execute at @s[scores={LightX=-2147483648..}] at @e[tag=floating_whirlindas_female,limit=1] run function luigis_mansion:other/cast_shadow/2_tall

scoreboard players reset #temp GhostNr
tag @e[tag=this_model] add found_owner
tag @e[tag=this_model] remove this_model