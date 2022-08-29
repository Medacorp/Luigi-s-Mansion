execute store result score #temp RotationSpeed run data get entity @s Rotation[0] 10
execute store result entity @s Rotation[0] float 0.1 run scoreboard players operation #temp RotationSpeed += @s RotationSpeed
execute unless score #temp RotationSpeed matches -1800..1799 if entity @s[scores={RotationSpeed=-50..50}] run playsound luigis_mansion:block.fan block @a[tag=same_room] ~ ~ ~ 1 1
execute unless score #temp RotationSpeed matches -1800..1799 if entity @s[scores={RotationSpeed=-175..175}] unless entity @s[scores={RotationSpeed=-50..50}] run playsound luigis_mansion:block.fan block @a[tag=same_room] ~ ~ ~ 1 1.125
execute unless score #temp RotationSpeed matches -1800..1799 if entity @s[scores={RotationSpeed=-300..300}] unless entity @s[scores={RotationSpeed=-175..175}] run playsound luigis_mansion:block.fan block @a[tag=same_room] ~ ~ ~ 1 1.25
execute unless score #temp RotationSpeed matches -1800..1799 if entity @s[scores={RotationSpeed=-425..425}] unless entity @s[scores={RotationSpeed=-300..300}] run playsound luigis_mansion:block.fan block @a[tag=same_room] ~ ~ ~ 1 1.375
execute unless score #temp RotationSpeed matches -1800..1799 if entity @s[scores={RotationSpeed=-550..550}] unless entity @s[scores={RotationSpeed=-425..425}] run playsound luigis_mansion:block.fan block @a[tag=same_room] ~ ~ ~ 1 1.5
execute unless score #temp RotationSpeed matches -1800..1799 if entity @s[scores={RotationSpeed=-675..675}] unless entity @s[scores={RotationSpeed=-550..550}] run playsound luigis_mansion:block.fan block @a[tag=same_room] ~ ~ ~ 1 1.675
execute unless score #temp RotationSpeed matches -1800..1799 if entity @s[scores={RotationSpeed=-800..800}] unless entity @s[scores={RotationSpeed=-675..675}] run playsound luigis_mansion:block.fan block @a[tag=same_room] ~ ~ ~ 1 1.75
execute unless score #temp RotationSpeed matches -1800..1799 if entity @s[scores={RotationSpeed=-925..925}] unless entity @s[scores={RotationSpeed=-800..800}] run playsound luigis_mansion:block.fan block @a[tag=same_room] ~ ~ ~ 1 1.875
execute unless score #temp RotationSpeed matches -1800..1799 unless entity @s[scores={RotationSpeed=-925..925}] run playsound luigis_mansion:block.fan block @a[tag=same_room] ~ ~ ~ 1 2
execute if score #temp RotationSpeed matches ..-1801 store result entity @s Rotation[0] float 0.1 run scoreboard players add #temp RotationSpeed 3600
execute if score #temp RotationSpeed matches 1800.. store result entity @s Rotation[0] float 0.1 run scoreboard players remove #temp RotationSpeed 3600
scoreboard players reset #temp RotationSpeed
