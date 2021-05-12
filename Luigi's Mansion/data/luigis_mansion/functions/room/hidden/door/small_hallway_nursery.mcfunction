execute if block 738 20 -43 minecraft:dark_oak_door[open=true] if block 729 20 -51 minecraft:dark_oak_door[open=false] run scoreboard players set #temp Searched 1
execute if block 729 20 -51 minecraft:dark_oak_door[open=true] if block 738 20 -43 minecraft:dark_oak_door[open=false] run scoreboard players set #temp Searched 1
execute if block 738 20 -43 minecraft:dark_oak_door[open=true] if block 729 20 -51 minecraft:dark_oak_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2
execute if block 729 20 -51 minecraft:dark_oak_door[open=true] if block 738 20 -43 minecraft:dark_oak_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2

execute if score #temp Searched matches 1..2 as @a[gamemode=!spectator,distance=..3,x=730.0,y=20,z=-50.5] if data storage luigis_mansion:data current_state.current_data.obtained_keys{nursery:1b} unless data storage luigis_mansion:data current_state.current_data.used_keys{nursery:1b} positioned 705 20 -51 run function luigis_mansion:room/hidden/nursery/unlock_door
execute if block 729 20 -51 #minecraft:doors[open=true] unless data storage luigis_mansion:data current_state.current_data.used_keys{nursery:1b} positioned 705 20 -51 run function luigis_mansion:blocks/closed_door
execute unless data storage luigis_mansion:data current_state.current_data.used_keys{nursery:1b} if score #temp Searched matches 1..2 run scoreboard players set #temp Searched -1
execute unless entity @a[gamemode=!spectator,distance=..3,x=730.0,y=20,z=-50.5] unless entity @a[gamemode=!spectator,distance=..3,x=738.0,y=20,z=-42.5] if score #temp Searched matches 1..2 run scoreboard players set #temp Searched 0

execute if score #temp Searched matches 1 run fill 729 20 -51 729 21 -51 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run fill 738 20 -43 738 21 -43 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run setblock 738 20 -43 minecraft:dark_oak_door[open=true,facing=west,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches 1 run setblock 738 21 -43 minecraft:dark_oak_door[open=true,facing=west,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches 1 run setblock 729 20 -51 minecraft:dark_oak_door[open=true,facing=east,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches 1 run setblock 729 21 -51 minecraft:dark_oak_door[open=true,facing=east,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.door.close block @a[scores={Room=6}] 730.0 20 -51 1 1
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.door.close block @a[scores={Room=9}] 738.0 20 -43 1 1
execute if score #temp Searched matches 1 run playsound luigis_mansion:block.door.open block @a[scores={Room=6}] 730.0 20 -51 1 1
execute if score #temp Searched matches 1 run playsound luigis_mansion:block.door.open block @a[scores={Room=9}] 738.0 20 -43 1 1
execute if score #temp Searched matches -1..0 run fill 729 20 -51 729 21 -51 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run fill 738 20 -43 738 21 -43 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run setblock 738 20 -43 minecraft:dark_oak_door[open=false,facing=west,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches -1..0 run setblock 738 21 -43 minecraft:dark_oak_door[open=false,facing=west,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches -1..0 run setblock 729 20 -51 minecraft:dark_oak_door[open=false,facing=east,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches -1..0 run setblock 729 21 -51 minecraft:dark_oak_door[open=false,facing=east,half=upper,hinge=right,powered=false]

execute if score #temp Searched matches 1..2 as @a[x=729.0,y=20,z=-51.0,dx=0,dy=1,dz=0] at @s run teleport @s 739 20 -43
execute if score #temp Searched matches 1..2 as @a[x=738.0,y=20,z=-43.0,dx=0,dy=1,dz=0] run stopsound @s[scores={HallwayNoise=1..}] ambient luigis_mansion:music.mansion.room.nursery
execute if score #temp Searched matches 1..2 as @a[x=738.0,y=20,z=-43.0,dx=0,dy=1,dz=0] run scoreboard players set @s HallwayNoise 0
execute if score #temp Searched matches 1..2 as @a[x=738.0,y=20,z=-43.0,dx=0,dy=1,dz=0] at @s run teleport @s 728 20 -51

scoreboard players reset #temp Searched