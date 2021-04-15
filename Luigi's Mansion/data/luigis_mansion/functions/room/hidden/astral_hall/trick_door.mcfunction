teleport @s ~ ~ ~-21
playsound luigis_mansion:music.trick_door music @s 677 111 35 1000
fill 677 111 24 677 112 25 minecraft:air replace #minecraft:doors
setblock 677 111 25 minecraft:dark_oak_door[open=true,facing=south,half=lower,hinge=right,powered=false]
setblock 677 112 25 minecraft:dark_oak_door[open=true,facing=south,half=upper,hinge=right,powered=false]
setblock 677 111 24 minecraft:dark_oak_door[open=true,facing=north,half=lower,hinge=left,powered=false]
setblock 677 112 24 minecraft:dark_oak_door[open=true,facing=north,half=upper,hinge=left,powered=false]
fill 677 111 45 677 112 46 minecraft:air replace #minecraft:doors
setblock 677 111 46 minecraft:dark_oak_door[open=true,facing=south,half=lower,hinge=right,powered=false]
setblock 677 112 46 minecraft:dark_oak_door[open=true,facing=south,half=upper,hinge=right,powered=false]
setblock 677 111 45 minecraft:dark_oak_door[open=true,facing=north,half=lower,hinge=left,powered=false]
setblock 677 112 45 minecraft:dark_oak_door[open=true,facing=north,half=upper,hinge=left,powered=false]
playsound luigis_mansion:block.door.close block @a 677 111 45.0 1
playsound luigis_mansion:block.door.open block @a 677 111 24 1