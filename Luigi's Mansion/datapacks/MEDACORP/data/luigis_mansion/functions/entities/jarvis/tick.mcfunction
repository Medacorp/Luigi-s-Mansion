execute if entity @s[tag=dying,scores={DeathTime=1}] if data entity @s ArmorItems[3].tag.luigis_mansion.loot{drop_at_0:1b} run function luigis_mansion:other/drop_loot
execute if entity @s[tag=dead] run function luigis_mansion:entities/jarvis/at_death
execute if entity @s[tag=vanish] store result storage luigis_mansion:data current_state.current_data.portrait_ghosts.luigis_mansion.jarvis.health int 1 run scoreboard players operation @s LastHealth = @s Health
execute if entity @s[tag=vanish] store result storage luigis_mansion:data current_state.current_data.portrait_ghosts.luigis_mansion.jarvis.top_vacuum_damage int 1 run scoreboard players get @s TopVacuumDamage

execute if entity @s[scores={HurtTime=1},tag=hurt,tag=!fleeing,tag=!dying] run playsound luigis_mansion:entity.jarvis.hurt hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={HurtTime=1},tag=hurt,tag=!fleeing,tag=!dying] Sound 40
execute if entity @s[scores={Sound=0},tag=fleeing,tag=!dying] run playsound luigis_mansion:entity.jarvis.flee hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={Sound=0},tag=fleeing,tag=!dying] Sound 40

execute if entity @s[tag=!fleeing,tag=!hurt,scores={StunTime=0}] run function #luigis_mansion:entities/jarvis/tick

execute if entity @s[tag=vanish] run function luigis_mansion:entities/jarvis/vanish
execute at @s[tag=fleeing,tag=!second_flee_state] run function luigis_mansion:old_animations/jarvis/flee
execute at @s[tag=fleeing,tag=second_flee_state] run function luigis_mansion:entities/jarvis/second_flee_state
execute at @s[tag=!fleeing,tag=hurt] run function luigis_mansion:old_animations/jarvis/hurt

execute at @s[scores={LightX=-2147483648..}] run function luigis_mansion:other/cast_shadow/1_tall