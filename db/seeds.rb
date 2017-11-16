
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
  "hiimskunk",
  "harlowandsage"
]

#create pets using above array
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

#create users
User.create!(first_name: "yassi", last_name: "mortensen", email:"yassi@marvelit.com", password: "mermaids", instagram_handle: "yassi_tiu")
User.create!(first_name: "mimi", last_name: "rahman", email:"mimi@flatironschool.com", password: "dolphins", instagram_handle: "miimster")
User.create!(first_name: "kevin", last_name: "hart", email: "kevinhart@test.com", password: "mermaids", instagram_handle: "kevinhart4real")
User.create!(first_name: "rihanna", last_name: "fenty", email:"rihanna@test.com", password: "mermaids", instagram_handle: "badgalriri")
User.create!(first_name: "demi", last_name: "lovato", email:"demi@test.com", password: "mermaids", instagram_handle: "ddlovato")
User.create!(first_name: "kourtney", last_name: "kardashian", email:"kourtney@test.com", password: "mermaids", instagram_handle: "kourtneykardash")
User.create!(first_name: "leo", last_name: "messi", email:"leo@test.com", password: "mermaids", instagram_handle: "leomessi")
User.create!(first_name: "miley", last_name: "cyrus", email:"miley@test.com", password: "mermaids", instagram_handle: "mileycyrus")
User.create!(first_name: "barack", last_name: "obama", email:"barack@test.com", password: "mermaids", instagram_handle: "barackobama")
User.create!(first_name: "michelle", last_name: "obama", email:"michelle@test.com", password: "mermaids", instagram_handle: "michelleobama44")
User.create!(first_name: "jennifer", last_name: "lopez", email:"jennifer@test.com", password: "mermaids", instagram_handle: "jlo")
User.create!(first_name: "katy", last_name: "perry", email:"katy@test.com", password: "mermaids", instagram_handle: "katyperry")
User.create!(first_name: "dwayne", last_name: "johnson", email:"dwayne@test.com", password: "mermaids", instagram_handle: "therock")
User.create!(first_name: "kendall", last_name: "jenner", email:"kendall@test.com", password: "mermaids", instagram_handle: "kendalljenner")


#create likes
    100.times do
      Like.find_or_create_by(user_id: User.all.shuffle.first.id, pet_id: Pet.all.shuffle.first.id)
    end

#create comments


  contents = ["so cute!", "<3", "FREAKIN ADORABLE", "TOO CUTE", ":)", "the cutest!",
    "FREAKIN ADORABLE", "so sweet", "j’adore <3", "lol!", "just want to cuddle <3",
    "soooo UGLY its CUTE!", "too much", "ummmmmm sir?", "Lol there's so much cuteness going on in this pic.",
    "cutie patootie", "squishy face", "aaawwww", "precious", "LOVE", "looking so snuggly!", "fuzziness overload!!", "talk to the paw",
    "i want cuddles!!", "Oh my goodness!!!!", "that's so pawesome!!", "yea but what is it", "my spirit animal", "this is the best app ever"]

  200.times do
    Comment.create!(user_id: User.all.shuffle.first.id, photo_id: Photo.all.shuffle.first.id, content: contents.shuffle.first)
  end
