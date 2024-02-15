scoreboard players add @s ActionTime 1
execute if entity @s[scores={ActionTime=1}] run playsound luigis_mansion:entity.ice_spike.shatter hostile @a[tag=same_room] ~ ~ ~ 1
data modify entity @s[scores={ActionTime=1}] ArmorItems[3].tag.CustomModelData set value 26
data modify entity @s[scores={ActionTime=3}] ArmorItems[3].id set value minecraft:stone_button
execute store result entity @s[scores={ActionTime=4}] Pos[0] double 0.01 run scoreboard players get @s HomeX
execute store result entity @s[scores={ActionTime=4}] Pos[1] double 0.01 run scoreboard players get @s HomeY
execute store result entity @s[scores={ActionTime=4}] Pos[2] double 0.01 run scoreboard players get @s HomeZ
execute store result entity @s[scores={ActionTime=4}] Rotation[0] float 1 run scoreboard players get @s HomeRotationX
execute store result entity @s[scores={ActionTime=4}] Rotation[1] float 1 run scoreboard players get @s HomeRotationY
execute at @s[scores={ActionTime=6}] run teleport @s ~ ~1.4 ~
data modify entity @s[scores={ActionTime=7}] ArmorItems[3] merge value {id:"minecraft:diamond_pickaxe",tag:{CustomModelData:25}}
teleport @s[scores={ActionTime=7..20}] ~ ~-0.1 ~
execute if entity @s[scores={ActionTime=20}] as @e[tag=ice_spike,tag=exact_same_room] run scoreboard players set @s WaitTime 0
tag @s[scores={ActionTime=20}] remove attack
tag @s[scores={ActionTime=20}] remove breaking
scoreboard players set @s[scores={ActionTime=20}] ActionTime 0