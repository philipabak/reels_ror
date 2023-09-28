# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Clip 1
Clip.create!(
    name: 'Asahi',
    description: '工場では新しいスーパードライの開発に取り組んでいます。',
    video_standard: 'PAL',
    video_definition: 'SD',
    start_time: '00:00:00:00',
    end_time: '00:00:30:12'
)

# Clip 2
Clip.create!(
    name: 'M&Ms',
    description: 'チョコレートのキャラクターがより構成的に変身！',
    video_standard: 'NTSC',
    video_definition: 'SD',
    start_time: '00:00:00:00',
    end_time: '00:00:15:27'
)

# Clip 3
Clip.create!(
    name: 'Toyota',
    description: 'トヨタ･カローラ CM 日本篇 2022 TOYOTA Japan『COROLLA Series』TV Commercial',
    video_standard: 'PAL',
    video_definition: 'SD',
    start_time: '00:00:00:00',
    end_time: '00:01:30:00'
)

# Clip 4
Clip.create!(
    name: 'Chrysler',
    description: 'クリント・イーストウッドが自動車産業が大戦後の不況をどのように生き残ったかを語る',
    video_standard: 'PAL',
    video_definition: 'SD',
    start_time: '00:00:00:00',
    end_time: '00:00:10:14'
)

# Clip 5
Clip.create!(
    name: 'Nissan',
    description: 'TVCM 「やっちゃえＮＩＳＳＡＮ 幕開け」',
    video_standard: 'NTSC',
    video_definition: 'SD',
    start_time: '00:00:00:00',
    end_time: '00:00:18:11'
)

# Clip 6
Clip.create!(
    name: 'Pepsi',
    description: 'Every Pepsiman Commercial in HD / ペプシマン CM Complete',
    video_standard: 'NTSC',
    video_definition: 'SD',
    start_time: '00:00:00:00',
    end_time: '00:00:20:00'
)

# Clip 7
Clip.create(
    name: 'ビッグカメラ',
    description: 'チョエテック提供 Magsafe カーマウント iPhone 14/13/12シリーズ用 ワイヤレスカーチャージャー ブラック T200-F について、動画でご案内いたします。',
    video_standard: 'PAL',
    video_definition: 'HD',
    start_time: '00:00:00:00',
    end_time: '00:00:10:05'
)

# Clip 8
Clip.create!(
    name: 'アベンジャーズ／エンドゲーム',
    description: '『アベンジャーズ』シリーズの完結編で、『アベンジャーズ／インフィニティ・ウォー』でヒーローたちの前に立ちはだかったサノスとの戦いを描くアクション大作。',
    video_standard: 'PAL',
    video_definition: 'HD',
    start_time: '00:00:00:00',
    end_time: '00:00:20:10'
)

# Clip 9
Clip.create!(
    name: 'スーパーマリオ',
    description: '任天堂「スーパーマリオ」映画化！『ザ・スーパーマリオブラザーズ・ムービー』',
    video_standard: 'NTSC',
    video_definition: 'HD',
    start_time: '00:00:00:00',
    end_time: '00:00:30:00'
)
