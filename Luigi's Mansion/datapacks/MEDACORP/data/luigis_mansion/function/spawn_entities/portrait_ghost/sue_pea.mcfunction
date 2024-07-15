summon minecraft:marker ~ ~ ~ {CustomName:'{"type":"translatable","translate":"luigis_mansion:entity.sue_pea"}',Tags:["portrait_ghost","portrait_ghost_pop","pearl_dropper","affected_by_vacuum","ghost","ceiling_ghost","this_entity"],data:{entity:{namespace:"luigis_mansion",id:"sue_pea"}}}
summon minecraft:armor_stand ~ ~ ~ {CustomName:'{"type":"translatable","translate":"luigis_mansion:entity.sue_pea"}',Invisible:1b,NoGravity:1b,Marker:1b,HasVisualFire:1b,CustomNameVisible:0b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:stone_button",count:1,components:{"minecraft:unbreakable":{},"minecraft:damage":1,"minecraft:custom_model_data":81,"minecraft:custom_data":{visible:"minecraft:diamond_pickaxe",invisible:"minecraft:stone_button",model_data:{default:{components:{"minecraft:custom_model_data":81}},waking:{components:{"minecraft:custom_model_data":83}}}}}}],Pose:{Head:[0.0f,0.0f,0.01f]},Tags:["model_piece","sue_pea_model","found_owner","head","this_entity"],DisabledSlots:2039583}
summon minecraft:armor_stand ~ ~ ~ {CustomName:'{"type":"translatable","translate":"luigis_mansion:entity.sue_pea"}',Invisible:1b,NoGravity:1b,Marker:1b,HasVisualFire:1b,CustomNameVisible:0b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:stone_button",count:1,components:{"minecraft:custom_data":{visible:"minecraft:diamond_pickaxe",invisible:"minecraft:stone_button"},"minecraft:unbreakable":{},"minecraft:damage":1,"minecraft:custom_model_data":82}}],Pose:{Head:[0.0f,0.0f,0.01f]},Tags:["model_piece","sue_pea_model","found_owner","body","this_entity"],DisabledSlots:2039583}
summon minecraft:armor_stand ~ ~ ~ {CustomName:'{"type":"translatable","translate":"luigis_mansion:entity.sue_pea"}',Invisible:1b,NoGravity:1b,Marker:1b,HasVisualFire:1b,CustomNameVisible:0b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:stone_button",count:1,components:{"minecraft:unbreakable":{},"minecraft:damage":2,"minecraft:custom_model_data":81,"minecraft:custom_data":{visible:"minecraft:diamond_pickaxe",invisible:"minecraft:stone_button",mirror:{components:{"minecraft:damage":3}}}}}],Pose:{Head:[0.0f,0.0f,0.01f]},Tags:["model_piece","sue_pea_model","found_owner","right_arm","this_entity"],DisabledSlots:2039583}
summon minecraft:armor_stand ~ ~ ~ {CustomName:'{"type":"translatable","translate":"luigis_mansion:entity.sue_pea"}',Invisible:1b,NoGravity:1b,Marker:1b,HasVisualFire:1b,CustomNameVisible:0b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:stone_button",count:1,components:{"minecraft:unbreakable":{},"minecraft:damage":3,"minecraft:custom_model_data":81,"minecraft:custom_data":{visible:"minecraft:diamond_pickaxe",invisible:"minecraft:stone_button",mirror:{components:{"minecraft:damage":2}}}}}],Pose:{Head:[0.0f,0.0f,0.01f]},Tags:["model_piece","sue_pea_model","found_owner","left_arm","this_entity"],DisabledSlots:2039583}
execute as @e[tag=!model_piece,tag=this_entity,limit=1] store result score @s GhostNr run data get storage luigis_mansion:data unique_id.ghost
execute as @e[tag=!model_piece,tag=this_entity,limit=1] store result storage luigis_mansion:data unique_id.ghost int 1 run scoreboard players add @s GhostNr 1
scoreboard players operation @e[tag=model_piece,tag=this_entity] GhostNr = @e[tag=!model_piece,tag=this_entity,limit=1] GhostNr
tag @e[tag=this_entity,tag=model_piece] remove this_entity
teleport @e[tag=this_entity,limit=1] ~ ~ ~ ~ ~
execute as @e[tag=this_entity,limit=1] store result score @s HomeX run data get entity @s Pos[0] 100
execute as @e[tag=this_entity,limit=1] store result score @s HomeY run data get entity @s Pos[1] 100
execute as @e[tag=this_entity,limit=1] store result score @s HomeZ run data get entity @s Pos[2] 100
execute as @e[tag=this_entity,limit=1] store result score @s HomeRotation run data get entity @s Rotation[0]
execute as @e[tag=this_entity,limit=1] store result score @s PreviousHealth store result score @s LastHealth store result score @s Health run data get storage luigis_mansion:data current_state.current_data.portrait_ghosts.luigis_mansion.sue_pea.health
execute as @e[tag=this_entity,limit=1] store result score @s MaxHealth run data get storage luigis_mansion:data current_state.current_data.portrait_ghosts.luigis_mansion.sue_pea.max_health
execute as @e[tag=this_entity,limit=1] store result score @s TopVacuumDamage run data get storage luigis_mansion:data current_state.current_data.portrait_ghosts.luigis_mansion.sue_pea.top_vacuum_damage
execute as @e[tag=this_entity,limit=1] store result score @s Move run data get storage luigis_mansion:data current_state.current_data.portrait_ghosts.luigis_mansion.sue_pea.speed
execute as @e[tag=this_entity,limit=1] store result score @s MoveFlee run data get storage luigis_mansion:data current_state.current_data.portrait_ghosts.luigis_mansion.sue_pea.flee_speed
execute as @e[tag=this_entity,limit=1] store result score @s VanishTime run data get storage luigis_mansion:data current_state.current_data.portrait_ghosts.luigis_mansion.sue_pea.vanish_time
data modify entity @e[tag=this_entity,limit=1] data.loot set from storage luigis_mansion:data current_state.current_data.portrait_ghosts.luigis_mansion.sue_pea.loot
data modify entity @e[tag=this_entity,limit=1] data.damage set from storage luigis_mansion:data current_state.current_data.portrait_ghosts.luigis_mansion.sue_pea.damage
scoreboard players set @e[tag=this_entity,limit=1] PullStrength 10
scoreboard players set @e[tag=this_entity,limit=1] Sound 0
scoreboard players set @e[tag=this_entity,limit=1] StunTime 0
scoreboard players set @e[tag=this_entity,limit=1] VulnerableTime 0
scoreboard players set @e[tag=this_entity,limit=1] SecondFleeDamage -1
scoreboard players set @e[tag=this_entity,limit=1] HeartOffset -8
scoreboard players set @e[tag=this_entity,limit=1] EntitySizeWidth 8
scoreboard players set @e[tag=this_entity,limit=1] EntitySizeHeight 20
scoreboard players set @e[tag=this_entity,limit=1] EntityYOffset 10
function luigis_mansion:spawn_entities/setup/default
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data entity