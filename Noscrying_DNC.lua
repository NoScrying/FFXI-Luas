function get_sets()
	send_command('bind f7 gs c toggle Weapons set') -- F10 = Cycle through
	send_command('bind !f7 gs c toggle Sub_Weapon set') -- F10 = Cycle through
	send_command('bind f9 gs c toggle melee set') -- F9 = Cycle through
	send_command('bind !f9 gs c toggle Parrying set') -- F9 = Cycle through
	send_command('bind f10 gs c toggle run set') -- F10 = Cycle through	
	send_command('bind !f10 gs c toggle Regain set') -- F10 = Cycle through	
	
	Melee_Index = 1
	Run_Index = 1
	Weapons_Index = 1
	Sub_Weapon_Index = 1

	Weapons_Set_Names = {"Gleti's Knife", "Tauret"}
	sets.weapons = {}
	sets.weapons["Gleti's Knife"] = {
	main="Gleti's Knife",
	}
	sets.weapons["Tauret"] = {
	main="Tauret",
	}
	
	Sub_Weapon_Names = {"TP Bonus", "Gleti's Knife", "Ternion Dagger +1"} --
	sets.Sub_Weapon = {}
	sets.Sub_Weapon["TP Bonus"] = {
	sub="Fusetto +2",
	}
	sets.Sub_Weapon["Ternion Dagger +1"] = {
	sub="Ternion Dagger +1",
	}
	sets.Sub_Weapon["Gleti's Knife"] = {
	sub="Gleti's Knife",
	}	
	
	Melee_Set_Names = {'normal', 'Hybrid', 'DT'}
	sets.melee = {} 				-- Leave this empty.
	sets.melee.normal = {
	ammo="Coiste Bodhar",
    head="Adhemar Bonnet +1",
    body="Horos Casaque +3",
    hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    legs="Meghanada Chausses +2",
    feet="Horos Toe Shoes +3",
    neck="Etoile Gorget +1",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Sherida Earring",
	right_ear="Cessance Earring",
    left_ring="Gere Ring",
    right_ring="Epona's Ring",
    back={ name="Senuna's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Store TP"+10','Phys. dmg. taken-10%',}},
	}
	sets.melee.DT = {
	ammo="Staunch Tathlum +1",
    head="Malignance Chapeau",
    body="Malignance Tabard",
    hands="Malignance Gloves",
    legs="Malignance Tights",
    feet="Maculele Toe Shoes +2",
    neck={ name="Etoile Gorget +1", augments={'Path: A',}},
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Sherida Earring",
    right_ear="Crepuscular Earring",
    left_ring="Moonlight Ring",
    right_ring="Lehko's Ring",
    back={ name="Senuna's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Store TP"+10','Phys. dmg. taken-10%',}},
	}
	sets.melee.Parrying = {
	ammo="Staunch Tathlum +1",
    head="Malignance Chapeau",
    body="Malignance Tabard",
    hands="Turms Mittens +1",
    legs="Malignance Tights",
    feet="Turms Leggings +1",
    neck={ name="Etoile Gorget +1", augments={'Path: A',}},
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Sherida Earring",
    right_ear="Hermodr Earring",
    left_ring="Moonlight Ring",
    right_ring="Defending Ring",
    back={ name="Senuna's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Store TP"+10','Phys. dmg. taken-10%',}},
	}
	sets.melee.Hybrid = {	
    ammo="Staunch Tathlum +1",
    head="Malignance Chapeau",
    body="Malignance Tabard",
    hands="Malignance Gloves",
    legs="Meg. Chausses +2",
    -- hands="Malignance Gloves",
    -- legs="Malignance Tights",
    feet="Horos Toe Shoes +3",
    neck="Etoile Gorget +1",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    -- waist={ name="Kentarch Belt +1", augments={'Path: A',}},
    left_ear="Sherida Earring",
    right_ear="Odnowa Earring +1",
    left_ring="Moonlight Ring",
    right_ring="Lehko's Ring",
    back={ name="Senuna's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Store TP"+10','Phys. dmg. taken-10%',}},	
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
    back={ name="Senuna's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Store TP"+10','Phys. dmg. taken-10%',}},
	}	
	sets.ranged = {}
	sets.ranged.normal = {
	ammo="Dart",
    head="Malignance Chapeau",
    body="Malignance Tabard",
    hands="Malignance Gloves",
    legs="Malignance Tights",
    feet="Malignance Boots",
    neck="Peacock Amulet",
    waist="Eschan Stone",
    left_ear="Crep. Earring",
    right_ear="Sherida Earring",
    left_ring="Longshot Ring",
    right_ring="Cacoethic Ring",
    back="Sacro Mantle",
	}
	
	Run_Set_Names = {"Regain", "EVA/DT"}
	sets.run = {}
	sets.run["Regain"] =  {
    ammo="Staunch Tathlum +1",
    head="Turms Cap +1",
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
	sets.run["Gleti's Boots"] = {
    ammo="Staunch Tathlum +1",
    head="Turms Cap +1",
    body="Gleti's Cuirass",
    hands="Gleti's Gauntlets",
    legs="Gleti's Breeches",
	feet="Gleti's Boots",
    neck={ name="Bathy Choker +1", augments={'Path: A',}},
    waist="Engraved Belt",
    left_ear="Infused Earring",
    right_ear="Eabani Earring",
    left_ring="Chirich Ring +1",
    right_ring="Defending Ring",
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
    back={ name="Senuna's Mantle", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Magic Damage +10','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
}
	sets.ws["Rudra's Storm"] = {
    ammo="Oshasha's Treatise",
	head="Maculele Tiara +2",
    --body="Horos Casaque +3",
	body="Gleti's Cuirass",
    hands="Maxixi Bangles +3",
	legs="Horos Tights +3",
    feet={ name="Lustra. Leggings +1", augments={'HP+65','STR+15','DEX+15',}},
    neck="Etoile Gorget +1",
    waist={ name="Kentarch Belt +1", augments={'Path: A',}},
    left_ear="Sherida Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Ilabrat Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Senuna's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}
	sets.ws.ClimacticRudra = {
	ammo="Charis Feather",
	}
	
	sets.ws['Pyrrhic Kleos'] = {
    ammo="Coiste Bodhar",
    head={ name="Blistering Sallet +1", augments={'Path: A',}},
    body="Horos Casaque +3",
    hands={ name="Herculean Gloves", augments={'"Triple Atk."+3','STR+13',}},
    legs="Meg. Chausses +2",
    feet={ name="Lustra. Leggings +1", augments={'HP+65','STR+15','DEX+15',}},
    neck={ name="Etoile Gorget +1", augments={'Path: A',}},
    waist="Fotia Belt",
    left_ear="Sherida Earring",
    right_ear="Brutal Earring",
    left_ring="Gere Ring",
    right_ring="Ilabrat Ring",
    back={ name="Senuna's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}
	sets.ws['Exenterator'] = {
	ammo="Coiste Bodhar",
    head="Blistering Sallet +1",
    body="Horos Casaque +3",
    hands={ name="Herculean Gloves", augments={'Accuracy+27','"Triple Atk."+3','DEX+15',}},
    legs="Meghanada Chausses +2",
    feet={ name="Lustra. Leggings +1", augments={'HP+65','STR+15','DEX+15',}},
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Sherida Earring",
    right_ear="Brutal Earring",
    left_ring="Gere Ring",
    right_ring="Ilabrat Ring",
    back={ name="Senuna's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}
	sets.ws.StrikingFlourish = {
	ammo="Charis Feather",
    head="Adhemar Bonnet +1",
    body="Maculele Casaque +2",
	hands="Gleti's Gauntlets",
    legs="Gleti's Breeches",
    feet={ name="Lustra. Leggings +1", augments={'HP+65','STR+15','DEX+15',}},
    neck={ name="Etoile Gorget +1", augments={'Path: A',}},
    waist="Fotia Belt",
    left_ear="Sherida Earring",
    right_ear="Odr Earring",
    left_ring="Lehko's Ring",
    right_ring="Gere Ring",
    back={ name="Senuna's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}},	
	}
	sets.ws['Evisceration'] = {
	ammo="Charis Feather",
    head="Adhemar Bonnet +1",
    body="Meg. Cuirie +2",
	hands="Gleti's Gauntlets",
    legs="Gleti's Breeches",
	feet="Gleti's Boots",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Sherida Earring",
    right_ear="Odr Earring",
    left_ring="Lehko's Ring",
    right_ring="Ilabrat Ring",
    back={ name="Senuna's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}
	sets.ws['Shark Bite'] = {
    ammo="Oshasha's Treatise",
	head="Maculele Tiara +2",
    body="Gleti's Cuirass",
    hands="Maxixi Bangles +3",
	legs="Horos Tights +3",
    feet={ name="Lustra. Leggings +1", augments={'HP+65','STR+15','DEX+15',}},
    neck="Etoile Gorget +1",
    waist={ name="Kentarch Belt +1", augments={'Path: A',}},
    left_ear="Sherida Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Ilabrat Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Senuna's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}
	sets.ws['Spinning Attack'] = {
	ammo="Coiste Bodhar",
    head="Blistering Sallet +1",
    body="Horos Casaque +3",
    hands={ name="Herculean Gloves", augments={'Accuracy+27','"Triple Atk."+3','DEX+15',}},
    legs="Meghanada Chausses +2",
    feet={ name="Lustra. Leggings +1", augments={'HP+65','STR+15','DEX+15',}},
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Sherida Earring",
    right_ear="Brutal Earring",
    left_ring="Gere Ring",
    right_ring="Ilabrat Ring",
    back={ name="Senuna's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	} 
	sets.ws['Asuran Fists'] = {
    ammo="Oshasha's Treatise",
    head="Blistering Sallet +1",
    body="Horos Casaque +3",
    hands={ name="Herculean Gloves", augments={'"Triple Atk."+3','STR+13',}},
    legs="Meghanada Chausses +2",
    feet={ name="Lustra. Leggings +1", augments={'HP+65','STR+15','DEX+15',}},
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Sherida Earring",
    right_ear="Ishwara Earring",
    left_ring="Gere Ring",
    right_ring="Ilabrat Ring",
    back={ name="Senuna's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Store TP"+10','Phys. dmg. taken-10%',}},
	} 
	sets.ws['Raging Fists'] = {
    ammo="Oshasha's Treatise",
    head="Blistering Sallet +1",
    body="Horos Casaque +3",
    hands={ name="Herculean Gloves", augments={'"Triple Atk."+3','STR+13',}},
    legs="Meghanada Chausses +2",
    feet={ name="Lustra. Leggings +1", augments={'HP+65','STR+15','DEX+15',}},
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Sherida Earring",
    right_ear="Ishwara Earring",
    left_ring="Gere Ring",
    right_ring="Ilabrat Ring",
    back={ name="Senuna's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Store TP"+10','Phys. dmg. taken-10%',}},
	} 
	sets.ws['Tornado Kick'] = {
    ammo="Oshasha's Treatise",
	head="Maculele Tiara +2",
    body="Horos Casaque +3",
    hands="Maxixi Bangles +3",
	legs="Horos Tights +3",
    feet={ name="Lustra. Leggings +1", augments={'HP+65','STR+15','DEX+15',}},
    neck="Rep. Plat. Medal",
    waist={ name="Kentarch Belt +1", augments={'Path: A',}},
    left_ear="Sherida Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Sroda Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Senuna's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}	
	
	sets.ja = {} 					-- Leave this empty.
	sets.ja['Chocobo Jig II'] = set_combine(sets.melee.DT, {
	legs="Horos Tights +3",
	feet="Maxixi Toe Shoes +1",
	})
	sets.ja['Spectral Jig'] = set_combine(sets.melee.DT, {
	legs="Horos Tights +3",
	feet="Maxixi Toe Shoes +1",
	})
	sets.ja.Waltz = set_combine(sets.melee.DT, {		
    ammo="Staunch Tathlum +1",
    head={ name="Horos Tiara +3", augments={'Enhances "Trance" effect',}},
    body="Maxixi Casaque +1",
    hands="Malignance Gloves",
    legs="Dashing Subligar",
    feet="Malignance Boots",
    neck={ name="Etoile Gorget +1", augments={'Path: A',}},
    waist="Flume Belt",
    left_ear={ name="Odnowa Earring +1", augments={'Path: A',}},
    right_ear="Eabani Earring",
    left_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
    right_ring="Defending Ring",
    back={ name="Senuna's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Store TP"+10','Phys. dmg. taken-10%',}},
	})
	sets.ja.WaltzSelf = set_combine(sets.melee.DT, {	
    ammo="Yamarang",
    head="Mummu Bonnet +2",
    body="Maxixi Casaque +1",
    hands="Malignance Gloves",
    legs="Dashing Subligar",
    feet="Malignance Boots",
    neck={ name="Etoile Gorget +1", augments={'Path: A',}},
    waist="Flume Belt",
    left_ear={ name="Odnowa Earring +1", augments={'Path: A',}},
    right_ear="Sjofn Earring",
    left_ring="Moonlight Ring",
    right_ring="Defending Ring",
    back={ name="Senuna's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Store TP"+10','Phys. dmg. taken-10%',}},
	})
	sets.ja['No Foot Rise'] = set_combine(sets.melee.DT, {
	body="Horos Casaque +3",
	})
	sets.ja['Saber Dance'] = set_combine(sets.melee.DT, {
	legs="Horos Tights +3",
	})
	sets.ja['Trance'] = set_combine(sets.melee.DT, {		
	head="Horos Tiara +3",
	})
	sets.ja['Haste Samba'] = set_combine(sets.melee.DT, {		
	head="Maxixi Tiara +1",
    back={ name="Senuna's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Store TP"+10','Phys. dmg. taken-10%',}},
	})	
	sets.ja['Drain Samba III'] = set_combine(sets.melee.DT, {		
	head="Maxixi Tiara +1",
    back={ name="Senuna's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Store TP"+10','Phys. dmg. taken-10%',}},
	})	
	
	sets.ja["Animated Flourish"] = set_combine (sets.ja.enmity, {
	})	
	sets.ja['Violent Flourish'] = set_combine(sets.melee.DT, {
	body="Horos Casaque +3",
	})
	sets.ja['Striking Flourish'] = set_combine(sets.melee.DT, {		
	body="Maculele Casaque +1",
	})
	sets.ja['Reverse Flourish'] = set_combine(sets.melee.DT, {		
	hands="Maculele Bangles +2",
	back="Toetapper Mantle",
	})
	sets.ja['Climactic Flourish'] = set_combine(sets.melee.DT, {		
	head="Maculele Tiara +2",
	})
	
	sets.ja["Feather Step"] = set_combine(sets.steps, {		
    hands="Maxixi Bangles +3",
	feet="Maculele Toe Shoes +1",
	})
	sets.ja['Box Step'] = set_combine(sets.steps, {		
    hands="Maxixi Bangles +3",
	})	
	sets.ja['Stutter Step'] = set_combine(sets.steps, {	
    hands="Maxixi Bangles +3",	
	})	

	sets.ja.enmity = {
    head="Halitus Helm",
    body="Emet Harness",
    hands="Nilas Gloves",
    legs="Malignance Tights",
    feet="Malignance Boots",
    neck="Unmoving Collar +1",
    waist="Warwolf Belt",
    left_ear="Cryptic Earring",	--, 4
    right_ear="Trux Earring",
    left_ring="Supershear Ring",
    right_ring="Provocare Ring",
	}
	sets.ja["Provoke"] = set_combine (sets.ja.enmity, {
	})

	sets.steps = {
    ammo="Yamarang",
    head="Malignance Chapeau",
    body="Malignance Tabard",
    hands="Maxixi Bangles +3",
    legs="Malignance Tights",
    feet="Horos Toe Shoes +3",
    neck={ name="Etoile Gorget +1", augments={'Path: A',}},
    waist={ name="Kentarch Belt +1", augments={'Path: A',}},
    left_ear="Crep. Earring",
    right_ear="Odr Earring",
    left_ring="Chirich Ring +1",
    right_ring="Chirich Ring +1",
    back={ name="Senuna's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Store TP"+10','Phys. dmg. taken-10%',}},	
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
    left_ring="Weather. Ring +1",
    right_ring="Lebeche Ring",
    back={ name="Senuna's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Store TP"+10','Phys. dmg. taken-10%',}},
	}
    sets.midcast = {}               -- leave this empty    
    sets.aftercast = {}             -- leave this empty

end

function precast(spell)
    if  spell.action_type == 'Magic' then
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
			if buffactive['Striking Flourish'] and spell.name == 'Pyrrhic Kleos' or spell.name == 'Exenterator' then
				equip(sets.ws.StrikingFlourish)
			elseif buffactive['Climactic Flourish'] and spell.name == "Rudra's Storm" or spell.name == "Shark Bite" then
				equip(sets.ws.ClimacticRudra)
		end        
    end
	if spell.action_type == 'Ranged Attack' then
	equip (sets.ranged.normal)
	end	
end


function midcast(spell)
    if  spell.action_type == 'Magic' then
        equip(sets.melee.DT)
	end
    if spell.name:match('Curing') or spell.name:match('Divine') then
        equip(sets.ja.Waltz)
			if spell.name:match('Curing') and spell.target.type == 'SELF' then
				equip(sets.ja.WaltzSelf)
		end
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
	end
	if player.status =='Idle' then --, When holstering weapon
		equip(sets.run[Run_Set_Names[Run_Index]])
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
	if command == 'toggle Parrying set' then
        windower.add_to_chat("Parrying Set equipped")
        equip(sets.melee.Parrying)
    end
	if command == 'toggle run set' then
        Run_Index = Run_Index +1
        if Run_Index > #Run_Set_Names then Run_Index = 1 end
        windower.add_to_chat('Run mode is now: '..Run_Set_Names[Run_Index])
		equip(sets.run[Run_Set_Names[Run_Index]])
	end
	if command == 'toggle Regain set' then
		windower.add_to_chat("Full Regain set equipped")
		equip(sets.run["Gleti's Boots"])
	end
	if command == 'toggle Weapons set' then
        Weapons_Index = Weapons_Index +1
        if Weapons_Index > #Weapons_Set_Names then Weapons_Index = 1 end
        windower.add_to_chat('Main hand is now: '..Weapons_Set_Names[Weapons_Index])
		equip(sets.weapons[Weapons_Set_Names[Weapons_Index]])
	end
	if command == 'toggle Sub_Weapon set' then
        Sub_Weapon_Index = Sub_Weapon_Index +1
        if Sub_Weapon_Index > #Sub_Weapon_Names then Sub_Weapon_Index = 1 end
        windower.add_to_chat('Sub hand is now: '..Sub_Weapon_Names[Sub_Weapon_Index])
		equip(sets.Sub_Weapon[Sub_Weapon_Names[Sub_Weapon_Index]])
	end
end