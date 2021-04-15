teleport @s ~ ~ ~21
playsound luigis_mansion:music.trick_door music @s 677 111 -20 1000
fill 677 111 -9 677 112 -10 minecraft:air replace #minecraft:doors
setblock 677 111 -10 minecraft:dark_oak_door[open=true,facing=south,half=lower,hinge=left,powered=false]
setblock 677 112 -10 minecraft:dark_oak_door[open=true,facing=south,half=upper,hinge=left,powered=false]
setblock 677 111 -9 minecraft:dark_oak_door[open=true,facing=north,half=lower,hinge=right,powered=false]
setblock 677 112 -9 minecraft:dark_oak_door[open=true,facing=north,half=upper,hinge=right,powered=false]
fill 677 111 -30 677 112 -31 minecraft:air replace #minecraft:doors
setblock 677 111 -31 minecraft:dark_oak_door[open=true,facing=south,half=lower,hinge=left,powered=false]
setblock 677 112 -31 minecraft:dark_oak_door[open=true,facing=south,half=upper,hinge=left,powered=false]
setblock 677 111 -30 minecraft:dark_oak_door[open=true,facing=north,half=lower,hinge=right,powered=false]
setblock 677 112 -30 minecraft:dark_oak_door[open=true,facing=north,half=upper,hinge=right,powered=false]
playsound luigis_mansion:block.door.close block @a 677 111 -30.0 1
playsound luigis_mansion:block.door.open block @a 677 111 -9 1