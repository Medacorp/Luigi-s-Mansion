execute unless score #gate ActionTime matches 20 if entity @a[x=771.5,y=90,z=8.0,distance=..7,limit=1] run scoreboard players add #gate ActionTime 1
execute if score #gate ActionTime matches 1.. unless entity @a[x=771.5,y=90,z=8.0,distance=..7,limit=1] run scoreboard players remove #gate ActionTime 1
execute if score #gate ActionTime matches 1 run setblock 768 89 4 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:gate/closed"}
execute if score #gate ActionTime matches 1 run setblock 768 90 4 minecraft:redstone_block
execute if score #gate ActionTime matches 0..20 run fill 771 89 7 768 89 4 minecraft:dirt_path replace minecraft:dirt
execute if score #gate ActionTime matches 2 run setblock 768 89 4 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:gate/opening"}
execute if score #gate ActionTime matches 2 run setblock 768 90 4 minecraft:redstone_block
execute if score #gate ActionTime matches 19 run setblock 768 89 4 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:gate/opening"}
execute if score #gate ActionTime matches 19 run setblock 768 90 4 minecraft:redstone_block
execute if score #gate ActionTime matches 20 run setblock 768 89 4 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:gate/open"}
execute if score #gate ActionTime matches 20 run setblock 768 90 4 minecraft:redstone_block
execute if score #gate ActionTime matches 0 run scoreboard players reset #gate ActionTime
execute as @a[x=771.5,y=90,z=8.0,distance=..7,limit=1] at @s if block ~ ~ ~ minecraft:gravel run teleport @s ~ ~0.0625 ~