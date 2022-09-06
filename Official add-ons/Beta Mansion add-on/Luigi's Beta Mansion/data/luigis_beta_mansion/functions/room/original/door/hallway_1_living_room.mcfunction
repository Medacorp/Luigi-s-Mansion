execute if block 736 20 8 minecraft:jungle_door[open=true] if block 736 20 9 minecraft:jungle_door[open=false] run scoreboard players set #temp Searched 1
execute if block 736 20 9 minecraft:jungle_door[open=true] if block 736 20 8 minecraft:jungle_door[open=false] run scoreboard players set #temp Searched 1
execute if block 736 20 8 minecraft:jungle_door[open=true] if block 736 20 9 minecraft:jungle_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2
execute if block 736 20 9 minecraft:jungle_door[open=true] if block 736 20 8 minecraft:jungle_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2
execute if block 728 20 27 minecraft:jungle_door[open=true] if block 728 20 28 minecraft:jungle_door[open=false] run scoreboard players set #temp Searched 1
execute if block 728 20 28 minecraft:jungle_door[open=true] if block 728 20 27 minecraft:jungle_door[open=false] run scoreboard players set #temp Searched 1
execute if block 728 20 27 minecraft:jungle_door[open=true] if block 728 20 28 minecraft:jungle_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2
execute if block 728 20 28 minecraft:jungle_door[open=true] if block 728 20 27 minecraft:jungle_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2

execute if score #temp Searched matches 1..2 as @a[gamemode=!spectator,distance=..3,x=736.0,y=20,z=9.0] if data storage luigis_mansion:data {obtained_parlor_key:1b} unless data storage luigis_mansion:data {used_parlor_key:1b} positioned 736 20 9.0 run function luigis_beta_mansion:room/original/living_room/unlock_door
execute if block 736 20 8 #minecraft:doors[open=true] unless data storage luigis_mansion:data {used_parlor_key:1b} positioned 736 20 8 run function luigis_mansion:blocks/closed_door
execute if block 736 20 9 #minecraft:doors[open=true] unless data storage luigis_mansion:data {used_parlor_key:1b} positioned 736 20 9 run function luigis_mansion:blocks/closed_door
execute unless data storage luigis_mansion:data {used_parlor_key:1b} if score #temp Searched matches 1..2 run scoreboard players set #temp Searched -1
execute unless entity @a[gamemode=!spectator,distance=..3,x=736.0,y=20,z=9.0] unless entity @a[gamemode=!spectator,distance=..3,x=729.0,y=20,z=28.0] if score #temp Searched matches 1..2 run scoreboard players set #temp Searched 0

execute if score #temp Searched matches 1 run fill 736 20 8 736 21 9 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run fill 728 20 27 728 21 28 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run setblock 736 20 8 minecraft:jungle_door[open=true,facing=west,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches 1 run setblock 736 21 8 minecraft:jungle_door[open=true,facing=west,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches 1 run setblock 736 20 9 minecraft:jungle_door[open=true,facing=west,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches 1 run setblock 736 21 9 minecraft:jungle_door[open=true,facing=west,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches 1 run setblock 728 20 27 minecraft:jungle_door[open=true,facing=east,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches 1 run setblock 728 21 27 minecraft:jungle_door[open=true,facing=east,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches 1 run setblock 728 20 28 minecraft:jungle_door[open=true,facing=east,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches 1 run setblock 728 21 28 minecraft:jungle_door[open=true,facing=east,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.door.close block @a[scores={Room=2}] 736.0 20 9.0 1 1
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.door.close block @a[scores={Room=3}] 729.0 20 28.0 1 1
execute if score #temp Searched matches 1 run playsound luigis_mansion:block.door.open block @a[scores={Room=2}] 736.0 20 9.0 1 1
execute if score #temp Searched matches 1 run playsound luigis_mansion:block.door.open block @a[scores={Room=3}] 729.0 20 28.0 1 1
execute if score #temp Searched matches -1..0 run fill 736 20 8 736 21 9 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run fill 728 20 27 728 21 28 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run setblock 736 20 8 minecraft:jungle_door[open=false,facing=west,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches -1..0 run setblock 736 21 8 minecraft:jungle_door[open=false,facing=west,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches -1..0 run setblock 736 20 9 minecraft:jungle_door[open=false,facing=west,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches -1..0 run setblock 736 21 9 minecraft:jungle_door[open=false,facing=west,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches -1..0 run setblock 728 20 27 minecraft:jungle_door[open=false,facing=east,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches -1..0 run setblock 728 21 27 minecraft:jungle_door[open=false,facing=east,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches -1..0 run setblock 728 20 28 minecraft:jungle_door[open=false,facing=east,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches -1..0 run setblock 728 21 28 minecraft:jungle_door[open=false,facing=east,half=upper,hinge=right,powered=false]

execute if score #temp Searched matches 1..2 as @a[x=736.0,y=20,z=8.0,dx=0,dy=1,dz=1] run teleport @s 727 20 28.0
execute if score #temp Searched matches 1..2 as @a[x=728.0,y=20,z=27.0,dx=0,dy=1,dz=1] run teleport @s 737 20 9.0

scoreboard players reset #temp Searched