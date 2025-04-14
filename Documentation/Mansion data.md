Mansion data is a massive collection of info storing everything the map needs to know

```
{
    data_version:X, //Used by upgrade paths to convert old save-data to the newer format.
    data_index:X, //The mansion save data index. Mansions with the same index share data.
    mansion_id:{ //Used to run functions, unlike all other data, this is set every time a mansion is selected, and is as such not shared between save data index mansions.
        namespace:"luigis_mansion", //The mansion namespace.
        id:"normal" //The mansion ID.
    },
    can_clear_hidden:1b, //Used by the GCN hidden mansion. It is set to 0b the moment the data_index matched, but not the mansion_id.
    in_mansion_time:X, //How many ticks have been spent in this mansion.
    lowest_health_moment:X, //The lowest anyone's health has ever been in this mansion.
    lowest_difficulty:X, //The lowest difficulty that has ever been selected in this mansion; used for score multiplier.
    boo_counter:X, //How many Boos are caught, to show on the boo counter and used to determine what caught Boo call variant you get.
    drop_item_on_damage:{ //The item type dropped on damage, and the item type looked at by the heart_money_count global variable.
        namespace:"luigis_mansion", //The item namespace.
        id:"null" //The item ID.
    },
	no_collect_animation: [], //Item IDs which do not result in the collect item animation and dialog; they're not frozen during the dialog (unless 3DS Remake add-on is installed)
    blackout:0b, //Whether the mansion is currently in the blackout.
    dead_players:[], //Player UUIDs that have died.
    ghosts_caught:[], //The mansion-local ghosts caught by player list, see save data documentation for more info, has additional uuid field to identify the player. Does not include boos object.
    money_grabbed:[], //The mansion-local money grabbed by player list, see save data documentation for more info, has additional uuid field to identify the player.
    technical_data:{}, //Flags set by the mansion to remember if certain events happened or not, where absent = not.
    used_keys:[], //List of door names of keys that have been used.
    obtained_keys:[], //List of door names of keys that have been collected.
    obtained_items:{}, //Flags of specific items that have been collected, where absent = not. (Mario items, boo radar, element medals)
    money_spawned:[], //List of loot names of loot that has been spawned before. Also contains entries for room clear chests opened, and "_money" entries for collecting any eternal coin in a room.
    rooms:{ //Room data.
        <name>:{ //A room.
            seen:0b, //Whether the room has been entered before. Used by the map to mark rooms light gray or hallways lime.
            cleared:0b //Whether the room is cleared. Turns on lamps (if blackout is 0b) and colors the room on the map.
        }
    },
    portrait_ghosts:{ //Portrait ghost data.
        <name>:{ //A portrait ghost.
            portrificationized:0b, //BASE; When health is 0, and this is 0b, the ghost can be portrificationized and turned into a painting. It is then set to 1b.
            rank:-1b, //BASE; The rank you're obtained. Default = -1b, which is undefined (treated as bronze), 0b is bronze, 1b is silver, 2b and above is gold. 3b and above is platinum if 3DS Remake add-on is installed.
            top_vacuum_damage:0, //The highest amount of damage dealt in 1 suction.
            max_health:X, //The max health. Together with health, used to determine the pearl sizes to drop.
            //See also HP-having ghost data below
        },
        floating_whirlindas:{ //Save format for the floating whirlindas.
            male:{ //Mr. Whirlinda's values.
                //Non-base portrait ghost data.
            },
            female:{ //Miss. Whirlinda's values.
                //Non-base portrait ghost data.
            },
            //BASE portrait ghost data.
        },
        henry_and_orville:{ //Save format for henry and orville.
            henry:{ //Henry's values.
                //Non-base portrait ghost data.
            },
            orville:{ //Orville's values.
                //Non-base portrait ghost data.
            },
            //BASE portrait ghost data.
        },
        clockwork_soldiers:{ //Save format for clockwork soldiers.
            blue:{ //Blue soldier's values.
                //Non-base portrait ghost data.
            },
            pink:{ //Pink soldier's values.
                //Non-base portrait ghost data.
            },
            green:{ //Green soldier's values.
                //Non-base portrait ghost data.
            },
            //BASE portrait ghost data.
        },
        boolossus:{ //Save format for Boolossus.
            speed:70, //The sum of all split Boos' speed. The more Boos, the slower. The value represents the speed a single split boo would have if Boolossus popped with a current health of 1.
            merged_speed:30, //The speed the merged Boolossus form has.
            max_health:X, //The max health.
            //BASE portrait ghost data.
            //See also HP-having ghost data below, except pull, flee_speed and flee_task.
        },
        king_boo:{ //Save format for King Boo.
            max_health:X, //The max health.
            //BASE portrait ghost data.
            //See also HP-having ghost data below, except pull, flee_speed and flee_task.
        }
    },
    boos:[
        {
            name:{ //The boo ID.
                namespace:"luigis_mansion", //The namespace of the boo.
                id:"boo_b_hatch" //The ID of the boo.
            },
            room:X, //The room number this Boo is in.
            trap_found:0b, //Whether or not the trap from this Boo has been found before.
            message:1, //Which message this boo shows upon spawning next time.
            can_attack:1b, //Whether or not this boo can use the dash attack. Dash attack always gets enabled in a room from which a boo cannot warp away.
            //See also HP-having ghost data below, all fields except pull, flee_speed, flee_task and vanish_time.
        }
    ],
    ghosts:{ //Normal ghost variables.
        <HP-having ghost>:{ //A ghost with HP (for example a gold ghost).
            pull: { //Pulling information.
                strength:X, //Percentage of chance the ghost will pull the player, even if it is pulled.
                angle:X //Angle in degrees where the player can move to damage the ghost, where 0 is directly opposite of the ghost. Widend and decreased based on difficulty; the value provided is for normal difficulty. Capped at 180. 
            },
            health:X, //Health at spawn.
            loot:{ //Loot this ghost drops upon defeat.
                drop_at_0:{ //Spawns the provided loot contents the moment health drops to 0, the other loot contents spawn the moment the ghost is captured. Mansions can modify this loot with their "loot_chances_ghost" function.
                    //See loot documentation for other variables.
                },
                //See loot documentation for other variables.
            },
            speed:X, //The movement speed of the ghost. Default = 0.
            flee_speed:X, //The movement speed of the ghost while fleeing from the Poltergust. Default = 0.
            flee_task:"circle", //The flee task of the ghost while fleeing from the Poltergust. Allowed values are "random", "alternate", "circle", "random_in_range", "loops" and "straight_line". Default = "straight_line".
            vanish_time:X, //How many ticks the ghost can stay in the world, haunting, but not attacking, laughing, complaining, being collided with, etc. before it vanishes. -1 means never. Default = -1.
            damage:{ //Damage values the ghost uses in its functions.
                <type>:X //The amount of damage dealt. Type is usually collision and attack (also used by created projectiles), but can be other values. Default = 0.
            }
        },
        <no-HP-having ghost>:{ //A ghost without HP (for example a bat).
            loot:{ //Loot this ghost drops upon capture.
                //See loot documentation for other variables.
            },
            speed:X, //The movement speed of the ghost.
            damage:{ //Damage values the ghost uses in its functions.
                <type>:X //The amount of damage dealt. Type is usually attack or collision, but can be other values. Default = 0.
            }
        }
        black_bogmire:{ //Values used by black bogmires.
            small_loot:{ //Loot small ones drops upon defeat.
                //See loot documentation for other variables.
            },
            big_loot:{ //Loot big ones drops upon defeat.
                //See loot documentation for other variables.
            },
            small_speed:X, //The movement speed of the small ones.
            big_speed:X, //The movement speed of the big ones.
            small_damage:{ //Damage values the small ones use in its functions.
                collision:X //The amount of damage dealt. Default = 0.
            },
            big_damage:{ //Damage values the big ones use in its functions.
                collision:X //The amount of damage dealt. Default = 0.
            }
        }
    }
}
```

