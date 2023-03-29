puts "🌱 Seeding spices..."

Genre.create(name: "Italo Disco", description: "Funky, Bassy, and great for dancing")
Genre.create(name: "Country", description: "Country classics for heartbreak")
Genre.create(name: "Soundtrack", description: "nostalgic ballads")

Record.create(artist: "Barbra Streisand", release_date: 1975, genre_id: 3, listened: true)
Record.create(artist: "Lime", release_date: 1984, genre_id: 1, listened: true)
Record.create(artist: "David Allen Coe", release_date: 1977, genre_id: 2, listened: true)

puts "✅ Done seeding!"
