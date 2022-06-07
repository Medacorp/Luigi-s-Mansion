execute unless score #gate ActionTime matches 20 if entity @a[x=771.5,y=90,z=8.0,distance=..7,limit=1] run scoreboard players add #gate ActionTime 1
execute if score #gate ActionTime matches 1.. unless entity @a[x=771.5,y=90,z=8.0,distance=..7,limit=1] run scoreboard players remove #gate ActionTime 1
execute if score #gate ActionTime matches 1 run place template luigis_mansion:gate/closed 768 89 4
execute if score #gate ActionTime matches 0..20 run fill 771 89 7 768 89 4 minecraft:dirt_path replace minecraft:dirt
execute if score #gate ActionTime matches 2 run place template luigis_mansion:gate/opening 768 89 4
execute if score #gate ActionTime matches 19 run place template luigis_mansion:gate/opening 768 89 4
execute if score #gate ActionTime matches 20 run place template luigis_mansion:gate/open 768 89 4
execute if score #gate ActionTime matches 0 run scoreboard players reset #gate ActionTime
execute as @a[x=771.5,y=90,z=8.0,distance=..7,limit=1] at @s if block ~ ~ ~ minecraft:gravel run teleport @s ~ ~0.0625 ~