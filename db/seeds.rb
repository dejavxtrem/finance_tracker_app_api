# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
    # User.create([
    #         { firstname: 'John', lastname: 'Doe'},
    #         { firstname: 'Ira', lastname: 'Herman'}
    #         ])

        
Bankinformation.create([
        {bankname: Faker::Bank.name,
        accountnumber: Faker::Bank.account_number,
        routingnumber: Faker::Bank.routing_number,
        bankiban: Faker::Bank.iban},
        {bankname: Faker::Bank.name,
        accountnumber: Faker::Bank.account_number,
        routingnumber: Faker::Bank.routing_number,
        bankiban: Faker::Bank.iban},
        {bankname: Faker::Bank.name,
        accountnumber: Faker::Bank.account_number,
        routingnumber: Faker::Bank.routing_number,
        bankiban: Faker::Bank.iban},
        {bankname: Faker::Bank.name,
        accountnumber: Faker::Bank.account_number,
        routingnumber: Faker::Bank.routing_number,
        bankiban: Faker::Bank.iban},
])


   

    # Creditcard.create([
    #     { creditcard_company: 'Discovery', merchant_name: 'Casey Gasstation', amount: 40.00, creditcard_number:Faker::Finance.credit_card(:mastercard, :visa)},
    #     { creditcard_company: 'American Express', merchant_name: 'Walmart Store', amount: 540.00, creditcard_number:Faker::Finance.credit_card(:mastercard, :visa)},
    #     { creditcard_company: 'American Airlines', merchant_name: 'priceline', amount: 200.00, creditcard_number:Faker::Finance.credit_card(:mastercard, :visa)},
    #     { creditcard_company: 'City Bank', merchant_name: 'Nike.com', amount: 120.00, creditcard_number:Faker::Finance.credit_card(:mastercard, :visa)}
    # ])


    Billexpense.create([
        { billtype: 'Water', companyname: 'Fayetteville Water', amount: 40.00, due_date: Faker::Date.between(from: 2.days.ago, to: Date.today)},
        { billtype: 'Gas', companyname: 'Swepco', amount: 150.00, due_date: Faker::Date.between(from: 2.days.ago, to: Date.today)},
        { billtype: 'Internet', companyname: 'Cox', amount: 90.00, due_date: Faker::Date.between(from: 2.days.ago, to: Date.today)},
        { billtype: 'Insurance', companyname: 'State farm', amount: 200.00, due_date: Faker::Date.between(from: 2.days.ago, to: Date.today)},
        { billtype: 'Trash', companyname: 'Fayetteville  Trash', amount: 10.00, due_date: Faker::Date.between(from: 2.days.ago, to: Date.today)}
    ])



puts "Seeded database"