scoreboard players add @s TargetTask 0
scoreboard players add @s[scores={ActionTime=41..}] SpawnTime 0
scoreboard players add @s ActionTime 1
data modify entity @s[scores={ActionTime=1}] data.animation set value {namespace:"luigis_mansion",id:"throw_banana"}
$execute if entity @s[scores={ActionTime=1}] run playsound $(namespace):entity.$(id).eat hostile @a[tag=same_room] ~ ~ ~ 1
$execute if entity @s[scores={ActionTime=15}] run playsound $(namespace):entity.$(id).eat hostile @a[tag=same_room] ~ ~ ~ 1
$execute if entity @s[scores={ActionTime=20}] run playsound $(namespace):entity.$(id).eat hostile @a[tag=same_room] ~ ~ ~ 1
$execute if entity @s[scores={ActionTime=25}] run playsound $(namespace):entity.$(id).eat hostile @a[tag=same_room] ~ ~ ~ 1
$execute if entity @s[scores={ActionTime=35}] run playsound $(namespace):entity.$(id).drop_bannana hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={ActionTime=35}] run function luigis_mansion:entities/garbage_can_ghost/ai/throw_banana
execute if entity @s[scores={ActionTime=35}] run tag @s add threw_banana
tag @s[scores={ActionTime=40}] remove attack
scoreboard players set @s[scores={ActionTime=40}] ActionTime 0