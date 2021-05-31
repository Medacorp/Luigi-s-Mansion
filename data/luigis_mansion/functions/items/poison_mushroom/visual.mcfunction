effect give @s minecraft:invisibility 1000000 0 true
scoreboard players operation #temp ShrunkNr = @s ShrunkNr
execute if score @s ShrunkNr matches 1.. as @e[type=minecraft:armor_stand,tag=shrunk_player] if score @s ShrunkNr = #temp ShrunkNr run tag @s add shrunk_model
execute if score @s ShrunkNr matches 1.. unless entity @e[tag=shrunk_model,limit=1] run scoreboard players reset @s ShrunkNr
execute unless score @s ShrunkNr matches 1.. run summon minecraft:armor_stand ~ ~ ~ {CustomName:'{"translate":"entity.minecraft.player"}',Pose:{Head:[0.0f,0.0f,0.01f]},CustomNameVisible:1b,Tags:["shrunk_player","shrunk_model","new"],Small:1b,ShowArms:1b,NoBasePlate:1b}
execute unless score @s ShrunkNr matches 1.. run loot replace entity @e[tag=shrunk_model,tag=new,limit=1] armor.head 1 loot luigis_mansion:gameplay/get_player_name
execute unless score @s ShrunkNr matches 1.. in minecraft:overworld run setblock 27 0 0 minecraft:oak_sign{Text1:'{"italic":false,"color":"white","nbt":"ArmorItems[3].tag.SkullOwner.Name","entity":"@e[tag=shrunk_player,tag=new,limit=1]"}]}'}
execute unless score @s ShrunkNr matches 1.. in minecraft:overworld run data modify entity @e[tag=shrunk_model,tag=new,limit=1] CustomName set from block 27 0 0 Text1
execute unless score @s ShrunkNr matches 1.. in minecraft:overworld run setblock 27 0 0 minecraft:bedrock
execute unless score @s ShrunkNr matches 1.. run scoreboard players operation @e[tag=shrunk_model,tag=new,limit=1] ShrunkNr > @a[scores={ShrunkNr=1..}] ShrunkNr
execute unless score @s ShrunkNr matches 1.. run scoreboard players add @e[tag=shrunk_model,tag=new,limit=1] ShrunkNr 1 
execute unless score @s ShrunkNr matches 1.. run scoreboard players operation @s ShrunkNr = @e[tag=shrunk_model,tag=new,limit=1] ShrunkNr
tag @e[tag=shrunk_model,limit=1] remove new
tag @e[tag=shrunk_model,limit=1] add found_owner
tag @e[tag=shrunk_model,limit=1] add found_owner_2
teleport @e[tag=shrunk_model,limit=1] ~ ~ ~ ~ ~
data modify entity @e[tag=shrunk_model,limit=1] Pose.Head[0] set from entity @s Rotation[1]
tag @e[tag=shrunk_model,limit=1] remove shrunk_model
scoreboard players reset #temp ShrunkNr