function get_sets()
	send_command('bind f9 gs c toggle melee set') -- F9 = Cycle through
	send_command('bind !f9 gs c toggle puppet set') -- F10 = Cycle through
	--send_command('bind !f9 gs c toggle DT set') -- F10 = Cycle through
	send_command('bind f12 gs c toggle TH set') -- F12 = Cycle through
	send_command('bind f7 gs c toggle weapons set') -- F9 = Cycle through
	Melee_Index = 1
	Puppet_Index = 1
	TH_Index = 1
	DT_Index = 1
	weapons_Index = 1

	weapons_Set_Names = {'Verethragna', 'Sakpata','Ohtas'}
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
	
	Melee_Set_Names = {'normal','DT','Hybrid'}
	sets.melee = {} 					-- Leave this empty.
	sets.melee.normal = {
		ammo="Automat. Oil +3",
    head={ name="Herculean Helm", augments={'Accuracy+15','"Triple Atk."+4','Attack+14',}},
    body="Tali'ah Manteel +2",
    hands={ name="Herculean Gloves", augments={'Accuracy+27','"Triple Atk."+3','DEX+15',}},
    legs={ name="Herculean Trousers", augments={'Accuracy+28','"Triple Atk."+4','AGI+5',}},
    feet={ name="Herculean Boots", augments={'Accuracy+28','"Triple Atk."+4',}},
    neck="Shulmanu Collar",
    waist="Moonbow Belt +1",
    left_ear="Cessance Earring",
    right_ear="Sroda Earring",
    left_ring="Epona's Ring",
    right_ring="Gere Ring",
    back={ name="Visucius's Mantle", augments={'STR+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	sets.melee.Hybrid = {
	     ammo="Automat. Oil +3",
    head="Tali\'ah Turban +2",
    body="Tali\'ah Manteel +2",
    hands="Foire Dastanas +2",
    legs={ name="Herculean Trousers", augments={'Accuracy+28','"Triple Atk."+4','AGI+5',}},
    feet="Tali'ah Crackows +2",
    neck="Shulmanu Collar",
    waist="Moonbow Belt +1",
    left_ear="Crepuscular Earring",
    right_ear="Sroda Earring",
    left_ring="Epona\'s Ring",
    right_ring="Gere Ring",
    back={ name="Visucius's Mantle", augments={'STR+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}	
	sets.melee.DT = {
	     ammo="Automat. Oil +3",
    head="Malignance Chapeau",
    body="Malignance Tabard",
	hands="Malignance Gloves",
    legs="Malignance Tights",
    feet="Malignance Boots",
    neck="Shulmanu Collar",
	waist="Moonbow Belt",
    left_ear="Crepuscular Earring",
	right_ear="Sroda Earring",
    left_ring="Epona's Ring",
	right_ring="Cath Palug Ring",
    back={ name="Visucius's Mantle", augments={'STR+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	
	
	Puppet_Set_Names = {'PUPDA', 'PUPDT','PUPHaste'}
	sets.puppet = {}
	sets.puppet.PUPDA = {
	ammo="Automat. Oil +3",
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

	sets.puppet.PUPDT = {
    ammo="Automat. Oil +3",
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
	sets.puppet.PUPHaste = {
	ammo="Automat. Oil +3",
    head={ name="Taeon Chapeau", augments={'Pet: Accuracy+19 Pet: Rng. Acc.+19','Pet: "Dbl. Atk."+5','Pet: Damage taken -4%',}},
    body={ name="Taeon Tabard", augments={'Pet: Accuracy+19 Pet: Rng. Acc.+19','Pet: "Dbl. Atk."+5','Pet: Damage taken -4%',}},
    hands={ name="Taeon Gloves", augments={'Pet: Accuracy+25 Pet: Rng. Acc.+25','Pet: "Dbl. Atk."+5','Pet: Damage taken -4%',}},
    legs={ name="Taeon Tights", augments={'Pet: Accuracy+25 Pet: Rng. Acc.+25','Pet: "Dbl. Atk."+5','Pet: Damage taken -4%',}},
    feet="Tali'ah Crackows +2",
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
    head={ name="Blistering Sallet +1", augments={'Path: A',}},
    body="Tali\'ah Manteel +2",
    hands={ name="Ryuo Tekko +1", augments={'DEX+12','Accuracy+25','"Dbl.Atk."+4',}},
    neck="Rep. Plat. Medal",
	legs="Hizamaru Hizayoroi +2",
    feet={ name="Herculean Boots", augments={'Accuracy+28','"Triple Atk."+4',}},
    waist="Moonbow Belt +1",
    left_ring="Chirich Ring +1",
    right_ring="Gere Ring",
	left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    right_ear={ name="Karagoz Earring", augments={'System: 1 ID: 1676 Val: 0','Accuracy+9','Mag. Acc.+9',}},
	back={ name="Visucius's Mantle", augments={'STR+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	
	}
	sets.ws['Shijin Spiral'] = {
    head={ name="Blistering Sallet +1", augments={'Path: A',}},
    body="Tali'ah Manteel +2",
    hands={ name="Herculean Gloves", augments={'"Mag.Atk.Bns."+23','Weapon skill damage +4%','Mag. Acc.+5',}},
    legs="Hiza. Hizayoroi +2",
    feet={ name="Herculean Boots", augments={'Accuracy+28','"Triple Atk."+4',}},
    neck="Fotia Gorget",
    waist="Moonbow Belt +1",
    left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    right_ear="Sroda Earring",
    left_ring="Epona's Ring",
    right_ring="Gere Ring",
    back={ name="Visucius's Mantle", augments={'STR+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	sets.ws['Stringing Pummel'] = {
    head={ name="Blistering Sallet +1", augments={'Path: A',}},	
    body="Tali\'ah Manteel +2",
    hands={ name="Ryuo Tekko +1", augments={'DEX+12','Accuracy+25','"Dbl.Atk."+4',}},
    neck="Rep. Plat. Medal",
    waist="Moonbow Belt +1",
    legs="Hizamaru Hizayoroi +2",
    feet={ name="Herculean Boots", augments={'Accuracy+28','"Triple Atk."+4',}},
    left_ring="Epona\'s Ring",
    right_ring="Gere Ring",
	left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    right_ear="Sroda Earring",
    back={ name="Visucius's Mantle", augments={'STR+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},	
	} 
	sets.ws['Tornado Kick'] = {
    head={ name="Blistering Sallet +1", augments={'Path: A',}},
    body="Tali\'ah Manteel +2",
    hands={ name="Herculean Gloves", augments={'"Triple Atk."+3','STR+13',}},
    neck="Rep. Plat. Medal",
    waist="Moonbow Belt +1",
    legs="Hizamaru Hizayoroi +2",
    feet={ name="Herculean Boots", augments={'Accuracy+28','"Triple Atk."+4',}},
    left_ring="Epona\'s Ring",
    right_ring="Gere Ring",
	left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    right_ear="Sroda Earring",
    back={ name="Visucius's Mantle", augments={'STR+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},	
	} 
	sets.ws['Spinning Attack'] = {
    head={ name="Blistering Sallet +1", augments={'Path: A',}},
    body="Tali\'ah Manteel +2",
    hands={ name="Herculean Gloves", augments={'"Triple Atk."+3','STR+13',}},
    neck="Rep. Plat. Medal",
    waist="Moonbow Belt +1",
    legs="Hizamaru Hizayoroi +2",
    feet={ name="Herculean Boots", augments={'Accuracy+28','"Triple Atk."+4',}},
	left_ring="Gere Ring",
    right_ring="Refuscent Ring",
	left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    right_ear="Sroda Earring",
    back={ name="Visucius's Mantle", augments={'STR+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},	
	}
	sets.ws['Shoulder Tackle'] = {
    head={ name="Blistering Sallet +1", augments={'Path: A',}},
    body="Tali\'ah Manteel +2",
    hands={ name="Herculean Gloves", augments={'"Triple Atk."+3','STR+13',}},
    neck="Rep. Plat. Medal",
    waist="Moonbow Belt +1",
    legs="Hizamaru Hizayoroi +2",
    feet={ name="Herculean Boots", augments={'Accuracy+28','"Triple Atk."+4',}},
	left_ring="Epona\'s Ring",
    right_ring="Refuscent Ring",
	left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    right_ear="Sroda Earring",
    back={ name="Visucius's Mantle", augments={'STR+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},	
	}
	sets.ws['Asuran Fists'] = {
    head={ name="Blistering Sallet +1", augments={'Path: A',}},
    body="Hizamaru Haramaki +1",
    hands={ name="Herculean Gloves", augments={'"Triple Atk."+3','STR+13',}},
    neck="Rep. Plat. Medal",
    waist="Fotia Belt",
    legs="Hizamaru Hizayoroi +2",
    feet={ name="Herculean Boots", augments={'Accuracy+28','"Triple Atk."+4',}},
	left_ring="Refuscent Ring",
    right_ring="Gere Ring",
	left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    right_ear="Ishvara Earring",
    back={ name="Visucius's Mantle", augments={'STR+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},	
	} 
	sets.ws['Howling Fist'] = {
    head={ name="Blistering Sallet +1", augments={'Path: A',}},
    body="Tali\'ah Manteel +2",
    hands={ name="Herculean Gloves", augments={'"Triple Atk."+3','STR+13',}},
    neck="Rep. Plat. Medal",
    waist="Moonbow Belt +1",
    legs="Hizamaru Hizayoroi +2",
    feet={ name="Herculean Boots", augments={'Accuracy+28','"Triple Atk."+4',}},
    left_ring="Epona\'s Ring",
    right_ring="Gere Ring",
	left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    right_ear="Sroda Earring",
    back={ name="Visucius's Mantle", augments={'STR+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},	
	} 	
	sets.ws['Raging Fists'] = {
    head={ name="Blistering Sallet +1", augments={'Path: A',}},
    body="Tali\'ah Manteel +2",
    hands={ name="Herculean Gloves", augments={'"Triple Atk."+3','STR+13',}},
    neck="Rep. Plat. Medal",
    waist="Moonbow Belt +1",
    legs="Hizamaru Hizayoroi +2",
    feet={ name="Herculean Boots", augments={'Accuracy+28','"Triple Atk."+4',}},
	left_ring="Refuscent Ring",
    right_ring="Gere Ring",
	left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    right_ear="Sroda Earring",
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
    ammo="Automat. Oil +3",
    head="Malignance Chapeau",
    body="Hizamaru Haramaki +2",
    hands="Malignance Gloves",
    legs="Malignance Tights",
    feet="Hermes' Sandals",
    neck="Elite Royal Collar",
    waist="Moonbow Belt +1",
    left_ear="Enmerkar Earring",
    right_ear="Sroda Earring",
    left_ring="Defending Ring",
	right_ring="Cath Palug Ring",
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
	right_ring="Weatherspoon Ring",
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
	if player.status =='Engaged' and player.equipment.main == "Verethragna" then
		equip(sets.melee[Melee_Set_Names[Melee_Index]])
	end
	if player.status=='Engaged' and player.equipment.main == "Sakpata's Fists" or player.equipment.main == "Ohtas" then
		equip(sets.puppet[Puppet_Set_Names[Puppet_Index]])
	end
	if player.status =='Idle' then
        equip(sets.idle.normal) 
    end
end

function status_change(new,old)
 idle()
end  

function self_command(command)
	if command == 'toggle melee set' then
        Melee_Index = Melee_Index +1
        if Melee_Index > #Melee_Set_Names then Melee_Index = 1 end
        windower.add_to_chat('TP mode is now: '..Melee_Set_Names[Melee_Index])
        equip(sets.melee[Melee_Set_Names[Melee_Index]])
    end
	if command == 'toggle puppet set' then
        Puppet_Index = Puppet_Index +1
        if Puppet_Index > #Puppet_Set_Names then Puppet_Index = 1 end
                windower.add_to_chat('Puppet mode is now: '..Puppet_Set_Names[Puppet_Index])
		equip(sets.puppet[Puppet_Set_Names[Puppet_Index]])
	end
	if command == 'toggle DT set' then
        DT_Index = DT_Index +1
        if DT_Index > #DT_Set_Names then DT_Index = 1 end
                windower.add_to_chat('DT mode is now: '..DT_Set_Names[DT_Index])
		equip(sets.DT[DT_Set_Names[DT_Index]])
	end
	if command == 'toggle TH set' then
        TH_Index = TH_Index +1
    if TH_Index > #TH_Set_Names then TH_Index = 1 end
        windower.add_to_chat('TH mode is now: '..TH_Set_Names[TH_Index])
        equip(sets.TH[TH_Set_Names[TH_Index]])
    end
	if command == 'toggle weapons set' then
        weapons_Index = weapons_Index +1
        if weapons_Index > #weapons_Set_Names then weapons_Index = 1 end
        windower.add_to_chat('Weapon is now: '..Weapons_Set_Names[Weapons_Index])
        equip(sets.weapons[weapons_Set_Names[weapons_Index]])
    end
end


function user_unload()
send_command('unbind f9')
send_command('unbind !f9')
send_command('unbind f10')
send_command('unbind !f10')
send_command('unbind f12')
send_command('unbind !f12')
send_command('unbind f7')
send_command('unbind !f7')
end