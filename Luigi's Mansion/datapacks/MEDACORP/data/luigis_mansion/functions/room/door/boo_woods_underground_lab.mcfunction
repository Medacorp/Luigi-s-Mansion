execute if block 789 90 16 minecraft:oak_door[open=true] run scoreboard players set #temp Searched 1
execute if block 789 90 16 minecraft:oak_door[open=true] if score #lab_door Searched matches 1 run scoreboard players set #temp Searched 2
execute if entity @e[distance=..3,x=789.5,y=90,z=16.5,tag=e_gadd,scores={Dialog=220..259}] run scoreboard players set #temp Searched 1
execute if entity @e[distance=..3,x=789.5,y=90,z=16.5,tag=e_gadd,scores={Dialog=220..259}] if score #lab_door Searched matches 1 run scoreboard players set #temp Searched 2
execute if block 789 90 16 minecraft:oak_door[open=false] if score #lab_door Searched matches 1 run scoreboard players set #temp Searched 1

execute unless entity @a[gamemode=!spectator,distance=..3,x=789.5,y=90,z=16.5] unless entity @e[distance=..3,x=789.5,y=90,z=16.5,tag=e_gadd,scores={Dialog=220..259}] if score #temp Searched matches 1..2 run scoreboard players set #temp Searched 0

execute if score #temp Searched matches 1 run fill 789 90 16 789 91 16 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run setblock 789 90 16 minecraft:oak_door[open=true,facing=north,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches 1 run setblock 789 91 16 minecraft:oak_door[open=true,facing=north,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches 0 run playsound luigis_mansion:furniture.door.close block @a 789 90 16 1 1
execute if score #temp Searched matches 1 unless score #lab_door Searched matches 1 run playsound luigis_mansion:furniture.door.open block @a 789 90 16 1 1
execute if score #temp Searched matches -1..0 run fill 789 90 16 789 91 16 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run setblock 789 90 16 minecraft:oak_door[open=false,facing=north,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches -1..0 run setblock 789 91 16 minecraft:oak_door[open=false,facing=north,half=upper,hinge=left,powered=false]

execute if block 789 90 16 minecraft:oak_door[open=true] run scoreboard players set #lab_door Searched 1
execute if score #temp Searched matches 0 run scoreboard players reset #lab_door Searched
scoreboard players reset #temp Searched