scoreboard players add @s TargetTask 0
scoreboard players add @s SpawnTime 0
scoreboard players add @s ActionTime 1
data modify entity @s[scores={ActionTime=1}] data.animation set value {namespace:"luigis_mansion",id:"throw_bowling_ball"}
data modify entity @s[scores={ActionTime=10}] data.animation set value {namespace:"luigis_mansion",id:"look"}

execute if entity @s[scores={ActionTime=1}] if score #mirrored Selected matches 0 run teleport @e[tag=this_bowling_ball,limit=1] ^-0.3 ^0.2 ^0.4 ~ ~
execute if entity @s[scores={ActionTime=1}] if score #mirrored Selected matches 1 run teleport @e[tag=this_bowling_ball,limit=1] ^0.3 ^0.2 ^0.4 ~ ~
execute if entity @s[scores={ActionTime=2}] if score #mirrored Selected matches 0 run teleport @e[tag=this_bowling_ball,limit=1] ^-0.3 ^-0.4 ^0.2 ~ ~
execute if entity @s[scores={ActionTime=2}] if score #mirrored Selected matches 1 run teleport @e[tag=this_bowling_ball,limit=1] ^0.3 ^-0.4 ^0.2 ~ ~
execute if entity @s[scores={ActionTime=3}] if score #mirrored Selected matches 0 run teleport @e[tag=this_bowling_ball,limit=1] ^-0.3 ^-0.4 ^-0.2 ~ ~
execute if entity @s[scores={ActionTime=3}] if score #mirrored Selected matches 1 run teleport @e[tag=this_bowling_ball,limit=1] ^0.3 ^-0.4 ^-0.2 ~ ~
execute if entity @s[scores={ActionTime=4}] run teleport @e[tag=this_bowling_ball,limit=1] ^ ^-1 ^0.5 ~ ~
execute if entity @s[scores={ActionTime=5}] run tag @e[tag=this_bowling_ball,limit=1] remove no_ai
$execute if entity @s[scores={ActionTime=5}] run playsound $(namespace):entity.$(id).attack hostile @a[tag=same_room] ~ ~ ~ 1

execute unless entity @s[tag=!laugh,tag=!complain] run tag @s[scores={ActionTime=10..}] remove attack
scoreboard players set @s[tag=!attack] ActionTime 0