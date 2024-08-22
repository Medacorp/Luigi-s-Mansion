Entity spawning takes certain variables, they are listed and categorized below. The variables are saved in the storage "luigis_mansion:data entity" object and overwrite the values provided by mansion data.

Sawning a key additionally requires a macro string called "door", which matches the door the key belongs to.

```
entity:{
    //Interaction
    scan_message:{ //The message spoken when scanning this entity.
        message:..., //See furniture variable scan_message; "spawn_ghost" not accepted.
        sender:"scanner", //Optional, who speaks when scanning this entity. If set to "scanner", and the scan is from Gooigi, sends the usual "......" message instead. Default = "me"; only used if message is 'JSON'.
        plural_message:'JSON' //Optional, the message used when more than 1 player is present; only used if sender is set to "me" and message is 'JSON'.
    }, 
    can_talk_to:1b, //Whether this entity can be talked to. Default = 1b for Toad and E. Gadd, and 0b for everything else.
    
    //General
    rotation:[0.0f,0.0f], //Sets the direction this entity will face.
    spawn_time:X, //How much to skip in the vanish timer. Does not affect entities that cannot vanish.
    room:X, //Room number that this entity is in. Default = room number of whoever is @s on function call, if absent = 0.
    animation:{ //Animation info.
        namespace:"luigis_mansion", //The namespace of the animation to use. Default = luigis_mansion.
        id:"idle", //The namespace of the animation to use. Default = idle.
        progress:X, //The progress the animation already has on the first tick. Default = 0.
        frozen:1b //Whether or not the animation is frozen. Default = 0b.
    },
    no_ai:1b, //Whether this entity's AI is disabled. Default = 0b.
    
    //Ghosts
    spawn:1b, //How this ghost spawns: 0b = 3 second wait before it can spawn, 1b = forced initial spawn, 2b = initially can spawn immediately if under the correct conditions. 3b = initially hiding in furniture, not spawned by player facing. 4b = forced spawn only (initially and subquentially), only a direct spawn tag will spawn this ghost. Default = 0b.
    disappear_on_vanish:1b, //Whether this ghost disappears when it vanishes. Default = 1b for speedy spirits and 0b for everything else.
    appear_type:"<type>", //Ghost appear type to use, differs per ghost, see IDs in use for valid values.
    attack_type:"<type>", //Ghost attack type to use, differs per ghost, see IDs in use for valid values.
    second_flee_damage:X, //How much damage this ghost can take in one suction before it enters its second flee state, escaping 2.5 seconds later. If absent, never enters second flee state.
    room_search:{ //What types of entities this portrait ghost should look for when tagging for same room; the less enabled, the more optimized. Model pieces and reflections are never tagged, and players are always tagged.
        furniture:1b, //Whether entities furniture get tagged. Default = 0b.
        non_players:1b //Whether entities entity types other than listed above get tagged. Default = 0b.
    },
    affected_by:["<method>"], //The methods this portrait ghost is affected by aside from vacuuming. Allowed values: dust, fire, water, ice. Default = none.
    drop_pearls:0b, //Whether this portrait ghost should drop pearls. Default = 1b.
    drop_timer_loot:0b, //Whether this portrait ghost should drop loot based on how long it is being vacuumed. Default = 1b.
    training_room_score:X, //Score granted to the one who reeled in the ghost in the training room. Default = 0.
    
    //Ghost default overwrites
    health:X, //Health at spawn. Only applies to ghost types that have health.
    loot:{ //Loot this ghost drops upon defeat.
        drop_at_0:{ //Spawns the provided loot contents the moment health drops to 0, the other loot contents spawn the moment the ghost is captured. Mansions can modify this loot with their "loot_chances_ghost" function. Only applies to ghost types that have health.
            //See loot documentation for other variables.
        },
        //See loot documentation for other variables.
    },
    speed:X, //The movement speed of the ghost.
    flee_speed:X, //The movement speed of the ghost while fleeing from the Poltergust.
    vanish_time:X, //How many ticks the ghost can stay in the world, haunting, but not attacking, laughing, complaining, being collided with, etc. before it vanishes. -1 means never.
    damage:{ //Damage values the ghost uses in its functions.
        <type>:X, //The amount of damage dealt. Type is usually collision and attack (also used by created projectiles), but can be other values.
        breathe_fire:X, //Bowser's breathe fire attack and resulting burning floors.
        vacuum:X, //Bowser's vacuum attack.
        tail:X, //Bowser's tail attack.
        spike_ball:X, //Bowser's spike balls' explosion and resulting burning floor.
        spit_ice:X //Bowser's spit ice attack (when decapitated).
    },
    
    //Boos
    boo:{ //The boo ID to get data for.
        namespace:"luigis_mansion", //The namespace of the boo. Default = "luigis_mansion".
        id:"boo_b_hatch" //The ID of the boo. Default = "null".
    },
    name:'JSON', //Name of this boo. Default = '{"type":"translatable","translate":"luigis_mansion:entity.boo"}'.
    say_message:1b, //Whether or not this boo says one of its messages after its appear animation. Default = 0b.
    can_attack:1b, //Whether or not this boo can attack. Default = 0b.
    show_health:1b, //Whether or not this boo shows health and is affected by the poltergust. Also applies to King Boo. Default = 1b.
    
    //Items
    variant:1b, //Sets the item variant to spawn, bill: (0b is green, 1b is gold. Default = random).
    silent:1b, //When set, makes no spawn sound for this item. Default = 0b.
    assign_rank:{ //The portrait ghost rank this pearl modifies. Is set by pearl droppers to their entity ID (or, if present their pearl_assign_rank data). Default value prevents saving anything.
        namespace:"luigis_mansion", //The namespace of the mansion. Default = "luigis_mansion".
        id:"neville" //The ID of the mansion. Default = "null".
    },
    
    //Non-default setup
    paths: ... //Paths this entity can follow; used by the target task "follow path"; if that task is selected, but this is empty, it turns into the "do nothing" task. Default = none.
        "luigis_mansion:room/normal/hallway_2/blue_mouse_path", //Function reference format; the function will need to provide "luigis_mansion:data paths" data in the in-line format. Only supported for ghosts.
        [ //In-line format. Unlike the function reference format, this format allows "set_specific_path" to select any path, whereas the function reference only provides acceptable paths. Supported by ghosts and wool.
            { //A single option; using the "set_random_path" function selects a random option; using "set_specific_path" sets the path to the index specified in the macro "index".
                id:"...", //Optional, this path is unable to get selected using "set_random_path" if there is a path in use with this in the disable_ids list. Not used for function reference.
                disable_ids:["..."], //Optional, used to disable path selection for other entities using "set_random_path".
                loop:1b, //Whether this path loops or not. If not, the entity stops at the end of the path. Default = 0b.
                force_move:1b, //If set, the entity will move forward, even into invalid positions such as walls. Otherwise if path is obstructed the entity moves to the next step. Default = 0b.
                steps:[ //Individual path steps to go to.
                    {
                        instant:1b, //If the entity warps to this step position, rather than progressing towards it. Default = 0b.
                        wait:X, //The amount of ticks to stay in place when reaching the position. Default = 0.
                        position:[X,Y,Z] //The XYZ coodinates to go to.
                    }
                ]
            }
        ],
    mansion:{ //The mansion this portrait ghost, boo or mario belongs to, this is used to run mansion specific functions (such as AI and resetting). If not provided, defaults to loaded mansion ID, if absent, defaults to "luigis_mansion:empty".
        namespace:"luigis_mansion", //The namespace of the mansion. Default = "luigis_mansion".
        id:"empty" //The ID of the mansion. Default = "empty".
    },
    owner:[I;...], //The UUID of the entity that owns this projectile. A hit of miss will add the laugh or complain tag respectively to the owner.
    door:{ //Required for and used only by fake doors.
        model:{ //Required, the ID of the door model. See IDs in use for valid IDs.
            namespace:"luigis_mansion", //Required, the namespace of the door model.
            id:"mansion/1" //Required, the id of the door model.
        },
        frame:{ //Optional, the ID of the frame model. See IDs in use for valid IDs.
            namespace:"luigis_mansion", //The namespace of the frame model.
            id:"normal" //The ID of the frame model.
        },
        left_hinge:1b //If the hinge is on the left of the door itself (your right when facing it). Default = 0b.
    },
    tags:[] //A list of tags to append to the entity's default tags used to target the entity in functions. Default = none.
}
```