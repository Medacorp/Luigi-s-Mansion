execute if entity @s[tag=dying,scores={HurtTime=1}] run playsound luigis_mansion:entity.uncle_grimmly.vacuumed hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[tag=dead] run function luigis_mansion:entities/uncle_grimmly/at_death
execute if entity @s[tag=vanish] store result storage luigis_mansion:data current_state.current_data.portrait_ghosts.uncle_grimmly.health int 1 run scoreboard players operation @s LastHealth = @s Health
execute if entity @s[tag=vanish] store result storage luigis_mansion:data current_state.current_data.portrait_ghosts.uncle_grimmly.top_vacuum_damage int 1 run scoreboard players get @s TopVacuumDamage

execute if entity @s[scores={HurtTime=1},tag=hurt] run playsound luigis_mansion:entity.uncle_grimmly.hurt hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={HurtTime=1},tag=hurt] Sound 40
execute if entity @s[scores={Sound=0},tag=fleeing] run playsound luigis_mansion:entity.uncle_grimmly.flee hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={Sound=0},tag=fleeing] Sound 40

execute if entity @s[tag=!fleeing,tag=!hurt,tag=!vanish,scores={StunTime=0}] run function luigis_mansion:entities/uncle_grimmly/scare
execute at @s[scores={LightX=-2147483648..}] run function luigis_mansion:other/cast_shadow/2_tall