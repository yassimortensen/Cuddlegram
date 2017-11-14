
pet_usernames = [ #array of all instagram handles
  "baguetti_spaghetti",
  "loki_the_wolfdog",
  "pumpkintheraccoon",
  "moggsy_the_cat",
  "coconutricebear",
  "ranmathecat",
  "baxter_the_frenchbulldog",
  "boo.thegolden",
  "churro_cat",
  "dogs.lovers",
  "winnithepooch",
  "moggsy_the_cat",
  "vidarthecorgi",
  "daisycarli_gram",
  "hiimskunk"
]

pet_usernames.each do |username| #iterate through the instagram handles
  pet = Pet.find_or_create_by(instagram_handle: username) #create Pet objects for each
  doc = Nokogiri::HTML(open("https://websta.me/n/#{username}")) #get HTML
   i = 0
  doc.css(".list-img img").each do |node| #iterate through each image on feed
    break if i == 21 #stop after 20 images
    Photo.create(pet: pet, url: node.attribute("src").value) #create photo objects for each photo, set up relationship
    i += 1
  end
end

User.create!(first_name: "yassi", last_name: "mortensen", email:"yassi@marvelit.com", password: "mermaids", instagram_handle: "yassi_tiu")
User.create!(first_name: "mimi", last_name: "rahman", email:"mimi@flatironschool.com", password: "dolphins", instagram_handle: "miimster")
