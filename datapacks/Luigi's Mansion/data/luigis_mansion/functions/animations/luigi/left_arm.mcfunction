tag @s[tag=low_health,tag=!looking_at_map] add sneak_pos
# Move with
teleport @s[tag=!sneak_pos,nbt=!{Small:1b},tag=!flipped_gravity] ^0.35 ^-1.7 ^ ~ ~
teleport @s[tag=sneak_pos,nbt=!{Small:1b},tag=!flipped_gravity] ^0.35 ^-1.76 ^ ~ ~
teleport @s[tag=!sneak_pos,nbt={Small:1b},tag=!flipped_gravity] ^0.24 ^-0.9 ^ ~ ~
teleport @s[tag=sneak_pos,nbt={Small:1b},tag=!flipped_gravity] ^0.24 ^-0.96 ^ ~ ~
teleport @s[tag=!sneak_pos,nbt=!{Small:1b},tag=flipped_gravity] ^-0.35 ^-0.4 ^ ~ ~
teleport @s[tag=sneak_pos,nbt=!{Small:1b},tag=flipped_gravity] ^-0.35 ^-0.34 ^ ~ ~
teleport @s[tag=!sneak_pos,nbt={Small:1b},tag=flipped_gravity] ^-0.24 ^0.4 ^ ~ ~
teleport @s[tag=sneak_pos,nbt={Small:1b},tag=flipped_gravity] ^-0.24 ^0.46 ^ ~ ~


data modify entity @s[tag=was_sneak_posing,tag=!sneak_pos,tag=!low_health] Pose.Head[0] set value 0.001f
data modify entity @s[tag=!was_sneak_posing,tag=sneak_pos,tag=!low_health] Pose.Head[0] set value 20.0f
data modify entity @s[tag=was_flipped,tag=!flipped_gravity] Pose.Head[2] set value 0.0f
data modify entity @s[tag=!was_flipped,tag=flipped_gravity] Pose.Head[2] set value -180.0f

execute if entity @s[tag=!looking_at_map,tag=!cold_room_idle,tag=!high_health_idle,tag=!low_health_idle,tag=!low_health,scores={KnockbackType=0,Pull=0..9}] run function luigis_mansion:animations/luigi/idle/left_arm
execute if entity @s[tag=!looking_at_map,tag=!cold_room_idle,tag=!high_health_idle,tag=!low_health_idle,tag=low_health,scores={KnockbackType=0,Pull=0..9}] run function luigis_mansion:animations/luigi/idle/hunched/left_arm

execute if score #mirrored Selected matches 0 run data modify entity @s[tag=held_item,tag=!looking_at_map] ArmorItems[3] set from storage luigis_mansion:data luigi.offhand
execute if score #mirrored Selected matches 1 run data modify entity @s[tag=held_item,tag=!looking_at_map] ArmorItems[3] set from storage luigis_mansion:data luigi.mainhand
execute if score #mirrored Selected matches 1 if entity @s[tag=attacking,tag=!looking_at_map] run function luigis_mansion:animations/luigi/attack/left_arm
execute if score #mirrored Selected matches 0 run tag @s remove attacking

# Move animations
execute if entity @s[tag=sneaking,tag=!looking_at_map,tag=!low_health,tag=!riding_poltergust] run function luigis_mansion:animations/luigi/sneaking/left_arm
execute if entity @s[tag=walking,tag=!looking_at_map,tag=!low_health,tag=!riding_poltergust] run function luigis_mansion:animations/luigi/walking/left_arm
execute if entity @s[tag=running,tag=!looking_at_map,tag=!low_health,tag=!riding_poltergust] run function luigis_mansion:animations/luigi/running/left_arm
execute if entity @s[tag=swimming,tag=!looking_at_map,tag=!riding_poltergust] run function luigis_mansion:animations/luigi/swimming/left_arm
execute if entity @s[tag=looking_at_map] run function luigis_mansion:animations/luigi/looking_at_map/left_arm

execute at @s[scores={KnockbackType=-3..-2}] run function luigis_mansion:animations/luigi/scared/bashed/left_arm
execute at @s[scores={KnockbackType=-1}] run function luigis_mansion:animations/luigi/scared/left_arm
execute at @s[scores={KnockbackType=1}] run function luigis_mansion:animations/luigi/knockback/small/left_arm
execute at @s[scores={KnockbackType=2..3}] run function luigis_mansion:animations/luigi/knockback/medium/left_arm
execute at @s[scores={KnockbackType=4}] run function luigis_mansion:animations/luigi/knockback/large/left_arm
execute at @s[scores={KnockbackType=5}] run function luigis_mansion:animations/luigi/knockback/burn/left_arm
execute at @s[scores={KnockbackType=6}] run function luigis_mansion:animations/luigi/knockback/soak/left_arm
execute at @s[scores={KnockbackType=7}] run function luigis_mansion:animations/luigi/knockback/freeze/left_arm
execute at @s[scores={KnockbackType=8..9}] run function luigis_mansion:animations/luigi/knockback/grab/left_arm
execute at @s[scores={KnockbackType=10}] run function luigis_mansion:animations/luigi/knockback/bite/left_arm

execute at @s[tag=cold_room_idle] run function luigis_mansion:animations/luigi/idle/cold_room/left_arm
execute at @s[tag=high_health_idle] run function luigis_mansion:animations/luigi/idle/high_health/left_arm
execute at @s[tag=low_health_idle] run function luigis_mansion:animations/luigi/idle/low_health/left_arm

execute at @s[scores={Pull=10..19,KnockbackType=0}] run function luigis_mansion:animations/luigi/pulled/start/left_arm
execute at @s[scores={Pull=20..,KnockbackType=0}] run function luigis_mansion:animations/luigi/pulled/left_arm