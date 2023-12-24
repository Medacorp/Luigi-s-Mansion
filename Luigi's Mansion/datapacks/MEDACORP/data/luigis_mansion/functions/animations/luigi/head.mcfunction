execute if entity @s[scores={Animation=-3..3}] run tag @s[tag=low_health,tag=!stop_model] add sneak_pos
# Move with
teleport @s[tag=!sneak_pos,nbt=!{Small:1b},tag=!flipped_gravity] ^ ^-1.67 ^
teleport @s[tag=sneak_pos,nbt=!{Small:1b},tag=!flipped_gravity] ^ ^-1.73 ^
teleport @s[tag=!sneak_pos,nbt={Small:1b},tag=!flipped_gravity] ^ ^-0.87 ^
teleport @s[tag=sneak_pos,nbt={Small:1b},tag=!flipped_gravity] ^ ^-0.93 ^
teleport @s[tag=!sneak_pos,nbt=!{Small:1b},tag=flipped_gravity] ^ ^-0.42 ^
teleport @s[tag=sneak_pos,nbt=!{Small:1b},tag=flipped_gravity] ^ ^-0.36 ^
teleport @s[tag=!sneak_pos,nbt={Small:1b},tag=flipped_gravity] ^ ^0.38 ^
teleport @s[tag=sneak_pos,nbt={Small:1b},tag=flipped_gravity] ^ ^0.44 ^

data modify entity @s[tag=was_flipped,tag=!flipped_gravity] Pose.Head[2] set value 0.0f
data modify entity @s[tag=!was_flipped,tag=flipped_gravity] Pose.Head[2] set value -180.0f

# Look left/right
execute as @e[tag=this_luigi,tag=source,limit=1] if entity @s[scores={PlayerRotation=..2147483647}] store result score #temp PlayerRotation run data get entity @s Rotation[0] 1000
execute store result score @s HomeRotation run data get entity @a[tag=this_luigi,limit=1] Rotation[0] 1000
scoreboard players add @s[scores={HomeRotation=..0}] HomeRotation 360000
scoreboard players operation @s RotationDifference = #temp PlayerRotation
execute if entity @s[scores={RotationDifference=..90000,HomeRotation=270000..}] run scoreboard players add @s RotationDifference 360000
execute if entity @s[scores={RotationDifference=270000..,HomeRotation=..90000}] run scoreboard players remove @s RotationDifference 360000
scoreboard players operation @s RotationDifference -= @s HomeRotation
execute unless entity @s[scores={RotationDifference=-180000..}] run scoreboard players add @s RotationDifference 360000
execute unless entity @s[scores={RotationDifference=..180000}] run scoreboard players remove @s RotationDifference 360000
execute if entity @s[scores={RotationDifference=..-60000}] run scoreboard players add #temp PlayerRotation 60000
execute if entity @s[scores={RotationDifference=60000..}] run scoreboard players remove #temp PlayerRotation 60000
execute if score #temp PlayerRotation matches 360000.. run scoreboard players remove #temp PlayerRotation 360000
execute if score #temp PlayerRotation matches ..0 run scoreboard players add #temp PlayerRotation 360000
execute if entity @s[scores={RotationDifference=-60000..60000}] if entity @s[tag=!stop_model] store result entity @s Rotation[0] float 0.001 run scoreboard players get @s HomeRotation
execute unless entity @s[scores={RotationDifference=-60000..60000}] if entity @s[tag=!stop_model] store result entity @s Rotation[0] float 0.001 run scoreboard players get #temp PlayerRotation
scoreboard players reset #temp PlayerRotation

# Look up/down
execute if entity @s[tag=!stop_model,tag=!flipped_gravity] store result score #temp Time run data get entity @a[tag=this_luigi,limit=1] Rotation[1]
execute if entity @s[tag=!stop_model,tag=flipped_gravity] store result score #temp Time run data get entity @a[tag=this_luigi,limit=1] Rotation[1] -1
execute if entity @s[tag=!stop_model,tag=low_health] run scoreboard players add #temp Time 20
execute if entity @s[tag=!stop_model] store result entity @s Pose.Head[0] float 1 run scoreboard players get #temp Time
scoreboard players reset #temp Time

