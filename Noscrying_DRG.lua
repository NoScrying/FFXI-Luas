function get_sets()
	send_command('bind f9 gs c toggle melee set') -- F9 = Cycle through
	send_command('bind f10 gs c toggle run set') -- F10 = Cycle through
	send_command('bind f12 gs c toggle TH set') -- F10 = Cycle through
	Melee_Index = 1
	Run_Index = 1
	TH_Index = 1

	Melee_Set_Names = {'normal', 'DT'}
	sets.melee = {} 					-- Leave this empty.
	sets.melee.normal = {
    ammo="Coiste Bodhar",
    head="Flam. Zucchetto +2",
    body="Hjarrandi Breast.",
    hands="Flamma Manopolas +2",
    --hands="Sulevia's Gauntlets +2",
    legs="Sulevia's Cuisses +2",
    feet="Flam. Gambieras +2",
    neck="Shulmanu Collar",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Sroda Earring",
    right_ear="Sherida Earring",
    --left_ring="Niqmaddu Ring",
	left_ring="Moonlight Ring",
    right_ring="Lehko's Ring",		--, +10 STP, +10% Haste, +10 Crit, +8 Acc
    back={ name="Brigantia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	sets.melee.SAMSJ = {
    ammo="Coiste Bodhar",
    head="Flam. Zucchetto +2",
    body="Hjarrandi Breast.",
    --hands="Flamma Manopolas +2",
    hands="Sulevia's Gauntlets +2",
    legs="Sulevia's Cuisses +2",
    feet="Flam. Gambieras +2",
    neck="Shulmanu Collar",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Sroda Earring",
    right_ear="Sherida Earring",
    left_ring="Niqmaddu Ring",
	--left_ring="Moonlight Ring",
    right_ring="Lehko's Ring",		--, +10 STP, +10% Haste, +10 Crit, +8 Acc
    back={ name="Brigantia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	sets.melee.DT = {
    ammo="Crepuscular Pebble",
    head="Nyame Helm",
    body="Nyame Mail",
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet="Nyame Sollerets",
    neck="Shulmanu Collar",
    waist="Ioskeha Belt +1",
    left_ear="Sroda Earring",
    right_ear="Sherida Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Defending Ring",
    back={ name="Brigantia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	
	Run_Set_Names = {'DT'}
	sets.run = {}
	sets.run.DT =  {
    ammo="Aurgelmir Orb",
    head="Gleti's Mask",
    body="Gleti's Cuirass",
    hands="Gleti's Gauntlets",
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
    feet="Gleti's Boots",
    neck="Elite Royal Collar",
    waist="Flume Belt",
    left_ear="Sroda Earring",
    right_ear="Sherida Earring",
    left_ring="Defending Ring",
    right_ring="Lehko's Ring",		--, +10 STP, +10% Haste, +10 Crit, +8 Acc
    back="Moonbeam Cape",
	}
	
	TH_Set_Names = {'TH'}
	sets.TH = {}
	sets.TH.TH = {
    head="White Rarab Cap +1",
	hands={ name="Valorous Mitts", augments={'"Mag.Atk.Bns."+1','Attack+11','"Treasure Hunter"+1','Accuracy+8 Attack+8','Mag. Acc.+3 "Mag.Atk.Bns."+3',}},
	ammo="Perfect Lucky Egg",
    waist="Chaac Belt",
	}
	
	sets.ws = {} 					-- Leave this empty.
	sets.ws['Stardiver']	= {
    ammo="Coiste Bodhar",
    head="Gleti's Mask",
    body="Hjarrandi Breast.",
    hands="Gleti's Gauntlets",
    legs="Sulev. Cuisses +2",
    feet="Gleti's Boots",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Sherida Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Niqmaddu Ring",
    right_ring="Lehko's Ring",
    back={ name="Brigantia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	
	sets.ws['Impulse Drive']	= {
    ammo="Knobkierrie",
    head="Gleti's Mask",
    body="Hjarrandi Breast.",
    hands="Gleti's Gauntlets",
    legs="Gleti's Breeches",
    feet="Sulev. Leggings +2",
    neck="Rep. Plat. Medal",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Thrud Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Epaminondas's Ring",
    right_ring="Lehko's Ring",		--, +10 STP, +10% Haste, +10 Crit, +8 Acc
    back={ name="Brigantia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}

	sets.ws['Drakesbane']	= {
    ammo="Knobkierrie",
    head="Gleti's Mask",
    body="Hjarrandi Breast.",
    hands="Sulev. Gauntlets +2",
    legs="Sulev. Cuisses +2",
    feet="Sulev. Leggings +2",
    neck="Rep. Plat. Medal",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Thrud Earring",
    right_ear="Sherida Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Lehko's Ring",		--, +10 STP, +10% Haste, +10 Crit, +8 Acc
    back={ name="Brigantia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	
	sets.ws['Camlann\'s Torment']	= {
    ammo="Knobkierrie",
    head="Gleti's Mask",
    body="Hjarrandi Breast.",
    hands="Gleti's Gauntlets",
    legs="Gleti's Breeches",
    feet="Sulev. Leggings +2",
    neck="Rep. Plat. Medal",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Thrud Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Niqmaddu Ring",
    right_ring="Lehko's Ring",		--, +10 STP, +10% Haste, +10 Crit, +8 Acc
    back={ name="Brigantia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	
	sets.ws['Wheeling Thrust']	= {
    ammo="Knobkierrie",
    head="Gleti's Mask",
    body="Hjarrandi Breast.",
    hands="Gleti's Gauntlets",
    legs="Gleti's Breeches",
    feet="Sulev. Leggings +2",
    neck="Rep. Plat. Medal",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Thrud Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Niqmaddu Ring",
    right_ring="Lehko's Ring",		--, +10 STP, +10% Haste, +10 Crit, +8 Acc
    back={ name="Brigantia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	
	sets.ws['Sonic Thrust']	= {
    ammo="Knobkierrie",
    head="Gleti's Mask",
    body="Hjarrandi Breast.",
    hands="Sulev. Gauntlets +2",
    legs="Sulev. Cuisses +2",
    feet="Sulev. Leggings +2",
    neck="Rep. Plat. Medal",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Thrud Earring",
    right_ear="Sherida Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Lehko's Ring",		--, +10 STP, +10% Haste, +10 Crit, +8 Acc
    back={ name="Brigantia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	
	sets.ws['Savage Blade']	= {
    ammo="Knobkierrie",
    head="Gleti's Mask",
    body="Hjarrandi Breast.",
    hands="Gleti's Gauntlets",
    legs="Gleti's Breeches",
    feet="Sulev. Leggings +2",
    neck="Rep. Plat. Medal",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Thrud Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Epaminondas's Ring",
    right_ring="Lehko's Ring",		--, +10 STP, +10% Haste, +10 Crit, +8 Acc
    back={ name="Brigantia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}	
	sets.ja = {} 					-- Leave this empty
	sets.ja['Call Wyvern'] = {
	body="Wyrm Mail",
	}
	sets.ja['Angon'] = {
	Ammo="Angon"
	}
	sets.ja['Jump'] = {
    back={ name="Brigantia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
    legs="Sulevia's Cuisses +2",
	feet="Vishap Greaves +1",
	}
	sets.ja['High Jump'] = {
    back={ name="Brigantia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
    legs="Sulevia's Cuisses +2",
	feet="Vishap Greaves +1",
	}	
	sets.ja['Spirit Jump'] = {
    back={ name="Brigantia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
    legs="Sulevia's Cuisses +2",
	}
	sets.ja['Soul Jump'] = {
    back={ name="Brigantia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
    legs="Sulevia's Cuisses +2",
	}
	
	sets.idle = {} 					-- Leave this empty
	sets.idle.normal = {
	ammo="Oshasha's Treatise",
    head="Gleti's Mask",
    body="Nyame Mail",
    hands="Sulevia's Gauntlets +2",
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
    feet="Sulevia's Leggings +2",
    neck="Elite Royal Collar",
	waist="Flume Belt",
    left_ear="Sroda Earring",
    right_ear="Sherida Earring",
	left_ring="Defending Ring",
    right_ring={ name="Dark Ring", augments={'Magic dmg. taken -6%','Phys. dmg. taken -3%','Breath dmg. taken -5%',}},
    back="Moonbeam Cape",
	}
	
	sets.precast = {}               -- leave this empty
	sets.precast.fastcast = {
    ammo="Sapience Orb",
    head={ name="Carmine Mask +1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}},
    body="Sacro Breastplate",
    hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
    legs="Enif Cosciales",
    feet={ name="Carmine Greaves +1", augments={'Accuracy+12','DEX+12','MND+20',}},
    neck="Voltsurge Torque",
    waist="Flume Belt",
    left_ear="Enchntr. Earring +1",
    right_ear="Loquac. Earring",
    left_ring="Lebeche Ring",
    right_ring="Weather. Ring +1",
    back="Moonbeam Cape",
	} 	
    sets.midcast = {}               -- leave this empty  
	
	sets.buff = {}
	sets.buff.reive = {
	neck="Ygnas\'s Resolve +1",
	}
	sets.buff.adoulin = {
	body="Councilor\'s Garb"
	}


	sets.adoulin = {}
	sets.adoulin.movement = {body="Councilor's Garb",}   --auto swaps when in adoulin 
 

end

function precast(spell)
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
    if  spell.action_type == 'Magic' then
        equip(sets.melee.DT)
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
end


function idle()
	if player.status=='Engaged' then --, "~=" means "Is Not", So if sub is not NIN or DNC, then uses this set
		equip(sets.melee[Melee_Set_Names[Melee_Index]])
			if player.sub_job =='SAM' then
				equip(sets.melee.SAMSJ)
		end
	end
	if player.status =='Idle' then
		equip(sets.run.DT)
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
	if command == 'toggle TH set' then
        TH_Index = TH_Index +1
    if TH_Index > #TH_Set_Names then TH_Index = 1 end
        windower.add_to_chat('TH mode is now: '..TH_Set_Names[TH_Index])
        equip(sets.TH[TH_Set_Names[TH_Index]])
    end
end

function customize_idle_set(idleSet)
    if world.area:contains('Adoulin') then
        equip(sets.adoulin.movement)
    end
   return idleSet
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