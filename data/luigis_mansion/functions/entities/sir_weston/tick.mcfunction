execute if entity @s[tag=dying,scores={HurtTime=1}] run playsound luigis_mansion:entity.sir_weston.vacuumed hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[tag=dead] run function luigis_mansion:entities/sir_weston/at_death
execute if entity @s[tag=vanish] store result storage luigis_mansion:data current_state.current_data.portrait_ghosts.sir_weston.health int 1 run scoreboard players operation @s LastHealth = @s Health
execute if entity @s[tag=vanish] store result storage luigis_mansion:data current_state.current_data.portrait_ghosts.sir_weston.top_vacuum_damage int 1 run scoreboard players get @s TopVacuumDamage

execute if entity @s[scores={HurtTime=1},tag=hurt,tag=!fleeing] run playsound luigis_mansion:entity.sir_weston.hurt hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={HurtTime=1},tag=hurt,tag=!fleeing] Sound 40
execute if entity @s[scores={Sound=0},tag=fleeing] run playsound luigis_mansion:entity.sir_weston.flee hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={Sound=0},tag=fleeing] Sound 40

execute if entity @s[tag=!fleeing,tag=!hurt,tag=!vanish,scores={StunTime=0}] run function luigis_mansion:entities/sir_weston/melt
execute at @s[scores={LightX=-2147483648..}] run function luigis_mansion:other/cast_shadow/2_tall