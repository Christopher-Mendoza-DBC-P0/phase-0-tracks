nested_data_structure = {
  :fighter_aircraft => ['F-22A', 'F-22B', 'F-22C', 'JSF-1', 'JSF-2'],
  :fighter_status => {
    'F-22A' => 'grounded',
    'F-22B' => 'ready',
    'F-22C' => 'ready',
    'JSF-1' => 'grounded',
    'JSF-2' => 'ready'
  },
  :ordinance => { :JDAM => 36, :AIM_120 => 52 }
}

#Print all fighters in inventory
nested_data_structure[:fighter_aircraft].each do |fighter|
  puts "The #{fighter} is in invetory"
end

#Print all fighters in inventory and their status
nested_data_structure[:fighter_status].each do |fighter, status|
  if status == "grounded"
    puts "The #{fighter} is grounded"
  else
    puts "The #{fighter} is ready for combat operations"
  end
end

#Print all fighters in inventory with a status of grounded.
puts nested_data_structure[:fighter_status].select { |fighter, status| status == 'grounded' }

#Print all fighters in inventory with a status of ready.
puts nested_data_structure[:fighter_status].select { |fighter, status| status == 'ready' }

#print available oridinance and qty
puts "The following ordinance is at your disposal"
nested_data_structure[:ordinance].each do |ordinance, qty|
  puts "#{ordinance} : #{qty}"
  end