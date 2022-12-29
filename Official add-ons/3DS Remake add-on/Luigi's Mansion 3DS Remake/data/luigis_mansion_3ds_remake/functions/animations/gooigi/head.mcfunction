execute if entity @s[scores={KnockbackType=0,Pull=0..9}] unless entity @s[scores={AnimationProg=1..},tag=!sneaking,tag=!walking,tag=!running,tag=!swimming,tag=!low_health_idle] run tag @s[tag=low_health,tag=!stop_model] add sneak_pos
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

execute at @s[tag=yelling] run function luigis_mansion_3ds_remake:animations/gooigi/wave/head
execute at @s[tag=revive] run function luigis_mansion_3ds_remake:animations/gooigi/revive/head
execute at @s[tag=nod] run function luigis_mansion_3ds_remake:animations/gooigi/nod/head
execute at @s[tag=thinking] run function luigis_mansion_3ds_remake:animations/gooigi/thinking/head
execute at @s[tag=sigh] run function luigis_mansion_3ds_remake:animations/gooigi/sigh/head
execute at @s[tag=enthusiastic] run function luigis_mansion_3ds_remake:animations/gooigi/enthusiastic/head
execute at @s[tag=answer_phone] run function luigis_mansion_3ds_remake:animations/gooigi/answer_phone/head
execute at @s[tag=game_boy_horror] run function luigis_mansion_3ds_remake:animations/gooigi/game_boy_horror/head
execute at @s[tag=inspect] run function luigis_mansion_3ds_remake:animations/gooigi/inspect/head
execute at @s[tag=look] run function luigis_mansion_3ds_remake:animations/gooigi/look/head
execute at @s[scores={KnockbackType=-9}] run function luigis_mansion_3ds_remake:animations/gooigi/search/chest/head
execute at @s[scores={KnockbackType=-8}] run function luigis_mansion_3ds_remake:animations/gooigi/search/bash/head
execute at @s[scores={KnockbackType=-7}] run function luigis_mansion_3ds_remake:animations/gooigi/search/hump/head
execute at @s[scores={KnockbackType=-6..-5}] run function luigis_mansion_3ds_remake:animations/gooigi/search/knock/head
execute at @s[scores={KnockbackType=-4..-3}] run function luigis_mansion_3ds_remake:animations/gooigi/scared/bashed/head
execute at @s[scores={KnockbackType=-2}] run function luigis_mansion_3ds_remake:animations/gooigi/scared/freeze/head
execute at @s[scores={KnockbackType=-1}] run function luigis_mansion_3ds_remake:animations/gooigi/scared/head
execute at @s[scores={KnockbackType=1}] run function luigis_mansion_3ds_remake:animations/gooigi/knockback/small/head
execute at @s[scores={KnockbackType=2..3}] run function luigis_mansion_3ds_remake:animations/gooigi/knockback/medium/head
execute at @s[scores={KnockbackType=4}] run function luigis_mansion_3ds_remake:animations/gooigi/knockback/large/head
execute at @s[scores={KnockbackType=5}] run function luigis_mansion_3ds_remake:animations/gooigi/knockback/burn/head
execute at @s[scores={KnockbackType=6}] run function luigis_mansion_3ds_remake:animations/gooigi/knockback/soak/head
execute at @s[scores={KnockbackType=7}] run function luigis_mansion_3ds_remake:animations/gooigi/knockback/freeze/head
execute at @s[scores={KnockbackType=8..9}] run function luigis_mansion_3ds_remake:animations/gooigi/knockback/grab/head
execute at @s[scores={KnockbackType=10}] run function luigis_mansion_3ds_remake:animations/gooigi/knockback/bite/head
execute at @s[scores={KnockbackType=11}] run function luigis_mansion_3ds_remake:animations/gooigi/knockback/slip/head
execute at @s[scores={KnockbackType=12..13}] run function luigis_mansion_3ds_remake:animations/gooigi/knockback/flee/head

execute at @s[tag=cold_room_idle] run function luigis_mansion_3ds_remake:animations/gooigi/idle/cold_room/head
execute at @s[tag=high_health_idle] run function luigis_mansion_3ds_remake:animations/gooigi/idle/high_health/head
execute at @s[tag=low_health_idle] run function luigis_mansion_3ds_remake:animations/gooigi/idle/low_health/head

execute at @s[scores={Pull=10..19,KnockbackType=0}] run function luigis_mansion_3ds_remake:animations/gooigi/pulled/start/head
execute at @s[scores={Pull=20..,KnockbackType=0}] run function luigis_mansion_3ds_remake:animations/gooigi/pulled/head