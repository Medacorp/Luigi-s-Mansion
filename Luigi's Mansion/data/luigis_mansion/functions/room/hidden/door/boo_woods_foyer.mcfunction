execute in minecraft:overworld if block 720 102 7 minecraft:spruce_door[open=true] if block 720 102 8 minecraft:spruce_door[open=false] run scoreboard players set #temp Searched 1
execute in minecraft:overworld if block 720 102 8 minecraft:spruce_door[open=true] if block 720 102 7 minecraft:spruce_door[open=false] run scoreboard players set #temp Searched 1
execute in minecraft:overworld if block 720 102 7 minecraft:spruce_door[open=true] if block 720 102 8 minecraft:spruce_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2
execute in minecraft:overworld if block 720 102 8 minecraft:spruce_door[open=true] if block 720 102 7 minecraft:spruce_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2
execute in luigis_mansion:hidden if block 718 102 7 minecraft:spruce_door[open=true] if block 718 102 8 minecraft:spruce_door[open=false] run scoreboard players set #temp Searched 1
execute in luigis_mansion:hidden if block 718 102 8 minecraft:spruce_door[open=true] if block 718 102 7 minecraft:spruce_door[open=false] run scoreboard players set #temp Searched 1
execute in luigis_mansion:hidden if block 718 102 7 minecraft:spruce_door[open=true] if block 718 102 8 minecraft:spruce_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2
execute in luigis_mansion:hidden if block 718 102 8 minecraft:spruce_door[open=true] if block 718 102 7 minecraft:spruce_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2

execute in luigis_mansion:hidden if block 718 102 8 #minecraft:doors[open=true] if entity @a[tag=blackout,limit=1] positioned 718 102 8 run function luigis_mansion:blocks/closed_door
execute in luigis_mansion:hidden if block 718 102 7 #minecraft:doors[open=true] if entity @a[tag=blackout,limit=1] positioned 718 102 7 run function luigis_mansion:blocks/closed_door
execute if entity @a[tag=blackout,limit=1] if score #temp Searched matches 1..2 run scoreboard players set #temp Searched -1
execute in minecraft:overworld unless entity @a[gamemode=!spectator,distance=..3,x=719.5,y=102,z=8.0] in luigis_mansion:hidden unless entity @a[gamemode=!spectator,distance=..3,x=719.5,y=102,z=8.0] if score #temp Searched matches 1..2 run scoreboard players set #temp Searched 0

execute if score #temp Searched matches 1 in minecraft:overworld run fill 720 102 7 720 103 8 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 in luigis_mansion:hidden run fill 718 102 7 718 103 8 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 in minecraft:overworld run setblock 720 102 7 minecraft:spruce_door[open=true,facing=west,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches 1 in minecraft:overworld run setblock 720 103 7 minecraft:spruce_door[open=true,facing=west,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches 1 in minecraft:overworld run setblock 720 102 8 minecraft:spruce_door[open=true,facing=west,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches 1 in minecraft:overworld run setblock 720 103 8 minecraft:spruce_door[open=true,facing=west,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches 1 in luigis_mansion:hidden run setblock 718 102 7 minecraft:spruce_door[open=true,facing=east,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches 1 in luigis_mansion:hidden run setblock 718 103 7 minecraft:spruce_door[open=true,facing=east,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches 1 in luigis_mansion:hidden run setblock 718 102 8 minecraft:spruce_door[open=true,facing=east,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches 1 in luigis_mansion:hidden run setblock 718 103 8 minecraft:spruce_door[open=true,facing=east,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches 0 in minecraft:overworld run playsound luigis_mansion:block.door.close block @a 719 102 8.0 1 1
execute if score #temp Searched matches 0 in luigis_mansion:hidden run playsound luigis_mansion:block.door.close block @a 719 102 8.0 1 1
execute if score #temp Searched matches 1 in minecraft:overworld run playsound luigis_mansion:block.door.open block @a 719 102 8.0 1 1
execute if score #temp Searched matches 1 in luigis_mansion:hidden run playsound luigis_mansion:block.door.open block @a 719 102 8.0 1 1
execute if score #temp Searched matches -1..0 in minecraft:overworld run fill 720 102 7 720 103 8 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 in luigis_mansion:hidden run fill 718 102 7 718 103 8 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 in minecraft:overworld run setblock 720 102 7 minecraft:spruce_door[open=false,facing=west,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches -1..0 in minecraft:overworld run setblock 720 103 7 minecraft:spruce_door[open=false,facing=west,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches -1..0 in minecraft:overworld run setblock 720 102 8 minecraft:spruce_door[open=false,facing=west,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches -1..0 in minecraft:overworld run setblock 720 103 8 minecraft:spruce_door[open=false,facing=west,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches -1..0 in luigis_mansion:hidden run setblock 718 102 7 minecraft:spruce_door[open=false,facing=east,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches -1..0 in luigis_mansion:hidden run setblock 718 103 7 minecraft:spruce_door[open=false,facing=east,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches -1..0 in luigis_mansion:hidden run setblock 718 102 8 minecraft:spruce_door[open=false,facing=east,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches -1..0 in luigis_mansion:hidden run setblock 718 103 8 minecraft:spruce_door[open=false,facing=east,half=upper,hinge=right,powered=false]

execute in luigis_mansion:hidden if score #temp Searched matches 1..2 run scoreboard players set @a[x=718.0,y=102,z=7.0,dx=0,dy=1,dz=1] Room 0
execute in luigis_mansion:hidden if score #temp Searched matches 1..2 run scoreboard players set @a[x=718.0,y=102,z=7.0,dx=0,dy=1,dz=1] LastRoom 0
execute in luigis_mansion:hidden if score #temp Searched matches 1..2 as @a[x=718.0,y=102,z=7.0,dx=0,dy=1,dz=1] run function luigis_mansion:other/music/set/silence
execute in luigis_mansion:hidden if score #temp Searched matches 1..2 as @a[x=718.0,y=102,z=7.0,dx=0,dy=1,dz=1] at @s in minecraft:overworld run teleport @s 721 102 8.0
execute in minecraft:overworld if score #temp Searched matches 1..2 as @a[x=720.0,y=102,z=7.0,dx=0,dy=1,dz=1] at @s in luigis_mansion:hidden run teleport @s 717 102 8.0

scoreboard players reset #temp Searched