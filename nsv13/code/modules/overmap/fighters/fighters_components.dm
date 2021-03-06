//Fighter Components

/obj/structure/fighter_component/fuselage_crate
	name = "Fighter Fuselage Components"
	desc = "A crate full of fuselage components for a fighter"
	icon = 'icons/obj/crates.dmi'
	icon_state = "radiation"
	anchored = FALSE
	density = TRUE
	climbable = TRUE

/obj/item/twohanded/required/fighter_component/cockpit
	name = "Fighter Cockpit Components"
	desc = "A box of cockpit components for a fighter"
	icon = 'icons/obj/crates.dmi'
	icon_state = "crate"
	lefthand_file = ""
	righthand_file = ""
	w_class = WEIGHT_CLASS_GIGANTIC

/obj/item/twohanded/required/fighter_component/cockpit/Initialize()
	. = ..()
	AddComponent(/datum/component/twohanded/required)

/obj/item/twohanded/required/fighter_component/wing
	name = "Fighter Wing Components"
	desc = "A box of wing components for a fighter"
	icon = 'icons/obj/crates.dmi'
	icon_state = "medicalcrate"
	lefthand_file = ""
	righthand_file = ""
	w_class = WEIGHT_CLASS_GIGANTIC

/obj/item/twohanded/required/fighter_component/wing/Initialize()
	. = ..()
	AddComponent(/datum/component/twohanded/required)

/obj/item/twohanded/required/fighter_component/empennage
	name = "Fighter Empennage Componets"
	desc = "A box of empennage components for a fighter"
	icon = 'icons/obj/crates.dmi'
	icon_state = "engi_e_crate"
	lefthand_file = ""
	righthand_file = ""
	w_class = WEIGHT_CLASS_GIGANTIC

/obj/item/twohanded/required/fighter_component/empennage/Initialize()
	. = ..()
	AddComponent(/datum/component/twohanded/required)

/obj/item/twohanded/required/fighter_component/landing_gear
	name = "Fighter Landing Gear Componets"
	desc = "A box of landing gear components for a fighter"
	icon = 'icons/obj/crates.dmi'
	icon_state = "engi_crate"
	lefthand_file = ""
	righthand_file = ""
	w_class = WEIGHT_CLASS_GIGANTIC

/obj/item/twohanded/required/fighter_component/landing_gear/Initialize()
	. = ..()
	AddComponent(/datum/component/twohanded/required)

/obj/item/twohanded/required/fighter_component/armour_plating
	name = "Fighter Armour Plating"
	desc = "Armour plating for a fighter"
	icon = 'icons/obj/crates.dmi'
	icon_state = "engi_secure_crate"
	lefthand_file = ""
	righthand_file = ""
	w_class = WEIGHT_CLASS_GIGANTIC
	var/armour = 1.25 //HP Modifier

/obj/item/twohanded/required/fighter_component/armour_plating/Initialize()
	. = ..()
	AddComponent(/datum/component/twohanded/required)

/obj/item/twohanded/required/fighter_component/armour_plating/improved
	name = "Fighter Improved Armour Plating"
	desc = "Improved armour plating for a fighter"
	armour = 1.5

/obj/item/twohanded/required/fighter_component/fuel_tank
	name = "Fighter Fuel Tank"
	desc = "The fuel tank of a fighter"
	icon = 'icons/obj/crates.dmi'
	icon_state = "secgearcrate"
	lefthand_file = ""
	righthand_file = ""
	w_class = WEIGHT_CLASS_GIGANTIC
	var/capacity = 1000 //Fuel Capacity

/obj/item/twohanded/required/fighter_component/fuel_tank/Initialize()
	. = ..()
	AddComponent(/datum/component/twohanded/required)

/obj/item/twohanded/required/fighter_component/fuel_tank/extended
	name = "Fighter Extended Fuel Tank"
	desc = "The extended fuel tank of a fighter"
	capacity = 1500

