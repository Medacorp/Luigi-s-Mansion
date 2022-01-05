execute if block 654 2 -18 minecraft:acacia_door[open=true] if block 653 93 -18 minecraft:acacia_door[open=false] run scoreboard players set #temp Searched 1
execute if block 653 93 -18 minecraft:acacia_door[open=true] if block 654 2 -18 minecraft:acacia_door[open=false] run scoreboard players set #temp Searched 1
execute if block 654 2 -18 minecraft:acacia_door[open=true] if block 653 93 -18 minecraft:acacia_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2
execute if block 653 93 -18 minecraft:acacia_door[open=true] if block 654 2 -18 minecraft:acacia_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2
execute if block 654 2 -18 minecraft:acacia_door[powered=false] run scoreboard players set #temp Searched -1
execute if block 653 93 -18 minecraft:acacia_door[powered=false] run scoreboard players set #temp Searched -1

execute if score #temp Searched matches 1..2 as @a[gamemode=!spectator,distance=..3,x=654.0,y=2,z=-17.5] if data storage luigis_mansion:data current_state.current_data.obtained_keys{secret_altar:1b} unless data storage luigis_mansion:data current_state.current_data.used_keys{secret_altar:1b} positioned 654 2 -18 run function luigis_mansion:room/normal/secret_altar/unlock_door
execute if block 654 2 -18 #minecraft:doors[open=true] unless data storage luigis_mansion:data current_state.current_data.used_keys{secret_altar:1b} positioned 654 2 -18 run function luigis_mansion:blocks/closed_door
execute if block 653 93 -18 #minecraft:doors[open=true] if entity @e[tag=king_boo,tag=talk,limit=1] positioned 653 93 -18 run function luigis_mansion:blocks/closed_door
execute if block 653 93 -18 #minecraft:doors[open=true] if data storage luigis_mansion:data current_state.current_data.rooms.secret_altar{cleared:1b} if entity @e[x=636.5,y=94,z=-17.5,distance=..0.7,type=minecraft:item_frame,nbt={Item:{id:"minecraft:painting"}},limit=1] positioned 653 93 -18 run function luigis_mansion:blocks/closed_door
execute unless data storage luigis_mansion:data current_state.current_data.used_keys{secret_altar:1b} if score #temp Searched matches 1..2 run scoreboard players set #temp Searched -1
execute if data storage luigis_mansion:data current_state.current_data.rooms.secret_altar{cleared:1b} if entity @e[x=636.5,y=94,z=-17.5,distance=..0.7,type=minecraft:item_frame,nbt={Item:{id:"minecraft:painting"}},limit=1] if score #temp Searched matches 1..2 run scoreboard players set #temp Searched -1
execute unless entity @a[gamemode=!spectator,distance=..3,x=654.0,y=2,z=-17.5] unless entity @a[gamemode=!spectator,distance=..3,x=654.0,y=93,z=-17.5] if score #temp Searched matches 1..2 run scoreboard players set #temp Searched 0

execute if score #temp Searched matches 1 run fill 654 2 -18 654 3 -18 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run fill 653 93 -18 653 94 -18 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run fill 653 93 -34 653 94 -34 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run setblock 654 2 -18 minecraft:acacia_door[open=true,facing=west,half=lower,hinge=right,powered=true]
execute if score #temp Searched matches 1 run setblock 654 3 -18 minecraft:acacia_door[open=true,facing=west,half=upper,hinge=right,powered=true]
execute if score #temp Searched matches 1 run setblock 653 93 -18 minecraft:acacia_door[open=true,facing=east,half=lower,hinge=left,powered=true]
execute if score #temp Searched matches 1 run setblock 653 94 -18 minecraft:acacia_door[open=true,facing=east,half=upper,hinge=left,powered=true]
execute if score #temp Searched matches 1 run setblock 653 93 -34 minecraft:acacia_door[open=true,facing=east,half=lower,hinge=right,powered=true]
execute if score #temp Searched matches 1 run setblock 653 94 -34 minecraft:acacia_door[open=true,facing=east,half=upper,hinge=right,powered=true]
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.door.close block @a[scores={Room=61}] 654.0 2 -18 1 1
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.door.close block @a[scores={Room=72}] 654.0 93 -18 1 1
execute if score #temp Searched matches 1 run playsound luigis_mansion:block.door.open block @a[scores={Room=61}] 654.0 2 -18 1 1
execute if score #temp Searched matches 1 run playsound luigis_mansion:block.door.open block @a[scores={Room=72}] 654.0 93 -18 1 1
execute if score #temp Searched matches -1..0 run fill 654 2 -18 654 3 -18 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run fill 653 93 -18 653 94 -18 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run fill 653 93 -34 653 94 -34 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run setblock 654 2 -18 minecraft:acacia_door[open=false,facing=west,half=lower,hinge=right,powered=true]
execute if score #temp Searched matches -1..0 run setblock 654 3 -18 minecraft:acacia_door[open=false,facing=west,half=upper,hinge=right,powered=true]
execute if score #temp Searched matches -1..0 run setblock 653 93 -18 minecraft:acacia_door[open=false,facing=east,half=lower,hinge=left,powered=true]
execute if score #temp Searched matches -1..0 run setblock 653 94 -18 minecraft:acacia_door[open=false,facing=east,half=upper,hinge=left,powered=true]
execute if score #temp Searched matches -1..0 run setblock 653 93 -34 minecraft:acacia_door[open=false,facing=east,half=lower,hinge=right,powered=true]
execute if score #temp Searched matches -1..0 run setblock 653 94 -34 minecraft:acacia_door[open=false,facing=east,half=upper,hinge=right,powered=true]

execute if score #temp Searched matches 1..2 as @a[x=654.0,y=2,z=-18.0,dx=0,dy=1,dz=0] run teleport @s 652 93 -18
execute if score #temp Searched matches 1..2 if entity @a[x=653.0,y=93,z=-18.0,dx=0,dy=1,dz=0] if data storage luigis_mansion:data current_state.current_data.rooms.secret_altar{cleared:1b} unless entity @e[x=636.5,y=94,z=-17.5,distance=..0.7,type=minecraft:item_frame,limit=1] unless score #loaded_exterior Selected matches -1 in minecraft:overworld run function luigis_mansion:room/load_exterior/empty
execute if score #temp Searched matches 1..2 if entity @a[x=653.0,y=93,z=-18.0,dx=0,dy=1,dz=0] if data storage luigis_mansion:data current_state.current_data.rooms.secret_altar{cleared:1b} unless entity @e[x=636.5,y=94,z=-17.5,distance=..0.7,type=minecraft:item_frame,limit=1] as @a run function luigis_mansion:room/ghost_portrificationizer_room/warp_to
execute if score #temp Searched matches 1..2 as @a[x=653.0,y=93,z=-18.0,dx=0,dy=1,dz=0] if data storage luigis_mansion:data current_state.current_data.rooms.secret_altar{cleared:0b} run teleport @s 655 2 -18

scoreboard players reset #temp Searched