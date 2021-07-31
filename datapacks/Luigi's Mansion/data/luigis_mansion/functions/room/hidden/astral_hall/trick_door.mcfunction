teleport @s 666 20 88
playsound luigis_mansion:music.trick_door music @s 666 20 97 1000
execute if block 666 20 87 minecraft:dark_oak_door[open=true] run tag @s add no_change
execute if entity @s[tag=!no_change] run fill 691 20 37 691 21 37 minecraft:air replace #minecraft:doors
execute if entity @s[tag=!no_change] run fill 666 20 87 666 21 87 minecraft:air replace #minecraft:doors
execute if entity @s[tag=!no_change] run setblock 666 20 87 minecraft:dark_oak_door[open=true,facing=south,half=lower,hinge=left,powered=false]
execute if entity @s[tag=!no_change] run setblock 666 21 87 minecraft:dark_oak_door[open=true,facing=south,half=upper,hinge=left,powered=false]
execute if entity @s[tag=!no_change] run setblock 691 20 37 minecraft:dark_oak_door[open=true,facing=north,half=lower,hinge=right,powered=false]
execute if entity @s[tag=!no_change] run setblock 691 21 37 minecraft:dark_oak_door[open=true,facing=north,half=upper,hinge=right,powered=false]
tag @s add me
execute if entity @s[tag=!no_change] run playsound luigis_mansion:block.door.open block @a[tag=!me] 666 20 86 1
tag @s remove me
tag @s remove no_change