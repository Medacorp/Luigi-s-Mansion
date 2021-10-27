scoreboard players set #freeze_timer Selected 1
execute store result score #temp Boos run data get storage luigis_mansion:data current_state.current_data.boo_counter
execute unless entity @s[scores={Variant=-10..}] if score #temp Boos matches 1 run scoreboard players set @s Variant -1
execute if score #temp Boos matches 5 run scoreboard players set @s[scores={GBHDialog=10096}] Variant -2
execute unless entity @s[scores={Variant=-10..}] if score #temp Boos matches 16 run scoreboard players set @s Variant -3
execute unless entity @s[scores={Variant=-10..}] if score #temp Boos matches 17 run scoreboard players set @s Variant -5
execute unless entity @s[scores={Variant=-10..}] if score #temp Boos matches 18 run scoreboard players set @s Variant -3
execute unless entity @s[scores={Variant=-10..}] if score #temp Boos matches 19 run scoreboard players set @s Variant -3
execute unless entity @s[scores={Variant=-10..}] if score #temp Boos matches 21 run scoreboard players set @s Variant -6
execute unless entity @s[scores={Variant=-10..}] if score #temp Boos matches 22 run scoreboard players set @s Variant -4
execute unless entity @s[scores={Variant=-10..}] if score #temp Boos matches 38 run scoreboard players set @s Variant -4
execute unless entity @s[scores={Variant=-10..}] if score #temp Boos matches 41 run scoreboard players set @s Variant -6
scoreboard players reset #temp Boos
execute unless entity @s[scores={Variant=-10..}] run summon minecraft:marker ~ ~ ~ {Tags:["choice","1"]}
execute unless entity @s[scores={Variant=-10..}] run summon minecraft:marker ~ ~ ~ {Tags:["choice","2"]}
execute unless entity @s[scores={Variant=-10..}] run summon minecraft:marker ~ ~ ~ {Tags:["choice","3"]}
execute unless entity @s[scores={Variant=-10..}] run summon minecraft:marker ~ ~ ~ {Tags:["choice","4"]}
execute unless entity @s[scores={Variant=-10..}] run summon minecraft:marker ~ ~ ~ {Tags:["choice","5"]}
execute unless entity @s[scores={Variant=-10..}] run summon minecraft:marker ~ ~ ~ {Tags:["choice","6"]}
execute unless entity @s[scores={Variant=-10..}] run summon minecraft:marker ~ ~ ~ {Tags:["choice","7"]}
execute unless entity @s[scores={Variant=-10..}] run summon minecraft:marker ~ ~ ~ {Tags:["choice","8"]}
execute unless entity @s[scores={Variant=-10..}] run summon minecraft:marker ~ ~ ~ {Tags:["choice","9"]}
execute unless entity @s[scores={Variant=-10..}] run summon minecraft:marker ~ ~ ~ {Tags:["choice","10"]}
execute unless entity @s[scores={Variant=-10..}] run summon minecraft:marker ~ ~ ~ {Tags:["choice","11"]}
execute unless entity @s[scores={Variant=-10..}] run summon minecraft:marker ~ ~ ~ {Tags:["choice","12"]}
execute unless entity @s[scores={Variant=-10..}] run summon minecraft:marker ~ ~ ~ {Tags:["choice","13"]}
execute unless entity @s[scores={Variant=-10..}] run summon minecraft:marker ~ ~ ~ {Tags:["choice","14"]}
execute unless entity @s[scores={Variant=-10..}] run summon minecraft:marker ~ ~ ~ {Tags:["choice","15"]}
execute unless entity @s[scores={Variant=-10..}] run summon minecraft:marker ~ ~ ~ {Tags:["choice","16"]}
execute unless entity @s[scores={Variant=-10..}] run tag @e[type=minecraft:marker,tag=choice,limit=1,sort=random] add selected
execute unless entity @s[scores={Variant=-10..}] if entity @e[type=minecraft:marker,tag=choice,tag=selected,tag=1,limit=1] run scoreboard players set @s Variant 1
execute unless entity @s[scores={Variant=-10..}] if entity @e[type=minecraft:marker,tag=choice,tag=selected,tag=2,limit=1] run scoreboard players set @s Variant 2
execute unless entity @s[scores={Variant=-10..}] if entity @e[type=minecraft:marker,tag=choice,tag=selected,tag=3,limit=1] run scoreboard players set @s Variant 3
execute unless entity @s[scores={Variant=-10..}] if entity @e[type=minecraft:marker,tag=choice,tag=selected,tag=4,limit=1] run scoreboard players set @s Variant 4
execute unless entity @s[scores={Variant=-10..}] if entity @e[type=minecraft:marker,tag=choice,tag=selected,tag=5,limit=1] run scoreboard players set @s Variant 5
execute unless entity @s[scores={Variant=-10..}] if entity @e[type=minecraft:marker,tag=choice,tag=selected,tag=6,limit=1] run scoreboard players set @s Variant 6
execute unless entity @s[scores={Variant=-10..}] if entity @e[type=minecraft:marker,tag=choice,tag=selected,tag=7,limit=1] run scoreboard players set @s Variant 7
execute unless entity @s[scores={Variant=-10..}] if entity @e[type=minecraft:marker,tag=choice,tag=selected,tag=8,limit=1] run scoreboard players set @s Variant 8
execute unless entity @s[scores={Variant=-10..}] if entity @e[type=minecraft:marker,tag=choice,tag=selected,tag=9,limit=1] run scoreboard players set @s Variant 9
execute unless entity @s[scores={Variant=-10..}] if entity @e[type=minecraft:marker,tag=choice,tag=selected,tag=10,limit=1] run scoreboard players set @s Variant 10
execute unless entity @s[scores={Variant=-10..}] if entity @e[type=minecraft:marker,tag=choice,tag=selected,tag=11,limit=1] run scoreboard players set @s Variant 11
execute unless entity @s[scores={Variant=-10..}] if entity @e[type=minecraft:marker,tag=choice,tag=selected,tag=12,limit=1] run scoreboard players set @s Variant 12
execute unless entity @s[scores={Variant=-10..}] if entity @e[type=minecraft:marker,tag=choice,tag=selected,tag=13,limit=1] run scoreboard players set @s Variant 13
execute unless entity @s[scores={Variant=-10..}] if entity @e[type=minecraft:marker,tag=choice,tag=selected,tag=14,limit=1] run scoreboard players set @s Variant 14
execute unless entity @s[scores={Variant=-10..}] if entity @e[type=minecraft:marker,tag=choice,tag=selected,tag=15,limit=1] run scoreboard players set @s Variant 15
execute unless entity @s[scores={Variant=-10..}] if entity @e[type=minecraft:marker,tag=choice,tag=selected,tag=16,limit=1] run scoreboard players set @s Variant 16
kill @e[type=minecraft:marker,tag=choice]

