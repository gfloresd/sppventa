# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([[  'Star Wars' ], [  'Lord of the Rings' ]])
#   Character.create( 'Luke', movie: movies.first)



client_list = [[ "123456789-1",  "jonathan",  "joestar", "joestar"],
[ "123456789-2",  "joseph",  "joestar", "joestar"],
[ "123456789-3",  "jotaro",  "kujo", "joestar"],
[ "123456789-4",  "josuke",  "hishikaga", "joestar"],
[ "123456789-5",  "giorno",  "gionvanna", "brando"],
[ "123456789-6",  "joline",  "cujo", "joestar"],
[ "123456789-7",  "jonny",  "joestar", "joestar"],
[ "12345678-1",  "dio",  "brando", "brando"],
[ "12345678-2",  "kars",  "wammu", "esidici"],
[ "12345678-3",  "dio",  "za", "wardo"],
[ "12345678-4",  "kira",  "yoshikage", "queen"],
[ "12345678-5",  "diavolo",  "doppio", "vinegar"],
[ "12345678-6",  "enrico",  "pucci", "negro"],
[ "12345678-7",  "funny",  "valentine", "presidente"],
[ "12345670-1",  "william",  "zeppeli", "a"],
[ "12345670-2",  "cesar",  "zeppeli", "a"],
[ "12345670-3",  "noriaki",  "kakyion", "donna"],
[ "12345670-4",  "okuyasu",  "nijimura", "mano"],
[ "12345670-5",  "brunno",  "bucellati", "sticiky"],
[ "12345670-6",  "hermes",  "costello", "kiss"],
[ "12345670-7",  "gyro",  "zeppeli", "a"],
[ "61000400-3",  "char",  "aznable", "rojo"],
[ "60310000-1",  "anabel",  "gato", "solomon"]
]

client_list.each do |run,name, lastname, mother_name|
  Client.create(run: run, name: name, lastname: lastname, mother_name: mother_name )
end

employee_list = [["10200300-1",  "nelson",  "campos",  "campos",  "funcionario"],
["10200300-2",  "claudio",  "gaticua", "gaticua",  "encargado" ],
["10200300-3",  "aura",  "hernandez", "hernandez",  "atencion al cliente"],
["10200300-4",  "ignacio",  "zuñiga", "zuñiga",  "funcionario"],
["16800498-2", "gonzalo",  "flores", "duran",  "tecnico"],
["10200300-5",  "alex",  "navarro", "navarro",  "tecnico"],
["10200300-6", "diego",  "santander", "santander", "jefe"]
]

employee_list.each do |run,name, lastname, mother_name, charge|
  Employee.create(run: run, name: name, lastname: lastname, mother_name: mother_name , charge: charge)
end



problem_list = [[ false, "boleta",  11 ,  "01-02-2018","0000032113" ,5 , 13],
[ false, "boleta",  12,  "03-02-2018" ,"0000012313", 6, 10],
[ false, "boleta",  13,  "11-03-2018" ,"0000031441" ,7 , 8],
[ false, "boleta",  14,  "14-05-2018", "0000065312", 8, 10],
[ false, "boleta",  18,  "22-04-2018", "0000065123", 7, 11],
[ false, "boleta",  22,  "23-05-2018", "0000054412", 6, 15],
[ false, "boleta",  23,  "24-06-2018", "0000045678", 5, 13],
[ false, "boleta",  24,  "25-06-2018", "0000015680", 6, 18],
[ false, "boleta",  27,  "27-06-2018", "0000056789", 7, 19],
[ false, "boleta",  28,  "05-07-2018", "0000016890", 8, 15],
[ false, "boleta",  29,  "06-08-2018", "0000023456", 7, 16],
[ false, "boleta",  30,  "07-09-2018", "0000013568", 6, 20] , 
[ false, "boleta",  31,  "20-10-2018", "0000045689", 5, 23],
[ false, "boleta",  40,  "21-11-2018", "0000012357", 6, 26],
[ false, "boleta",  33,  "22-11-2018", "0000011345", 7, 11],
[ false, "boleta",  44,  "23-11-2018", "0000087531", 8, 25],
[ false, "boleta",  501,  "24-11-2018", "0000034689", 7 , 15],
[ false, "boleta",  303,  "24-11-2018", "0000012679", 6, 19],
[ false, "boleta",  100,  "24-11-2018", "0000034567", 5, 21],
[ false, "boleta",  199,  "28-11-2018", "0000034413", 6, 22],
[ false, "boleta",  202,  "29-11-2018", "0000034567", 7, 25],
[ false, "boleta",  222,  "1-12-2018", "0000034561", 5, 26],
[ false, "boleta",  245,  "1-12-2018", "0000045678", 6, 9],
[ false, "boleta",  333,  "2-12-2018", "0000012345", 7, 10],
[ false, "boleta",  335,  "3-12-2018", "0000045790", 6, 14],
[ false, "boleta",  366,  "4-12-2018", "0000023456", 7, 15],
[ false, "boleta",  377,  "5-12-2018", "0000045678", 6, 19]
]  

problem_list.each do |finished, document_type, document_number, buy_at , product_code , employee_id , client_id|
  Problem.create(finished: finished, document_type: document_type, document_number: document_number, buy_at: buy_at, product_code: product_code , employee_id: employee_id, client_id: client_id)
end

