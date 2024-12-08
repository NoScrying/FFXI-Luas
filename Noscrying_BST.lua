function get_sets()
	send_command('bind f9 gs c toggle TP set') 
	send_command('bind !f9 gs c toggle Pet_Mode') 
	send_command('bind ^f9 gs c toggle STP Set') 
	send_command('bind f10 gs c toggle run set') 
	send_command('bind !f12 gs c toggle BST Jugs') 
	send_command('bind f12 gs c toggle Pet Food') 
	send_command('bind f7 gs c toggle Weapons set') 
	send_command('bind !f7 gs c toggle Sub_Weapons set') 
	send_command('bind ^numpad1 gs c toggle Buff set')
	send_command('bind !numpad1 gs c toggle Holy Water')
	send_command('bind !numpad0 gs c toggle Emergency MEVA')
	
	Run_Index = 1 --, Index for gearsets, needed for when there is more than 1 in a set and you wish you toggle beween them
	TH_Index = 1
	Weapons_Index = 1
	Sub_Weapons_Index = 1	
	Buff_Index = 1	
	Jugs_Index = 1
	PetFood_Index = 1

	sets.Master_Mode = {}
	sets.Master_Mode.index = {'TP','DT'}
	Master_Mode_ind = 1
	
	sets.Master_Mode.TP = {
    ammo="Coiste Bodhar",
    head="Malignance Chapeau",
    body="Tali'ah Manteel +2",
    hands="Malignance Gloves",
    legs="Meg. Chausses +2",
    feet="Tali'ah Crackows +2",
    neck="Shulmanu Collar",
    waist="Klouskap Sash",
    left_ear="Sroda Earring",
    right_ear="Sherida Earring",
    left_ring="Lehko's Ring",
    right_ring="Gere Ring",
    back="Sacro Mantle",
	}
	
	sets.Master_Mode.DT = {
    ammo="Coiste Bodhar",
    head="Malignance Chapeau",
    body="Malignance Tabard",
    hands="Malignance Gloves",
    legs="Malignance Tights",
    feet="Malignance Boots",
    neck="Shulmanu Collar",
    waist="Klouskap Sash",
    left_ear="Sroda Earring",
    right_ear="Sherida Earring",
    left_ring="Lehko's Ring",
    right_ring="Gere Ring",
    back="Sacro Mantle",
	}
	
	Run_Set_Names = {"Regain/DT",'Regen'}--
	sets.run = {}
	sets.run["Regain/DT"] =  { 
    ammo="Staunch Tathlum +1",
    head="Gleti's Mask",
    body="Gleti's Cuirass",
    hands="Gleti's Gauntlets",
    legs="Gleti's Breeches",
    feet="Skd. Jambeaux +1",
    neck={ name="Loricate Torque +1", augments={'Path: A',}},
    waist="Engraved Belt",
    left_ear="Sanare Earring",
    right_ear={ name="Arete del Luna +1", augments={'Path: A',}},
    left_ring="Defending Ring",
    right_ring="Shadow Ring",
    back="Moonbeam Cape",
	}
	sets.run.Regen =  {
    ammo="Staunch Tathlum +1",
    head="Gleti's Mask",
    body="Sacro Breastplate",
    hands="Gleti's Gauntlets",
    legs="Gleti's Breeches",
    feet="Skd. Jambeaux +1",
    neck={ name="Bathy Choker +1", augments={'Path: A',}},
    waist="Engraved Belt",
    left_ear="Sanare Earring",
    right_ear={ name="Arete del Luna +1", augments={'Path: A',}},
    left_ring="Chirich Ring +1",
    right_ring="Chirich Ring +1",
    back="Moonbeam Cape",
	}
	
	sets.Pet_Mode = {}
	sets.Pet_Mode.index = {"Tank Mode","Damage Mode"} --, 
	Pet_Mode_ind = 1
	
	sets.Pet_Mode["Damage Mode"] = {
    ammo="Pet Food Theta",
    head={ name="Anwig Salade", augments={'Attack+3','Pet: Damage taken -10%','Accuracy+3','Pet: Haste+5',}},
    body={ name="Taeon Tabard", augments={'Pet: Accuracy+19 Pet: Rng. Acc.+19','Pet: "Dbl. Atk."+5','Pet: Damage taken -4%',}},
    hands={ name="Taeon Gloves", augments={'Pet: Accuracy+25 Pet: Rng. Acc.+25','Pet: "Dbl. Atk."+5','Pet: Damage taken -4%',}},
    legs={ name="Taeon Tights", augments={'Pet: Accuracy+25 Pet: Rng. Acc.+25','Pet: "Dbl. Atk."+5','Pet: Damage taken -4%',}},
    feet="Tali'ah Crackows +2",
    neck="Shulmanu Collar",
    waist="Klouskap Sash",
    left_ear="Sroda Earring",
    right_ear="Rimeice Earring",
    left_ring="Varar Ring",
    right_ring="Varar Ring",
    back="Sacro Mantle",
}

	MEVA_Set_Name = {'MEVA'}
	sets.MEVA = {
    ammo="Staunch Tathlum +1",
    head="Nyame Helm",
    body="Nyame Mail",
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet="Nyame Sollerets",
    neck="Warder's Charm +1",
    waist="Asklepian Belt",
    left_ear={ name="Arete del Luna +1", augments={'Path: A',}},
    right_ear="Sanare Earring",
    left_ring="Moonlight Ring",
    right_ring="Purity Ring",
    back="Sacro Mantle",
	}	

	Weapons_Set_Names = {"Dolichenus","Naegling",} 
	sets.weapons = {}
	sets.weapons["Naegling"] = {
    main="Naegling",
	}
	sets.weapons["Dolichenus"] = {
    main="Dolichenus",
	}
	
	Sub_Weapons_Set_Names = {'Sacro Shield',"Agwu's Axe"}
	sets.sub_weapons = {}
	sets.sub_weapons["Sacro Shield"] = {
	sub="Sacro Shield",
	}	
	sets.sub_weapons["Agwu's Axe"] = {
	sub="Agwu's Axe",
	}	
	
	Jugs_Set_Names = {'WAR - Lizard','WAR - Tiger','10% HP Down - Slug','+50% Slow - Diremite','+50% ATK - Sheep'}
	sets.Jugs = {}
	sets.Jugs["WAR - Lizard"] = {
	ammo="Livid Broth",
	}
	sets.Jugs["WAR - Tiger"] = {
	ammo="Meaty Broth",
	}
	sets.Jugs["10% HP Down - Slug"] = {
	ammo="Dire Broth",
	}
	sets.Jugs["+50% Slow - Diremite"] = {
	ammo="Crackling Broth",
	}
	sets.Jugs["+50% ATK - Sheep"] = {
	ammo="Lyrical Broth",
	}	
	
	sets.buff = {}
	sets.buff.reive = {
	neck="Ygnas\'s Resolve +1"
	}
	sets.buff.adoulin = {
	body="Councilor\'s Garb"
	}
	sets.buff.domain = {
	head="Heidrek Mask",
	body="Heidrek Harness",
	}

	PetFood_Set_Names = {'Theta',}
	sets.PetFood = {}
	sets.PetFood["Theta"] = {
	ammo="Pet Food Theta",
	}
	
	sets.ws = {} -- Leave this empty.
	sets.ws['Decimation']	= {
    ammo="Crepuscular Pebble",
    head={ name="Blistering Sallet +1", augments={'Path: A',}},
    body="Gleti's Cuirass",
    hands="Gleti's Gauntlets",
    legs="Gleti's Breeches",
    feet="Gleti's Boots",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Sroda Earring",
    right_ear="Sherida Earring",
    left_ring="Ifrit Ring +1",
    right_ring="Gere Ring",
    back="Sacro Mantle",
	}	
	sets.ws['Smash Axe']	= {
    ammo="Knobkierrie",
	head="Erilaz Galea +2", 
    body="Erilaz Surcoat +2",
    hands="Erilaz Gauntlets +2",
    legs="Erilaz Leg Guards +2",
    feet="Erilaz Greaves +2",
    neck="Erra Pendant",
    waist={ name="Acuity Belt +1", augments={'Path: A',}},
    left_ear="Crepuscular Earring",
    right_ear="Erilaz Earring +1",
    left_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
    right_ring="Stikini Ring +1",
    back={ name="Ogma's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	sets.ws['Mistral Axe']	= {
    ammo="Oshasha's Treatise",
    head={ name="Lustratio Cap +1", augments={'Accuracy+20','DEX+8','Crit. hit rate+3%',}},
    body="Gleti's Cuirass",
    hands="Meg. Gloves +2",
    legs="Gleti's Breeches",
    feet={ name="Valorous Greaves", augments={'Accuracy+29','Weapon skill damage +4%','STR+13',}},
    neck="Rep. Plat. Medal",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Thrud Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Epaminondas's Ring",
    right_ring="Gere Ring",
    back="Sacro Mantle",
	}
	sets.ws['Primal Rend']	= {
    ammo="Oshasha's Treatise",
    head="Nyame Helm",
    body="Nyame Mail",
    hands="Meg. Gloves +2",
    legs="Nyame Flanchard",
    feet="Nyame Sollerets",
    neck="Sibyl Scarf",
    waist="Orpheus's Sash",
    left_ear="Thrud Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
    right_ring="Weather. Ring +1",
    back="Sacro Mantle",
	}
	sets.ws['Cloudsplitter']	= {
    ammo="Oshasha's Treatise",
    head="Nyame Helm",
    body="Nyame Mail",
    hands="Meg. Gloves +2",
    legs="Nyame Flanchard",
    feet="Nyame Sollerets",
    neck="Sibyl Scarf",
    waist="Orpheus's Sash",
    left_ear="Thrud Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
    right_ring="Gere Ring",
    back="Sacro Mantle",
	}
	sets.ws['Calamity']	= {
    ammo="Oshasha's Treatise",
    head={ name="Lustratio Cap +1", augments={'Accuracy+20','DEX+8','Crit. hit rate+3%',}},
    body="Gleti's Cuirass",
    hands="Meg. Gloves +2",
    legs="Gleti's Breeches",
    feet={ name="Valorous Greaves", augments={'Accuracy+29','Weapon skill damage +4%','STR+13',}},
    neck="Rep. Plat. Medal",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Thrud Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Epaminondas's Ring",
    right_ring="Gere Ring",
    back="Sacro Mantle",
	}
	sets.ws['Smash Axe']	= {
    ammo="Oshasha's Treatise",
    head="Malignance Chapeau",
    body="Malignance Tabard",
    hands="Malignance Gloves",
    legs="Malignance Tights",
    feet="Malignance Boots",
    neck="Sanctity Necklace",
    waist="Eschan Stone",
    left_ear="Crep. Earring",
    right_ear="Enchntr. Earring +1",
    left_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
    right_ring="Weather. Ring +1",
    back="Sacro Mantle",
	}
	
	sets.ja = {} 					-- Leave this empty.
	sets.ja['Steal'] = {
    head="White Rarab Cap +1",
	}

	sets.idle = {} 					-- Leave this empty.
	
	sets.precast = {}               -- leave this empty
	sets.precast.fastcast = {
    ammo="Sapience Orb",
    head={ name="Herculean Helm", augments={'Accuracy+15','"Triple Atk."+4','Attack+14',}},
    body={ name="Taeon Tabard", augments={'"Fast Cast"+5',}},
    hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
    legs={ name="Taeon Tights", augments={'"Fast Cast"+5',}},
    feet={ name="Taeon Boots", augments={'"Fast Cast"+5',}},
    neck="Voltsurge Torque",
    waist="Engraved Belt",
    left_ear="Loquac. Earring",
    right_ear="Enchntr. Earring +1",
    left_ring="Lebeche Ring",
    right_ring="Weather. Ring +1",
    back={ name="Senuna's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Store TP"+10','Phys. dmg. taken-10%',}},
	}
	
    sets.midcast = {}               -- leave this empty   
	sets.midcast.DT = {
    ammo="Staunch Tathlum +1",
    head={ name="Herculean Helm", augments={'Accuracy+15','"Triple Atk."+4','Attack+14',}},
    body="Malignance Tabard",
    hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
    legs="Malignance Tights",
    feet="Malignance Boots",
	neck="Loricate Torque +1",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Enchntr. Earring +1",
    right_ear="Loquac. Earring",
    left_ring="Moonlight Ring",
    right_ring="Weather. Ring +1",
    back={ name="Senuna's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Store TP"+10','Phys. dmg. taken-10%',}},
	}
    sets.aftercast = {}             -- leave this empty
	
	Buff_Set_Names = {'Holywater'}
	sets.buff = {} 					
	sets.buff.Holywater = {
    neck="Nicander's Necklace",
    left_ring="Blenmot's Ring +1",
    right_ring="Purity Ring",
    waist="Gishdubar Sash",	
    feet={ name="Vanya Clogs", augments={'Healing magic skill +20','"Cure" spellcasting time -7%','Magic dmg. taken -3',}},
	}
	sets.buff.Phalanx = {
    head={ name="Taeon Chapeau", augments={'Spell interruption rate down -8%','Phalanx +3',}},
    body={ name="Taeon Tabard", augments={'Spell interruption rate down -10%','Phalanx +3',}},
    hands={ name="Taeon Gloves", augments={'Spell interruption rate down -10%','Phalanx +3',}},
    legs={ name="Taeon Tights", augments={'Spell interruption rate down -10%','Phalanx +3',}},
    feet={ name="Taeon Boots", augments={'Spell interruption rate down -10%','Phalanx +3',}},
	}

end

function precast(spell)
    if  spell.type ~= 'JobAbility' then
        equip(sets.precast.fastcast)
	end
    if sets.ja[spell.name] then
        equip(sets.ja[spell.name])
	end
    if sets.ws[spell.name] then
        equip(sets.ws[spell.name])        
    end         
end

function midcast(spell)
    if  spell.action_type == 'Magic' then
        equip(sets.midcast.DT)
	end
end

function aftercast(spell)
	idle()
end

function buff_change(buff,gain)
    if buff == 'Reive Mark' then
        if gain then
            equip(sets.buff.reive)
            disable("neck")
        else
            enable("neck")
            equip(sets.Idle)
        end
    end
    if buff == "doom" then --, Auto equips doom set, cause I'm lazy from killing Shinryu
        if gain then
            equip(sets.buff.Holywater)
             disable('ring1','ring2','waist','neck','feet')
        else
            enable('ring1','ring2','waist','neck','feet')
            status_change(player.status)
        end
    end
end


function idle()
	if player.status =="Engaged" then --, When drawing weapon
		if Master_Mode == false then
			equip(sets.Pet_Mode[sets.Pet_Mode.index[Pet_Mode_ind]]) --, Equips the last gearset you changed to, is not static
		elseif Master_Mode == true then
			equip(sets.Master_Mode[sets.Master_Mode.index[Master_Mode_ind]])
	end
end
	if player.status =='Idle' then --, When holstering weapon
		equip(sets.run[Run_Set_Names[Run_Index]])
	end
end
 
function status_change(new,old)
	idle()
end
 
Pet_Mode = true 
Master_Mode = true 

function self_command(command)
	if command == 'toggle TP set' then --, When using the command as specified at the top of this lua, then executes these functions
		if Master_Mode == true then --, Checks whether or not the Master_Mode Mode is active,
			Master_Mode_ind = Master_Mode_ind + 1 --, Cycles through the Index, starts at 1 when switching or starting game
			if Master_Mode_ind > #sets.Master_Mode.index then Master_Mode_ind = 1 end 
			windower.add_to_chat('Master mode --> ' .. sets.Master_Mode.index[Master_Mode_ind] ..'') --, Sends a message ingame, not visible to others.
			--if player.status == 'Engaged' then
				equip(sets.Master_Mode[sets.Master_Mode.index[Master_Mode_ind]])
			--end
		elseif Master_Mode == false then
			if Pet_Mode == true then
				Pet_Mode_ind = Pet_Mode_ind + 1
				if Pet_Mode_ind > #sets.Pet_Mode.index then Pet_Mode_ind = 1 end
				windower.add_to_chat('Pet mode --> ' .. sets.Pet_Mode.index[Pet_Mode_ind] ..'')
				--if player.status == 'Engaged' then
					equip(sets.Pet_Mode[sets.Pet_Mode.index[Pet_Mode_ind]])
				end
			end		
		end
	if command == 'toggle Pet_Mode set' then
		Master_Mode_ind = Master_Mode_ind + 1
		if Master_Mode_ind > #sets.Master_Mode.index then Master_Mode_ind = 1 end
		windower.add_to_chat('Master mode --> ' .. sets.Master_Mode.index[Master_Mode_ind] ..'')
		if player.status == 'Engaged' then
			equip(sets.Master_Mode[sets.Master_Mode.index[Master_Mode_ind]])
		end
	elseif command == 'toggle Pet_Mode' then
		if Master_Mode == true then
			Master_Mode = false
			windower.add_to_chat('<----- Pet Mode: [On] ----->')
        else
			Master_Mode = true
			windower.add_to_chat('<----- Master Mode: [On] ----->')
		end
		status_change(player.status)
	end
	if command == 'toggle run set' then
        Run_Index = Run_Index +1
        if Run_Index > #Run_Set_Names then Run_Index = 1 end
        windower.add_to_chat('Movement is now: '..Run_Set_Names[Run_Index]..' mode')
		equip(sets.run[Run_Set_Names[Run_Index]])
	end
	if command == 'toggle Weapons set' then
        Weapons_Index = Weapons_Index +1
        if Weapons_Index > #Weapons_Set_Names then Weapons_Index = 1 end
        windower.add_to_chat('Weapon is now: '..Weapons_Set_Names[Weapons_Index])
		equip(sets.weapons[Weapons_Set_Names[Weapons_Index]])
	end
	if command == 'toggle Sub_Weapons set' then
        Sub_Weapons_Index = Sub_Weapons_Index +1
        if Sub_Weapons_Index > #Sub_Weapons_Set_Names then Sub_Weapons_Index = 1 end
        windower.add_to_chat('Sub Weapon is now: '..Sub_Weapons_Set_Names[Sub_Weapons_Index])
		equip(sets.sub_weapons[Sub_Weapons_Set_Names[Sub_Weapons_Index]])
	end
	if command == 'toggle Buff set' then
    windower.add_to_chat('Buff mode is now: '..Buff_Set_Names[Buff_Index])
		equip(sets.buff[Buff_Set_Names[Buff_Index]])
	end
	if command == 'toggle Emergency MEVA' then
        windower.add_to_chat('Emergency MEVA/DT On')
		equip(sets.MEVA)
	end
	if command == 'toggle BST Jugs' then
		Jugs_Index = Jugs_Index +1
		if Jugs_Index > #Jugs_Set_Names then Jugs_Index = 1 end
        windower.add_to_chat('Jug Pet is now: '..Jugs_Set_Names[Jugs_Index])
		equip(sets.Jugs[Jugs_Set_Names[Jugs_Index]])	
	end
	if command == 'toggle Pet Food' then
		PetFood_Index = PetFood_Index +1
		if PetFood_Index > #PetFood_Set_Names then PetFood_Index = 1 end
        windower.add_to_chat('Pet Food is now: '..PetFood_Set_Names[PetFood_Index])
		equip(sets.PetFood[PetFood_Set_Names[PetFood_Index]])	
	end
end

function file_unload() --, Unbinds defined keybinds when changing jobs, can also use "send_command('clearbinds')" to wipe any and all
send_command('unbind f7')
send_command('unbind !f7')
send_command('unbind ^f7')

send_command('unbind f9')
send_command('unbind !f9')
send_command('unbind ^f9')

send_command('unbind f10')
send_command('unbind !f10')
send_command('unbind ^f10')

send_command('unbind f12')
send_command('unbind !f12')
send_command('unbind ^f12')

send_command('unbind Numpad1')
send_command('unbind !Numpad1')
send_command('unbind ^Numpad1')

send_command('unbind Numpad3')
send_command('unbind !Numpad3')
send_command('unbind ^Numpad3')

send_command('unbind Numpad0')
send_command('unbind !Numpad0')
send_command('unbind ^Numpad0')
send_command('unbind Numpad0')
end
