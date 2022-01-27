scoreboard players operation #temp Room = @s Room
scoreboard players operation #temp ID = @s ID
execute if entity @s[scores={MirrorX=-2147483648..}] run scoreboard players operation #temp MirrorX = @s MirrorX
execute if entity @s[scores={MirrorZ=-2147483648..}] run scoreboard players operation #temp MirrorZ = @s MirrorZ
tag @s add me
tag @s remove vacuuming
summon minecraft:marker ~ ~ ~ {Tags:["interact","poltergust"]}
execute unless entity @s[level=1..] unless entity @s[nbt={SelectedItem:{tag:{luigis_mansion:{id:"luigis_mansion:poltergust_3000",element:{type:0b}}}}}] run function luigis_mansion:items/poltergust_3000/no_element
experience set @s[level=1..,nbt={SelectedItem:{tag:{luigis_mansion:{id:"luigis_mansion:poltergust_3000",element:{type:0b}}}}}] 0 levels
tag @s[nbt={SelectedItem:{tag:{luigis_mansion:{id:"luigis_mansion:poltergust_3000",element:{type:1b}}}}}] add fire
tag @s[nbt={SelectedItem:{tag:{luigis_mansion:{id:"luigis_mansion:poltergust_3000",element:{type:2b}}}}}] add water
tag @s[nbt={SelectedItem:{tag:{luigis_mansion:{id:"luigis_mansion:poltergust_3000",element:{type:3b}}}}}] add ice
execute if entity @s[tag=!fire,tag=!water,tag=!ice] run tag @e[tag=interact,limit=1] add dust
execute if entity @s[tag=fire] run tag @e[type=minecraft:marker,tag=interact,limit=1] add fire
execute if entity @s[tag=water] run tag @e[type=minecraft:marker,tag=interact,limit=1] add water
execute if entity @s[tag=ice] run tag @e[type=minecraft:marker,tag=interact,limit=1] add ice
execute if entity @s[tag=!fire,tag=!water,tag=!ice] run function luigis_mansion:items/poltergust_3000/expel_dust
execute if entity @s[tag=fire] unless entity @s[scores={SneakTime=1..20}] run function luigis_mansion:items/poltergust_3000/expel_fire
execute if entity @s[tag=water] unless entity @s[scores={SneakTime=1..20}] run function luigis_mansion:items/poltergust_3000/expel_water
execute if entity @s[tag=ice] unless entity @s[scores={SneakTime=1..20}] run function luigis_mansion:items/poltergust_3000/expel_ice
execute if entity @s[tag=fire,scores={SneakTime=1}] run function luigis_mansion:items/poltergust_3000/shoot_fire
execute if entity @s[tag=water,scores={SneakTime=1}] run function luigis_mansion:items/poltergust_3000/shoot_water
execute if entity @s[tag=ice,scores={SneakTime=1}] run function luigis_mansion:items/poltergust_3000/shoot_ice
execute as @e[tag=captured,tag=element_death] at @s run function luigis_mansion:items/poltergust_3000/vaporize
execute unless entity @s[scores={SneakTime=1..20}] unless entity @s[nbt={SelectedItem:{tag:{luigis_mansion:{id:"luigis_mansion:poltergust_3000",element:{type:0b}}}}}] run function luigis_mansion:items/poltergust_3000/reduce_element
execute if entity @s[scores={SneakTime=1}] unless entity @s[nbt={SelectedItem:{tag:{luigis_mansion:{id:"luigis_mansion:poltergust_3000",element:{type:0b}}}}}] run function luigis_mansion:items/poltergust_3000/reduce_element_shoot
tag @s[tag=!fire,tag=!water,tag=!ice] add expelling_dust
tag @s[tag=fire] add expelling_fire
tag @s[tag=water] add expelling_water
tag @s[tag=ice] add expelling_ice
tag @s remove fire
tag @s remove water
tag @s remove ice
kill @e[type=minecraft:marker,tag=interact,limit=1]
scoreboard players reset #temp MirrorX
scoreboard players reset #temp MirrorZ
scoreboard players reset #temp Room
scoreboard players reset #temp ID
tag @s remove me