
pet_usernames = [
  "dogs.lovers",
  "loki_the_wolfdog",
  "coconutricebear",
  "boo.thegolden",
  "winnithepooch",
  "vidarthecorgi",
  "daisycarli_gram",
  "baxter_the_frenchbulldog",
  "baguetti_spaghetti",
  "churro_cat",
  "ranmathecat",
  "hiimskunk",
  "moggsy_the_cat",
  "sis.twins",
  "littlelordreginald",
]

pet_usernames.each do |username|
  pet = Pet.find_or_create_by(instagram_handle: username)
  doc = Nokogiri::HTML(open("https://websta.me/n/#{username}"))
   i = 0
  doc.css(".list-img img").each do |node|
    break if i == 21
    Photo.create(pet: pet, url: node.attribute("src").value)
    i += 1
  end
end
