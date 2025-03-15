execute store success score #temp Time run data modify entity @s data.previous_animation set from entity @s data.animation
execute if score #temp Time matches 1 run function luigis_mansion:animations/furniture/reset_pose
scoreboard players reset #temp Time
execute unless data entity @s Pose.Head[0] run data merge entity @s {Pose:{Head:[0.001f,0.001f,0.001f]}}

function luigis_mansion:animations/furniture/animation with entity @s data.animation
execute if entity @s[tag=open,scores={ActionTime=0..}] run function luigis_mansion:animations/furniture/open_animation with entity @s data.open_animation

execute unless data entity @s Pose.Head run data modify entity @s Pose.Head set value [0.0f,0.0001f,0.0f]

#sync up animation for shaking
execute store result score #temp Time run data get entity @s data.initial_animation_progress
execute unless data storage luigis_mansion:data passive{initial_animation_progress:0} unless score @s AnimationProgress matches 0 unless score @s AnimationProgress = #temp Time run function luigis_mansion:animations/furniture/main
scoreboard players reset #temp Time