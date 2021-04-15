setblock 27 0 0 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:stone_button",Count:1b,tag:{luigis_mansion:{id:"luigis_mansion:inventory",items:[]},Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}}]}
data modify block 27 0 0 Items[0].tag.luigis_mansion.items set from entity @s Inventory
clear @s
loot replace entity @s armor.head mine 27 0 0 minecraft:golden_pickaxe{phi:{drop_contents:true}}
setblock 27 0 0 minecraft:bedrock

item entity @s weapon.mainhand replace minecraft:carrot_on_a_stick{HideFlags:63,Unbreakable:1b,Damage:1,CustomModelData:1,display:{Name:'{"italic":false,"color":"white","translate":"luigis_mansion:item.flashlight"}'},luigis_mansion:{id:"luigis_mansion:flashlight"}}