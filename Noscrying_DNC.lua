function get_sets()
	send_command('bind f9 gs c toggle melee set') -- F9 = Cycle through
	Melee_Index = 1

	Melee_Set_Names = {'normal', 'DT'}
	sets.melee = {} 				-- Leave this empty.
	sets.melee.normal = {
	ammo="Ginsen",
    head="Adhemar Bonnet +1",
    body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    legs="Meghanada Chausses +2",
    feet={ name="Herculean Boots", augments={'Accuracy+28','"Triple Atk."+4',}},
    neck="Lissome Necklace",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Sherida Earring",
	right_ear="Cessance Earring",
	left_ring="Epona\'s Ring",
	right_ring="Gere Ring",
	back="Letalis Mantle",
	}
	sets.melee.DT = {
	ammo="Ginsen",
    head="Malignance Chapeau",
    body="Malignance Tabard",
	hands="Malignance Gloves",
    legs="Malignance Tights",
	feet="Malignance Boots",
    neck="Elite Royal Collar",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Sherida Earring",
	right_ear="Cessance Earring",
	left_ring="Epona\'s Ring",
	right_ring="Defending Ring",
    back="Letalis Mantle",
	}
	
	sets.melee.TH = {
	ammo="Perfect Lucky Egg",
    head="White Rarab Cap +1",
    body="Malignance Tabard",
	hands="Malignance Gloves",
    legs="Maglignance Tights",
	feet="Malignance Boots",
    neck="Lissome Necklace",
    waist="Chaac Belt",
    left_ear="Sherida Earring",
	right_ear="Cessance Earring",
	left_ring="Epona\'s Ring",
	right_ring="Ilabrat Ring",
	back="Letalis Mantle",
	}
	
	sets.ranged = {}
	sets.ranged.normal = {
    head="Malignance Chapeau",
    body="Malignance Tabard",
	hands="Malignance Gloves",
    legs="Maglignance Tights",
	feet="Malignance Boots",
    neck="Peacock Amulet",
    waist="Eschan Stone",
    left_ear="Eabani Earring",
	right_ear="Suppanomimi",
    left_ring="Epona's Ring",
    right_ring="Mummu Ring",
	back="Letalis Mantle",
	}
	
	
	sets.ws = {} 					-- Leave this empty.
	sets.ws['Aeolian Edge'] = {
    ammo="Oshasha's Treatise",
    head={ name="Herculean Helm", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','Weapon skill damage +5%','STR+9','Mag. Acc.+1',}},
    body="Rawhide Vest",
    hands={ name="Herculean Gloves", augments={'"Mag.Atk.Bns."+23','Weapon skill damage +4%','Mag. Acc.+5',}},
    legs={ name="Herculean Trousers", augments={'Mag. Acc.+15 "Mag.Atk.Bns."+15','Weapon skill damage +5%','"Mag.Atk.Bns."+15',}},
    feet={ name="Herculean Boots", augments={'"Mag.Atk.Bns."+23','Weapon skill damage +5%','Mag. Acc.+13',}},
    neck="Sibyl Scarf",
    waist="Orpheus's Sash",
    left_ear="Friomisi Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Fenrir Ring",
    right_ring="Fenrir Ring",
    back="Argocham. Mantle",
}
	sets.ws['Rudra\'s Storm'] = {
    ammo="Oshasha's Treatise",
    head={ name="Blistering Sallet +1", augments={'Path: A',}},
    body="Malignance Tabard",
    hands={ name="Herculean Gloves", augments={'"Triple Atk."+3','STR+13',}},
    legs="Meg. Chausses +2",
    feet={ name="Herculean Boots", augments={'Accuracy+28','"Triple Atk."+4',}},
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Ishvara Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Epona's Ring",
    right_ring="Ilabrat Ring",
    back="Sacro Mantle",
	}
	sets.ws['Pyrrhic Kleos'] = {
    ammo="Oshasha's Treatise",
    head={ name="Blistering Sallet +1", augments={'Path: A',}},
    body="Meg. Cuirie +2",
    hands={ name="Herculean Gloves", augments={'"Triple Atk."+3','STR+13',}},
    legs="Meg. Chausses +2",
    feet={ name="Herculean Boots", augments={'Accuracy+28','"Triple Atk."+4',}},
    neck="Rep. Plat. Medal",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Sherida Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Gere Ring",
    right_ring="Ilabrat Ring",
    back="Sacro Mantle",
	}
	sets.ws['Evisceration'] = {
    ammo="Oshasha's Treatise",
    head={ name="Blistering Sallet +1", augments={'Path: A',}},
    body="Mummu Jacket +2",
    hands="Mummu Wrists +2",
    legs="Mummu Kecks +2",
    feet="Mummu Gamash. +2",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Ishvara Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Epona's Ring",
    right_ring="Mummu Ring",
    back="Sacro Mantle",
	}
	sets.ws['Shark Bite'] = {
    ammo="Oshasha's Treatise",
    head={ name="Blistering Sallet +1", augments={'Path: A',}},
    body="Malignance Tabard",
    hands={ name="Herculean Gloves", augments={'"Triple Atk."+3','STR+13',}},
    legs="Meg. Chausses +2",
    feet="Malignance Boots",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Ishvara Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Epona's Ring",
    right_ring="Ilabrat Ring",
    back="Sacro Mantle",
	}
	sets.ws['Savage Blade'] = {
    ammo="Oshasha's Treatise",
    head={ name="Blistering Sallet +1", augments={'Path: A',}},
    body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    hands={ name="Herculean Gloves", augments={'"Triple Atk."+3','STR+13',}},
	legs="Meghanada Chausses +2",
    feet={ name="Herculean Boots", augments={'Accuracy+28','"Triple Atk."+4',}},
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Brutal Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Epona\'s Ring",
    right_ring="Gere Ring",
	back="Sacro Mantle",
	}
	
	
	sets.ja = {} 					-- Leave this empty.
	sets.ja['Violent Flourish'] = {
	body="Etoile Casaque",
	} 	
		
	sets.ja['Chocobo Jig II'] = {
	legs="Etoile Tights",
	} 
		
	sets.ja['Spectral Jig'] = {
	legs="Etoile Tights",
	} 
		
	sets.ja.waltz = {		
	head="Etoile Tiara",
	body="Dancer\'s Casaque",
	}
		
	sets.idle = {} 					-- Leave this empty.
	sets.idle.normal = {
	ammo="Ginsen",
    head="Malignance Chapeau",
    body="Malignance Tabard",
	hands="Malignance Gloves",
    legs="Malignance Tights",
	feet="Malignance Boots",
    neck="Elite Royal Collar",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Sherida Earring",
	right_ear="Cessance Earring",
	left_ring="Epona\'s Ring",
	right_ring="Defending Ring",
	back="Moonbeam Cape",
	}
	sets.precast = {}               -- leave this empty    
    sets.midcast = {}               -- leave this empty    
    sets.aftercast = {}             -- leave this empty

end

function precast(spell)
    if spell.type == 'Flourishes I' then
        equip(sets.ja[spell.english])
    end
    if spell.type == 'Jigs' then
        equip(sets.ja[spell.english])
    end
    if sets.ja[spell.name] then
        equip(sets.ja[spell.name])  
	end
    if sets.ws[spell.name] then
        equip(sets.ws[spell.name])        
    end
	if spell.action_type == 'Ranged Attack' then
	equip (sets.ranged.normal)
	end	
end


function midcast(spell)
    if spell.name:match('Curing') or spell.name:match('Divine') then
        equip(sets.ja.waltz)
	end
end

function aftercast(spell)
	idle()
end

function idle()
    if player.status=='Engaged' then
        equip(sets.melee[Melee_Set_Names[Melee_Index]])
    else
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
end