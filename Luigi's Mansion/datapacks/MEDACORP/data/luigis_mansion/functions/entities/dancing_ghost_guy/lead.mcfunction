scoreboard players add @s WaitTime 1
data modify entity @e[tag=partner,limit=1] data.target_pos set from entity @s data.target_pos
data modify entity @e[tag=partner,limit=1] data.path set from entity @s data.path
scoreboard players operation @e[tag=partner,limit=1] TaskTime = @s TaskTime

teleport @s[scores={WaitTime=1}] ~ ~ ~ ~ ~
execute if entity @s[scores={WaitTime=1}] positioned ^ ^ ^0.5 run teleport @e[tag=partner,limit=1] ~ ~ ~ ~-180 ~
execute if entity @s[scores={WaitTime=..99},tag=!dance_other_direction] unless score #mirrored Selected matches 1 rotated ~5.4 ~ rotated as @s run teleport @s ~ ~ ~ ~5.4 ~
execute if entity @s[scores={WaitTime=..99},tag=!dance_other_direction] unless score #mirrored Selected matches 1 rotated ~5.4 ~ positioned ^ ^ ^0.5 as @e[tag=partner,limit=1] rotated as @s run teleport @s ~ ~ ~ ~5.4 ~
execute if entity @s[scores={WaitTime=..99},tag=dance_other_direction] unless score #mirrored Selected matches 1 rotated ~-5.4 ~ rotated as @s run teleport @s ~ ~ ~ ~-5.4 ~
execute if entity @s[scores={WaitTime=..99},tag=dance_other_direction] unless score #mirrored Selected matches 1 rotated ~-5.4 ~ positioned ^ ^ ^0.5 as @e[tag=partner,limit=1] rotated as @s run teleport @s ~ ~ ~ ~-5.4 ~
execute if entity @s[scores={WaitTime=..99},tag=!dance_other_direction] if score #mirrored Selected matches 1 rotated ~-5.4 ~ rotated as @s run teleport @s ~ ~ ~ ~5.4 ~
execute if entity @s[scores={WaitTime=..99},tag=!dance_other_direction] if score #mirrored Selected matches 1 rotated ~-5.4 ~ positioned ^ ^ ^0.5 as @e[tag=partner,limit=1] rotated as @s run teleport @s ~ ~ ~ ~5.4 ~
execute if entity @s[scores={WaitTime=..99},tag=dance_other_direction] if score #mirrored Selected matches 1 rotated ~5.4 ~ rotated as @s run teleport @s ~ ~ ~ ~-5.4 ~
execute if entity @s[scores={WaitTime=..99},tag=dance_other_direction] if score #mirrored Selected matches 1 rotated ~5.4 ~ positioned ^ ^ ^0.5 as @e[tag=partner,limit=1] rotated as @s run teleport @s ~ ~ ~ ~-5.4 ~
$execute if entity @s[scores={WaitTime=1}] run playsound $(namespace):entity.$(id).dance hostile @a[tag=same_room] ~ ~ ~ 1 0.8
$execute if entity @s[scores={WaitTime=14}] run playsound $(namespace):entity.$(id).dance hostile @a[tag=same_room] ~ ~ ~ 1
$execute if entity @s[scores={WaitTime=27}] run playsound $(namespace):entity.$(id).dance hostile @a[tag=same_room] ~ ~ ~ 1
$execute if entity @s[scores={WaitTime=40}] run playsound $(namespace):entity.$(id).dance hostile @a[tag=same_room] ~ ~ ~ 1 0.8
$execute if entity @s[scores={WaitTime=53}] run playsound $(namespace):entity.$(id).dance hostile @a[tag=same_room] ~ ~ ~ 1
$execute if entity @s[scores={WaitTime=66}] run playsound $(namespace):entity.$(id).dance hostile @a[tag=same_room] ~ ~ ~ 1
$execute if entity @s[scores={WaitTime=79}] run playsound $(namespace):entity.$(id).dance hostile @a[tag=same_room] ~ ~ ~ 1 0.8
execute if entity @s[scores={WaitTime=100}] run tag @e[tag=partner,limit=1] add dodge
execute if entity @s[scores={WaitTime=100}] run tag @e[tag=partner,limit=1] add leader
execute if entity @s[scores={WaitTime=100},tag=!dance_other_direction] run tag @e[tag=partner,limit=1] add dance_other_direction
execute if entity @s[scores={WaitTime=100}] run tag @s add attack
execute if entity @s[scores={WaitTime=100}] run tag @s remove leader
execute if entity @s[scores={WaitTime=100}] run tag @s remove dance_other_direction
execute if entity @s[scores={WaitTime=100}] run scoreboard players reset @s WaitTime