3DS Remake exclusive data:
```
{
    can_unlock_s_rank:Xb, //Whether or not the S Rank can be achieved from this mansion. Default = 0b.
    tracking_boos:[ //A list of at most 3 Boo IDs to show on the map. Added when spawned, removed when captured.
        { //A tracked boo.
            namespace:"luigis_mansion", //The namespace of the boo.
            id:"boo_b_hatch" //The ID of the boo.
        }
    ],
    gooigi_stats:{ //Gooigi's money and ghost count.
        ghosts:X, //How many ghosts Gooigi has defeated.
        money:X //How many Gs worth of money Gooigi has collected, excluding the last 3 0s.
    },
    portrait_battle:{ //What portrait battle is currently active.
        namespace:"luigis_mansion", //The namespace of the portrait ghost.
        id:"neville", //The id of the portrait ghost.
        mode:'JSON', //String to use for the "mode" line after the battle.
        position:{ //Position to return to when the battle ends.
            dimension:"minecraft:overworld", //The dimension.
            x:X, //The integer X coordinate.
            y:X, //The integer Y coordinate.
            z:X //The integer Z coordinate.
            x_rotation:X //The X rotation.
            y_rotation:X //The Y rotation.
        },
        portraits: { //Portrait item data of the selected portrait. Used to show unlocked frames.
            ...
        }
    }
}
```

E3 Demo exclusive data:
```
{
    rooms:{ //Room data.
        <name>:{ //A room.
            time_spend_in:X //A local timer like in_mansion_time, specific to this room. Used to determine how many coins you get from the room clear chest.
        }
    }
}
```