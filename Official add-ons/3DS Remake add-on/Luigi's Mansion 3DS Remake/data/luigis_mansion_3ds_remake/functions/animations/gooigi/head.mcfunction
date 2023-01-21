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
execute as @e[tag=this_gooigi,tag=source,limit=1] if entity @s[scores={PlayerRotation=..2147483647}] store result score #temp PlayerRotation run data get entity @s Rotation[0] 1000
execute store result score @s HomeRot run data get entity @e[tag=gooigi,limit=1] Rotation[0] 1000
scoreboard players add @s[scores={HomeRot=..0}] HomeRot 360000
scoreboard players operation @s RotationDif = #temp PlayerRotation
execute if entity @s[scores={RotationDif=..90000,HomeRot=270000..}] run scoreboard players add @s RotationDif 360000
execute if entity @s[scores={RotationDif=270000..,HomeRot=..90000}] run scoreboard players remove @s RotationDif 360000
scoreboard players operation @s RotationDif -= @s HomeRot
execute unless entity @s[scores={RotationDif=-180000..}] run scoreboard players add @s RotationDif 360000
execute unless entity @s[scores={RotationDif=..180000}] run scoreboard players remove @s RotationDif 360000
execute if entity @s[scores={RotationDif=..-60000}] run scoreboard players add #temp PlayerRotation 60000
execute if entity @s[scores={RotationDif=60000..}] run scoreboard players remove #temp PlayerRotation 60000
execute if score #temp PlayerRotation matches 360000.. run scoreboard players remove #temp PlayerRotation 360000
execute if score #temp PlayerRotation matches ..0 run scoreboard players add #temp PlayerRotation 360000
execute if entity @s[scores={RotationDif=-60000..60000}] if entity @s[tag=!stop_model] store result entity @s Rotation[0] float 0.001 run scoreboard players get @s HomeRot
execute unless entity @s[scores={RotationDif=-60000..60000}] if entity @s[tag=!stop_model] store result entity @s Rotation[0] float 0.001 run scoreboard players get #temp PlayerRotation
scoreboard players reset #temp PlayerRotation

# Look up/down
execute if entity @s[tag=!stop_model,tag=!flipped_gravity] store result score #temp Time run data get entity @e[tag=gooigi,limit=1] Rotation[1] 1
execute if entity @s[tag=!stop_model,tag=flipped_gravity] store result score #temp Time run data get entity @e[tag=gooigi,limit=1] Rotation[1] -1
execute if entity @s[tag=!stop_model,tag=low_health] run scoreboard players add #temp Time 20
execute if entity @s[tag=!stop_model] store result entity @s Pose.Head[0] float 1 run scoreboard players get #temp Time
scoreboard players reset #temp Time

execute at @s[scores={Animation=-4}] run function luigis_mansion_3ds_remake:animations/gooigi/pulled/head
execute at @s[scores={Animation=-1}] run function luigis_mansion_3ds_remake:animations/gooigi/wave/head
execute at @s[scores={Animation=2}] run function luigis_mansion_3ds_remake:animations/gooigi/idle/low_health/head
execute at @s[scores={Animation=3}] run function luigis_mansion_3ds_remake:animations/gooigi/idle/cold_room/head
execute at @s[scores={Animation=4}] run function luigis_mansion_3ds_remake:animations/gooigi/idle/high_health/head
execute at @s[scores={Animation=5}] run function luigis_mansion_3ds_remake:animations/gooigi/nod/head
execute at @s[scores={Animation=6}] run function luigis_mansion_3ds_remake:animations/gooigi/thinking/head
execute at @s[scores={Animation=7}] run function luigis_mansion_3ds_remake:animations/gooigi/enthusiastic/head
execute at @s[scores={Animation=8}] run function luigis_mansion_3ds_remake:animations/gooigi/sigh/head
execute at @s[scores={Animation=9}] run function luigis_mansion_3ds_remake:animations/gooigi/game_boy_horror/head
execute at @s[scores={Animation=10}] run function luigis_mansion_3ds_remake:animations/gooigi/inspect/head
execute at @s[scores={Animation=11}] run function luigis_mansion_3ds_remake:animations/gooigi/look/head
execute at @s[scores={Animation=12}] run function luigis_mansion_3ds_remake:animations/gooigi/answer_phone/head
execute at @s[scores={Animation=26}] run function luigis_mansion_3ds_remake:animations/gooigi/revive/head
execute at @s[scores={Animation=27}] run function luigis_mansion_3ds_remake:animations/gooigi/knockback/small/head
execute at @s[scores={Animation=28}] run function luigis_mansion_3ds_remake:animations/gooigi/knockback/medium/head
execute at @s[scores={Animation=29}] run function luigis_mansion_3ds_remake:animations/gooigi/knockback/large/head
execute at @s[scores={Animation=30}] run function luigis_mansion_3ds_remake:animations/gooigi/knockback/burn/head
execute at @s[scores={Animation=31}] run function luigis_mansion_3ds_remake:animations/gooigi/knockback/soak/head
execute at @s[scores={Animation=32}] run function luigis_mansion_3ds_remake:animations/gooigi/knockback/freeze/head
execute at @s[scores={Animation=33}] run function luigis_mansion_3ds_remake:animations/gooigi/knockback/grab/head
execute at @s[scores={Animation=34}] run function luigis_mansion_3ds_remake:animations/gooigi/knockback/bite/head
execute at @s[scores={Animation=35}] run function luigis_mansion_3ds_remake:animations/gooigi/knockback/slip/head
execute at @s[scores={Animation=36}] run function luigis_mansion_3ds_remake:animations/gooigi/knockback/flee/head
execute at @s[scores={Animation=37..38}] run function luigis_mansion_3ds_remake:animations/gooigi/knockback/fake_door/head
execute at @s[scores={Animation=39}] run function luigis_mansion_3ds_remake:animations/gooigi/scared/head
execute at @s[scores={Animation=40}] run function luigis_mansion_3ds_remake:animations/gooigi/scared/freeze/head
execute at @s[scores={Animation=41}] run function luigis_mansion_3ds_remake:animations/gooigi/scared/bashed/head
execute at @s[scores={Animation=42}] run function luigis_mansion_3ds_remake:animations/gooigi/search/knock/head
execute at @s[scores={Animation=43}] run function luigis_mansion_3ds_remake:animations/gooigi/search/hump/head
execute at @s[scores={Animation=44}] run function luigis_mansion_3ds_remake:animations/gooigi/search/bash/head
execute at @s[scores={Animation=45}] run function luigis_mansion_3ds_remake_3ds_remake:animations/gooigi/search/chest/head