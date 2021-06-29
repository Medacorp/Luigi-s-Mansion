scoreboard players operation #temp GhostNr = @s GhostNr
execute as @e[tag=model_piece,scores={GhostNr=-2147483648..}] if score @s GhostNr = #temp GhostNr run tag @s add this_model
execute as @e[tag=weights] if score @s GhostNr = #temp GhostNr run tag @s add these_weights

execute if entity @s[tag=dying,scores={HurtTime=1}] run playsound luigis_mansion:entity.biff_atlas.vacuumed hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[tag=dead] run function luigis_mansion:entities/biff_atlas/at_death
execute if entity @s[tag=vanish] store result storage luigis_mansion:data current_state.current_data.portrait_ghosts.biff_atlas.health int 1 run scoreboard players operation @s LastHealth = @s Health
execute if entity @s[tag=vanish] store result storage luigis_mansion:data current_state.current_data.portrait_ghosts.biff_atlas.top_vacuum_damage int 1 run scoreboard players get @s TopVacuumDamage
scoreboard players reset #temp ActionTime

execute if entity @s[scores={HurtTime=1},tag=hurt,tag=!fleeing] run playsound luigis_mansion:entity.biff_atlas.hurt hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={HurtTime=1},tag=hurt,tag=!fleeing] Sound 40
execute if entity @s[scores={Sound=0},tag=fleeing] run playsound luigis_mansion:entity.biff_atlas.flee hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={Sound=0},tag=fleeing] Sound 40

execute if entity @s[tag=!fleeing,tag=!hurt,tag=!vanish,scores={StunTime=0}] run function luigis_mansion:entities/biff_atlas/body_build

execute if entity @s[tag=vanish] run function luigis_mansion:entities/biff_atlas/vanish
execute at @s[tag=knocked_back] run function luigis_mansion:animations/biff_atlas/knocked_back
execute at @s[tag=!knocked_back,tag=!knocked_out,tag=!attack,tag=!laugh,tag=!fleeing,tag=!hurt,tag=!vanish,tag=!strech_neck,tag=!lift_succeed,tag=!lift_fail] run function luigis_mansion:animations/biff_atlas/idle
execute at @s[tag=knocked_out,tag=!attack,tag=!fleeing,tag=!hurt,tag=!vanish,scores={StunTime=0}] run function luigis_mansion:animations/biff_atlas/ko
execute at @s[tag=lift_fail] run function luigis_mansion:animations/biff_atlas/lift_fail
execute at @s[tag=lift_succeed] run function luigis_mansion:animations/biff_atlas/lift_succeed
execute at @s[tag=strech_neck] run function luigis_mansion:animations/biff_atlas/strech_neck
execute at @s[tag=fleeing] run function luigis_mansion:animations/biff_atlas/flee
execute at @s[tag=!fleeing,tag=hurt] run function luigis_mansion:animations/biff_atlas/hurt

scoreboard players reset #temp GhostNr
tag @e[tag=this_model] add found_owner
tag @e[tag=this_model] remove this_model
tag @e[tag=these_weights,limit=1] remove these_weights
execute at @s[scores={LightX=-2147483648..}] run function luigis_mansion:other/cast_shadow/2_tall