require 'csv'

VideoGame.delete_all
Developer.delete_all
Publisher.delete_all
Platform.delete_all

filename = Rails.root.join("db/all_games.csv")

csv_data = File.read(filename)
video_games = CSV.parse(csv_data, headers: true, encoding: "utf-8")

video_games.each do |vg|
    publisher = Publisher.find_or_create_by(name: vg["publisher"])
    developer = Developer.find_or_create_by(name: vg["developer"])
    platform = Platform.find_or_create_by(name: vg["platform"])
    if publisher && publisher.valid? && developer && developer.valid?
        videogame = VideoGame.create(
            name:               vg["name"],
            release_date:       vg["release_date"],
            summary:            vg["summary"],
            metacritic_score:   vg["meta_score"],
            user_score:         vg["user_review"],
            publisher_id:       publisher.id,
            developer_id:       developer.id,
            platform_id:        platform.id
        )
        puts "Invalid video game value: #{vg["name"]}" unless videogame.valid?
    else
        puts "Invalid or duplicate #{publisher} or #{developer}"
    end
end

puts "Created #{Publisher.count} publishers"
puts "Created #{Developer.count} developers"
puts "Created #{Platform.count} platform"
puts "Created #{VideoGame.count} video games"