/obj/item/fighter_component/avionics
	name = "Fighter Avionics"
	desc = "Avionics for a fighter"
	icon = 'icons/obj/crates.dmi'
	icon_state = "freezer"
	w_class = WEIGHT_CLASS_NORMAL

/obj/item/fighter_component/targeting_sensor
	name = "Fighter Targeting Sensors"
	desc = "Targeting sensors for a fighter"
	icon = 'icons/obj/crates.dmi'
	icon_state = "weaponcrate"
	w_class = WEIGHT_CLASS_NORMAL
	var/weapon_efficiency = 1 //Primary ammo usage modifier

/obj/item/fighter_component/targeting_sensor/enhanced
	name = "Fighter Enhanced Targeting Sensors"
	desc = "Enhanced targeting sensors for a fighter"
	weapon_efficiency = 0.8

/obj/item/fighter_component/fuel_lines
	name = "Fighter Fuel Lines Kit"
	desc = "Fuel line kit for routing fuel around a fighter"
	icon = 'icons/obj/crates.dmi'
	icon_state = "plasmacrate"
	w_class = WEIGHT_CLASS_BULKY
	var/fuel_efficiency = 1 //Fuel usage modifier

/obj/item/fighter_component/fuel_lines/streamlined
	name = "Fighter Streamlined Fuel Lines Kit"
	desc = "Streamlined fuel line kit for routing fuel around a fighter"
	fuel_efficiency = 0.8

/obj/item/twohanded/required/fighter_component/engine
	name = "Fighter Engine"
	desc = "An engine assembly for a fighter"
	icon = 'icons/obj/crates.dmi'
	icon_state = "hydrocrate"
	lefthand_file = ""
	righthand_file = ""
	w_class = WEIGHT_CLASS_GIGANTIC
	var/speed = 1 //Speed modifier
	var/consumption = 0.25 //How fast we burn fuel

/obj/item/twohanded/required/fighter_component/engine/Initialize()
	. = ..()
	AddComponent(/datum/component/twohanded/required)

/obj/item/twohanded/required/fighter_component/engine/overclocked
	name = "Fighter Overclocked Engine"
	desc = "An overclocked engine assembly for a fighter"
	speed = 1.2
	consumption = 1

/obj/item/twohanded/required/fighter_component/primary_cannon
	name = "Fighter Cannon"
	desc = "Fighter Cannon"
	icon = 'icons/obj/crates.dmi'
	icon_state = "o2crate"
	lefthand_file = ""
	righthand_file = ""
	w_class = WEIGHT_CLASS_GIGANTIC

/obj/item/twohanded/required/fighter_component/primary_cannon/Initialize()
	. = ..()
	AddComponent(/datum/component/twohanded/required)

//Component Fabrication

/datum/techweb_node/fighter_component_fabrication
	id = "fighter_component_fabrication"
	display_name = "Fighter Component Fabrication"
	description = "The components required for the fabrication of new fighter craft."
	prereq_ids = list("explosive_weapons")
	design_ids = list("fighter_primary_cannon_components", "fighter_engine_components", "fighter_fuel_lines_package", "fighter_targeting_sensor_package", "fighter_avionics_package", "fighter_fuel_tank", "fighter_armour_plating", "fighter_landing_gear_components", "fighter_landing_gear_components", "fighter_empennage_components", "fighter_cockpit_wing", "fighter_cockpit_components", "fighter_fuselage_crate")
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = 10000)
	export_price = 5000

/datum/design/fighter_fuselage_crate
	name = "Fighter Fuselage Crate"
	desc = "A crate full of fuselage components for a fighter"
	id = "fighter_fuselage_crate"
	build_type = PROTOLATHE
	materials = list(/datum/material/iron = 25000, /datum/material/silver = 5000)
	build_path = /obj/structure/fighter_component/fuselage_crate
	category = list("Ship Components")
	departmental_flags = DEPARTMENTAL_FLAG_CARGO