execute if entity @a[scores={EGaddCallChoice=1..},limit=1] run scoreboard players add @s[scores={GBHDialog=10097..}] GBHDialog 1
scoreboard players add @s[scores={GBHDialog=..10096}] GBHDialog 1
execute unless entity @s[scores={GBHDialog=1..}] run scoreboard players add @s GBHDialog 1
execute if entity @s[scores={GBHDialog=1..}] as @a unless entity @s[scores={MusicGroup=0,MusicType=19}] run function luigis_mansion:other/music/set/gameboy_horror
execute if entity @s[scores={GBHDialog=1,Variant=1}] if score #players Totals matches 1 run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.caught_boo.1"}]}
execute if entity @s[scores={GBHDialog=1,Variant=1}] if score #players Totals matches 2.. run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.caught_boo.1.more"}]}
scoreboard players set @s[scores={GBHDialog=72,Variant=1}] GBHDialog 10000
execute if entity @s[scores={GBHDialog=1,Variant=2}] if score #players Totals matches 1 run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.caught_boo.2"}]}
execute if entity @s[scores={GBHDialog=1,Variant=2}] if score #players Totals matches 2.. run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.caught_boo.2.more"}]}
scoreboard players set @s[scores={GBHDialog=88,Variant=2}] GBHDialog 10000
execute if entity @s[scores={GBHDialog=1,Variant=3}] if score #players Totals matches 1 run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.caught_boo.3","with":[{"selector":"@p[gamemode=!spectator]"}]}]}
execute if entity @s[scores={GBHDialog=1,Variant=3}] if score #players Totals matches 2.. run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.caught_boo.3.more"}]}
scoreboard players set @s[scores={GBHDialog=144,Variant=3}] GBHDialog 10000
execute if entity @s[scores={GBHDialog=1,Variant=4}] if score #players Totals matches 1 run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.caught_boo.4"}]}
execute if entity @s[scores={GBHDialog=1,Variant=4}] if score #players Totals matches 2.. run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.caught_boo.4.more"}]}
scoreboard players set @s[scores={GBHDialog=88,Variant=4}] GBHDialog 10000
execute if entity @s[scores={GBHDialog=1,Variant=5}] if score #players Totals matches 1 run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.caught_boo.5","with":[{"selector":"@p[gamemode=!spectator]"}]}]}
execute if entity @s[scores={GBHDialog=1,Variant=5}] if score #players Totals matches 2.. run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.caught_boo.5.more"}]}
scoreboard players set @s[scores={GBHDialog=104,Variant=5}] GBHDialog 10000
execute if entity @s[scores={GBHDialog=1,Variant=6}] if score #players Totals matches 1 run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.caught_boo.6","with":[{"selector":"@p[gamemode=!spectator]"}]}]}
execute if entity @s[scores={GBHDialog=1,Variant=6}] if score #players Totals matches 2.. run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.caught_boo.6.more"}]}
scoreboard players set @s[scores={GBHDialog=72,Variant=6}] GBHDialog 10000
execute if entity @s[scores={GBHDialog=1,Variant=7}] if score #players Totals matches 1 run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.caught_boo.7","with":[{"selector":"@p[gamemode=!spectator]"}]}]}
execute if entity @s[scores={GBHDialog=1,Variant=7}] if score #players Totals matches 2.. run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.caught_boo.7.more"}]}
scoreboard players set @s[scores={GBHDialog=72,Variant=7}] GBHDialog 10000
execute if entity @s[scores={GBHDialog=1,Variant=8}] if score #players Totals matches 1 run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.caught_boo.8","with":[{"selector":"@p[gamemode=!spectator]"}]}]}
execute if entity @s[scores={GBHDialog=1,Variant=8}] if score #players Totals matches 2.. run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.caught_boo.8.more"}]}
scoreboard players set @s[scores={GBHDialog=64,Variant=8}] GBHDialog 10000
execute if entity @s[scores={GBHDialog=1,Variant=9}] if score #players Totals matches 1 run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.caught_boo.9","with":[{"selector":"@p[gamemode=!spectator]"}]}]}
execute if entity @s[scores={GBHDialog=1,Variant=9}] if score #players Totals matches 2.. run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.caught_boo.9.more"}]}
scoreboard players set @s[scores={GBHDialog=96,Variant=9}] GBHDialog 10000
execute if entity @s[scores={GBHDialog=1,Variant=10}] if score #players Totals matches 1 run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.caught_boo.10","with":[{"selector":"@p[gamemode=!spectator]"}]}]}
execute if entity @s[scores={GBHDialog=1,Variant=10}] if score #players Totals matches 2.. run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.caught_boo.10.more"}]}
scoreboard players set @s[scores={GBHDialog=56,Variant=10}] GBHDialog 10000
execute if entity @s[scores={GBHDialog=1,Variant=11}] if score #players Totals matches 1 run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.caught_boo.11","with":[{"selector":"@p[gamemode=!spectator]"}]}]}
execute if entity @s[scores={GBHDialog=1,Variant=11}] if score #players Totals matches 2.. run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.caught_boo.11.more"}]}
scoreboard players set @s[scores={GBHDialog=56,Variant=11}] GBHDialog 10000
execute if entity @s[scores={GBHDialog=1,Variant=12}] if score #players Totals matches 1 run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.caught_boo.12"}]}
execute if entity @s[scores={GBHDialog=1,Variant=12}] if score #players Totals matches 2.. run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.caught_boo.12.more"}]}
scoreboard players set @s[scores={GBHDialog=80,Variant=12}] GBHDialog 10000
execute if entity @s[scores={GBHDialog=1,Variant=13}] if score #players Totals matches 1 run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.caught_boo.13"}]}
execute if entity @s[scores={GBHDialog=1,Variant=13}] if score #players Totals matches 2.. run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.caught_boo.13.more"}]}
scoreboard players set @s[scores={GBHDialog=56,Variant=13}] GBHDialog 10000
execute if entity @s[scores={GBHDialog=1,Variant=14}] if score #players Totals matches 1 run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.caught_boo.14","with":[{"selector":"@p[gamemode=!spectator]"}]}]}
execute if entity @s[scores={GBHDialog=1,Variant=14}] if score #players Totals matches 2.. run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.caught_boo.14.more"}]}
scoreboard players set @s[scores={GBHDialog=88,Variant=14}] GBHDialog 10000
execute if entity @s[scores={GBHDialog=1,Variant=15}] if score #players Totals matches 1 run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.caught_boo.15","with":[{"selector":"@p[gamemode=!spectator]"}]}]}
execute if entity @s[scores={GBHDialog=1,Variant=15}] if score #players Totals matches 2.. run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.caught_boo.15.more"}]}
scoreboard players set @s[scores={GBHDialog=80,Variant=15}] GBHDialog 10000
execute if entity @s[scores={GBHDialog=1,Variant=16}] if score #players Totals matches 1 run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.caught_boo.16","with":[{"selector":"@p[gamemode=!spectator]"}]}]}
execute if entity @s[scores={GBHDialog=1,Variant=16}] if score #players Totals matches 2.. run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.caught_boo.16.more"}]}
scoreboard players set @s[scores={GBHDialog=64,Variant=16}] GBHDialog 10000
execute if entity @s[scores={GBHDialog=1,Variant=..-3}] if score #players Totals matches 1 run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.caught_boo.extra"}]}
execute if entity @s[scores={GBHDialog=1,Variant=..-3}] if score #players Totals matches 2.. run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.caught_boo.extra.more"}]}
execute if entity @s[scores={GBHDialog=112,Variant=-3}] if score #players Totals matches 1 run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.caught_boo.extra.1"}]}
execute if entity @s[scores={GBHDialog=112,Variant=-3}] if score #players Totals matches 2.. run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.caught_boo.extra.1.more"}]}
scoreboard players set @s[scores={GBHDialog=320,Variant=-3}] GBHDialog 10000
execute if entity @s[scores={GBHDialog=112,Variant=-4}] if score #players Totals matches 1 run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.caught_boo.extra.2"}]}
execute if entity @s[scores={GBHDialog=112,Variant=-4}] if score #players Totals matches 2.. run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.caught_boo.extra.2.more"}]}
scoreboard players set @s[scores={GBHDialog=344,Variant=-4}] GBHDialog 10000
execute if entity @s[scores={GBHDialog=112,Variant=-5}] if score #players Totals matches 1 run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.caught_boo.extra.3"}]}
execute if entity @s[scores={GBHDialog=112,Variant=-5}] if score #players Totals matches 2.. run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.caught_boo.extra.3.more"}]}
scoreboard players set @s[scores={GBHDialog=624,Variant=-5}] GBHDialog 10000
execute if entity @s[scores={GBHDialog=112,Variant=-6}] if score #players Totals matches 1 run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.caught_boo.extra.4"}]}
execute if entity @s[scores={GBHDialog=112,Variant=-6}] if score #players Totals matches 2.. run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.caught_boo.extra.4.more"}]}
scoreboard players set @s[scores={GBHDialog=376,Variant=-6}] GBHDialog 10000
execute if entity @s[scores={GBHDialog=1,Variant=-1}] if score #players Totals matches 1 run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.caught_boo.first_boo.1"}]}
execute if entity @s[scores={GBHDialog=1,Variant=-1}] if score #players Totals matches 2.. run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.caught_boo.first_boo.1.more"}]}
execute if entity @s[scores={GBHDialog=96,Variant=-1}] run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.caught_boo.first_boo.2"}]}
execute if entity @s[scores={GBHDialog=328,Variant=-1}] if score #players Totals matches 1 run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.caught_boo.first_boo.3"}]}
execute if entity @s[scores={GBHDialog=328,Variant=-1}] if score #players Totals matches 2.. run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.caught_boo.first_boo.3.more"}]}
scoreboard players set @s[scores={GBHDialog=560,Variant=-1}] GBHDialog 10000
execute if entity @s[scores={GBHDialog=10098,Variant=-2}] if score #players Totals matches 1 run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.caught_boo.fifth_boo.1"}]}
execute if entity @s[scores={GBHDialog=10098,Variant=-2}] if score #players Totals matches 2.. run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.caught_boo.fifth_boo.1.more"}]}
execute if entity @s[scores={GBHDialog=10178,Variant=-2}] if score #players Totals matches 1 run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.caught_boo.fifth_boo.2"}]}
execute if entity @s[scores={GBHDialog=10178,Variant=-2}] if score #players Totals matches 2.. run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.caught_boo.fifth_boo.2.more"}]}
execute if entity @s[scores={GBHDialog=10378,Variant=-2}] if score #players Totals matches 1 run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.caught_boo.fifth_boo.3"}]}
execute if entity @s[scores={GBHDialog=10378,Variant=-2}] if score #players Totals matches 2.. run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.caught_boo.fifth_boo.3.more"}]}
scoreboard players set @s[scores={GBHDialog=10538,Variant=-2}] GBHDialog -1
execute if entity @s[scores={GBHDialog=10000}] if score #players Totals matches 1 run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.caught_boo.end.1"}]}
execute if entity @s[scores={GBHDialog=10000}] if score #players Totals matches 2.. run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.caught_boo.end.1.more"}]}
execute if entity @s[scores={GBHDialog=10096}] run tellraw @a {"translate":"luigis_mansion:message.save.yes","color":"green","clickEvent":{"action":"run_command","value":"/trigger EGaddCallChoice set 1"},"extra":[{"text":"\n"},{"translate":"luigis_mansion:message.save.no","clickEvent":{"action":"run_command","value":"/trigger EGaddCallChoice set 2"}}]}
execute if entity @s[scores={GBHDialog=10096}] run scoreboard players enable @a EGaddCallChoice
execute if entity @s[scores={GBHDialog=10098}] as @a[scores={EGaddCallChoice=1},limit=1] run function luigis_mansion:data/save
execute if entity @s[scores={GBHDialog=10098}] as @a run trigger EGaddCallChoice add 0
execute if entity @s[scores={GBHDialog=10098}] unless entity @s[scores={Variant=-2}] if score #players Totals matches 1 run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.caught_boo.end.2","with":[{"selector":"@p[gamemode=!spectator]"}]}]}
execute if entity @s[scores={GBHDialog=10098}] unless entity @s[scores={Variant=-2}] if score #players Totals matches 2.. run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.caught_boo.end.2.more"}]}
execute unless entity @s[scores={Variant=-2}] run scoreboard players set @s[scores={GBHDialog=10138}] GBHDialog -1
execute if entity @s[scores={GBHDialog=-1}] as @a run function luigis_mansion:other/music/set/silence
execute if entity @s[scores={GBHDialog=-1}] as @a run scoreboard players reset @a EGaddCallChoice
scoreboard players set @s[scores={GBHDialog=-1}] GBHCall 0
scoreboard players set @s[scores={GBHDialog=-1}] GBHWait 0
scoreboard players reset @s[scores={GBHDialog=-1}] Variant
scoreboard players reset @s[scores={GBHDialog=-1}] GBHDialog