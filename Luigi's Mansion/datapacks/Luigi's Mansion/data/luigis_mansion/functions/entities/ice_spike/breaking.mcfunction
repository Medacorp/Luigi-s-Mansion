scoreboard players add @s ActionTime 1
item replace entity @s[scores={ActionTime=1}] armor.head with minecraft:diamond_pickaxe{Unbreakable:1b,Damage:4,CustomModelData:26}
item replace entity @s[scores={ActionTime=3}] armor.head with minecraft:air
execute store result entity @s[scores={ActionTime=4}] Pos[0] double 0.01 run scoreboard players get @s HomeX
execute store result entity @s[scores={ActionTime=4}] Pos[1] double 0.01 run scoreboard players get @s HomeY
execute store result entity @s[scores={ActionTime=4}] Pos[2] double 0.01 run scoreboard players get @s HomeZ
execute store result entity @s[scores={ActionTime=4}] Rotation[0] float 1 run scoreboard players get @s HomeRotationX
execute store result entity @s[scores={ActionTime=4}] Rotation[1] float 1 run scoreboard players get @s HomeRotationY
item replace entity @s[scores={ActionTime=7}] armor.head with minecraft:diamond_pickaxe{Unbreakable:1b,Damage:4,CustomModelData:25}
execute at @s[scores={ActionTime=6}] run teleport @s ~ ~1.4 ~
teleport @s[scores={ActionTime=7..20}] ~ ~-0.1 ~
scoreboard players operation #temp Room = @s Room
execute if entity @s[scores={ActionTime=20}] as @e[tag=ice_spike] if score @s Room = #temp Room run scoreboard players set @s WaitTime 0
scoreboard players reset #temp Room
tag @s[scores={ActionTime=20}] remove breaking
scoreboard players set @s[scores={ActionTime=20}] ActionTime 0