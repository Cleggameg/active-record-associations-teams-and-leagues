# Seeds - Below write the necessary code to seed the database
# so the tests pass.
#
# 1) Create four users:
#    | name              | age   |
#    -----------------------------
#    | Penelope          |  28   |
#    | Pepe              |  34   |
#    | Pete              |  22   |
#    | Priscilla         |  25   |
#
#   After completing step #1, all the tests in spec/01_user_spec.rb should pass.

penelope = User.create(name: "Penelope", age: 28)
pepe = User.create(name: "Pepe", age: 34)
pete = User.create(name: "Pete", age: 22)
priscilla = User.create(name: "Priscilla", age: 25)

# 2) Create three leagues:
#    | name      |     day    |  creator    |
#    ------------------------------------------
#    | Hockey    |  Wednesday |  Pepe       |
#    | Soccer    |  Thursday  |  Penelope   |
#    | Tennis    |  Tuesday   |  Priscilla  |
#

hockey = penelope.leagues.create(name: "Hockey", day: "Wednesday")
soccer = pepe.leagues.create(name: "Soccer", day: "Thursday")
tennis = priscilla.leagues.create(name: "Tennis", day: "Tuesday")


# 3) Now things get more complicated. Create one team with three participants.
#    The participation of a user in a team should be modeled as a Membership.

#    Team Name: "Green Monkeys"
#    League: Hockey
#    Uniform Color: Green
#    Captain: Pepe
#    Members: Pepe, Priscilla, and Penelope

green_monkeys = hockey.teams.create(name: "Green Monkeys", uniform_color: "green", captain: pepe)
green_monkeys.members = [pepe, priscilla, penelope]

# 4) Again, things get more complicated. Create two more teams with one participant each.
#    The participation of a user in a team should be modeled as a Membership.

#    Team Name: "Silver Snakes"
#    League: Soccer
#    Uniform Color: Silver
#    Captain: Pete
#    Membership: Pete

#    Team Name: "Purple Parrots"
#    League: Soccer
#    Uniform Color: Purple
#    Captain: Priscilla
#    Membership: Priscilla

silver_snakes = soccer.teams.create(name: "Silver Snakes", uniform_color: "silver", captain: pete)
silver_snakes.members = [pete]
purple_parrots = soccer.teams.create(name: "Purple Parrots", uniform_color: "purple", captain: priscilla)
purple_parrots.members = [priscilla]