/datum/design/fighter_cockpit_components
	name = "Fighter Cockpit Components"
	desc = "A box full of cockpit components for a fighter"
	id = "fighter_cockpit_components"
	build_type = PROTOLATHE
	materials = list(/datum/material/iron = 10000, /datum/material/glass = 10000)
	build_path = /obj/item/twohanded/required/fighter_component/cockpit
	category = list("Ship Components")
	departmental_flags = DEPARTMENTAL_FLAG_CARGO

/datum/design/fighter_wing_components
	name = "Fighter Wing Components"
	desc = "A box full of wing components for a fighter"
	id = "fighter_cockpit_wing"
	build_type = PROTOLATHE
	materials = list(/datum/material/iron = 15000)
	build_path = /obj/item/twohanded/required/fighter_component/wing
	category = list("Ship Components")
	departmental_flags = DEPARTMENTAL_FLAG_CARGO

/datum/design/fighter_empennage_components
	name = "Fighter Empennage Components"
	desc = "A box full of empennage components for a fighter"
	id = "fighter_empennage_components"
	build_type = PROTOLATHE
	materials = list(/datum/material/iron = 15000)
	build_path = /obj/item/twohanded/required/fighter_component/empennage
	category = list("Ship Components")
	departmental_flags = DEPARTMENTAL_FLAG_CARGO

/datum/design/fighter_landing_gear_components
	name = "Fighter Landing Gear Components"
	desc = "A box full of landing gear components for a fighter"
	id = "fighter_landing_gear_components"
	build_type = PROTOLATHE
	materials = list(/datum/material/iron = 15000)
	build_path = /obj/item/twohanded/required/fighter_component/landing_gear
	category = list("Ship Components")
	departmental_flags = DEPARTMENTAL_FLAG_CARGO

/datum/design/fighter_armour_plating
	name = "Fighter Armour Plating"
	desc = "Armour plating for a fighter"
	id = "fighter_armour_plating"
	build_type = PROTOLATHE
	materials = list(/datum/material/iron = 20000, /datum/material/silver = 5000)
	build_path = /obj/item/twohanded/required/fighter_component/armour_plating
	category = list("Ship Components")
	departmental_flags = DEPARTMENTAL_FLAG_CARGO

/datum/design/fighter_fuel_tank
	name = "Fighter Fuel Tank"
	desc = "A fuel tank for a fighter"
	id = "fighter_fuel_tank"
	build_type = PROTOLATHE
	materials = list(/datum/material/iron = 15000)
	build_path = /obj/item/twohanded/required/fighter_component/fuel_tank
	category = list("Ship Components")
	departmental_flags = DEPARTMENTAL_FLAG_CARGO

/datum/design/fighter_avionics_package
	name = "Fighter Avionics Package"
	desc = "An avionics package for a fighter"
	id = "fighter_avionics_package"
	build_type = PROTOLATHE
	materials = list(/datum/material/iron = 5000, /datum/material/glass = 5000, /datum/material/gold = 1000)
	build_path = /obj/item/fighter_component/avionics
	category = list("Ship Components")
	departmental_flags = DEPARTMENTAL_FLAG_CARGO

/datum/design/fighter_targeting_sensor_package
	name = "Fighter Targeting Sensor Package"
	desc = "A targeting sensor package for a fighter"
	id = "fighter_targeting_sensor_package"
	build_type = PROTOLATHE
	materials = list(/datum/material/iron = 5000, /datum/material/glass = 5000, /datum/material/gold = 1000)
	build_path = /obj/item/fighter_component/targeting_sensor
	category = list("Ship Components")
	departmental_flags = DEPARTMENTAL_FLAG_CARGO

/datum/design/fighter_fuel_lines_package
	name = "Fighter Fuel Lines Package"
	desc = "A fuel lines package for a fighter"
	id = "fighter_fuel_lines_package"
	build_type = PROTOLATHE
	materials = list(/datum/material/iron = 5000)
	build_path = /obj/item/fighter_component/fuel_lines
	category = list("Ship Components")
	departmental_flags = DEPARTMENTAL_FLAG_CARGO

