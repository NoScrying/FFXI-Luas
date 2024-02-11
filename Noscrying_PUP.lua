function get_sets()
	send_command('bind f9 gs c toggle TP set') -- F9 = Cycle through
	send_command('bind !f9 gs c toggle puppet mode') -- F10 = Cycle through
	send_command('bind f10 gs c toggle run set')
	send_command('bind f12 gs c toggle TH set') -- F12 = Cycle through
	send_command('bind f7 gs c toggle weapons set') -- F9 = Cycle through

	
	TH_Index = 1
	DT_Index = 1
	Weapons_Index = 1

	Weapons_Set_Names = {'Verethragna','Ohtas'}-- 'Sakpata'
	sets.weapons = {} 					-- Leave this empty.
	sets.weapons.Verethragna = {
	main = "Verethragna",
	} 
	sets.weapons.Sakpata = {
	main = "Sakpata's Fists",
	} 
	sets.weapons.Ohtas = {
    main ={ name="Ohtas", augments={'Accuracy+70','Pet: Accuracy+70','Pet: Haste+10%',}},
	} 
	
	
	sets.Master_Mode = {} 					-- Leave this empty.
	sets.Master_Mode.index = {'normal','DT','Hybrid'}
	Master_Mode_Index = 1
	
	sets.Master_Mode["normal"] = {
		--ammo="Automat. Oil +3",
    head="Mpaca's Cap",
    body="Tali'ah Manteel +2",
    hands="Mpaca's Gloves",
    legs="Mpaca's Hose",
    feet="Mpaca's Boots",
    neck="Shulmanu Collar",
    waist="Moonbow Belt +1",
    left_ear="Cessance Earring",
    right_ear="Sroda Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Gere Ring",
    back={ name="Visucius's Mantle", augments={'STR+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	sets.Master_Mode["Hybrid"] = {
	     --ammo="Automat. Oil +3",
    head="Mpaca's Cap",
    body="Tali\'ah Manteel +2",
    hands="Foire Dastanas +2",
    legs="Mpaca's Hose",
    feet="Tali'ah Crackows +2",
    neck="Shulmanu Collar",
    waist="Moonbow Belt +1",
    left_ear="Crepuscular Earring",
    right_ear="Sroda Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Gere Ring",
    back={ name="Visucius's Mantle", augments={'STR+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}	
	sets.Master_Mode["DT"] = {
	     --ammo="Automat. Oil +3",
    head="Nyame Helm",
    body="Nyame Mail",
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet="Nyame Sollerets",
    neck="Shulmanu Collar",
	waist="Moonbow Belt",
    left_ear="Crepuscular Earring",
	right_ear="Sroda Earring",
    left_ring="Niqmaddu Ring",
	right_ring="Cath Palug Ring",
    back={ name="Visucius's Mantle", augments={'STR+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	
	sets.Puppet_Mode = {}
	sets.Puppet_Mode.index = {'PUPDA', 'PUPDT','Master/Pet'}
	Puppet_Mode_Index = 1
	
	sets.Puppet_Mode["PUPDA"] = {
	--ammo="Automat. Oil +3",
    head={ name="Taeon Chapeau", augments={'Pet: Accuracy+19 Pet: Rng. Acc.+19','Pet: "Dbl. Atk."+5','Pet: Damage taken -4%',}},
    body={ name="Taeon Tabard", augments={'Pet: Accuracy+19 Pet: Rng. Acc.+19','Pet: "Dbl. Atk."+5','Pet: Damage taken -4%',}},
    hands={ name="Taeon Gloves", augments={'Pet: Accuracy+25 Pet: Rng. Acc.+25','Pet: "Dbl. Atk."+5','Pet: Damage taken -4%',}},
    legs={ name="Taeon Tights", augments={'Pet: Accuracy+25 Pet: Rng. Acc.+25','Pet: "Dbl. Atk."+5','Pet: Damage taken -4%',}},
    feet={ name="Taeon Boots", augments={'Pet: Accuracy+18 Pet: Rng. Acc.+18','Pet: "Dbl. Atk."+5','Pet: Damage taken -4%',}},
    neck="Shulmanu Collar",
    waist="Klouskap Sash",
    left_ear="Enmerkar Earring",
    right_ear={ name="Karagoz Earring", augments={'System: 1 ID: 1676 Val: 0','Accuracy+9','Mag. Acc.+9',}},
    left_ring="Varar Ring",
    right_ring="Cath Palug Ring",
    back={ name="Visucius\'s Mantle", augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Accuracy+20 Attack+20','Pet: Haste+10','Pet: Damage Taken -5%'}},	
}	

	sets.Puppet_Mode["PUPDT"] = {
    --ammo="Automat. Oil +3",
    head={ name="Rao Kabuto", augments={'Pet: HP+100','Pet: Accuracy+15','Pet: Damage taken -3%',}},
    body={ name="Rao Togi", augments={'Pet: HP+100','Pet: Accuracy+15','Pet: Damage taken -3%',}},
    hands={ name="Rao Kote", augments={'Pet: HP+100','Pet: Accuracy+15','Pet: Damage taken -3%',}},
    legs={ name="Taeon Tights", augments={'Pet: Accuracy+25 Pet: Rng. Acc.+25','Pet: "Dbl. Atk."+5','Pet: Damage taken -4%',}},
    feet={ name="Rao Sune-Ate", augments={'Pet: HP+100','Pet: Accuracy+15','Pet: Damage taken -3%',}},
    neck="Shulmanu Collar",
    waist="Klouskap Sash",
    left_ear="Enmerkar Earring",
    right_ear={ name="Karagoz Earring", augments={'System: 1 ID: 1676 Val: 0','Accuracy+9','Mag. Acc.+9',}},
    left_ring="Varar Ring",
    right_ring="Cath Palug Ring",
    back={ name="Visucius's Mantle", augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Accuracy+20 Attack+20','Pet: Haste+10','Pet: Damage taken -5%',}},
}
	sets.Puppet_Mode["Master/Pet"] = {
	--ammo="Automat. Oil +3",
    head="Mpaca's Cap",
    body="Mpaca's Doublet",
    hands="Mpaca's Gloves",
    legs="Mpaca's Hose",
    feet="Mpaca's Boots",
    neck="Shulmanu Collar",
    waist="Klouskap Sash",
    left_ear="Enmerkar Earring",
    right_ear={ name="Karagoz Earring", augments={'System: 1 ID: 1676 Val: 0','Accuracy+9','Mag. Acc.+9',}},
    left_ring="Varar Ring",
    right_ring="C. Palug Ring",
    back={ name="Visucius's Mantle", augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Accuracy+20 Attack+20','Pet: Haste+10','Pet: Damage taken -5%',}},
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
	
	sets.ws = {} -- Leave this empty.
	sets.ws['Victory Smite'] = {
    head="Mpaca's Cap",
    body="Mpaca's Doublet",
    hands={ name="Ryuo Tekko +1", augments={'DEX+12','Accuracy+25','"Dbl.Atk."+4',}},
    legs="Mpaca's Hose",
    feet="Mpaca's Boots",
    waist="Moonbow Belt +1",
    left_ring="Niqmaddu Ring",
    right_ring="Gere Ring",
	left_ear="Cessance Earring",
    right_ear="Schere Earring",
	back={ name="Visucius's Mantle", augments={'STR+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	
	}
	sets.ws["Evisceration"] = {
    head="Mpaca's Cap",
    body="Mpaca's Doublet",
    hands={ name="Ryuo Tekko +1", augments={'DEX+12','Accuracy+25','"Dbl.Atk."+4',}},
    legs="Mpaca's Hose",
    feet="Mpaca's Boots",
    waist="Moonbow Belt +1",
    left_ring="Niqmaddu Ring",
    right_ring="Lehko's Ring",
	left_ear="Cessance Earring",
    right_ear="Schere Earring",
	back={ name="Visucius's Mantle", augments={'STR+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	
	}
	sets.ws['Shijin Spiral'] = {
    head="Mpaca's Cap",
    body="Tali'ah Manteel +2",
    hands="Mpaca's Gloves",
    legs="Mpaca's Hose",
    feet="Mpaca's Boots",
    neck="Fotia Gorget",
    waist="Moonbow Belt +1",
	left_ear="Cessance Earring",
    right_ear="Schere Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Gere Ring",
    back={ name="Visucius's Mantle", augments={'STR+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	sets.ws['Stringing Pummel'] = {
    head="Mpaca's Cap",
    body="Tali'ah Manteel +2",
    hands="Mpaca's Gloves",
    legs="Mpaca's Hose",
    feet="Mpaca's Boots",
    neck="Rep. Plat. Medal",
    waist="Moonbow Belt +1",
    left_ring="Niqmaddu Ring",
    right_ring="Gere Ring",
	left_ear="Cessance Earring",
    right_ear="Schere Earring",
    back={ name="Visucius's Mantle", augments={'STR+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},	
	} 
	sets.ws['Tornado Kick'] = {
    head="Mpaca's Cap",
    body="Tali\'ah Manteel +2",
    hands={ name="Herculean Gloves", augments={'"Triple Atk."+3','STR+13',}},
    legs="Hizamaru Hizayoroi +2",
    feet={ name="Herculean Boots", augments={'Accuracy+28','"Triple Atk."+4',}},
    neck="Rep. Plat. Medal",
    waist="Moonbow Belt +1",
    left_ring="Niqmaddu Ring",
    right_ring="Gere Ring",
	left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    right_ear="Schere Earring",
    back={ name="Visucius's Mantle", augments={'STR+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},	
	} 
	sets.ws['Spinning Attack'] = {
    head="Mpaca's Cap",
    body="Tali\'ah Manteel +2",
    hands={ name="Herculean Gloves", augments={'"Triple Atk."+3','STR+13',}},
    legs="Hizamaru Hizayoroi +2",
    feet={ name="Herculean Boots", augments={'Accuracy+28','"Triple Atk."+4',}},
    neck="Rep. Plat. Medal",
    waist="Moonbow Belt +1",
    left_ring="Niqmaddu Ring",
    right_ring="Gere Ring",
	left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    right_ear="Schere Earring",
    back={ name="Visucius's Mantle", augments={'STR+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},	
	}
	sets.ws['Shoulder Tackle'] = {
    head="Mpaca's Cap",
    body="Tali\'ah Manteel +2",
    hands={ name="Herculean Gloves", augments={'"Triple Atk."+3','STR+13',}},
    legs="Hizamaru Hizayoroi +2",
    feet={ name="Herculean Boots", augments={'Accuracy+28','"Triple Atk."+4',}},
    neck="Rep. Plat. Medal",
    waist="Moonbow Belt +1",
    left_ring="Niqmaddu Ring",
    right_ring="Gere Ring",
	left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    right_ear="Schere Earring",
    back={ name="Visucius's Mantle", augments={'STR+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},	
	}
	sets.ws['Asuran Fists'] = {
    head="Mpaca's Cap",
    body="Tali\'ah Manteel +2",
    hands={ name="Herculean Gloves", augments={'"Triple Atk."+3','STR+13',}},
    legs="Hizamaru Hizayoroi +2",
    feet={ name="Herculean Boots", augments={'Accuracy+28','"Triple Atk."+4',}},
    neck="Rep. Plat. Medal",
    waist="Moonbow Belt +1",
    left_ring="Niqmaddu Ring",
    right_ring="Gere Ring",
	left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    right_ear="Schere Earring",
    back={ name="Visucius's Mantle", augments={'STR+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},	
	} 
	sets.ws['Howling Fist'] = {
    head="Mpaca's Cap",
    body="Tali\'ah Manteel +2",
    hands={ name="Herculean Gloves", augments={'"Triple Atk."+3','STR+13',}},
    legs="Hizamaru Hizayoroi +2",
    feet={ name="Herculean Boots", augments={'Accuracy+28','"Triple Atk."+4',}},
    neck="Rep. Plat. Medal",
    waist="Moonbow Belt +1",
    left_ring="Niqmaddu Ring",
    right_ring="Gere Ring",
	left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    right_ear="Schere Earring",
    back={ name="Visucius's Mantle", augments={'STR+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},	
	} 	
	sets.ws['Raging Fists'] = {
    head="Mpaca's Cap",
    body="Tali\'ah Manteel +2",
    hands={ name="Herculean Gloves", augments={'"Triple Atk."+3','STR+13',}},
    legs="Hizamaru Hizayoroi +2",
    feet={ name="Herculean Boots", augments={'Accuracy+28','"Triple Atk."+4',}},
    neck="Rep. Plat. Medal",
    waist="Moonbow Belt +1",
    left_ring="Niqmaddu Ring",
    right_ring="Gere Ring",
	left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    right_ear="Schere Earring",
    back={ name="Visucius's Mantle", augments={'STR+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},	
	} 	

	sets.ja = {} 					-- Leave this empty.
	sets.ja['Steal'] = {
    head="White Rarab Cap +1",
	ammo="Perfect Lucky Egg",
    waist="Chaac Belt",
	body="Tali\'ah Manteel +2",
    hands="Foire Dastanas +2",
    legs={ name="Taeon Tights", augments={'Accuracy+25','"Triple Atk."+2','STR+5 DEX+5',}},
    feet="Tali'ah Crackows +2",
    neck="Lissome Necklace",
    left_ear="Mache Earring",
    right_ear="Sroda Earring",
    left_ring="Epona\'s Ring",
    right_ring="Varar Ring",
    back={ name="Visucius's Mantle", augments={'STR+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	
	sets.ja['Overdrive'] = {
    body={ name="Pitre Tobe +1", augments={'Enhances "Overdrive" effect',}},
	}

	sets.ja['Repair'] = {
	legs={ name="Desultor Tassets", augments={'"Phantom Roll" ability delay -5','"Repair" potency +10%',}},
	}
	
	sets.ja['Fire Maneuver'] = {
    body="Karagoz Farsetto",
	neck="Buffoon's Collar",
    hands="Foire Dastanas +2",
	left_ear="Burana Earring",
    back={ name="Visucius's Mantle", augments={'STR+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},	
	}
	sets.ja['Ice Maneuver'] = {
    body="Karagoz Farsetto",
	neck="Buffoon's Collar",
    hands="Foire Dastanas +2",
	left_ear="Burana Earring",
    back={ name="Visucius's Mantle", augments={'STR+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},	
	}
	sets.ja['Wind Maneuver'] = {
     body="Karagoz Farsetto",
	neck="Buffoon's Collar",
    hands="Foire Dastanas +2",
	left_ear="Burana Earring",
    back={ name="Visucius's Mantle", augments={'STR+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},	
	}
	sets.ja['Earth Maneuver'] = {
    body="Karagoz Farsetto",
	neck="Buffoon's Collar",
    hands="Foire Dastanas +2",
	left_ear="Burana Earring",
    back={ name="Visucius's Mantle", augments={'STR+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},	
	}
	sets.ja['Thunder Maneuver'] = {
    body="Karagoz Farsetto",
	neck="Buffoon's Collar",
    hands="Foire Dastanas +2",
	left_ear="Burana Earring",
    back={ name="Visucius's Mantle", augments={'STR+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},	
	}
	sets.ja['Water Maneuver'] = {
    body="Karagoz Farsetto",
	neck="Buffoon's Collar",
    hands="Foire Dastanas +2",
	left_ear="Burana Earring",
    back={ name="Visucius's Mantle", augments={'STR+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},	
	}
	sets.ja['Light Maneuver'] = {
    body="Karagoz Farsetto",
	neck="Buffoon's Collar",
    hands="Foire Dastanas +2",
	left_ear="Burana Earring",
    back={ name="Visucius's Mantle", augments={'STR+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},	
	}
	sets.ja['Dark Maneuver'] = {
    body="Karagoz Farsetto",
	neck="Buffoon's Collar",
    hands="Foire Dastanas +2",
	left_ear="Burana Earring",
    back={ name="Visucius's Mantle", augments={'STR+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},	
	}
	
	Idle_Set_Names = {}
	sets.idle = {} 					-- Leave this empty.

	sets.idle.normal = {	
    --ammo="Automat. Oil +3",
    head="Nyame Helm",
    body="Hiza. Haramaki +2",
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet="Hermes' Sandals",
    neck={ name="Bathy Choker +1", augments={'Path: A',}},
    waist="Moonbow Belt +1",
    left_ear="Enmerkar Earring",
    right_ear="Sroda Earring",
    left_ring="Defending Ring",
    right_ring="C. Palug Ring",
    back={ name="Visucius's Mantle", augments={'STR+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	
	TH_Set_Names = {'TH'}
	sets.TH = {}
	sets.TH.TH = {
    head="White Rarab Cap +1",
	--ammo="Perfect Lucky Egg",
    waist="Chaac Belt",
    feet={ name="Herculean Boots", augments={'"Dual Wield"+1','Attack+5','"Treasure Hunter"+1',}},
	}
	
	sets.precast = {}               -- leave this empty
	sets.precast.fastcast = {
    head={ name="Carmine Mask", augments={'Accuracy+15','Mag. Acc.+10','"Fast Cast"+3',}},
    body={ name="Taeon Tabard", augments={'"Fast Cast"+5','Phalanx +3',}},
    hands={ name="Taeon Gloves", augments={'"Fast Cast"+5','Phalanx +3',}},
    legs={ name="Taeon Tights", augments={'"Fast Cast"+5','Phalanx +3',}},
    feet={ name="Taeon Boots", augments={'"Fast Cast"+5','Phalanx +3',}},
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ring="Lebeche Ring",
	right_ring="Weatherspoon Ring +1",
	neck="Voltsurge Torque",
    right_ear="Loquacious Earring",
	}	
    sets.midcast = {}               -- leave this empty  

    sets.aftercast = {}             -- leave this empty
	
	sets.adoulin = {}
	sets.adoulin.movement = {body="Councilor's Garb",}   --auto swaps when in adoulin 
 

end

function precast(spell)
    if  spell.type ~= 'JobAbility' then
        equip(sets.ja.normal)
	end
    if  spell.action_type == 'Magic' then
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
end


function idle()
	if player.status =="Engaged" then --, When drawing weapon
		if Puppet_Mode == true then
			equip(sets.Puppet_Mode[sets.Puppet_Mode.index[Puppet_Mode_Index]])
		elseif Master_Mode == true then
			equip(sets.Master_Mode[sets.Master_Mode.index[Master_Mode_Index]])
		end
	end
	if player.status =='Idle' then
        equip(sets.idle.normal) 
    end
end

function status_change(new,old)
 idle()
end  


Puppet_Mode = true --, If true, default set is tanking TP array.
Master_Mode = true --, TP set order, looks for Tanking TP set before 2H TP

function self_command(command) --, Allows of use of various commands
	if command == 'toggle TP set' then --, When using the command as specified at the top of this lua, then executes these functions
		if Puppet_Mode == true then --, Checks whether or not the Tank_Mode Mode is active,
			Puppet_Mode_Index = Puppet_Mode_Index + 1 --, Cycles through the Index, starts at 1 when switching or starting game
			if Puppet_Mode_Index > #sets.Puppet_Mode.index then Puppet_Mode_Index = 1 end 
			windower.add_to_chat('Puppet mode --> ' .. sets.Puppet_Mode.index[Puppet_Mode_Index] ..'') --, Sends a message ingame, not visible to others.
			--if player.status == 'Engaged' then
				equip(sets.Puppet_Mode[sets.Puppet_Mode.index[Puppet_Mode_Index]])
			--end
		elseif Puppet_Mode == false then
			if Master_Mode == true then
				Master_Mode_Index = Master_Mode_Index + 1
				if Master_Mode_Index > #sets.Master_Mode.index then Master_Mode_Index = 1 end
				windower.add_to_chat('Master mode --> ' .. sets.Master_Mode.index[Master_Mode_Index] ..'')
				--if player.status == 'Engaged' then
						equip(sets.Master_Mode[sets.Master_Mode.index[Master_Mode_Index]])
				end
			end		
		end
	if command == 'toggle puppet mode set' then
		Puppet_Mode_Index = Puppet_Mode_Index + 1
		if Puppet_Mode_Index > #sets.Puppet_Mode.index then Puppet_Mode_Index = 1 end
		windower.add_to_chat('Puppet mode --> ' .. sets.Puppet_Mode.index[Puppet_Mode_Index] ..'')
		if player.status == 'Engaged' then
			equip(sets.Puppet_Mode[sets.Puppet_Mode.index[Puppet_Mode_Index]])
		end
	elseif command == 'toggle puppet mode' then
		if Puppet_Mode == true then
			Puppet_Mode = false
			windower.add_to_chat('<----- Puppet Mode: [Off] ----->')
        else
			Puppet_Mode = true
			windower.add_to_chat('<----- Puppet Mode: [On] ----->')
		end
		status_change(player.status)
	elseif command == 'toggle master mode' then
		if Master_Mode == true then
			Master_Mode = false
			windower.add_to_chat('<----- Master Mode: [Off] ----->')
        else
			Master_Mode = true
			windower.add_to_chat('<----- Master Mode: [On] ----->')
		end
	end
	if command == 'toggle TH set' then
        TH_Index = TH_Index +1
    if TH_Index > #TH_Set_Names then TH_Index = 1 end
        windower.add_to_chat('TH mode is now: '..TH_Set_Names[TH_Index])
        equip(sets.TH[TH_Set_Names[TH_Index]])
    end
	if command == 'toggle run set' then
        windower.add_to_chat('Movement set equipped')
		equip(sets.idle.normal)
	end
	if command == 'toggle weapons set' then
        Weapons_Index = Weapons_Index +1
        if Weapons_Index > #Weapons_Set_Names then Weapons_Index = 1 end
        windower.add_to_chat('Weapon is now: '..Weapons_Set_Names[Weapons_Index])
        equip(sets.weapons[Weapons_Set_Names[Weapons_Index]])
    end
end


function file_unload() --, Unbinds defined keybinds when changing jobs, can also use "send_command('clearbinds')" to wipe any and all
send_command('unbind f9')
send_command('unbind !f9')
send_command('unbind ^f9')
send_command('unbind f10')
send_command('unbind !f10')
send_command('unbind f12')
send_command('unbind !f12')
send_command('unbind f7')
send_command('unbind !f7')
send_command('unbind !numpad1')
send_command('unbind ^numpad1')
send_command('unbind !numpad0')
send_command('unbind !numpad7')
end
