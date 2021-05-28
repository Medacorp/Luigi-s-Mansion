summon minecraft:armor_stand ~ ~ ~ {CustomName:'{"translate":"entity.minecraft.player"}',ShowArms:1b,NoGravity:1b,CustomNameVisible:1b,Tags:["gameboy_horror_location","new"],Invisible:0b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b}],HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{HideFlags:63,Unbreakable:1b,Damage:1,CustomModelData:2,display:{Name:'{"italic":false,"color":"white","translate":"luigis_mansion:item.gameboy_horror"}'},luigis_mansion:{id:"luigis_mansion:gameboy_horror"}}},{}],DisabledSlots:2039583}
teleport @e[tag=gameboy_horror_location,tag=new,limit=1] ~ ~ ~ ~ ~
scoreboard players operation @e[tag=gameboy_horror_location,tag=new,limit=1] ID = @s ID
scoreboard players operation @e[tag=gameboy_horror_location,tag=new,limit=1] Room = @s Room
loot replace entity @e[tag=gameboy_horror_location,tag=new,limit=1] armor.head 1 loot luigis_mansion:gameplay/get_player_name
setblock 27 0 0 minecraft:oak_sign{Text1:'{"italic":false,"color":"white","nbt":"ArmorItems[3].tag.SkullOwner.Name","entity":"@e[tag=gameboy_horror_location,tag=new,limit=1]"}]}'}
data modify entity @e[tag=gameboy_horror_location,tag=new,limit=1] CustomName set from block 27 0 0 Text1
setblock 27 0 0 minecraft:bedrock
tag @e[tag=gameboy_horror_location,tag=new,limit=1] remove new