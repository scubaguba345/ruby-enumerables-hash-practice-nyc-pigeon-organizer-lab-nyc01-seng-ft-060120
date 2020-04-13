def nyc_pigeon_organizer(data)
  pigeon_names = Hash.new
  data.each do |key, value|
    value.each do |key, name|
      name.each do |name|

        if !pigeon_names[name]
          pigeon_names[name] = {}
        end

        if !pigeon_names[name][key]
            pigeon_names[name][key] = []
        end
        pigeon_names[name][key] << key.to_s
      end
    end
  end
  pigeon_names
end
