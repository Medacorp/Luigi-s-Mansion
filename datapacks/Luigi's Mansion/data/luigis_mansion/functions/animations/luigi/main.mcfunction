execute if entity @s[tag=!made_error,tag=was_sneaking,tag=!was_swimming,tag=!riding_poltergust] unless entity @s[tag=was_yelling,tag=!right_leg,tag=!left_leg] unless data storage luigis_mansion:data luigi{tags:["sneaking"]} run function luigis_mansion:animations/luigi/reset_pose
execute if entity @s[tag=!made_error,tag=was_walking,tag=!was_swimming,tag=!riding_poltergust] unless entity @s[tag=was_yelling,tag=!right_leg,tag=!left_leg] unless data storage luigis_mansion:data luigi{tags:["walking"]} run function luigis_mansion:animations/luigi/reset_pose
execute if entity @s[tag=!made_error,tag=was_running,tag=!was_swimming,tag=!riding_poltergust] unless entity @s[tag=was_yelling,tag=!right_leg,tag=!left_leg] unless data storage luigis_mansion:data luigi{tags:["running"]} run function luigis_mansion:animations/luigi/reset_pose
execute if entity @s[tag=was_swimming] unless data storage luigis_mansion:data luigi{tags:["swimming"]} run function luigis_mansion:animations/luigi/reset_pose
execute if entity @s[tag=was_looking_at_map] unless data storage luigis_mansion:data luigi{tags:["looking_at_map"]} run function luigis_mansion:animations/luigi/reset_pose
execute if entity @s[tag=was_cold_room_idle] unless data storage luigis_mansion:data luigi{tags:["cold_room_idle"]} run function luigis_mansion:animations/luigi/reset_pose
execute if entity @s[tag=!was_cold_room_idle] if data storage luigis_mansion:data luigi{tags:["cold_room_idle"]} run function luigis_mansion:animations/luigi/reset_pose
execute if entity @s[tag=was_low_health_idle] unless data storage luigis_mansion:data luigi{tags:["low_health_idle"]} run function luigis_mansion:animations/luigi/reset_pose
execute if entity @s[tag=!was_low_health_idle] if data storage luigis_mansion:data luigi{tags:["low_health_idle"]} run function luigis_mansion:animations/luigi/reset_pose
execute if entity @s[tag=was_high_health_idle] unless data storage luigis_mansion:data luigi{tags:["high_health_idle"]} run function luigis_mansion:animations/luigi/reset_pose
execute if entity @s[tag=!was_high_health_idle] if data storage luigis_mansion:data luigi{tags:["high_health_idle"]} run function luigis_mansion:animations/luigi/reset_pose
execute if entity @s[scores={Pull=10..}] unless data storage luigis_mansion:data luigi{tags:["made_error"]} run function luigis_mansion:animations/luigi/reset_pose
execute if entity @s[scores={AnimationProg=0},tag=was_swimming] store result entity @s Pose.Head[0] float 1 run scoreboard players get @s IncreaseAmount
execute if entity @s[tag=!was_swimming] if data storage luigis_mansion:data luigi{tags:["swimming"]} run function luigis_mansion:animations/luigi/reset_pose
execute if entity @s[tag=!was_yelling] if data storage luigis_mansion:data luigi{tags:["yelling"]} run function luigis_mansion:animations/luigi/reset_pose
execute if entity @s[tag=was_yelling] unless data storage luigis_mansion:data luigi{tags:["yelling"]} run function luigis_mansion:animations/luigi/reset_pose
execute if entity @s[tag=!was_nodding] if data storage luigis_mansion:data luigi{tags:["nod"]} run function luigis_mansion:animations/luigi/reset_pose
execute if entity @s[tag=was_nodding] unless data storage luigis_mansion:data luigi{tags:["nod"]} run function luigis_mansion:animations/luigi/reset_pose
execute if entity @s[tag=!was_thinking] if data storage luigis_mansion:data luigi{tags:["thinking"]} run function luigis_mansion:animations/luigi/reset_pose
execute if entity @s[tag=was_thinking] unless data storage luigis_mansion:data luigi{tags:["thinking"]} run function luigis_mansion:animations/luigi/reset_pose
execute if entity @s[tag=!was_sighing] if data storage luigis_mansion:data luigi{tags:["sigh"]} run function luigis_mansion:animations/luigi/reset_pose
execute if entity @s[tag=was_sighing] unless data storage luigis_mansion:data luigi{tags:["sigh"]} run function luigis_mansion:animations/luigi/reset_pose
execute if entity @s[tag=!was_enthusiastic] if data storage luigis_mansion:data luigi{tags:["enthusiastic"]} run function luigis_mansion:animations/luigi/reset_pose
execute if entity @s[tag=was_enthusiastic] unless data storage luigis_mansion:data luigi{tags:["enthusiastic"]} run function luigis_mansion:animations/luigi/reset_pose
execute if entity @s[tag=!was_answering_phone] if data storage luigis_mansion:data luigi{tags:["answer_phone"]} run function luigis_mansion:animations/luigi/reset_pose
execute if entity @s[tag=was_answering_phone] unless data storage luigis_mansion:data luigi{tags:["answer_phone"]} run function luigis_mansion:animations/luigi/reset_pose
execute if entity @s[tag=!was_gameboy_horroring] if data storage luigis_mansion:data luigi{tags:["gameboy_horror"]} run function luigis_mansion:animations/luigi/reset_pose
execute if entity @s[tag=was_gameboy_horroring] unless data storage luigis_mansion:data luigi{tags:["gameboy_horror"]} run function luigis_mansion:animations/luigi/reset_pose
execute if entity @s[tag=!was_inspecting] if data storage luigis_mansion:data luigi{tags:["inspect"]} run function luigis_mansion:animations/luigi/reset_pose
execute if entity @s[tag=was_inspecting] unless data storage luigis_mansion:data luigi{tags:["inspect"]} run function luigis_mansion:animations/luigi/reset_pose
execute if entity @s[tag=!was_looking] if data storage luigis_mansion:data luigi{tags:["look"]} run function luigis_mansion:animations/luigi/reset_pose
execute if entity @s[tag=was_looking] unless data storage luigis_mansion:data luigi{tags:["look"]} run function luigis_mansion:animations/luigi/reset_pose
execute store result score @s KnockbackType run data get storage luigis_mansion:data luigi.animation
execute unless score @s ScareType = @s KnockbackType run function luigis_mansion:animations/luigi/reset_pose
data modify entity @s Tags append from storage luigis_mansion:data luigi.tags[]
tag @s[tag=yelling] remove sneak_pos
tag @s[tag=nod] remove sneak_pos
tag @s[tag=thinking] remove sneak_pos
tag @s[tag=sigh] remove sneak_pos
tag @s[tag=enthusiastic] remove sneak_pos
tag @s[tag=answer_phone] remove sneak_pos
tag @s[tag=inspect] remove sneak_pos
tag @s[tag=look] remove sneak_pos
tag @s[tag=gameboy_horror] remove sneak_pos
tag @s[tag=inspect] remove sneak_pos
tag @s[tag=riding_poltergust] remove sneak_pos
tag @s[tag=yelling] remove low_health
tag @s[tag=nod] remove low_health
tag @s[tag=thinking] remove low_health
tag @s[tag=sigh] remove low_health
tag @s[tag=enthusiastic] remove low_health
tag @s[tag=answer_phone] remove low_health
tag @s[tag=inspect] remove low_health
tag @s[tag=look] remove low_health
tag @s[tag=gameboy_horror] remove low_health
tag @s[tag=inspect] remove low_health
tag @s[tag=riding_poltergust] remove low_health
execute if entity @s[scores={Pull=10..}] run function luigis_mansion:animations/luigi/in_knockback
execute if entity @s[scores={KnockbackType=..-1}] run function luigis_mansion:animations/luigi/in_knockback
execute if entity @s[scores={KnockbackType=2..}] run function luigis_mansion:animations/luigi/in_knockback
scoreboard players add @s[tag=made_error] Pull 1
execute if data storage luigis_mansion:data luigi{gliding:1b} run tag @s[tag=walking] remove walking
execute unless data entity @s Pose.Head[0] run data merge entity @s {Pose:{Head:[0.001f,0.001f,0.001f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[tag=!head] store result entity @s Pose.Head[0] float 1 run scoreboard players operation #temp Time -= @s IncreaseAmount
execute unless data storage luigis_mansion:data luigi{gliding:0b,swimming:0b} store result score @s IncreaseAmount run data get entity @e[tag=gooigi,limit=1] Rotation[1]
execute unless data storage luigis_mansion:data luigi{gliding:0b,swimming:0b} run scoreboard players add @s IncreaseAmount 90
execute if data storage luigis_mansion:data luigi{gliding:0b,swimming:0b} run scoreboard players set @s IncreaseAmount 0
scoreboard players reset #temp Time
execute if data storage luigis_mansion:data luigi{gliding:0b,swimming:0b} run function luigis_mansion:animations/luigi/call_part_function
execute unless data storage luigis_mansion:data luigi{gliding:0b,swimming:0b} rotated ~ ~90 run function luigis_mansion:animations/luigi/call_part_function
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[tag=!head] store result entity @s Pose.Head[0] float 1 run scoreboard players operation #temp Time += @s IncreaseAmount
scoreboard players reset #temp Time
execute if data storage luigis_mansion:data luigi{invulnerable:1b} run function luigis_mansion:animations/luigi/invulnerability_blink
execute if data storage luigis_mansion:data luigi{invulnerable:0b} if entity @s[nbt={ArmorItems:[{id:"minecraft:oak_button"}]}] run data modify entity @s ArmorItems[3].id set value "minecraft:leather_chestplate"
scoreboard players operation @s ScareType = @s KnockbackType
tag @s[tag=low_health] add was_low_health
tag @s[tag=!low_health] remove was_low_health
tag @s[tag=low_health] remove low_health
tag @s[tag=cold_room_idle] add was_cold_room_idle
tag @s[tag=!cold_room_idle] remove was_cold_room_idle
tag @s[tag=cold_room_idle] remove cold_room_idle
tag @s[tag=high_health_idle] add was_high_health_idle
tag @s[tag=!high_health_idle] remove was_high_health_idle
tag @s[tag=high_health_idle] remove high_health_idle
tag @s[tag=low_health_idle] add was_low_health_idle
tag @s[tag=!low_health_idle] remove was_low_health_idle
tag @s[tag=low_health_idle] remove low_health_idle
tag @s[tag=made_error] remove made_error
tag @s[tag=sneaking,tag=!stop_model] add was_sneaking
tag @s[tag=!sneaking] remove was_sneaking
tag @s[tag=sneaking] remove sneaking
tag @s[tag=walking,tag=!stop_model] add was_walking
tag @s[tag=!walking] remove was_walking
tag @s[tag=walking] remove walking
tag @s[tag=running,tag=!stop_model] add was_running
tag @s[tag=!running] remove was_running
tag @s[tag=running] remove running
tag @s[tag=swimming,tag=!stop_model] add was_swimming
tag @s[tag=!swimming] remove was_swimming
tag @s[tag=swimming] remove swimming
tag @s[tag=sneak_pos,tag=!stop_model] add was_sneak_posing
tag @s[tag=!sneak_pos] remove was_sneak_posing
tag @s[tag=sneak_pos] remove sneak_pos
tag @s[tag=riding_poltergust] add was_riding_poltergust
tag @s[tag=!riding_poltergust] remove was_riding_poltergust
tag @s[tag=riding_poltergust] remove riding_poltergust
tag @s[tag=flipped_gravity] add was_flipped
tag @s[tag=!flipped_gravity] remove was_flipped
tag @s[tag=flipped_gravity] remove flipped_gravity
tag @s[tag=yelling] add was_yelling
tag @s[tag=!yelling] remove was_yelling
tag @s[tag=yelling] remove yelling
tag @s[tag=nod] add was_nodding
tag @s[tag=!nod] remove was_nodding
tag @s[tag=nod] remove nod
tag @s[tag=thinking] add was_thinking
tag @s[tag=!thinking] remove was_thinking
tag @s[tag=thinking] remove thinking
tag @s[tag=sigh] add was_sighing
tag @s[tag=!sigh] remove was_sighing
tag @s[tag=sigh] remove sigh
tag @s[tag=enthusiastic] add was_enthusiastic
tag @s[tag=!enthusiastic] remove was_enthusiastic
tag @s[tag=enthusiastic] remove enthusiastic
tag @s[tag=answer_phone] add was_answering_phone
tag @s[tag=!answer_phone] remove was_answering_phone
tag @s[tag=answer_phone] remove answer_phone
tag @s[tag=gameboy_horror] add was_gameboy_horroring
tag @s[tag=!gameboy_horror] remove was_gameboy_horroring
tag @s[tag=gameboy_horror] remove gameboy_horror
tag @s[tag=inspect] add was_inspecting
tag @s[tag=!inspect] remove was_inspecting
tag @s[tag=inspect] remove inspect
tag @s[tag=look] add was_looking
tag @s[tag=!look] remove was_looking
tag @s[tag=look] remove look
tag @s[tag=holding_poltergust] add was_holding_poltergust
tag @s[tag=!holding_poltergust] remove was_holding_poltergust
tag @s[tag=holding_poltergust] remove holding_poltergust
tag @s[tag=death_animation] remove death_animation
tag @s[tag=spawn_animation] remove spawn_animation
tag @s[tag=stop_model] remove stop_model
tag @s remove dark_room
tag @s remove flashlight
tag @s remove moved
execute unless entity @a[tag=this_luigi,scores={Shrunk=1..},limit=1] run tag @s add found_owner
execute if entity @a[tag=this_luigi,scores={Shrunk=1..},limit=1] run tag @s add found_shrunk_owner