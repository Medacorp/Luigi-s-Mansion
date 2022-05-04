summon minecraft:marker ~ ~ ~ {Tags:["temp","remove_from_existence"],NoGravity:1b}

execute if score #temp MirrorX matches -2147483648.. run scoreboard players operation #temp MirrorX *= #100 Constants
execute if score #temp MirrorX matches -2147483648.. run scoreboard players add #temp MirrorX 50
execute if score #temp MirrorZ matches -2147483648.. run scoreboard players operation #temp MirrorZ *= #100 Constants
execute if score #temp MirrorZ matches -2147483648.. run scoreboard players add #temp MirrorZ 50

execute if score #temp MirrorX matches -2147483648.. as @e[tag=temp,limit=1] run function luigis_mansion:entities/reflection/position/x
execute if score #temp MirrorZ matches -2147483648.. as @e[tag=temp,limit=1] run function luigis_mansion:entities/reflection/position/z

execute if entity @s[nbt={Facing:0b}] at @e[tag=temp,limit=1] run summon minecraft:item_frame ~ ~ ~ {Facing:0b,Invulnerable:1b,CustomName:'{"translate":"luigis_mansion:entity.reflection"}',Tags:["reflection","this_reflection","new"],NoGravity:1b}
execute if entity @s[nbt={Facing:1b}] at @e[tag=temp,limit=1] run summon minecraft:item_frame ~ ~ ~ {Facing:1b,Invulnerable:1b,CustomName:'{"translate":"luigis_mansion:entity.reflection"}',Tags:["reflection","this_reflection","new"],NoGravity:1b}
execute if entity @s[nbt={Facing:2b}] if score #temp MirrorZ matches -2147483648.. at @e[tag=temp,limit=1] run summon minecraft:item_frame ~ ~ ~ {Facing:3b,Invulnerable:1b,CustomName:'{"translate":"luigis_mansion:entity.reflection"}',Tags:["reflection","this_reflection","new"],NoGravity:1b}
execute if entity @s[nbt={Facing:2b}] unless score #temp MirrorZ matches -2147483648.. at @e[tag=temp,limit=1] run summon minecraft:item_frame ~ ~ ~ {Facing:2b,Invulnerable:1b,CustomName:'{"translate":"luigis_mansion:entity.reflection"}',Tags:["reflection","this_reflection","new"],NoGravity:1b}
execute if entity @s[nbt={Facing:3b}] if score #temp MirrorZ matches -2147483648.. at @e[tag=temp,limit=1] run summon minecraft:item_frame ~ ~ ~ {Facing:2b,Invulnerable:1b,CustomName:'{"translate":"luigis_mansion:entity.reflection"}',Tags:["reflection","this_reflection","new"],NoGravity:1b}
execute if entity @s[nbt={Facing:3b}] unless score #temp MirrorZ matches -2147483648.. at @e[tag=temp,limit=1] run summon minecraft:item_frame ~ ~ ~ {Facing:3b,Invulnerable:1b,CustomName:'{"translate":"luigis_mansion:entity.reflection"}',Tags:["reflection","this_reflection","new"],NoGravity:1b}
execute if entity @s[nbt={Facing:4b}] if score #temp MirrorX matches -2147483648.. at @e[tag=temp,limit=1] run summon minecraft:item_frame ~ ~ ~ {Facing:5b,Invulnerable:1b,CustomName:'{"translate":"luigis_mansion:entity.reflection"}',Tags:["reflection","this_reflection","new"],NoGravity:1b}
execute if entity @s[nbt={Facing:4b}] unless score #temp MirrorX matches -2147483648.. at @e[tag=temp,limit=1] run summon minecraft:item_frame ~ ~ ~ {Facing:4b,Invulnerable:1b,CustomName:'{"translate":"luigis_mansion:entity.reflection"}',Tags:["reflection","this_reflection","new"],NoGravity:1b}
execute if entity @s[nbt={Facing:5b}] if score #temp MirrorX matches -2147483648.. at @e[tag=temp,limit=1] run summon minecraft:item_frame ~ ~ ~ {Facing:4b,Invulnerable:1b,CustomName:'{"translate":"luigis_mansion:entity.reflection"}',Tags:["reflection","this_reflection","new"],NoGravity:1b}
execute if entity @s[nbt={Facing:5b}] unless score #temp MirrorX matches -2147483648.. at @e[tag=temp,limit=1] run summon minecraft:item_frame ~ ~ ~ {Facing:5b,Invulnerable:1b,CustomName:'{"translate":"luigis_mansion:entity.reflection"}',Tags:["reflection","this_reflection","new"],NoGravity:1b}
kill @e[tag=temp,limit=1]
scoreboard players operation @e[tag=this_reflection,tag=new,limit=1] ReflectionNr > @e[scores={ReflectionNr=1..}] ReflectionNr
scoreboard players add @e[tag=this_reflection,tag=new,limit=1] ReflectionNr 1
data modify entity @e[tag=this_reflection,tag=new,limit=1] Silent set from entity @s Silent
data modify entity @e[tag=this_reflection,tag=new,limit=1] Invisible set from entity @s Invisible
data modify entity @e[tag=this_reflection,tag=new,limit=1] Fixed set from entity @s Fixed
scoreboard players operation @e[tag=this_reflection,limit=1] Room = @s Room
scoreboard players operation @s ReflectionNr = @e[tag=this_reflection,tag=new,limit=1] ReflectionNr
tag @e[tag=this_reflection,limit=1] remove new