/datum/design/fighter_engine_components
	name = "Fighter Engine Components"
	desc = "A box of engine components for a fighter"
	id = "fighter_engine_components"
	build_type = PROTOLATHE
	materials = list(/datum/material/iron = 15000)
	build_path = /obj/item/twohanded/required/fighter_component/engine
	category = list("Ship Components")
	departmental_flags = DEPARTMENTAL_FLAG_CARGO

/datum/design/fighter_primary_cannon_components
	name = "Fighter Cannon Components"
	desc = "A box of cannon components for a fighter"
	id = "fighter_primary_cannon_components"
	build_type = PROTOLATHE
	materials = list(/datum/material/iron = 5000, /datum/material/silver = 5000, /datum/material/glass = 2000)
	build_path = /obj/item/twohanded/required/fighter_component/primary_cannon
	category = list("Ship Components")
	departmental_flags = DEPARTMENTAL_FLAG_CARGO

/datum/looping_sound/refuel
	mid_sounds = list('nsv13/sound/effects/fighters/refuel.ogg')
	mid_length = 8 SECONDS
	volume = 100

/obj/structure/reagent_dispensers/fueltank/aviation_fuel
	name = "Tyrosene fuel pump"
	desc = "A tank full of high performance aviation fuel with an inbuilt fuel pump for rapid fuel delivery"
	icon = 'nsv13/icons/obj/objects.dmi'
	icon_state = "jetfuel" //NSV13 - Modified objects.dmi to include a jet fuel container
	reagent_id = /datum/reagent/aviation_fuel
	tank_volume = 3500
	var/obj/item/jetfuel_nozzle/nozzle = null
	var/obj/structure/overmap/fighter/fuel_target
	var/datum/looping_sound/refuel/soundloop
	var/max_range = 2
	var/datum/beam/current_beam
	var/allow_refuel = FALSE

/obj/structure/reagent_dispensers/fueltank/aviation_fuel/ui_act(action, params, datum/tgui/ui)
	if(..())
		return
	if(!in_range(src, usr) && get_current_user() != usr) //Topic check
		return
	if(action == "stopfuel" && fuel_target)
		soundloop?.stop()
		visible_message("<span class='warning'>[icon2html(src)] refuelling cancelled.</span>")
		playsound(src, 'sound/machines/buzz-two.ogg', 100)
		fuel_target = null
		STOP_PROCESSING(SSobj, src)
	if(action == "transfer_mode")
		if(!allow_refuel)
			to_chat(usr, "<span class='notice'>You open [src]'s fuel inlet valve, it will now intake reagents from containers that it's hit with.</span>")
			allow_refuel = TRUE
		else
			to_chat(usr, "<span class='notice'>You close [src]'s fuel inlet valve, it will now transfer its reagents to containers that it's hit with.</span>")
			allow_refuel = FALSE

/**
* Function that will get the current wielder of "nozzle".
* @return The mob that's holding our nozzle, or null
*
*/

/obj/structure/reagent_dispensers/fueltank/aviation_fuel/proc/get_current_user()
	var/mob/living/user = nozzle.loc
	if(!isliving(user))
		return null
	return user

/obj/structure/reagent_dispensers/fueltank/aviation_fuel/can_interact(mob/user)
	if(user == get_current_user()) //If theyre holding the hose, bypass range checks so that they can see what they're currently fuelling.
		return TRUE
	if(!user.can_interact_with(src)) //Theyre too far away and not flying the ship
		return FALSE
	if((interaction_flags_atom & INTERACT_ATOM_REQUIRES_DEXTERITY) && !user.IsAdvancedToolUser())
		to_chat(user, "<span class='warning'>You don't have the dexterity to do this!</span>")
		return FALSE
	if(!(interaction_flags_atom & INTERACT_ATOM_IGNORE_INCAPACITATED) && user.incapacitated((interaction_flags_atom & INTERACT_ATOM_IGNORE_RESTRAINED), !(interaction_flags_atom & INTERACT_ATOM_CHECK_GRAB)))
		return FALSE
	return TRUE

