scoreboard players operation #temp Time = @s PathStep
scoreboard players operation #temp HomeRotationX = @s HomeRotationX
scoreboard players operation #temp HomeRotationY = @s HomeRotationY
scoreboard players operation #temp HomeX = @s HomeX
scoreboard players operation #temp HomeY = @s HomeY
scoreboard players operation #temp HomeZ = @s HomeZ
scoreboard players add @s Time 1
tag @s add me
execute as @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"flashlight"}}},scores={Time=1..},tag=!me,tag=!remove_from_existence,tag=!dead] if score @s PathStep = #temp Time if score @s HomeRotationX = #temp HomeRotationX if score @s HomeRotationY = #temp HomeRotationY if score @s HomeX = #temp HomeX if score @s HomeY = #temp HomeY if score @s HomeZ = #temp HomeZ run tag @e[tag=me,tag=!remove_from_existence,tag=!dead,limit=1] add ignore
tag @s remove me
execute unless entity @s[tag=!remove_from_existence,tag=!dead] run scoreboard players set @s Time 2
execute if entity @s[scores={Time=1},tag=!ignore,tag=!reflected] run function luigis_mansion:entities/flashlight/set_light
execute if entity @s[scores={Time=1},tag=!ignore,tag=reflected] run function luigis_mansion:entities/flashlight/set_light_reflected
execute if entity @s[scores={Time=2},tag=!ignore,tag=!reflected] run function luigis_mansion:entities/flashlight/remove_light
execute if entity @s[scores={Time=2},tag=!ignore,tag=reflected] run function luigis_mansion:entities/flashlight/remove_light_reflected
tag @s remove ignore
scoreboard players reset #temp Time
scoreboard players reset #temp HomeRotationX
scoreboard players reset #temp HomeRotationY
scoreboard players reset #temp HomeX
scoreboard players reset #temp HomeY
scoreboard players reset #temp HomeZ
tag @s[scores={Time=2}] add dead