execute if entity @s[tag=dying,scores={HurtTime=1}] run playsound luigis_mansion:entity.clockwork_soldier.vacuumed hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[tag=dead] run function luigis_mansion:entities/clockwork_soldier/at_death
execute if entity @s[tag=vanish,tag=blue_clockwork_soldier] store result storage luigis_mansion:data current_state.current_data.portrait_ghosts.clockwork_soldiers.blue_health int 1 run scoreboard players operation @s LastHealth = @s Health
execute if entity @s[tag=vanish,tag=blue_clockwork_soldier] store result storage luigis_mansion:data current_state.current_data.portrait_ghosts.clockwork_soldiers.blue_top_vacuum_damage int 1 run scoreboard players get @s TopVacuumDamage
execute if entity @s[tag=vanish,tag=green_clockwork_soldier] store result storage luigis_mansion:data current_state.current_data.portrait_ghosts.clockwork_soldiers.green_health int 1 run scoreboard players operation @s LastHealth = @s Health
execute if entity @s[tag=vanish,tag=green_clockwork_soldier] store result storage luigis_mansion:data current_state.current_data.portrait_ghosts.clockwork_soldiers.green_top_vacuum_damage int 1 run scoreboard players get @s TopVacuumDamage
execute if entity @s[tag=vanish,tag=pink_clockwork_soldier] store result storage luigis_mansion:data current_state.current_data.portrait_ghosts.clockwork_soldiers.pink_health int 1 run scoreboard players operation @s LastHealth = @s Health
execute if entity @s[tag=vanish,tag=pink_clockwork_soldier] store result storage luigis_mansion:data current_state.current_data.portrait_ghosts.clockwork_soldiers.pink_top_vacuum_damage int 1 run scoreboard players get @s TopVacuumDamage

execute if entity @s[scores={HurtTime=1},tag=hurt,tag=!fleeing] run playsound luigis_mansion:entity.clockwork_soldier.hurt hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={HurtTime=1},tag=hurt,tag=!fleeing] Sound 40
execute if entity @s[scores={Sound=0},tag=fleeing] run playsound luigis_mansion:entity.clockwork_soldier.flee hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={Sound=0},tag=fleeing] Sound 40

execute if entity @s[tag=!hurt,tag=!fleeing,scores={StunTime=0}] run function #luigis_mansion:entities/clockwork_soldier/tick

execute at @s[scores={LightX=-2147483648..}] run function luigis_mansion:other/cast_shadow/2_tall