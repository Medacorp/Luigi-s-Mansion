execute if block 677 111 25 minecraft:dark_oak_door[open=true] if block 677 111 24 minecraft:dark_oak_door[open=false] run scoreboard players set #temp Searched 1
execute if block 677 111 24 minecraft:dark_oak_door[open=true] if block 677 111 25 minecraft:dark_oak_door[open=false] run scoreboard players set #temp Searched 1
execute if block 677 111 25 minecraft:dark_oak_door[open=true] if block 677 111 24 minecraft:dark_oak_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2
execute if block 677 111 24 minecraft:dark_oak_door[open=true] if block 677 111 25 minecraft:dark_oak_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2

execute unless entity @a[gamemode=!spectator,distance=..3,x=677.5,y=111,z=25.0] if score #temp Searched matches 1..2 run scoreboard players set #temp Searched 0

execute if score #temp Searched matches 1 run fill 677 111 24 677 112 25 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run setblock 677 111 25 minecraft:dark_oak_door[open=true,facing=north,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches 1 run setblock 677 112 25 minecraft:dark_oak_door[open=true,facing=north,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches 1 run setblock 677 111 24 minecraft:dark_oak_door[open=true,facing=south,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches 1 run setblock 677 112 24 minecraft:dark_oak_door[open=true,facing=south,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.door.close block @a 677 111 25.0 1 1
execute if score #temp Searched matches 1 run playsound luigis_mansion:block.door.open block @a 677 111 25.0 1 1
execute if score #temp Searched matches -1..0 run fill 677 111 25 677 112 24 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run setblock 677 111 25 minecraft:dark_oak_door[open=false,facing=north,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches -1..0 run setblock 677 112 25 minecraft:dark_oak_door[open=false,facing=north,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches -1..0 run setblock 677 111 24 minecraft:dark_oak_door[open=false,facing=south,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches -1..0 run setblock 677 112 24 minecraft:dark_oak_door[open=false,facing=south,half=upper,hinge=left,powered=false]

scoreboard players reset #temp Searched