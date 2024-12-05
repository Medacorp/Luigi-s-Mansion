scoreboard players set @s TargetTask 0
scoreboard players set @s SpawnTime 0
scoreboard players add @s ActionTime 1
$execute if entity @s[scores={ActionTime=1}] run playsound $(namespace):entity.$(id).spawn hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={ActionTime=1}] as @e[tag=luigi,distance=..5] run function luigis_mansion:entities/luigi/animation/set/scare/normal
data modify entity @s[scores={ActionTime=1}] data.animation set value {namespace:"luigis_mansion",id:"appear/normal"}
execute at @s[scores={ActionTime=1}] run particle minecraft:block{block_state:{Name:"minecraft:dirt"}} ~ ~-1.2 ~ 0.3 0.3 0.3 0 1
execute at @s[scores={ActionTime=2}] run particle minecraft:block{block_state:{Name:"minecraft:dirt"}} ~ ~-1 ~ 0.3 0.3 0.3 0 1
execute at @s[scores={ActionTime=3}] run particle minecraft:block{block_state:{Name:"minecraft:dirt"}} ~ ~-0.8 ~ 0.3 0.3 0.3 0 1
execute at @s[scores={ActionTime=4}] run particle minecraft:block{block_state:{Name:"minecraft:dirt"}} ~ ~-0.6 ~ 0.3 0.3 0.3 0 1
execute at @s[scores={ActionTime=5}] run particle minecraft:block{block_state:{Name:"minecraft:dirt"}} ~ ~-0.4 ~ 0.3 0.3 0.3 0 1
execute at @s[scores={ActionTime=6}] run particle minecraft:block{block_state:{Name:"minecraft:dirt"}} ~ ~-0.2 ~ 0.3 0.3 0.3 0 1
execute at @s[scores={ActionTime=7}] run particle minecraft:block{block_state:{Name:"minecraft:dirt"}} ~ ~ ~ 0.3 0.3 0.3 0 1
execute at @s[scores={ActionTime=8}] run particle minecraft:block{block_state:{Name:"minecraft:dirt"}} ~ ~0.2 ~ 0.3 0.3 0.3 0 1
execute at @s[scores={ActionTime=9}] run particle minecraft:block{block_state:{Name:"minecraft:dirt"}} ~ ~0.4 ~ 0.3 0.3 0.3 0 1
execute at @s[scores={ActionTime=10}] run particle minecraft:block{block_state:{Name:"minecraft:dirt"}} ~ ~0.6 ~ 0.3 0.3 0.3 0 1
execute at @s[scores={ActionTime=11}] run particle minecraft:block{block_state:{Name:"minecraft:dirt"}} ~ ~0.8 ~ 0.3 0.3 0.3 0 1
execute at @s[scores={ActionTime=12}] run particle minecraft:block{block_state:{Name:"minecraft:dirt"}} ~ ~1 ~ 0.3 0.3 0.3 0 1
execute at @s[scores={ActionTime=13}] run particle minecraft:block{block_state:{Name:"minecraft:dirt"}} ~ ~1.2 ~ 0.3 0.3 0.3 0 1
data remove entity @s[scores={ActionTime=20}] data.animation
tag @s[scores={ActionTime=20}] remove appear
scoreboard players set @s[scores={ActionTime=20}] ActionTime 0
