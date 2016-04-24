# Put your seed data in here. This should be a series of .create! statements for
# each of your relevant models.
#
# You'll run it with rake db:seed

Club.create(name: "Liverpool", city: "Liverpool")
Club.create(name: "Leicester City", city: "Leicester")
Club.create(name: "Tottenham Hotspur", city: "London")
Club.create(name: "Manchester City", city: "Manchester")
Club.create(name: "Arsenal", city: "London")

Sponsor.create(name: "Aviva", value: "£3.9M")
Sponsor.create(name: "Carlsberg", value: "£19.2M")
Sponsor.create(name: "King Power", value: "£7.9M")
Sponsor.create(name: "AIA", value: "£11.5M")
Sponsor.create(name: "Etihad", value: "£22.1M")


Player.create(name: "Clyne", value: "£5.2M")
Player.create(name: "Moreno", value: "£4.6M")
Player.create(name: "Lovren", value: "£4.8M")
Player.create(name: "Skrtel", value: "£5.3M")
Player.create(name: "Flanagan", value: "£4.4M")
