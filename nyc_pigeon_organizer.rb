def nyc_pigeon_organizer(data)
  bird_names = data[:gender][:male] + data[:gender][:female]
  new_hash = Hash.new

  bird_names.each do |name|
    new_hash[name] = {}

    data.each do |key, value|
      new_hash[name][key] = []

      value.each do |attribute, bird_names|
        new_hash[name][key] << attribute.to_s if bird_names.include?(name)
      end
    end
  end

  new_hash
end

