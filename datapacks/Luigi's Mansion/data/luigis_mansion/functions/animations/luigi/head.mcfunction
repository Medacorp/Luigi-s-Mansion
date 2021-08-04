# Move with
teleport @s[tag=!sneak_pos,nbt=!{Small:1b}] ^ ^-1.67 ^
teleport @s[tag=sneak_pos,nbt=!{Small:1b}] ^ ^-1.73 ^
teleport @s[tag=!sneak_pos,nbt={Small:1b}] ^ ^-0.87 ^
teleport @s[tag=sneak_pos,nbt={Small:1b}] ^ ^-0.93 ^

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

data modify entity @s[tag=dark_room,nbt={ArmorItems:[{tag:{CustomModelData:19}}]}] ArmorItems[3].tag.CustomModelData set value 20
data modify entity @s[tag=!dark_room,nbt={ArmorItems:[{tag:{CustomModelData:20}}]}] ArmorItems[3].tag.CustomModelData set value 19
data modify entity @s[tag=dark_room,nbt={ArmorItems:[{tag:{CustomModelData:22}}]}] ArmorItems[3].tag.CustomModelData set value 23
data modify entity @s[tag=!dark_room,nbt={ArmorItems:[{tag:{CustomModelData:23}}]}] ArmorItems[3].tag.CustomModelData set value 22

# Look up/down
execute if entity @s[tag=!looking_at_map] store result entity @s Pose.Head[0] float 1 run data get entity @a[tag=this_luigi,limit=1] Rotation[1] 1
teleport @s[tag=looking_at_map] ~ ~-1.67 ~ ~ ~
execute if entity @s[tag=looking_at_map] run function luigis_mansion:animations/luigi/looking_at_map/head