scoreboard players operation #temp GhostNr = @s GhostNr
execute as @e[tag=model_piece,scores={GhostNr=-2147483648..}] if score @s GhostNr = #temp GhostNr run tag @s add this_model

execute if entity @s[tag=dying,scores={DeathTime=1}] if data entity @s ArmorItems[3].tag.loot{drop_at_0:1b} run function luigis_mansion:other/drop_loot
execute if entity @s[tag=dead] unless data entity @s ArmorItems[3].tag.loot{drop_at_0:1b} run function luigis_mansion:entities/floating_whirlindas/at_death
execute if entity @s[tag=vanish] store result storage luigis_mansion:data current_state.current_data.portrait_ghosts.luigis_mansion.floating_whirlindas.health int 1 run scoreboard players operation @s LastHealth = @s Health
execute if entity @s[tag=vanish] store result storage luigis_mansion:data current_state.current_data.portrait_ghosts.luigis_mansion.floating_whirlindas.top_vacuum_damage int 1 run scoreboard players get @s TopVacuumDamage

execute if entity @s[scores={HurtTime=1},tag=hurt,tag=!fleeing,tag=!dying] run playsound luigis_mansion:entity.floating_whirlindas.male.hurt hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={HurtTime=1},tag=hurt,tag=!fleeing,tag=!dying] at @e[tag=this_model,tag=floating_whirlindas_female,tag=main,limit=1] run playsound luigis_mansion:entity.floating_whirlindas.female.hurt hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={HurtTime=1},tag=hurt,tag=!fleeing,tag=!dying] Sound 40
execute if entity @s[scores={Sound=0},tag=fleeing,tag=!dying] run playsound luigis_mansion:entity.floating_whirlindas.male.flee hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Sound=0},tag=fleeing,tag=!dying] at @e[tag=this_model,tag=floating_whirlindas_female,tag=main,limit=1] run playsound luigis_mansion:entity.floating_whirlindas.female.flee hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={Sound=0},tag=fleeing,tag=!dying] Sound 40

execute if entity @e[tag=same_room,tag=!spectator,tag=player,distance=..1.6,limit=1] if entity @s[tag=!vanish,tag=!dying,tag=!dead,tag=!captured,tag=!removed_from_existence,tag=visible,tag=!hurt,tag=!fleeing] run function luigis_mansion:entities/floating_whirlindas/collide

execute at @s[tag=!fleeing,tag=!hurt,scores={StunTime=0}] run function #luigis_mansion:entities/floating_whirlindas/tick
execute at @s unless entity @s[tag=!fleeing,tag=!hurt] run teleport @e[tag=floating_whirlindas_female,tag=this_model,limit=1] ^-0.5 ^ ^1 ~ ~

execute if entity @s[tag=vanish] run function luigis_mansion:entities/floating_whirlindas/vanish
execute at @s[tag=fleeing,tag=!second_flee_state] run function luigis_mansion:animations/floating_whirlindas/flee
execute at @s[tag=fleeing,tag=second_flee_state] run function luigis_mansion:entities/floating_whirlindas/second_flee_state
execute at @s[tag=!fleeing,tag=hurt] run function luigis_mansion:animations/floating_whirlindas/hurt

execute at @s[scores={LightX=-2147483648..}] run function luigis_mansion:other/cast_shadow/2_tall
execute at @s[scores={LightX=-2147483648..}] at @e[tag=floating_whirlindas_female,limit=1] run function luigis_mansion:other/cast_shadow/2_tall

scoreboard players reset #temp GhostNr
tag @e[tag=this_model] add found_owner
tag @e[tag=this_model] remove this_model