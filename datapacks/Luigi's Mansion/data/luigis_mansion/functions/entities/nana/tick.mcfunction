scoreboard players operation #temp GhostNr = @s GhostNr
execute as @e[tag=model_piece,scores={GhostNr=-2147483648..}] if score @s GhostNr = #temp GhostNr run tag @s add this_model

execute if entity @s[tag=dying,scores={DeathTime=1}] if data storage luigis_mansion:data current_state.current_data.portrait_ghosts.nana{loot_at_0:1b} run function luigis_mansion:entities/nana/drop_loot
execute if entity @s[tag=dead] run function luigis_mansion:entities/nana/at_death
execute if entity @s[tag=vanish] store result storage luigis_mansion:data current_state.current_data.portrait_ghosts.nana.health int 1 run scoreboard players operation @s LastHealth = @s Health
execute if entity @s[tag=vanish] store result storage luigis_mansion:data current_state.current_data.portrait_ghosts.nana.top_vacuum_damage int 1 run scoreboard players get @s TopVacuumDamage

execute if entity @s[scores={HurtTime=1},tag=hurt,tag=!fleeing,tag=!dying] run playsound luigis_mansion:entity.nana.hurt hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={HurtTime=1},tag=hurt,tag=!fleeing,tag=!dying] Sound 40
execute if entity @s[scores={Sound=0},tag=fleeing,tag=!dying] run playsound luigis_mansion:entity.nana.flee hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={Sound=0},tag=fleeing,tag=!dying] Sound 40

execute if entity @e[tag=same_room,tag=!spectator,distance=..1.6,limit=1] if entity @s[tag=!vanish,tag=!dying,tag=!dead,tag=!captured,tag=!removed_from_existence,tag=!hurt,tag=!fleeing] run function luigis_mansion:entities/nana/collide

execute if entity @s[tag=!fleeing,tag=!hurt,scores={StunTime=0}] run function #luigis_mansion:entities/nana/tick

execute if entity @s[tag=!vanish,tag=!fleeing,tag=!hurt,tag=!visible_rocking_chair] run function luigis_mansion:entities/nana/show_rocking_chair
execute if entity @s[tag=vanish] run function luigis_mansion:entities/nana/vanish
execute at @s[tag=fleeing] run function luigis_mansion:animations/nana/flee
execute if entity @s[tag=!fleeing,tag=hurt] run function luigis_mansion:entities/nana/drop_stuff
execute at @s[tag=!fleeing,tag=hurt] run function luigis_mansion:animations/nana/hurt

scoreboard players reset #temp GhostNr
tag @e[tag=this_model] add found_owner
tag @e[tag=this_model] remove this_model
execute at @s[scores={LightX=-2147483648..}] run function luigis_mansion:other/cast_shadow/2_tall