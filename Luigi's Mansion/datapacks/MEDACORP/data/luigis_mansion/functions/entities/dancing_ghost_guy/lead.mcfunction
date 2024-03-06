scoreboard players add @s WaitTime 1
data modify entity @e[tag=partner,limit=1] data.target_pos set from entity @s data.target_pos
data modify entity @e[tag=partner,limit=1] data.path set from entity @s data.path
scoreboard players operation @e[tag=partner,limit=1] TaskTime = @s TaskTime

teleport @s[scores={WaitTime=1}] ^ ^ ^-0.5 ~ ~
data modify entity @s[scores={WaitTime=1}] data.dance_rotation set from entity @s Rotation
execute if entity @s[scores={WaitTime=1}] run teleport @e[tag=partner,limit=1] ^ ^ ^0.5 ~-180 ~
execute if entity @s[tag=!dance_other_direction] unless score #mirrored Selected matches 1 rotated ~7.2 ~ positioned ^ ^ ^0.5 as @e[tag=partner,limit=1] rotated as @s run teleport @s ~ ~ ~ ~-7.2 ~
execute if entity @s[tag=dance_other_direction] unless score #mirrored Selected matches 1 rotated ~-7.2 ~ positioned ^ ^ ^0.5 as @e[tag=partner,limit=1] rotated as @s run teleport @s ~ ~ ~ ~7.2 ~
execute if entity @s[tag=!dance_other_direction] if score #mirrored Selected matches 1 rotated ~-7.2 ~ positioned ^ ^ ^0.5 as @e[tag=partner,limit=1] rotated as @s run teleport @s ~ ~ ~ ~7.2 ~
execute if entity @s[tag=dance_other_direction] if score #mirrored Selected matches 1 rotated ~7.2 ~ positioned ^ ^ ^0.5 as @e[tag=partner,limit=1] rotated as @s run teleport @s ~ ~ ~ ~-7.2 ~
execute if entity @s[tag=!dance_other_direction] unless score #mirrored Selected matches 1 run teleport @s ~ ~ ~ ~7.2 ~
execute if entity @s[tag=dance_other_direction] unless score #mirrored Selected matches 1 run teleport @s ~ ~ ~ ~-7.2 ~
execute if entity @s[tag=!dance_other_direction] if score #mirrored Selected matches 1 run teleport @s ~ ~ ~ ~-7.2 ~
execute if entity @s[tag=dance_other_direction] if score #mirrored Selected matches 1 run teleport @s ~ ~ ~ ~7.2 ~
data modify entity @s data.partner_direction set from entity @s Rotation
data modify entity @s Rotation set from entity @s data.dance_rotation
execute if entity @s[tag=!dance_other_direction] unless score #mirrored Selected matches 1 rotated ~7.2 ~ positioned ^ ^ ^-0.5 rotated as @s run teleport @s ~ ~ ~ ~-7.2 ~
execute if entity @s[tag=dance_other_direction] unless score #mirrored Selected matches 1 rotated ~-7.2 ~ positioned ^ ^ ^-0.5 rotated as @s run teleport @s ~ ~ ~ ~7.2 ~
execute if entity @s[tag=!dance_other_direction] if score #mirrored Selected matches 1 rotated ~-7.2 ~ positioned ^ ^ ^-0.5 rotated as @s run teleport @s ~ ~ ~ ~7.2 ~
execute if entity @s[tag=dance_other_direction] if score #mirrored Selected matches 1 rotated ~7.2 ~ positioned ^ ^ ^-0.5 rotated as @s run teleport @s ~ ~ ~ ~-7.2 ~
data modify entity @s data.dance_rotation set from entity @s Rotation
$execute if entity @s[scores={WaitTime=1}] run playsound $(namespace):entity.$(id).dance hostile @a[tag=same_room] ~ ~ ~ 1 0.8
$execute if entity @s[scores={WaitTime=14}] run playsound $(namespace):entity.$(id).dance hostile @a[tag=same_room] ~ ~ ~ 1
$execute if entity @s[scores={WaitTime=27}] run playsound $(namespace):entity.$(id).dance hostile @a[tag=same_room] ~ ~ ~ 1
$execute if entity @s[scores={WaitTime=40}] run playsound $(namespace):entity.$(id).dance hostile @a[tag=same_room] ~ ~ ~ 1 0.8
$execute if entity @s[scores={WaitTime=53}] run playsound $(namespace):entity.$(id).dance hostile @a[tag=same_room] ~ ~ ~ 1
$execute if entity @s[scores={WaitTime=66}] run playsound $(namespace):entity.$(id).dance hostile @a[tag=same_room] ~ ~ ~ 1
$execute if entity @s[scores={WaitTime=79}] run playsound $(namespace):entity.$(id).dance hostile @a[tag=same_room] ~ ~ ~ 1 0.8
execute if entity @s[scores={WaitTime=100}] run tag @e[tag=partner,limit=1] add dodge
execute if entity @s[scores={WaitTime=100},tag=!dance_other_direction] run tag @e[tag=partner,limit=1] add dance_other_direction
execute if entity @s[scores={WaitTime=100}] run tag @s add attack
execute if entity @s[scores={WaitTime=100}] run tag @s remove leader
execute if entity @s[scores={WaitTime=100}] run tag @s remove dance_other_direction
data remove entity @s[scores={WaitTime=100}] data.partner_direction
data remove entity @s[scores={WaitTime=100}] data.dance_rotation
execute if entity @s[scores={WaitTime=100}] run scoreboard players set @s WaitTime 0