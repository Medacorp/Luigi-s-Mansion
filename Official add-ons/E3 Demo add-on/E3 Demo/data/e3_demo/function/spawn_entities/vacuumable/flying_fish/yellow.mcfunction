summon minecraft:marker ~ ~ ~ {CustomName:{type:"translatable",translate:"e3_demo:entity.flying_fish"},Tags:["optional_ghost","affected_by_vacuum","affected_by_fire","affected_by_water","affected_by_ice","pulled_by_vacuum","hurt_by_fire","hurt_by_water","hurt_by_ice","ghost","flying_fish","vacuumable","this_entity"],data:{entity:{namespace:"e3_demo",id:"flying_fish"}}}
summon minecraft:armor_stand ~ ~ ~ {CustomName:{type:"translatable",translate:"e3_demo:entity.flying_fish"},Invisible:1b,NoGravity:1b,Marker:1b,HasVisualFire:1b,CustomNameVisible:0b,Invulnerable:1b,equipment:{head:{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:item_model":"luigis_mansion:entity/flying_fish","minecraft:custom_model_data":{flags:[1b],colors:[I;16769024]}}}},Pose:{Head:[0.0f,0.0f,0.0f]},Tags:["model_piece","flying_fish_model","found_owner","this_entity"],DisabledSlots:2039583}
execute as @e[tag=this_entity,tag=!model_piece,limit=1] store result score @s GhostNr run data get storage luigis_mansion:data unique_id.ghost
execute as @e[tag=this_entity,tag=!model_piece,limit=1] store result storage luigis_mansion:data unique_id.ghost int 1 run scoreboard players add @s GhostNr 1
scoreboard players operation @e[tag=this_entity,tag=model_piece] GhostNr = @e[tag=this_entity,tag=!model_piece,limit=1] GhostNr
tag @e[tag=this_entity,tag=model_piece] remove this_entity
execute as @e[tag=this_entity,limit=1] store result score @s HomeX run data get entity @s Pos[0] 100
execute as @e[tag=this_entity,limit=1] store result score @s HomeY run data get entity @s Pos[1] 100
execute as @e[tag=this_entity,limit=1] store result score @s HomeZ run data get entity @s Pos[2] 100
execute as @e[tag=this_entity,limit=1] store result score @s Move run data get storage luigis_mansion:data current_state.current_data.ghosts.e3_demo.flying_fish.speed
data modify entity @e[tag=this_entity,limit=1] data.loot set from storage luigis_mansion:data current_state.current_data.ghosts.e3_demo.flying_fish.loot
data modify entity @e[tag=this_entity,limit=1] data.damage set from storage luigis_mansion:data current_state.current_data.ghosts.e3_demo.flying_fish.damage
scoreboard players set @e[tag=this_entity,limit=1] EntitySizeRadius 4
scoreboard players set @e[tag=this_entity,limit=1] EntityYOffset 0
function luigis_mansion:spawn_entities/setup/default
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data entity