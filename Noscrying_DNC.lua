function get_sets()
	send_command('bind f9 gs c toggle melee set') -- F9 = Cycle through
	send_command('bind f10 gs c toggle run set') -- F10 = Cycle through	
	Melee_Index = 1
	Run_Index = 1

	Melee_Set_Names = {'normal', 'Hybrid', 'DT'}
	sets.melee = {} 				-- Leave this empty.
	sets.melee.normal = {
	ammo="Coiste Bodhar",
    head="Adhemar Bonnet +1",
    body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    legs="Meghanada Chausses +2",
    feet={ name="Herculean Boots", augments={'Accuracy+28','"Triple Atk."+4',}},
    neck="Etoile Gorget +1",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Sherida Earring",
	right_ear="Cessance Earring",
    left_ring="Gere Ring",
    right_ring="Epona's Ring",
	back="Sacro Mantle",
	}
	sets.melee.DT = {
    ammo="Coiste Bodhar",
    head="Malignance Chapeau",
    body="Malignance Tabard",
    hands="Malignance Gloves",
    legs="Malignance Tights",
    feet="Malignance Boots",
    neck={ name="Etoile Gorget +1", augments={'Path: A',}},
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Sherida Earring",
    right_ear="Cessance Earring",
    left_ring="Moonlight Ring",
    right_ring="Defending Ring",
    back="Moonbeam Cape",
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
    left_ring="Gere Ring",
    right_ring="Epona's Ring",
	back="Sacro Mantle",
	}
	sets.melee.Hybrid = {	
    ammo="Coiste Bodhar",
    head="Malignance Chapeau",
    body="Malignance Tabard",
    hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    legs="Meg. Chausses +2",
    feet="Malignance Boots",
    neck="Etoile Gorget +1",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Sherida Earring",
    right_ear="Odnowa Earring +1",
    left_ring="Moonlight Ring",
    right_ring="Lehko's Ring",
    back="Sacro Mantle",	
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
	back="Sacro Mantle",
	}
	
	Run_Set_Names = {"Regain", "EVA/DT"}
	sets.run = {}
	sets.run["Regain"] =  {
    ammo="Staunch Tathlum +1",
    head="Gleti's Mask",
    body="Gleti's Cuirass",
    hands="Gleti's Gauntlets",
    legs="Gleti's Breeches",
    feet="Tandava Crackows",
    neck={ name="Bathy Choker +1", augments={'Path: A',}},
    waist="Engraved Belt",
    left_ear="Infused Earring",
    right_ear="Eabani Earring",
    left_ring="Chirich Ring +1",
    right_ring="Defending Ring",
    back="Archon Cape",
	}	
	sets.run["EVA/DT"] = { 
	ammo="Staunch Tathlum +1",
    head="Nyame Helm", --, 7
    body="Nyame Mail", --, 9
    hands="Nyame Gauntlets", --, 7
    legs="Nyame Flanchard", --, 8
    feet="Tandava Crackows",
    neck="Warder's Charm +1",
    waist="Engraved Belt",
    left_ear="Infused Earring",
    right_ear="Eabani Earring",
    left_ring="Moonlight Ring",
    right_ring="Defending Ring",	--, 10 
    back="Archon Cape",
	}	
	
	sets.ws = {} 					-- Leave this empty.
	sets.ws['Aeolian Edge'] = {
    ammo="Oshasha's Treatise",
    head={ name="Herculean Helm", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','Weapon skill damage +5%','STR+9','Mag. Acc.+1',}},
    body="Nyame Mail",
    hands={ name="Herculean Gloves", augments={'"Mag.Atk.Bns."+23','Weapon skill damage +4%','Mag. Acc.+5',}},
    legs={ name="Herculean Trousers", augments={'Mag. Acc.+15 "Mag.Atk.Bns."+15','Weapon skill damage +5%','"Mag.Atk.Bns."+15',}},
    feet={ name="Herculean Boots", augments={'"Mag.Atk.Bns."+23','Weapon skill damage +5%','Mag. Acc.+13',}},
    neck="Sibyl Scarf",
    waist="Orpheus's Sash",
    left_ear="Friomisi Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
    right_ring="Arvina Ringlet +1",
    back="Argocham. Mantle",
}
	sets.ws["Rudra's Storm"] = {
    ammo="Oshasha's Treatise",
    head={ name="Herculean Helm", augments={'Accuracy+3','AGI+2','Weapon skill damage +7%','Accuracy+18 Attack+18','Mag. Acc.+15 "Mag.Atk.Bns."+15',}},
    body="Meg. Cuirie +2",
    hands="Meg. Gloves +2",
	legs="Horos Tights +2",
    feet={ name="Lustra. Leggings +1", augments={'HP+65','STR+15','DEX+15',}},
    neck="Etoile Gorget +1",
    waist={ name="Kentarch Belt +1", augments={'Path: A',}},
    left_ear="Sherida Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Ilabrat Ring",
    right_ring="Epaminondas's Ring",
    back="Sacro Mantle",
	}
	sets.ws['Pyrrhic Kleos'] = {
	ammo="Coiste Bodhar",
    head="Blistering Sallet +1",
    body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    hands={ name="Herculean Gloves", augments={'Accuracy+27','"Triple Atk."+3','DEX+15',}},
    legs="Meghanada Chausses +2",
    feet={ name="Lustra. Leggings +1", augments={'HP+65','STR+15','DEX+15',}},
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Sherida Earring",
    right_ear="Brutal Earring",
    left_ring="Gere Ring",
    right_ring="Ilabrat Ring",
    back="Sacro Mantle",
	}
	sets.ws['Evisceration'] = {
	ammo="Coiste Bodhar",
    head="Adhemar Bonnet +1",
    body="Meg. Cuirie +2",
	hands="Gleti's Gauntlets",
    legs="Gleti's Breeches",
	feet="Gleti's Boots",
    feet={ name="Lustra. Leggings +1", augments={'HP+65','STR+15','DEX+15',}},
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Sherida Earring",
    right_ear="Odr Earring",
    left_ring="Lehko's Ring",
    right_ring="Ilabrat Ring",
    back="Sacro Mantle",
	}
	sets.ws['Shark Bite'] = {
    ammo="Oshasha's Treatise",
    head={ name="Herculean Helm", augments={'Accuracy+3','AGI+2','Weapon skill damage +7%','Accuracy+18 Attack+18','Mag. Acc.+15 "Mag.Atk.Bns."+15',}},
    body="Meg. Cuirie +2",
    hands="Meg. Gloves +2",
	legs="Horos Tights +2",
    feet={ name="Lustra. Leggings +1", augments={'HP+65','STR+15','DEX+15',}},
    neck="Etoile Gorget +1",
    waist={ name="Kentarch Belt +1", augments={'Path: A',}},
    left_ear="Sherida Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Ilabrat Ring",
    right_ring="Epaminondas's Ring",
    back="Sacro Mantle",
	}
	sets.ws['Savage Blade'] = {
    ammo="Oshasha's Treatise",
    head={ name="Blistering Sallet +1", augments={'Path: A',}},
    body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    hands="Meg. Gloves +2",
	legs="Horos Tights +2",
    feet={ name="Herculean Boots", augments={'Accuracy+28','"Triple Atk."+4',}},
    neck="Rep. Plat. Medal",
    waist={ name="Kentarch Belt +1", augments={'Path: A',}},
    left_ear="Sherida Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Gere Ring",
    right_ring="Epaminondas's Ring",
	back="Sacro Mantle",
	}
	
	
	sets.ja = {} 					-- Leave this empty.
	sets.ja['Chocobo Jig II'] = set_combine(sets.melee.DT, {
	legs="Horos Tights +2",
	feet="Maxixi Toe Shoes +1",
	})
	sets.ja['Spectral Jig'] = set_combine(sets.melee.DT, {
	legs="Horos Tights +2",
	feet="Maxixi Toe Shoes +1",
	})
	sets.ja.waltz = set_combine(sets.melee.DT, {		
    ammo="Yamarang",
    head={ name="Horos Tiara +1", augments={'Enhances "Trance" effect',}},
    body="Maxixi Casaque +1",
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet="Maxixi Toe Shoes +1",
    neck={ name="Etoile Gorget +1", augments={'Path: A',}},
    waist="Shetal Stone",
    left_ear="Enchntr. Earring +1",
    right_ear="Handler's Earring",
    left_ring="Defending Ring",
    right_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
    back="Sacro Mantle",
	})
	sets.ja['No Foot Rise'] = set_combine(sets.melee.DT, {
	body="Horos Casaque +1",
	})
	sets.ja['Saber Dance'] = set_combine(sets.melee.DT, {
	legs="Horos Tights +2",
	})
	sets.ja['Trance'] = set_combine(sets.melee.DT, {		
	head="Horos Tiara +1",
	})
	sets.ja['Haste Samba'] = set_combine(sets.melee.DT, {		
	head="Maxixi Tiara +1",
	back="Senuna's Mantle",
	})	
	sets.ja['Drain Samba III'] = set_combine(sets.melee.DT, {		
	head="Maxixi Tiara +1",
	back="Senuna's Mantle",
	})	
	
	sets.ja['Violent Flourish'] = set_combine(sets.melee.DT, {
	body="Horos Casaque +1",
	})
	sets.ja['Striking Flourish'] = set_combine(sets.melee.DT, {		
	body="Maculele Casaque +1",
	})
	sets.ja['Reverse Flourish'] = set_combine(sets.melee.DT, {		
	hands="Maculele Bangles +1",
	})
	sets.ja['Climactic Flourish'] = set_combine(sets.melee.DT, {		
	head="Maculele Tiara +1",
	})
	
	sets.ja["Feather Step"] = set_combine(sets.steps, {		
	feet="Maculele Toe Shoes +1",
	})
	sets.ja['Box Step'] = set_combine(sets.steps, {		
	})	
	sets.ja['Stutter Step'] = set_combine(sets.steps, {		
	})	
	sets.steps = {
    ammo="Yamarang",
    head="Malignance Chapeau",
    body="Malignance Tabard",
    hands="Malignance Gloves",
    legs="Malignance Tights",
    feet="Malignance Boots",
    neck={ name="Etoile Gorget +1", augments={'Path: A',}},
    waist={ name="Kentarch Belt +1", augments={'Path: A',}},
    left_ear="Crep. Earring",
    right_ear="Odr Earring",
    left_ring="Chirich Ring +1",
    right_ring="Chirich Ring +1",
    back="Sacro Mantle",	
	}
	
	sets.idle = {} 					-- Leave this empty.
	sets.idle.normal = {
	ammo="Yamarang",
    head="Gleti's Mask",
    body="Gleti's Cuirass",
	hands="Gleti's Gauntlets",
    legs="Gleti's Breeches",
	feet="Gleti's Boots",
    neck="Elite Royal Collar",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Sherida Earring",
	right_ear="Cessance Earring",
	left_ring="Epona\'s Ring",
	right_ring="Defending Ring",
	back="Moonbeam Cape",
	}
	sets.precast = {}               -- leave this empty    
	sets.precast.fastcast = {
    ammo="Sapience Orb",
    head={ name="Herculean Helm", augments={'Accuracy+15','"Triple Atk."+4','Attack+14',}},
    body={ name="Taeon Tabard", augments={'"Snapshot"+5','AGI+10',}},
    hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
    legs="Enif Cosciales",
    feet="Jute Boots +1",
    neck="Voltsurge Torque",
    waist="Engraved Belt",
    left_ear="Loquac. Earring",
    right_ear="Enchntr. Earring +1",
    left_ring="Weather. Ring +1",
    right_ring="Lebeche Ring",
    back="Sacro Mantle",
	}
    sets.midcast = {}               -- leave this empty    
    sets.aftercast = {}             -- leave this empty

end

function precast(spell)
    if  spell.type == 'Magic' then
        equip(sets.precast.fastcast)
	end
    if sets.ja[spell.name] then
        equip(sets.ja[spell.name])  
	end
	if spell.name == "Feather Step" then
		equip(sets.ja["Feather Step"])
	end
	if spell.name == "Box Step" or spell.name == "Stutter Step" then
		equip(sets.steps)
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
	if spell.name == "Feather Step" then
		equip(sets.ja["Feather Step"])
	end
	if spell.name == "Box Step" or spell.name == "Stutter Step" then
		equip(sets.steps)
	end	
end

function aftercast(spell)
	idle()
end

function idle()
    if player.status=='Engaged' then
        equip(sets.melee[Melee_Set_Names[Melee_Index]])
    else
        equip(sets.run["DT"]) 
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
	if command == 'toggle run set' then
        Run_Index = Run_Index +1
        if Run_Index > #Run_Set_Names then Run_Index = 1 end
        windower.add_to_chat('Run mode is now: '..Run_Set_Names[Run_Index])
		equip(sets.run[Run_Set_Names[Run_Index]])
	end
end
