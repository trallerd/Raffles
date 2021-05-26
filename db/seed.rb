require 'faker'

50.times do
  User.create name: Faker::Name.unique.name,
              email: Faker::Internet.unique.email,
              password: 'abc123', password_confirmation: 'abc123'
end
15.times do
  Type.create description: Faker::Commerce.unique.department,
              inicial_number: Faker::Number.number(digits: 1),
              step: Faker::Number.number(digits: 1),
              ticket_quantities: Faker::Number.number(digits: 2)
end
25.times do
  Raffle.create user: User.all.sample,
                type: Type.all.sample,
                title: Faker::Company.industry,
                description: Faker::Company.unique.catch_phrase,
                probable_draw_date: Faker::Date.forward(days: 23),
                start_date_sale: Faker::Date.forward(days: 23),
                end_date_sale: Faker::Date.forward(days: 23),
                draw_date: Faker::Date.forward(days: 23),
                ticket_value: Faker::Commerce.unique.price
end

(1..25).each do |numb|
  (1..100).each do |number|
    if Faker::Boolean.boolean
      Ticket.create(raffle: Raffle.find(numb), user: Raffle.find(numb).user, number: number)
    else
      Ticket.create(raffle: Raffle.find(numb), number: number)
    end
  end
end

100.times do
  Prize.create(raffle: Raffle.all.sample,
               description: Faker::Vehicle.manufacture,
               placing: (1..10).to_a.sample)
end