/obj/structure/reagent_dispensers/fueltank/aviation_fuel/ui_interact(mob/user, ui_key = "main", datum/tgui/ui = null, force_open = 0, datum/tgui/master_ui = null, datum/ui_state/state = GLOB.default_state) // Remember to use the appropriate state.
	if(!can_interact(user))
		return
	ui = SStgui.try_update_ui(user, src, ui_key, ui, force_open)
	if(!ui)
		ui = new(user, src, ui_key, "aviation_fuel", name, 400, 400, master_ui, state)
		ui.open()

/obj/structure/reagent_dispensers/fueltank/aviation_fuel/ui_data(mob/user)
	var/list/data = list()
	if(!fuel_target)
		data["targetfuel"] = 0
		data["targetmaxfuel"] = 1000 //Default value to black out the fuel gauge.
	else
		data["targetfuel"] = fuel_target.get_fuel()
		data["targetmaxfuel"] = fuel_target.get_max_fuel()
	data["transfer_mode"] = allow_refuel
	data["fuel"] = reagents.total_volume
	data["maxfuel"] = reagents.maximum_volume
	return data

/obj/structure/reagent_dispensers/fueltank/aviation_fuel/Initialize()
	. = ..()
	add_overlay("jetfuel_nozzle")
	nozzle = new(src)
	nozzle.parent = src
	soundloop = new(list(src), FALSE)
	reagents.flags |= REFILLABLE

/obj/structure/reagent_dispensers/fueltank/aviation_fuel/attack_hand(mob/user)
	if(nozzle.loc == src)
		if(!user.put_in_hands(nozzle))
			to_chat(user, "<span class='warning'>You need a free hand to hold the fuel hose!</span>")
			return
		to_chat(user, "<span class='warning'>You grab [src]'s refuelling hose.</span>")
		RegisterSignal(user, COMSIG_MOVABLE_MOVED, .proc/check_distance)
		toggle_nozzle(FALSE)
		ui_interact(user)
	else
		ui_interact(user)
		. = ..()

/obj/effect/ebeam/fuel_hose
	name = "fuel hose"
	layer = LYING_MOB_LAYER

/obj/structure/reagent_dispensers/fueltank/aviation_fuel/proc/toggle_nozzle(state) //@param state: are you adding or removing the nozzle. True = adding, false = removing
	if(state)
		var/mob/user = get_current_user() //If they let the hose snap back in, unregister this way
		if(user)
			UnregisterSignal(user, COMSIG_MOVABLE_MOVED)
		add_overlay("jetfuel_nozzle")
		visible_message("<span class='warning'>[nozzle] snaps back into [src]!</span>")
		soundloop?.stop()
		qdel(current_beam)
		nozzle.forceMove(src)
		fuel_target = null
	else
		cut_overlay("jetfuel_nozzle")
		current_beam = new(get_current_user(),src,beam_icon='nsv13/icons/effects/beam.dmi',time=INFINITY,maxdistance = INFINITY,beam_icon_state="hose",btype=/obj/effect/ebeam/fuel_hose)
		INVOKE_ASYNC(current_beam, /datum/beam.proc/Start)

/obj/structure/reagent_dispensers/fueltank/aviation_fuel/attackby(obj/item/I, mob/user, params)
	if(I == nozzle)
		to_chat(user, "<span class='warning'>You slot the fuel hose back into [src]</span>")
		UnregisterSignal(user, COMSIG_MOVABLE_MOVED) //Otherwise unregister the signal here because they put it back cleanly
		nozzle.forceMove(src)
		toggle_nozzle(TRUE)
	if(allow_refuel)
		if(istype(I, /obj/item/reagent_containers))
			to_chat(user, "<span class='warning'>You transfer some of [I]'s contents to [src].</span>") //Put anything other than aviation fuel in here at your own risk of having to flush out the tank and possibly wreck your fighter :)
			var/obj/item/reagent_containers/X = I
			X.reagents.trans_to(X, X.amount_per_transfer_from_this, transfered_by = user)
	. = ..()

