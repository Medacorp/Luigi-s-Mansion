scoreboard players add @s ActionTime 1
scoreboard players add @s[scores={ActionTime=2..3}] AnimationRotationZ 40
scoreboard players remove @s[scores={ActionTime=4..7}] AnimationRotationZ 40
scoreboard players add @s[scores={ActionTime=8..11}] AnimationRotationZ 40
scoreboard players remove @s[scores={ActionTime=12..15}] AnimationRotationZ 40
scoreboard players add @s[scores={ActionTime=16..17}] AnimationRotationZ 40
execute if entity @s[scores={ActionTime=2}] run playsound luigis_mansion:furniture.projector block @a[tag=same_room] ~ ~1.4 ~
execute if entity @s[scores={ActionTime=6}] run playsound luigis_mansion:furniture.projector block @a[tag=same_room] ~ ~1.4 ~
execute if entity @s[scores={ActionTime=10}] run playsound luigis_mansion:furniture.projector block @a[tag=same_room] ~ ~1.4 ~
execute if entity @s[scores={ActionTime=14}] run playsound luigis_mansion:furniture.projector block @a[tag=same_room] ~ ~1.4 ~
data modify entity @s[scores={ActionTime=2}] item merge from entity @s item.components."minecraft:custom_data".model_data.open
scoreboard players set @s[scores={ActionTime=17}] ActionTime 1

function luigis_mansion:room/dark_room
scoreboard players set @s[tag=!dark_room] ActionTime 0
scoreboard players operation @s[tag=!dark_room] AnimationRotationZ = @s FurniturePoseZ
tag @s[tag=!dark_room] remove lit
data modify entity @s[tag=!dark_room] item merge from entity @s item.components."minecraft:custom_data".model_data.default
tag @s[tag=!dark_room] remove open
tag @s remove dark_room
