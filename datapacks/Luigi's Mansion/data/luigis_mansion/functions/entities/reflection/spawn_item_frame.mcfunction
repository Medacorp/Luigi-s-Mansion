summon minecraft:marker ~ ~ ~ {Tags:["temp"],NoGravity:1b}

execute if score #temp MirrorX matches -2147483648.. run scoreboard players operation #temp MirrorX *= #100 Constants
execute if score #temp MirrorX matches -2147483648.. run scoreboard players add #temp MirrorX 50
execute if score #temp MirrorZ matches -2147483648.. run scoreboard players operation #temp MirrorZ *= #100 Constants
execute if score #temp MirrorZ matches -2147483648.. run scoreboard players add #temp MirrorZ 50

execute if score #temp MirrorX matches -2147483648.. as @e[tag=temp,limit=1] run function luigis_mansion:entities/reflection/position/x
execute if score #temp MirrorZ matches -2147483648.. as @e[tag=temp,limit=1] run function luigis_mansion:entities/reflection/position/z

execute unless score @s ReflectionNr matches 1.. if entity @s[nbt={Facing:0b}] at @e[tag=temp,limit=1] run summon minecraft:item_frame ~ ~ ~ {Facing:0b,CustomName:'{"translate":"luigis_mansion:entity.reflection"}',Tags:["reflection","this_reflection","new"],NoGravity:1b}
execute unless score @s ReflectionNr matches 1.. if entity @s[nbt={Facing:1b}] at @e[tag=temp,limit=1] run summon minecraft:item_frame ~ ~ ~ {Facing:1b,CustomName:'{"translate":"luigis_mansion:entity.reflection"}',Tags:["reflection","this_reflection","new"],NoGravity:1b}
execute unless score @s ReflectionNr matches 1.. if entity @s[nbt={Facing:2b}] if score #temp MirrorZ matches -2147483648.. at @e[tag=temp,limit=1] run summon minecraft:item_frame ~ ~ ~ {Facing:3b,CustomName:'{"translate":"luigis_mansion:entity.reflection"}',Tags:["reflection","this_reflection","new"],NoGravity:1b}
execute unless score @s ReflectionNr matches 1.. if entity @s[nbt={Facing:2b}] unless score #temp MirrorZ matches -2147483648.. at @e[tag=temp,limit=1] run summon minecraft:item_frame ~ ~ ~ {Facing:2b,CustomName:'{"translate":"luigis_mansion:entity.reflection"}',Tags:["reflection","this_reflection","new"],NoGravity:1b}
execute unless score @s ReflectionNr matches 1.. if entity @s[nbt={Facing:3b}] if score #temp MirrorZ matches -2147483648.. at @e[tag=temp,limit=1] run summon minecraft:item_frame ~ ~ ~ {Facing:2b,CustomName:'{"translate":"luigis_mansion:entity.reflection"}',Tags:["reflection","this_reflection","new"],NoGravity:1b}
execute unless score @s ReflectionNr matches 1.. if entity @s[nbt={Facing:3b}] unless score #temp MirrorZ matches -2147483648.. at @e[tag=temp,limit=1] run summon minecraft:item_frame ~ ~ ~ {Facing:3b,CustomName:'{"translate":"luigis_mansion:entity.reflection"}',Tags:["reflection","this_reflection","new"],NoGravity:1b}
execute unless score @s ReflectionNr matches 1.. if entity @s[nbt={Facing:4b}] if score #temp MirrorX matches -2147483648.. at @e[tag=temp,limit=1] run summon minecraft:item_frame ~ ~ ~ {Facing:5b,CustomName:'{"translate":"luigis_mansion:entity.reflection"}',Tags:["reflection","this_reflection","new"],NoGravity:1b}
execute unless score @s ReflectionNr matches 1.. if entity @s[nbt={Facing:4b}] unless score #temp MirrorX matches -2147483648.. at @e[tag=temp,limit=1] run summon minecraft:item_frame ~ ~ ~ {Facing:4b,CustomName:'{"translate":"luigis_mansion:entity.reflection"}',Tags:["reflection","this_reflection","new"],NoGravity:1b}
execute unless score @s ReflectionNr matches 1.. if entity @s[nbt={Facing:5b}] if score #temp MirrorX matches -2147483648.. at @e[tag=temp,limit=1] run summon minecraft:item_frame ~ ~ ~ {Facing:4b,CustomName:'{"translate":"luigis_mansion:entity.reflection"}',Tags:["reflection","this_reflection","new"],NoGravity:1b}
execute unless score @s ReflectionNr matches 1.. if entity @s[nbt={Facing:5b}] unless score #temp MirrorX matches -2147483648.. at @e[tag=temp,limit=1] run summon minecraft:item_frame ~ ~ ~ {Facing:5b,CustomName:'{"translate":"luigis_mansion:entity.reflection"}',Tags:["reflection","this_reflection","new"],NoGravity:1b}
kill @e[tag=temp,limit=1]