Model: VideoGame (maps to database table video_games)
- id: integer (Autoincrementing PK)
- name: string
- release_date: date
- summary: text
- metacritic_score: decimal
- user_score: decimal
- publisher_id: integer (FK)
- developer_id: integer (FK)
- created_at: timestamp
- updated_at: timestamp

Model: Developer (Maps to database table developers)
- id: integer (Autoincrementing PK)
- name: string
- created_at: timestamp
- updated_at: timestamp

Model: Publisher (Maps to database table publishers)
- id: integer (Autoincrementing PK)
- name: string
- created_at: timestamp
- updated_at: timestamp

