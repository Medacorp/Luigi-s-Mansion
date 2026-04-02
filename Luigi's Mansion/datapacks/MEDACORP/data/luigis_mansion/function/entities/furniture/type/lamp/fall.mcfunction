scoreboard players add @s[scores={ActionTime=72..131}] ActionTime 1
scoreboard players add @s[scores={ActionTime=1..70}] ActionTime 1
execute unless entity @s[scores={ActionTime=1..}] run scoreboard players set @s ActionTime 1
execute if entity @s[scores={ActionTime=1}] store result score @s HomeY run data get entity @s Pos[1] 100
execute if entity @s[scores={ActionTime=1}] run data modify storage luigis_mansion:data dialogs append value {name:{namespace:"luigis_mansion",id:"falling_chandelier"},progress:0,room:0}
execute if entity @s[scores={ActionTime=1}] store result storage luigis_mansion:data dialogs[-1].room int 1 run scoreboard players get @s Room
execute if entity @s[scores={ActionTime=21}] run summon minecraft:armor_stand ~ ~ ~ {CustomName:{type:"translatable",translate:"luigis_mansion:furniture.lamp"},Tags:["no_ai","freeze_animation","falling_chandelier_end","this_entity"],NoGravity:1b,Marker:1b,Invisible:1b,DisabledSlots:2039583}
execute if entity @s[scores={ActionTime=21}] run summon minecraft:item_display ~ ~1.43875 ~ {CustomName:{type:"translatable",translate:"luigis_mansion:furniture.lamp"},Tags:["no_ai","freeze_animation","falling_chandelier_rod","this_entity"],item_display:"head",transformation:[0.625f,0f,0f,0f,0f,0.625f,0f,0f,0f,0f,0.625f,0f,0f,0f,0f,1f]}
execute if entity @s[scores={ActionTime=21}] run data modify entity @e[distance=..0.1,tag=falling_chandelier_end,limit=1] equipment.head set from entity @s equipment.head
execute if entity @s[scores={ActionTime=21}] run data modify entity @e[distance=..0.1,tag=falling_chandelier_end,limit=1] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.end
execute if entity @s[scores={ActionTime=21}] positioned ~ ~1.43875 ~ run data modify entity @s data.rod set from entity @e[distance=..0.1,tag=falling_chandelier_rod,limit=1] UUID
execute if entity @s[scores={ActionTime=21}] positioned ~ ~1.43875 ~ run data modify entity @e[distance=..0.1,tag=falling_chandelier_rod,limit=1] item set from entity @s equipment.head
execute if entity @s[scores={ActionTime=21}] positioned ~ ~1.43875 ~ run data modify entity @e[distance=..0.1,tag=falling_chandelier_rod,limit=1] item merge from entity @s equipment.head.components."minecraft:custom_data".model_data.rod
execute if entity @s[scores={ActionTime=21}] as @e[tag=this_entity] positioned as @s run teleport @s ~ ~ ~ ~ 0
execute if entity @s[scores={ActionTime=21}] run tag @e[tag=this_entity] remove this_entity
data modify entity @s[scores={ActionTime=21}] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.falling
data modify entity @s[scores={ActionTime=21}] data.animation set value {namespace:"luigis_mansion",id:"falling_chandelier"}
tag @s[scores={ActionTime=21}] add main_type_freeze
execute if entity @s[scores={ActionTime=21}] run playsound luigis_mansion:furniture.chandelier.spin hostile @a[tag=same_room] ~ ~ ~ 5
execute if entity @s[scores={ActionTime=31}] run playsound luigis_mansion:furniture.chandelier.spin hostile @a[tag=same_room] ~ ~ ~ 5
execute if entity @s[scores={ActionTime=41}] run playsound luigis_mansion:furniture.chandelier.spin hostile @a[tag=same_room] ~ ~ ~ 5
execute if entity @s[scores={ActionTime=51}] run playsound luigis_mansion:furniture.chandelier.spin hostile @a[tag=same_room] ~ ~ ~ 5
execute if entity @s[scores={ActionTime=61}] run playsound luigis_mansion:furniture.chandelier.spin hostile @a[tag=same_room] ~ ~ ~ 5
scoreboard players set @s[scores={ActionTime=70}] Sound 0
execute if entity @s[scores={ActionTime=71,Sound=0}] run playsound luigis_mansion:furniture.chandelier.fall hostile @a[tag=same_room] ~ ~ ~ 5
scoreboard players set @s[scores={ActionTime=71,Sound=0}] Sound 10
# todelete room models: 10 ticks for 7.5 blocks = -0.75
execute at @s[scores={ActionTime=71}] run teleport @s ~ ~-1.4 ~
execute at @s[scores={ActionTime=21..71}] if entity @e[tag=luigi,distance=..2,scores={Invulnerable=0}] run tag @s add hit
execute at @s[scores={ActionTime=21..72}] run data modify storage luigis_mansion:data damage set value {method:{namespace:"luigis_mansion",id:"chandelier"},amount:10,animation:{namespace:"luigis_mansion",id:"knockback/large"},no_delete:1b}
execute at @s[scores={ActionTime=21..72}] as @e[tag=luigi,distance=..2] run function luigis_mansion:entities/luigi/damage
execute at @s[scores={ActionTime=21..72}] run data remove storage luigis_mansion:data damage
execute at @s[scores={ActionTime=71}] unless block ~ ~ ~ minecraft:air run scoreboard players add @s ActionTime 1
execute at @s[scores={ActionTime=72}] align y run teleport @s ~ ~ ~
execute at @s[scores={ActionTime=72}] align y unless block ~ ~ ~ minecraft:air run teleport @s ~ ~1 ~
execute if entity @s[scores={ActionTime=72}] store result score #temp Time run data get entity @s Pos[1] 10
execute if entity @s[scores={ActionTime=72,FurnitureChandelier=1..}] store result entity @s Pos[1] double 0.1 run scoreboard players operation #temp Time += @s FurnitureChandelier
execute if entity @s[scores={ActionTime=72}] run playsound luigis_mansion:furniture.chandelier.land hostile @a[tag=same_room] ~ ~ ~ 5
execute if entity @s[scores={ActionTime=92},tag=hit] run playsound luigis_mansion:entity.ghost.laugh hostile @a[tag=same_room] ~ ~ ~ 5
execute if entity @s[scores={ActionTime=92},tag=!hit] run playsound luigis_mansion:entity.ghost.complain hostile @a[tag=same_room] ~ ~ ~ 5
execute at @s[scores={ActionTime=132}] run teleport @s ~ ~0.16 ~
execute store result score #temp Time run data get entity @s Pos[1] 100
execute at @s[scores={ActionTime=132..133,Sound=0}] run playsound luigis_mansion:furniture.chandelier.rise hostile @a[tag=same_room] ~ ~ ~ 5
scoreboard players set @s[scores={ActionTime=132..133,Sound=0}] Sound 10
execute if entity @s[scores={ActionTime=132}] if score #temp Time >= @s HomeY store result entity @s Pos[1] double 0.01 run scoreboard players get @s HomeY
execute if entity @s[scores={ActionTime=132}] if score #temp Time >= @s HomeY run scoreboard players add @s ActionTime 1
execute if entity @s[scores={ActionTime=133,AnimationProgress=3}] run scoreboard players add @s ActionTime 1
execute if entity @s[scores={ActionTime=134}] run playsound luigis_mansion:furniture.chandelier.stop hostile @a[tag=same_room] ~ ~ ~ 5
execute if entity @s[scores={ActionTime=134}] run tag @e[distance=..0.1,tag=falling_chandelier_end] add dead
execute if entity @s[scores={ActionTime=134}] positioned ~ ~1.43875 ~ run tag @e[distance=..0.1,tag=falling_chandelier_rod] add dead
data modify entity @s[scores={ActionTime=134}] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.default
data remove entity @s[scores={ActionTime=134}] data.animation
tag @s[scores={ActionTime=134}] remove main_type_freeze
tag @s[scores={ActionTime=134}] remove falling
tag @s[scores={ActionTime=134}] remove hit
scoreboard players set @s[scores={ActionTime=134}] ActionTime 0

execute store result score #temp Time run data get entity @s Pos[1] 100
scoreboard players operation #temp Time -= @s HomeY
execute if score #temp Time matches ..-1 run scoreboard players operation #temp Time *= #-1 Constants
scoreboard players operation #temp Time *= #625 Constants
scoreboard players operation #temp Time /= #1000 Constants
scoreboard players add #temp Time 100
$execute if entity @s[scores={ActionTime=11..132}] store result entity @e[nbt={UUID:$(rod)},limit=1] transformation.scale[1] float 0.01 run scoreboard players get #temp Time
scoreboard players reset #temp Time

execute store result score @s PositionY run data get entity @s Pos[1] 10
scoreboard players add @s[type=minecraft:armor_stand] PositionY 15