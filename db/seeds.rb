
guns_roses = Artist.create!(name: "Guns N' Roses", bio: "Guns N' Roses, often abbreviated as GNR, is an American hard rock band from Los Angeles and formed in 1985. The lineup, when first signed to Geffen Records in 1986, consisted of vocalist Axl Rose, lead guitarist Slash, rhythm guitarist Izzy Stradlin, bassist Duff McKagan, and drummer Steven Adler. Guns N' Roses have released six studio albums, accumulating sales of more than 100 million records worldwide, including 45 million in the United States, making them the 41st best-selling artist of all time.")

chef_special = Artist.create!(name: "Chef'Special", bio: "Chef'Special is a Dutch indie pop band from Haarlem, Netherlands. Chef'Special's lineup consists of lead vocalist Joshua Nolet, guitarist Guido Joseph, bass player Jan Derks, keyboard player Wouter Heeren and drummer Wouter Jerry Prudon. They have released two albums and three EPs since their formation in 2008. They became known in the Netherlands for being house band for popular Dutch TV program 'De Wereld Draait Door' in 2011. In 2015 the band went on its first US tour as support act for indie band Aer. They have joined Twenty One Pilots on their Emotional Roadshow World Tour as an opening act in the summer of 2016, alongside MUTEMATH.In February 2016 the band's song \"In Your Arms\" charted at position 40 in Billboard's Alternative Songs chart.")

andre_hazes = Artist.create!(name: "André Hazes", bio: "André Gerardus \"André\" Hazes (30 June 1951 – 23 September 2004) was a Dutch singer in a genre called levenslied (\"song about life\"), popular music about everyday life sung in the Dutch language. André Hazes was one of the most successful singers in this genre. Hazes recorded 31 studio and live albums and he released 55 singles.")

snoop_dogg = Artist.create!(name: "Snoop Dogg", bio: "Calvin Cordozar Broadus Jr. (born October 20, 1971), known professionally as Snoop Dogg (sometimes shortened to Snoop and formerly called Snoop Doggy Dogg and Snoop Lion), is an American rapper, singer, songwriter, record producer and actor. His music career began in 1992 when he was discovered by Dr. Dre, and as a result he was featured on Dre's solo debut, \"Deep Cover\", and then on Dr. Dre's solo debut album, The Chronic. He has since sold over 23 million albums in the United States and 35 million albums worldwide.")

paul_kalkbrenner = Artist.create!(name: "Paul Kalkbrenner", bio: "Paul Kalkbrenner (German pronunciation: [paʊl ˈkalkbrɛnɐ]) (born 11 June 1977[1]) is a German live act, producer of electronic music, and actor from Berlin. Because he breaks down his tracks into elements that are reassembled onstage, Kalkbrenner is considered a live act, as opposed to a DJ.[2] He is most known for his single \“Sky and Sand,\” which sold over 200,000 copies, went platinum, and was highly charted in countries such as Belgium and Germany. He is also known for portraying the main character Ickarus in the movie, \“Berlin Calling\” written and directed by Hannes Stöhr, which ran for several years at Kino Central in Berlin.")

Song.create!([
  {name: "Welcome to the Jungle", artist: guns_roses},
  {name: "It's So Easy", artist: guns_roses},
  {name: "Nightrain", artist: guns_roses},
  {name: "Out ta Get Me", artist: guns_roses},
  {name: "Mr. Brownstone", artist: guns_roses},
  {name: "Paradise City", artist: guns_roses},
  {name: "My Michelle", artist: guns_roses},
  {name: "Think About You", artist: guns_roses},
  {name: "Sweet Child o' Mine", artist: guns_roses},
  {name: "You're Crazy", artist: guns_roses},
  {name: "Anything Goes", artist: guns_roses},
  {name: "Rocket Queen", artist: guns_roses}
])

Song.create!([
  {name: "Peculiar", artist: chef_special},
  {name: "Wash Away", artist: chef_special},
  {name: "Eden", artist: chef_special},
  {name: "On Shoulders", artist: chef_special},
  {name: "Julie", artist: chef_special},
  {name: "Everybody", artist: chef_special},
  {name: "Still Don't Know", artist: chef_special},
  {name: "Nights Like This", artist: chef_special},
  {name: "Love Riot", artist: chef_special},
  {name: "A Message", artist: chef_special},
  {name: "Free", artist: chef_special},
  {name: "Day Is Gone", artist: chef_special},
  {name: "Carnivore", artist: chef_special},
  {name: "Intellectuals", artist: chef_special},
  {name: "In Your Arms", artist: chef_special}
])

Song.create!([
  {name: "Mamma", artist: andre_hazes},
  {name: "Witte rozen", artist: andre_hazes},
  {name: "Met de kinderen naar de kermis", artist: andre_hazes},
  {name: "Waarom", artist: andre_hazes},
  {name: "Een tulp is veel mooier", artist: andre_hazes},
  {name: "Je speelde met mij", artist: andre_hazes},
  {name: "De vlieger", artist: andre_hazes},
  {name: "Ik maak van je leven een sprookje", artist: andre_hazes},
  {name: "Kom terug bij mij", artist: andre_hazes},
  {name: "Kleine verschoppeling", artist: andre_hazes},
  {name: "Ik kan gewoon niet zonder jou", artist: andre_hazes},
  {name: "Twee lippen zo rood", artist: andre_hazes}
])

Song.create!([
  {name: "Who Am I (What's My Name)?", artist: snoop_dogg},
  {name: "For All My Niggaz & Bitches", artist: snoop_dogg},
  {name: "Aint No Fun (If The Homies Cant Have None)", artist: snoop_dogg},
  {name: "Untitled", artist: snoop_dogg},
  {name: "Doggy Dogg World", artist: snoop_dogg},
  {name: "Untitled", artist: snoop_dogg},
  {name: "Gz And Hustlas", artist: snoop_dogg},
  {name: "Untitled", artist: snoop_dogg},
  {name: "Gz Up, Hoes Down", artist: snoop_dogg},
  {name: "Pump Pump", artist: snoop_dogg}
])

Song.create!([
  {name: "Böxig Leise", artist: paul_kalkbrenner},
  {name: "GutesdNitzwe", artist: paul_kalkbrenner},
  {name: "Jestrü", artist: paul_kalkbrenner},
  {name: "Schnake", artist: paul_kalkbrenner},
  {name: "KleinesdBu", artist: paul_kalkbrenner},
  {name: "DesdStabesdReu", artist: paul_kalkbrenner},
  {name: "SagtedDerdB", artist: paul_kalkbrenner},
  {name: "Kruppze", artist: paul_kalkbrenner},
  {name: "Schmökelu", artist: paul_kalkbrenner},
  {name: "DerdBreuz", artist: paul_kalkbrenner}
])