execute at @s[scores={Animation=-4}] run function luigis_mansion:animations/luigi/pulled/head
execute at @s[scores={Animation=-1}] run function luigis_mansion:animations/luigi/yelling/head
execute at @s[scores={Animation=2}] run function luigis_mansion:animations/luigi/idle/low_health/head
execute at @s[scores={Animation=3}] run function luigis_mansion:animations/luigi/idle/cold_room/head
execute at @s[scores={Animation=4}] run function luigis_mansion:animations/luigi/idle/high_health/head
execute at @s[scores={Animation=5}] run function luigis_mansion:animations/luigi/nod/head
execute at @s[scores={Animation=6}] run function luigis_mansion:animations/luigi/thinking/head
execute at @s[scores={Animation=7}] run function luigis_mansion:animations/luigi/enthusiastic/head
execute at @s[scores={Animation=8}] run function luigis_mansion:animations/luigi/sigh/head
execute at @s[scores={Animation=9}] run function luigis_mansion:animations/luigi/game_boy_horror/head
execute at @s[scores={Animation=10}] run function luigis_mansion:animations/luigi/inspect/head
execute at @s[scores={Animation=11}] run function luigis_mansion:animations/luigi/look/head
execute at @s[scores={Animation=12}] run function luigis_mansion:animations/luigi/answer_phone/head
execute at @s[scores={Animation=25},tag=!low_health] run function luigis_mansion:animations/luigi/talk/high_health/head
execute at @s[scores={Animation=25},tag=low_health] run function luigis_mansion:animations/luigi/talk/low_health/head
execute at @s[scores={Animation=26}] run function luigis_mansion:animations/luigi/revive/head
execute at @s[scores={Animation=27}] run function luigis_mansion:animations/luigi/knockback/small/head
execute at @s[scores={Animation=28}] run function luigis_mansion:animations/luigi/knockback/medium/head
execute at @s[scores={Animation=29}] run function luigis_mansion:animations/luigi/knockback/large/head
execute at @s[scores={Animation=30}] run function luigis_mansion:animations/luigi/knockback/burn/head
execute at @s[scores={Animation=31}] run function luigis_mansion:animations/luigi/knockback/soak/head
execute at @s[scores={Animation=32}] run function luigis_mansion:animations/luigi/knockback/freeze/head
execute at @s[scores={Animation=33}] run function luigis_mansion:animations/luigi/knockback/grab/head
execute at @s[scores={Animation=34}] run function luigis_mansion:animations/luigi/knockback/bite/head
execute at @s[scores={Animation=35}] run function luigis_mansion:animations/luigi/knockback/slip/head
execute at @s[scores={Animation=36}] run function luigis_mansion:animations/luigi/knockback/flee/head
execute at @s[scores={Animation=37..38}] run function luigis_mansion:animations/luigi/knockback/fake_door/head
execute at @s[scores={Animation=39}] run function luigis_mansion:animations/luigi/scared/head
execute at @s[scores={Animation=40}] run function luigis_mansion:animations/luigi/scared/freeze/head
execute at @s[scores={Animation=41}] run function luigis_mansion:animations/luigi/scared/bashed/head
execute at @s[scores={Animation=42}] run function luigis_mansion:animations/luigi/search/knock/head
execute at @s[scores={Animation=43}] run function luigis_mansion:animations/luigi/search/hump/head
execute at @s[scores={Animation=44}] run function luigis_mansion:animations/luigi/search/bash/head

tag @s[tag=low_health] add dark_room_head
tag @s[scores={Animation=2..4}] add dark_room_head
tag @s[scores={Animation=27..}] add dark_room_head
tag @s[tag=poltergust_grabbed] add dark_room_head
execute if entity @s[tag=dark_room] unless entity @s[scores={AnimationProgress=1..}] run function luigis_mansion:animations/luigi/idle/head_dark_room
execute if entity @s[tag=!dark_room] run function luigis_mansion:animations/luigi/idle/head
tag @s remove dark_room_head