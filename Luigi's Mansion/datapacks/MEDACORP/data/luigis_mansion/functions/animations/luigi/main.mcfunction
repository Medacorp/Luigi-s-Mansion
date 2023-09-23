execute if entity @s[tag=was_sneaking,tag=!was_swimming,tag=!riding_poltergust] unless entity @s[scores={Animation=-4}] unless entity @s[scores={Animation=-1},tag=!right_leg,tag=!left_leg] unless data storage luigis_mansion:data luigi{tags:["sneaking"]} run function luigis_mansion:animations/luigi/reset_pose
execute if entity @s[tag=was_walking,tag=!was_swimming,tag=!riding_poltergust] unless entity @s[scores={Animation=-4}] unless entity @s[scores={Animation=-1},tag=!right_leg,tag=!left_leg] unless data storage luigis_mansion:data luigi{tags:["walking"]} run function luigis_mansion:animations/luigi/reset_pose
execute if entity @s[tag=was_running,tag=!was_swimming,tag=!riding_poltergust] unless entity @s[scores={Animation=-4}] unless entity @s[scores={Animation=-1},tag=!right_leg,tag=!left_leg] unless data storage luigis_mansion:data luigi{tags:["running"]} run function luigis_mansion:animations/luigi/reset_pose
execute if entity @s[tag=was_swimming] unless data storage luigis_mansion:data luigi{tags:["swimming"]} run function luigis_mansion:animations/luigi/reset_pose
execute if entity @s[scores={AnimationProgress=0},tag=was_swimming] store result entity @s Pose.Head[0] float 1 run scoreboard players get @s IncreaseAmount
execute if entity @s[tag=!was_swimming] if data storage luigis_mansion:data luigi{tags:["swimming"]} run function luigis_mansion:animations/luigi/reset_pose
execute if entity @s[tag=!was_riding_poltergust] if data storage luigis_mansion:data luigi{tags:["riding_poltergust"]} run function luigis_mansion:animations/luigi/reset_pose
execute if entity @s[tag=was_riding_poltergust] unless data storage luigis_mansion:data luigi{tags:["riding_poltergust"]} run function luigis_mansion:animations/luigi/reset_pose
execute store result score @s Animation run data get storage luigis_mansion:data luigi.animation
execute unless score @s PreviousAnimation = @s Animation run function luigis_mansion:animations/luigi/reset_pose
data modify entity @s Tags append from storage luigis_mansion:data luigi.tags[]
execute unless entity @s[scores={Animation=-3..-2}] unless entity @s[scores={Animation=0..2}] run tag @s remove sneak_pos
execute unless entity @s[scores={Animation=-3..-2}] unless entity @s[scores={Animation=0..2}] run tag @s remove low_health
tag @s[tag=riding_poltergust] remove sneak_pos
tag @s[tag=riding_poltergust] remove low_health
execute if entity @s[scores={Animation=..-4}] run function luigis_mansion:animations/luigi/in_knockback
execute if entity @s[scores={Animation=5..}] run function luigis_mansion:animations/luigi/in_knockback
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
execute if data storage luigis_mansion:data luigi{invulnerable:0b} if entity @s[tag=was_invisible] run function luigis_mansion:animations/luigi/invulnerability_blink
scoreboard players operation @s PreviousAnimation = @s Animation
tag @s[tag=low_health] add was_low_health
tag @s[tag=!low_health] remove was_low_health
tag @s[tag=low_health] remove low_health
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
tag @s[tag=holding_poltergust] remove holding_poltergust
tag @s[tag=death_animation] remove death_animation
tag @s[tag=revive_animation] remove revive_animation
tag @s[tag=stop_model] remove stop_model
tag @s[tag=poltergust_grabbed] remove poltergust_grabbed
tag @s remove dark_room
tag @s remove flashlight
tag @s remove moved
tag @s remove player
execute unless entity @a[tag=this_luigi,scores={Shrunk=1..},limit=1] run tag @s add found_owner
execute if entity @a[tag=this_luigi,scores={Shrunk=1..},limit=1] run tag @s add found_shrunk_owner
tag @s add this_luigi