tag @s[tag=low_health,tag=!looking_at_map] add sneak_pos
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
execute store result score @s HomeRot run data get entity @a[tag=this_luigi,limit=1] Rotation[0] 1000
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
execute if entity @s[scores={RotationDif=-60000..60000}] if entity @s[tag=!looking_at_map] store result entity @s Rotation[0] float 0.001 run scoreboard players get @s HomeRot
execute unless entity @s[scores={RotationDif=-60000..60000}] if entity @s[tag=!looking_at_map] store result entity @s Rotation[0] float 0.001 run scoreboard players get #temp PlayerRotation
scoreboard players reset #temp PlayerRotation

tag @s[tag=low_health] add dark_room
tag @s[tag=cold_room_idle] add dark_room
tag @s[tag=low_health_idle] add dark_room
tag @s[tag=high_health_idle] add dark_room
data modify entity @s[tag=dark_room,nbt={ArmorItems:[{tag:{CustomModelData:18}}]}] ArmorItems[3].tag.CustomModelData set value 20
data modify entity @s[tag=!dark_room,nbt={ArmorItems:[{tag:{CustomModelData:20}}]}] ArmorItems[3].tag.CustomModelData set value 18
data modify entity @s[tag=dark_room,nbt={ArmorItems:[{tag:{CustomModelData:22}}]}] ArmorItems[3].tag.CustomModelData set value 24
data modify entity @s[tag=!dark_room,nbt={ArmorItems:[{tag:{CustomModelData:24}}]}] ArmorItems[3].tag.CustomModelData set value 22

# Look up/down
execute if entity @s[tag=!looking_at_map,tag=!flipped_gravity] store result score #temp Time run data get entity @a[tag=this_luigi,limit=1] Rotation[1] 1
execute if entity @s[tag=!looking_at_map,tag=flipped_gravity] store result score #temp Time run data get entity @a[tag=this_luigi,limit=1] Rotation[1] -1
execute if entity @s[tag=!looking_at_map,tag=low_health] run scoreboard players add #temp Time 20
execute if entity @s[tag=!looking_at_map] store result entity @s Pose.Head[0] float 1 run scoreboard players get #temp Time
scoreboard players reset #temp Time
teleport @s[tag=looking_at_map] ~ ~-1.67 ~ ~ ~
execute if entity @s[tag=looking_at_map] run function luigis_mansion:animations/luigi/looking_at_map/head

execute at @s[scores={KnockbackType=-3..-2}] run function luigis_mansion:animations/luigi/scared/bashed/head
execute at @s[scores={KnockbackType=-1}] run function luigis_mansion:animations/luigi/scared/head
execute at @s[scores={KnockbackType=1}] run function luigis_mansion:animations/luigi/knockback/small/head
execute at @s[scores={KnockbackType=2}] run function luigis_mansion:animations/luigi/knockback/medium/head
execute at @s[scores={KnockbackType=3}] run function luigis_mansion:animations/luigi/knockback/large/head
execute at @s[scores={KnockbackType=4}] run function luigis_mansion:animations/luigi/knockback/burn/head
execute at @s[scores={KnockbackType=5}] run function luigis_mansion:animations/luigi/knockback/soak/head
execute at @s[scores={KnockbackType=6}] run function luigis_mansion:animations/luigi/knockback/freeze/head
execute at @s[scores={KnockbackType=7..8}] run function luigis_mansion:animations/luigi/knockback/grab/head
execute at @s[scores={KnockbackType=9}] run function luigis_mansion:animations/luigi/knockback/bite/head

execute at @s[tag=cold_room_idle] run function luigis_mansion:animations/luigi/idle/cold_room/head
execute at @s[tag=high_health_idle] run function luigis_mansion:animations/luigi/idle/high_health/head
execute at @s[tag=low_health_idle] run function luigis_mansion:animations/luigi/idle/low_health/head