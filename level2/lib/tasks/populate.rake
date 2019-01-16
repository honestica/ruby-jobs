# rake populate:init

namespace 'populate' do
  task init: :environment do
    total_practitioners = 300
    max_communications = 30

    total_practitioners.times do

      name = Faker::Name.name.split ' '
      practitioner = Practitioner.create(first_name: name.first, last_name: name.last)

      puts [practitioner.first_name, practitioner.last_name].join(" ")

      max_communications.times do
        Communication.create(practitioner: practitioner, sent_at: Time.at(rand * Time.now.to_f))
      end
    end

    30_000.times do
      name = Faker::Name.name.split ' '
      practitioner = Practitioner.create(first_name: name.first, last_name: name.last)
    end
  end
end
