# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Admin.create!(
  email: "test@test", password: "aaaaaa"
)

Genre.create!(
  [
    {name: 'ゲーミングPC'},
    {name: 'グラフィックボード'},
    {name: 'マザーボード'},
    {name: 'ゲーミングデスク'},
    {name: 'ゲーミングチェア'},
    {name: 'キーボード'},
    {name: 'マウス'},
    {name: 'ヘッドセット'},
    {name: 'モニター'}
  ]
)

Item.create!(
  [
    {name: 'RAZER BariKata', image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/pc.jpg"), filename:"pc.jpg"), introduction: '前面と側面に強化ガラスを採用した根強い人気を誇る「RAZER」とコラボした魅せるPCケース。', genre_id: 1, price: "207000", os: "Windows11 Home 64bit", cpu: "Corei9-12900K", graphics: "intel UHD", memory: "16GB(8GBx2)", storage: "NVMe 1000GB", quote_source: "https://item.rakuten.co.jp/applied2/3333-haat-i9129kraz-20211224/"},
    {name: 'MSI GeForce RTX4070Ti GAMING X TRIO 12G', image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/gb.jpg"), filename:"gb.jpg"), introduction: 'トリプルファンクーラー「TRI FROZR 3」を採用するオーバークロック仕様のグラフィックボード', genre_id: 2, price: "139320", memory: "12GB", connection: "PCI Express 4.0", memory_bus: "192bit", memory_type: "GDDR6X", core_clock: "2745MHz", memory_clock: "21000MHz", monitor_output: "HDMI×1 DisplayPort 1.4a×3", chip: "NVIDIA GeForce RTX4070Ti", quote_source: "https://item.rakuten.co.jp/pckoubou/m4s1p952275/"},
    {name: 'ASRock A520M Pro4', image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/mb.jpg"), filename:"mb.jpg"), introduction: 'AMD第3世代Ryzenプロセッサに対応するAMD A520チップセットを搭載したmicroATXマザーボードです', genre_id: 3, price: "9720", memory: "128GB", memory_type: "	DDR4×4", chip: "AMD A520", quote_source: "https://item.rakuten.co.jp/a-price/4710483932076/"},
    {name: 'CYBER GROUND ゲーミングデスク', image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/gd.jpg"), filename:"gd.jpg"), introduction: '飲み物の置き場に困らない ドリンクホルダーやヘッドホンを収納できるフックがついてます', genre_id: 4, price: "15300", quote_source: "https://item.rakuten.co.jp/baby-days/45400036/"},
    {name: 'AKRacing NITRO-BLUE/V2', image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/gt.jpg"), filename:"gt.jpg"), introduction: 'ゲーマーだけでなく長時間PCに向かって作業をするクリエイターにもお勧めです', genre_id: 5, price: "43020", quote_source: "https://item.rakuten.co.jp/premoa/4549584314449/"},
    {name: 'Razer DeathStalker V2 Pro', image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/kb.jpg"), filename:"kb.jpg"), introduction: 'トップレベルのパフォーマンスと耐久性を実現するために最適化されたワイヤレス超薄型オプティカルキーボード型オプティカルキーボード', genre_id: 6, price: "29683", connection: "USB Razer HyperSpeed Wireless Bluetooth", size:"43.7 x 14 x 2.6 cm", key_layout: "日本語配列", key_switch: "	Razer リニア薄型オプティカルスイッチ", quote_source: "https://item.rakuten.co.jp/kitcut-ps/509580/"},
    {name: 'ロジクール g402', image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/ms.jpg"), filename:"ms.jpg"), introduction: '超高速なゲーミングを実現する精巧なセンサー テクノロジーを搭載。ロジクールのDelta Zeroテクノロジーを採用したオプティカルセンサーと独自技術のFusion Engineハイブリッドセンサーの融合により、500IPSを超えるトラッキング速度を実現', genre_id: 7, price: "4455", resolution: "240～4,000DPI", polling_rate: "1000Hz", connection: "USB", size: "13.5 x 7.2 x 4.1cm", quote_source: "https://item.rakuten.co.jp/emon-shop/g402/"},
    {name: 'BlackShark V2 X', image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/hs.jpg"), filename:"hs.jpg"), introduction: 'Razer BlackShark V2 X USB は優れた音質、クリアなマイク音声、優れた遮音性の 3 つの特徴を備えた e スポーツヘッドセットです', genre_id: 8, price: "5382", connection: "USB", size: "63 mm x 43 mm / 2.48 in x 1.69 in", quote_source: "https://item.rakuten.co.jp/e-earphone/4571585642801/"},
    {name: 'ViewSonic XG2431', image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/mt.jpg"), filename:"mt.jpg"), introduction: 'HDMIとVGA入力を備えた21.5型のフルHD液晶ディスプレイです', genre_id: 9, price: "32922", resolution: "1920×1080", size: "23.8(ワイド)インチ", response_speed: "1ms(GTG)", refresh_rate: "240Hz", input_terminal: "HDMI2.0×2 DisplayPort1.4×1", quote_source: "https://item.rakuten.co.jp/dospara-r/ic475196/"}
   ]
)