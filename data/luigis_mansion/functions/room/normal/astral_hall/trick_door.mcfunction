teleport @s 666 20 -73
playsound luigis_mansion:music.trick_door music @s 666 20 -82 1000
execute if block 666 20 -72 minecraft:dark_oak_door[open=true] run tag @s add no_change
execute if entity @s[tag=!no_change] run fill 691 20 -22 691 21 -22 minecraft:air replace #minecraft:doors
execute if entity @s[tag=!no_change] run fill 666 20 -72 666 21 -72 minecraft:air replace #minecraft:doors
execute if entity @s[tag=!no_change] run setblock 666 20 -72 minecraft:dark_oak_door[open=true,facing=south,half=lower,hinge=left,powered=false]
execute if entity @s[tag=!no_change] run setblock 666 21 -72 minecraft:dark_oak_door[open=true,facing=south,half=upper,hinge=left,powered=false]
execute if entity @s[tag=!no_change] run setblock 691 20 -22 minecraft:dark_oak_door[open=true,facing=north,half=lower,hinge=right,powered=false]
execute if entity @s[tag=!no_change] run setblock 691 21 -22 minecraft:dark_oak_door[open=true,facing=north,half=upper,hinge=right,powered=false]
tag @s add me
execute if entity @s[tag=!no_change] run playsound luigis_mansion:block.door.open block @a[tag=!me] 666 20 -71 1
tag @s remove me
tag @s remove no_change