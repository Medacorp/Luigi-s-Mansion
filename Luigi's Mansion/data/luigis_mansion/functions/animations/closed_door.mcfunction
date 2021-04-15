tag @s remove dead
tag @s remove remove_from_existence
scoreboard players add @s AnimationProg 1
execute if entity @s[scores={AnimationProg=1}] unless block ~ ~ ~ minecraft:spruce_door run playsound luigis_mansion:block.door.locked block @a ~ ~ ~ 1
execute if block ~ ~ ~ #minecraft:doors[facing=east] align xyz run teleport @a[dx=1] ~-0.5 ~ ~0.5
execute if block ~ ~ ~ #minecraft:doors[facing=north] align xyz positioned ~ ~ ~-1 run teleport @a[dz=1] ~0.5 ~ ~2.5
execute if block ~ ~ ~ #minecraft:doors[facing=south] align xyz run teleport @a[dz=1] ~0.5 ~ ~-0.5
execute if block ~ ~ ~ #minecraft:doors[facing=west] align xyz positioned ~-1 ~ ~ run teleport @a[dx=1] ~2.5 ~ ~0.5

execute if entity @s[scores={AnimationProg=23}] if block ~ ~ ~ #minecraft:doors[facing=east] run clone ~1 ~ ~ ~1 ~1 ~ ~-1 ~ ~
execute if entity @s[scores={AnimationProg=23}] if block ~ ~ ~ #minecraft:doors[facing=north] run clone ~ ~ ~-1 ~ ~1 ~-1 ~ ~ ~1
execute if entity @s[scores={AnimationProg=23}] if block ~ ~ ~ #minecraft:doors[facing=south] run clone ~ ~ ~1 ~ ~1 ~1 ~ ~ ~-1
execute if entity @s[scores={AnimationProg=23}] if block ~ ~ ~ #minecraft:doors[facing=west] run clone ~-1 ~ ~ ~-1 ~1 ~ ~1 ~ ~

execute if entity @s[scores={AnimationProg=25}] if block ~ ~ ~ #minecraft:doors[facing=east] run fill ~-1 ~ ~ ~-1 ~ ~ minecraft:air
execute if entity @s[scores={AnimationProg=25}] if block ~ ~ ~ #minecraft:doors[facing=north] run fill ~ ~ ~1 ~ ~ ~1 minecraft:air
execute if entity @s[scores={AnimationProg=25}] if block ~ ~ ~ #minecraft:doors[facing=south] run fill ~ ~ ~-1 ~ ~ ~-1 minecraft:air
execute if entity @s[scores={AnimationProg=25}] if block ~ ~ ~ #minecraft:doors[facing=west] run fill ~1 ~ ~ ~1 ~ ~ minecraft:air

execute if entity @s[scores={AnimationProg=33}] if block ~ ~ ~ #minecraft:doors[facing=east] run clone ~1 ~ ~ ~1 ~1 ~ ~-1 ~ ~
execute if entity @s[scores={AnimationProg=33}] if block ~ ~ ~ #minecraft:doors[facing=north] run clone ~ ~ ~-1 ~ ~1 ~-1 ~ ~ ~1
execute if entity @s[scores={AnimationProg=33}] if block ~ ~ ~ #minecraft:doors[facing=south] run clone ~ ~ ~1 ~ ~1 ~1 ~ ~ ~-1
execute if entity @s[scores={AnimationProg=33}] if block ~ ~ ~ #minecraft:doors[facing=west] run clone ~-1 ~ ~ ~-1 ~1 ~ ~1 ~ ~

execute if entity @s[scores={AnimationProg=35}] if block ~ ~ ~ #minecraft:doors[facing=east] run fill ~-1 ~ ~ ~-1 ~ ~ minecraft:air
execute if entity @s[scores={AnimationProg=35}] if block ~ ~ ~ #minecraft:doors[facing=north] run fill ~ ~ ~1 ~ ~ ~1 minecraft:air
execute if entity @s[scores={AnimationProg=35}] if block ~ ~ ~ #minecraft:doors[facing=south] run fill ~ ~ ~-1 ~ ~ ~-1 minecraft:air
execute if entity @s[scores={AnimationProg=35}] if block ~ ~ ~ #minecraft:doors[facing=west] run fill ~1 ~ ~ ~1 ~ ~ minecraft:air