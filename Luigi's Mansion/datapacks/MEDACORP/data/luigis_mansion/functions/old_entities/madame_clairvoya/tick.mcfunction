scoreboard players operation #temp GhostNr = @s GhostNr
execute as @e[tag=model_piece,scores={GhostNr=-2147483648..}] if score @s GhostNr = #temp GhostNr run tag @s add this_model

execute if entity @s[tag=dying,scores={DeathTime=1}] if data entity @s ArmorItems[3].tag.luigis_mansion.loot{drop_at_0:1b} run function luigis_mansion:other/drop_loot
execute if entity @s[tag=dead] run function luigis_mansion:old_entities/madame_clairvoya/at_death
execute if entity @s[tag=vanish] store result storage luigis_mansion:data current_state.current_data.portrait_ghosts.luigis_mansion.madame_clairvoya.health int 1 run scoreboard players operation @s LastHealth = @s Health
execute if entity @s[tag=vanish] store result storage luigis_mansion:data current_state.current_data.portrait_ghosts.luigis_mansion.madame_clairvoya.top_vacuum_damage int 1 run scoreboard players get @s TopVacuumDamage

execute if entity @s[scores={HurtTime=1},tag=hurt,tag=!flee,tag=!dying] run playsound luigis_mansion:entity.madame_clairvoya.hurt hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={HurtTime=1},tag=hurt,tag=!flee,tag=!dying] Sound 40
execute if entity @s[scores={Sound=0},tag=flee,tag=!dying] run playsound luigis_mansion:entity.madame_clairvoya.flee hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={Sound=0},tag=flee,tag=!dying] Sound 40

execute if entity @s[tag=!flee,tag=!hurt,scores={StunTime=0}] run function #luigis_mansion:entities/madame_clairvoya/tick

execute if entity @s[tag=vanish] run function luigis_mansion:old_entities/madame_clairvoya/vanish
execute at @s[tag=flee,tag=!second_flee_state] run function luigis_mansion:old_animations/madame_clairvoya/flee
execute at @s[tag=flee,tag=second_flee_state] run function luigis_mansion:old_entities/madame_clairvoya/second_flee_state
execute at @s[tag=!flee,tag=hurt] run function luigis_mansion:old_animations/madame_clairvoya/hurt

scoreboard players reset #temp GhostNr
tag @e[tag=this_model] add found_owner
tag @e[tag=this_model] remove this_model
execute at @s[scores={LightX=-2147483648..}] run function luigis_mansion:other/cast_shadow/2_tall