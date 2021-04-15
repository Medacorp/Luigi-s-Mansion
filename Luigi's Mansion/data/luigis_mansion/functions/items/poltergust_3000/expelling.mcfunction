scoreboard players operation #temp Room = @s Room
scoreboard players operation #temp ID = @s ID
tag @s add me
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["interact","poltergust"]}
execute unless entity @s[scores={Element=1..}] unless entity @s[nbt={SelectedItem:{tag:{luigis_mansion:{id:"luigis_mansion:poltergust_3000",element:{type:0b}}}}}] run function luigis_mansion:items/poltergust_3000/no_element
scoreboard players reset @s[scores={Element=1..},nbt={SelectedItem:{tag:{luigis_mansion:{id:"luigis_mansion:poltergust_3000",element:{type:0b}}}}}] Element
tag @s[nbt={SelectedItem:{tag:{luigis_mansion:{id:"luigis_mansion:poltergust_3000",element:{type:1b}}}}}] add fire
tag @s[nbt={SelectedItem:{tag:{luigis_mansion:{id:"luigis_mansion:poltergust_3000",element:{type:2b}}}}}] add water
tag @s[nbt={SelectedItem:{tag:{luigis_mansion:{id:"luigis_mansion:poltergust_3000",element:{type:3b}}}}}] add ice
execute unless entity @s[scores={SneakTime=1..20}] unless entity @s[nbt={SelectedItem:{tag:{luigis_mansion:{id:"luigis_mansion:poltergust_3000",element:{type:0b}}}}}] run function luigis_mansion:items/poltergust_3000/reduce_element
execute if entity @s[scores={Sneaking=1},tag=!was_sneaking] unless entity @s[nbt={SelectedItem:{tag:{luigis_mansion:{id:"luigis_mansion:poltergust_3000",element:{type:0b}}}}}] run function luigis_mansion:items/poltergust_3000/reduce_element_shoot
execute if entity @s[tag=!fire,tag=!water,tag=!ice] run tag @e[tag=interact,limit=1] add dust
execute if entity @s[tag=fire] run tag @e[tag=interact,limit=1] add fire
execute if entity @s[tag=water] run tag @e[tag=interact,limit=1] add water
execute if entity @s[tag=ice] run tag @e[tag=interact,limit=1] add ice
execute if entity @s[tag=!fire,tag=!water,tag=!ice] run function luigis_mansion:items/poltergust_3000/expel_dust
execute if entity @s[tag=fire] unless entity @s[scores={SneakTime=1..20}] run function luigis_mansion:items/poltergust_3000/expel_fire
execute if entity @s[tag=water] unless entity @s[scores={SneakTime=1..20}] run function luigis_mansion:items/poltergust_3000/expel_water
execute if entity @s[tag=ice] unless entity @s[scores={SneakTime=1..20}] run function luigis_mansion:items/poltergust_3000/expel_ice
execute if entity @s[tag=fire,scores={SneakTime=1}] run function luigis_mansion:items/poltergust_3000/shoot_fire
execute if entity @s[tag=water,scores={SneakTime=1}] run function luigis_mansion:items/poltergust_3000/shoot_water
execute if entity @s[tag=ice,scores={SneakTime=1}] run function luigis_mansion:items/poltergust_3000/shoot_ice
tag @s remove fire
tag @s remove water
tag @s remove ice
kill @e[tag=interact,limit=1,tag=!shot_fire,tag=!shot_water,tag=!shot_ice]
scoreboard players reset #temp Room
scoreboard players reset #temp ID
tag @s remove me