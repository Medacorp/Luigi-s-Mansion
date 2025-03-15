scoreboard players add @s AnimationProgress 1
execute at @s[scores={AnimationProgress=1}] anchored eyes run summon minecraft:armor_stand ^ ^ ^ {CustomName:{type:"translatable",translate:"luigis_mansion:entity.luigi"},Tags:["luigi_ice","knockback_model"],Invisible:1b,Marker:1b,Pose:{Head:[0.0f,0.0f,0.01f]},equipment:{head:{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:entity/ice"}}}}
execute at @s[scores={AnimationProgress=1}] anchored eyes positioned ^ ^ ^ run scoreboard players operation @e[tag=knockback_model,limit=1,distance=..0.1] ID = @s ID
execute at @s[scores={AnimationProgress=1}] run function luigis_mansion:entities/luigi/make_sound/simple {sound:"luigis_mansion:entity.player.hurt_freeze"}
scoreboard players set @s[scores={AnimationProgress=..70,Sound=0}] Sound 2
#freeze_player insert
summon minecraft:marker ~ ~ ~ {Tags:["home","remove_from_existence"]}
execute store result entity @e[tag=home,limit=1] Pos[0] double 0.01 run scoreboard players get @s PositionX
execute store result entity @e[tag=home,limit=1] Pos[1] double 0.01 run scoreboard players get @s PositionY
execute store result entity @e[tag=home,limit=1] Pos[2] double 0.01 run scoreboard players get @s PositionZ
execute store result entity @e[tag=home,limit=1] Rotation[0] float 1 run scoreboard players get @s RotationY
execute store result entity @e[tag=home,limit=1] Rotation[1] float 1 run scoreboard players get @s RotationX
#insert because of this line
execute at @s[scores={AnimationProgress=..70},tag=!separated_camera] unless entity @e[tag=home,limit=1,distance=..0.1] run scoreboard players add @s AnimationProgress 2
execute store result score #temp RotationY run data get entity @s Rotation[0]
execute store result score #temp RotationX run data get entity @s Rotation[1]
execute store result score #temp2 RotationY run data get entity @e[tag=home,limit=1] Rotation[0]
execute store result score #temp2 RotationX run data get entity @e[tag=home,limit=1] Rotation[1]
execute unless score #temp RotationY = #temp2 RotationY run tag @s[tag=!separated_camera] add teleport_now
execute unless score #temp RotationX = #temp2 RotationX run tag @s[tag=!separated_camera] add teleport_now
execute if entity @e[tag=home,distance=0.01..,limit=1] run tag @s add teleport_now
scoreboard players reset #temp RotationY
scoreboard players reset #temp RotationX
scoreboard players reset #temp2 RotationY
scoreboard players reset #temp2 RotationX
execute if entity @s[tag=teleport_now,tag=!separated_camera] run function luigis_mansion:entities/luigi/move/execute {execute:"at @e[tag=home,limit=1]",teleport:"0 0 0 0 0"}
execute if entity @s[tag=teleport_now] run function luigis_mansion:entities/luigi/move/execute {execute:"at @e[tag=home,limit=1]",teleport:"~ ~ ~ ~ ~"}
tag @s remove teleport_now
tag @s add already_froze_player
kill @e[tag=home,limit=1]
#/freeze_player insert
execute at @s[scores={AnimationProgress=70..}] anchored eyes positioned ^ ^ ^ run tag @e[tag=luigi_ice,distance=..0.2,limit=1] add remove_from_existence
execute at @s[scores={AnimationProgress=70..72}] anchored eyes run particle minecraft:item{item:{id:"minecraft:diamond_pickaxe",components:{"minecraft:item_model":"luigis_mansion:entity/ice"}}} ^ ^ ^ 0.3 0.3 0.3 0 50 force @a[tag=same_room]
scoreboard players set @s[scores={AnimationProgress=..70,Invulnerable=6..}] Invulnerable 5
execute at @s[scores={AnimationProgress=..70,Invulnerable=0}] run data modify storage luigis_mansion:data damage set value {amount:1}
execute if entity @s[scores={AnimationProgress=..70,Invulnerable=0}] if data storage luigis_mansion:data my_memory.hurt_by.attacker[0] run data modify storage luigis_mansion:data damage.attacker set from storage luigis_mansion:data my_memory.hurt_by.attacker[0].id
execute at @s[scores={AnimationProgress=..70,Invulnerable=0}] run function luigis_mansion:entities/luigi/damage
scoreboard players set @s[scores={AnimationProgress=70}] Invulnerable 70
execute at @s[scores={AnimationProgress=73}] run function luigis_mansion:entities/luigi/make_sound/force {high:"luigis_mansion:entity.player.sigh.high_health",medium:"luigis_mansion:entity.player.sigh.high_health",low:"luigis_mansion:entity.player.sigh.low_health",duration:15}
tag @s remove new_poltergust_grabbed
tag @s remove poltergust_grabbed
tag @s remove vacuuming_ghost
tag @s add disable_flashlight
tag @s add disable_game_boy_horror
tag @s add disable_interact
tag @s add disable_poltergust
tag @s add animation_may_move
tag @s add tick_down_invulnerability
execute if entity @s[scores={AnimationProgress=80}] run function luigis_mansion:entities/luigi/animation/set/none