/obj/structure/reagent_dispensers/fueltank/aviation_fuel/proc/start_fuelling(target)
	if(!target)
		return
	soundloop?.start()
	fuel_target = target
	START_PROCESSING(SSobj, src)

/obj/structure/reagent_dispensers/fueltank/aviation_fuel/proc/check_distance()
	if(get_dist(get_current_user(), src) > max_range)// because nozzle, when in storage, will actually be in nullspace.
		toggle_nozzle(TRUE)
		STOP_PROCESSING(SSobj,src)
		return FALSE
	return TRUE

/obj/structure/reagent_dispensers/fueltank/aviation_fuel/process()
	if(!fuel_target)
		soundloop.stop()
		return PROCESS_KILL
	var/obj/item/twohanded/required/fighter_component/fuel_tank/sft = fuel_target.get_part(/obj/item/twohanded/required/fighter_component/fuel_tank)
	if(!sft)
		soundloop.stop()
		visible_message("<span class='warning'>[icon2html(src)] [fuel_target] does not have a fuel tank installed!</span>")
		return PROCESS_KILL
	var/transfer_amount = min(50, fuel_target.get_max_fuel()-fuel_target.get_fuel()) //Transfer as much as we can
	if(transfer_amount <= 0)
		soundloop?.stop()
		visible_message("<span class='warning'>[icon2html(src)] refuelling complete.</span>")
		playsound(src, 'sound/machines/ping.ogg', 100)
		fuel_target = null
		return PROCESS_KILL
	if(reagents.total_volume < transfer_amount)
		soundloop?.stop()
		visible_message("<span class='warning'>[icon2html(src)] insufficient fuel.</span>")
		playsound(src, 'sound/machines/buzz-two.ogg', 100)
		fuel_target = null
		return PROCESS_KILL
	reagents.trans_to(sft, transfer_amount)

/obj/item/jetfuel_nozzle
	name = "Aviation fuel delivery hose"
	icon = 'icons/obj/hydroponics/equipment.dmi'
	icon_state = "atmos_nozzle"
	item_state = "nozzleatmos"
	item_flags = NOBLUDGEON | ABSTRACT  // don't put in storage
	slot_flags = 0
	var/obj/structure/reagent_dispensers/fueltank/aviation_fuel/parent

/obj/item/jetfuel_nozzle/Initialize()
	. = ..()
	ADD_TRAIT(src, TRAIT_NODROP, ABSTRACT_ITEM_TRAIT)

/obj/item/jetfuel_nozzle/afterattack(atom/target, mob/user, proximity)
	. = ..()
	if(istype(target, /obj/structure/overmap/fighter))
		var/obj/structure/overmap/fighter/f16 = target
		var/obj/item/twohanded/required/fighter_component/fuel_tank/sft = f16.get_part(/obj/item/twohanded/required/fighter_component/fuel_tank)
		if(!sft)
			visible_message("<span class='warning'>[icon2html(src)] [f16] does not have a fuel tank installed!</span>")
			return
		if(f16.flight_state >= 6)
			to_chat(user, "<span class='notice'>[f16]'s engine is still running! Refuelling it now would be dangerous.</span>")
			playsound(src, 'sound/machines/buzz-two.ogg', 100)
			return
		if(f16.get_fuel() < f16.get_max_fuel())
			parent.start_fuelling(f16)
			to_chat(user, "<span class='notice'>You slot [src] into [f16]'s refuelling hatch.</span>")
			playsound(user, 'sound/machines/click.ogg', 60, 1)
			return
		else
			to_chat(user, "<span class='notice'>[f16]'s fuel tank is already full.</span>")
			return

/datum/supply_pack/munitions/aviation_fuel
	name = "Aviation fuel"
	desc = "One Tyrosene fuel pump, capable of fully refuelling 3 fighters."
	cost = 1500