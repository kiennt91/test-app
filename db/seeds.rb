User.create!([
  {username: "admin", email: "admin@test-app.com", password: '123456', role: "admin"},
  {username: "user", email: "user@test-app.com", password: '123456', role: "user"}
])
Category.create!([
  {name: "Literature & Criticism"},
  {name: "Humanities & Philosophy"},
  {name: "Sociology, Politics & Law"},
  {name: "Nonfiction"},
  {name: "History & Geography"},
  {name: "Business & Economics"},
  {name: "Science & Technology"},
  {name: "Computers & IT"},
  {name: "Art, Architecture & Design"},
  {name: "Hobbies & Practical Applications"},
  {name: "Sports & Outdoors"},
  {name: "Lifestyle, Health & Childcare"}
])
Publisher.create!([
  {name: "株式会社 A"},
  {name: "株式会社 B"},
  {name: "株式会社 C"},
  {name: "株式会社 D"},
  {name: "株式会社 E"},
  {name: "株式会社 F"},
  {name: "株式会社 G"},
  {name: "株式会社 H"}
])
Product.create!([
  {category_id: 1, publisher_id: 1, name: "サバイバル・ウェディング", total_amount: 1000, sell_amount: 0, price: 734, image_url: "https://images-fe.ssl-images-amazon.com/images/I/5190DltPGyL.jpg", description: "連続ドラマ化作品！\r\n日本テレビ系 土曜10時 7月スタート\r\n波瑠、伊勢谷友介、吉沢亮、風間俊介、高橋メアリージュンほか豪華キャスト出演！\r\n\r\n――え、半年以内に結婚しないとクビ!?\r\n\r\n寿退社した日に、婚約破棄された黒木さやか（29）に、ブランド大好きドS編集長が与えた仕事は期限6か月の婚活だった。\r\nエルメス、ルイ・ヴィトン、ルブタン……、高級ブランドの戦略で突き進むノンストップラブコメ！", status: "running"},
  {category_id: 1, publisher_id: 2, name: "ハリー・ポッターと賢者の石", total_amount: 10000, sell_amount: 0, price: 2052, image_url: "https://images-fe.ssl-images-amazon.com/images/I/51YR5LMGEnL.jpg", description: "ロンドン郊外の、どこにでもありそうな平凡な街角、ある晩不思議なことがおこる。そして額に稲妻形の傷跡を持つ赤ん坊が、一軒の家の前にそっと置かれる。この家の平凡なマグルのおじ、おばに育てられ、同い年のいとこにいじめられながら、その子、ハリー・ポッターは何も知らずに11歳の誕生日を迎える。突然その誕生日に手紙が届く。魔法学校への入学許可証だった。キングズ・クロス駅の９と３／４番線から魔法学校行きの汽車が出る。ハリーを待ち受けていたのは、夢と、冒険、友情、そして自分の生い立ちをめぐるミステリー。ハリーはなぜ魔法界で知らぬものが無いほど有名なのか？　額の傷跡は？　自分でも気づかなかった魔法の力が次々と引き出されてゆく。そして邪悪な魔法使いヴォルデモートとの運命の対決。", status: "running"},
  {category_id: 1, publisher_id: 1, name: "下町ロケット　ヤタガラス", total_amount: 500, sell_amount: 0, price: 1620, image_url: "https://images-fe.ssl-images-amazon.com/images/I/51zhxupXgIL.jpg", description: "「宇宙から大地」編、ついに激突！！\r\n\r\n2018年10月放映、ドラマ「下町ロケット」（ＴＢＳ日曜劇場）新シリーズの原作小説『下町ロケット　ゴースト』に連なる、「宇宙から大地」編、クライマックスへ――！\r\n\r\n社長・佃航平の閃きにより、トランスミッションの開発に乗り出した佃製作所。果たしてその挑戦はうまくいくのか――。\r\nベンチャー企業「ギアゴースト」や、ライバル企業「ダイダロス」との“戦い”の行方は――。\r\n帝国重工の財前道生が立ち上げた新たなプロジェクトとは一体――。\r\nそして、実家の危機に直面した番頭・殿村直弘のその後は――。\r\n\r\n大きな挫折を経験した者たちの熱き思いとプライドが大激突！\r\n準天頂衛星「ヤタガラス」が導く、壮大な物語の結末や如何に！？\r\n待望の国民的人気シリーズ第4弾！！", status: "running"},
  {category_id: 1, publisher_id: 3, name: "マンガ　自営業の老後", total_amount: 10000, sell_amount: 0, price: 1274, image_url: "https://images-fe.ssl-images-amazon.com/images/I/51y6gfFE9hL.jpg", description: "フリーランスが、死ぬまで幸せに生きるために、\r\nいま、できることのすべて\r\n\r\n\r\nみんなが苦手な年金や税金の話を\r\n超絶わかりやすく体感できる実用コミックエッセイ。\r\n老後貧困に陥らないために、そして、死ぬまで黒字でいるために何をすればいいのか。\r\n53歳　超ずぼらイラストレーターが、専門家と先輩の力を借りて、\r\nギリギリセーフで老後の備えを始めます。", status: "running"},
  {category_id: 1, publisher_id: 1, name: "犬にきいてみろ 花咲舞シリーズ ", total_amount: 10000, sell_amount: 0, price: 888, image_url: "https://images-fe.ssl-images-amazon.com/images/I/51rVRW-ZCvL.jpg", description: "おせっかいな叔母に拝み倒され、人生初のお見合いに出かけた花咲舞。相手は町工場の二代目社長で、育ちはいいが気の弱そうな、平井勇磨という青年だ。銀行勤めということで経営の相談を持ちかけられていた舞は、よりにもよって、銀行で臨店班を組んでいる相馬健に見つかってしまう。大喜びで冷やかす相馬を見て、舞は、勇磨の相談相手にすえることを思いつく。大ベテランの工場長に頭が上がらないという勇磨は、「工場長の不正に気をつけろ」という内部告発の手紙を受け取り、人知れず悩んでいたのだ。\r\n\r\n工場長は本当に不正を働いているのか、手紙を出したのは誰か。舞と相馬は、真相を突き止めるため動き出すが――？\r\n\r\nドラマ化で人気を呼んだ花咲舞シリーズ最新作！\r\n\r\n注：この本は、2016年7月18日にKindle Singlesとして刊行された作品の新装版です。", status: "running"},
  {category_id: 2, publisher_id: 4, name: "思考は現実化する＿アクション・マニュアルつき", total_amount: 20000, sell_amount: 0, price: 2376, image_url: "https://images-fe.ssl-images-amazon.com/images/I/51o-k4BbdxL.jpg", description: "人は自分が思い描いたような人間になるという。すなわち思考は現実化する。原題は『The Think and Grow Rich Action Pack』。「Rich（富）」とは金銭的なもの精神的なもの、いずれをも指す。自己啓発である。「自己啓発」の語に警戒心を感じたら要チェック。そういう人こそ本書を読む価値があるかもしれない。\r\n   著者のナポレオン・ヒルは、鉄鋼王カーネギーの発案に乗り、20年間無報酬で「成功哲学」を徹底的に研究した。カーネギーが見込んだ500人をインタビューし、彼らが成功していく過程を子細に追視。そこに共通する“思考”と“やりかた”を体系的にまとめたのである。驚くべき偉業である。この本は、なぜ「あなた」が今の「あなた」なのかをやさしく教えてくれる。不安の種を取り除き、未来を自分の思う方向に切り開いていくすべとともに。\r\n\r\n   確固たる願望を持つこと、決断、信念、忍耐、マスターマインド、計画の組織化が成功の扉を開ける鍵であると説き、「欲しいものを知れば、それは得られる」「他人を傷つけてまで成功することほど、愚かなことはない」という。そして「勝利者は断じてあきらめない」とも。リンカーン、O・ヘンリー、フォードなどが、それぞれが持っていた負の面をいかに克服し成功し得たのかは、わかりやすい事実であるだけに心にずっしりくる。\r\n\r\n   読み進めていくうちに、アメリカ合衆国がなぜ繁栄の現今にあるかがあぶり出されてくる。彼らは先人の成功の哲学をまじめに学んできたのであろう。誰もが必ず成功できると心得ているのだ。自分を知り、明確な目標を掲げ決断しさえすれば。\r\n\r\n   本書はベストセラー『金持ち父さん貧乏父さん』の原典なのであろう。（本所 凱）", status: "running"},
  {category_id: 2, publisher_id: 4, name: "傷つきやすい人のための　図太くなれる禅思考", total_amount: 5000, sell_amount: 0, price: 1490, image_url: "https://images-fe.ssl-images-amazon.com/images/I/51vfHsEl8YL.jpg", description: "“誤解を怖れずにいいましょう。\r\nじつは禅僧はみな「図太い」のです。”\r\n\r\nニューズウィーク日本版「世界が尊敬する日本人１００人」に選出された禅僧、枡野俊明。\r\n大学教授、庭園デザイナーとしても活躍し、ベストセラーも多数の著者が初めて教える。\r\n禅僧の秘密、その「図太さ」の極意。\r\n\r\n★睡眠効率99.8％の著者が教える！\r\n寝付きが悪い方のための「眠れる座禅」付き！", status: "running"},
  {category_id: 2, publisher_id: 5, name: "株で勝つ！　会社四季報超活用法", total_amount: 10000, sell_amount: 0, price: 1620, image_url: "https://images-fe.ssl-images-amazon.com/images/I/51C4HyzYMtL.jpg", description: "\r\n『会社四季報』は、120人以上の業界担当記者が\r\n日本国内の全上場企業の今期・来期業績を独自予想している\r\n企業情報誌です。\r\n\r\n『会社四季報』には、業績予想や記事だけでなく、\r\n会社の基本情報、特色、取引銀行、仕入先や販売先、関連会社、\r\n株主、財務データ、株価情報などが掲載されています。\r\n\r\n本書は、四季報編集部が直伝する\r\n個人投資家が株で勝つ、株で負けないための\r\n『会社四季報』の見方・使い方です。\r\n\r\n本書を読むことで、『四季報』を読みこなすコツがわかり、\r\n次のようなスキルが身につきます。", status: "setting"},
  {category_id: 2, publisher_id: 4, name: "東大生を育てる親は家の中で何をしているのか？", total_amount: 8000, sell_amount: 0, price: 1490, image_url: "https://images-fe.ssl-images-amazon.com/images/I/51g8PeMrtIL.jpg", description: "デキる子を育てる習慣、教えます。\r\n\r\nどんなに子どもが伸びる可能性を持っていても、それを後押しするかつぶすかは「家庭」次第。今は伸び悩んでいる子でも、親が正しい習慣を実践すれば、学力はぐんぐん伸びていくのです。著者は「入塾テストなし。先着順」で子どもを受け入れ、難関校に導く進学塾・VAMOS（ヴァモス）代表の富永雄輔氏。東大合格者・東大出身講師にヒアリングしてまとめた34の習慣を一挙公開します。", status: "running"},
  {category_id: 2, publisher_id: 2, name: "一生、同じ会社で働きますか？", total_amount: 10000, sell_amount: 0, price: 1534, image_url: "https://images-fe.ssl-images-amazon.com/images/I/61ghJV1wSzL.jpg", description: "「仕事にやりがいを感じない」「でも失敗したくない」そんな悩みに答える究極のメソッド！\r\n\r\n終身雇用がくずれつつあるいま、「転職」はビジネスマン必須のスキルです。逆に転職しないと決め込んでるほうがリスクです。\r\n\r\nとはいえ、長年働いた会社を退職するのは勇気がいります。そこで12回転職した「金融のプロ」山崎元が、経験に基づき最も合理的な「転職の考え方」アドバイスします。", status: "running"},
  {category_id: 3, publisher_id: 1, name: "「頭のゴミ」を捨てれば、脳は一瞬で目覚める!", total_amount: 10000, sell_amount: 0, price: 769, image_url: "https://images-fe.ssl-images-amazon.com/images/I/51LPZQdybjL.jpg", description: "「頭の中がごちゃごちゃしてしまって、整理がつかない」なんてことはありませんか？「集中したいのにすぐに他のことを考えてしまって、なかなか進まない」こんなこともありませんか？\r\nそれは頭の中にゴミがたくさんできてしまった結果です。ゴミが頭にあるとモヤモヤがたくさんできてしまいます。こうしたゴミを追い払うことで、集中力を得る。\r\nでも、ここでの集中力はコーヒーを飲んだり、たばこを吸ったり、気合いを入れないと集中できないという緊張して集中することとは違うのです。\r\n本当の集中はリラックスした集中です。\r\n本書ではこうしたリラックス型の集中力を得るためにはどのようにすればいいかをわかりやすい言葉で説明していきます。\r\n\r\nまずは頭のゴミの掃除をして、本当の集中を得て、短時間での生産性を上げていきましょう。", status: "running"},
  {category_id: 3, publisher_id: 7, name: "仕事は楽しいかね？ (きこ書房)", total_amount: 10000, sell_amount: 0, price: 0, image_url: "https://images-fe.ssl-images-amazon.com/images/I/51wO5nSiO9L.jpg", description: "出張の帰りに、大雪のため一昼夜空港のロビーに足止めされた「私」。そこで出会ったある老人に、つい仕事で鬱積（うっせき）した感情をぶつけてしまう。老人は実は、企業トップがアドバイスをほしがるほどの高名な実業家。その含蓄ある言葉に「私」はしだいに仕事観を揺さぶられていく。\r\n   本書は、将来への希望もなく日々仕事に追われる主人公が、老人のアドバイスに自己変革のアイデアを見いだしていく物語である。それは、唐突に繰り出される老人の言葉とそれを問いただす「私」の会話で展開していく。たとえば老人は「目標を立てるな」という。「私」は、目標がなければ進歩の度合いが測れず、軌道修正もできないと反論する。しかし老人は、斬新なアイデアや商品がなぜ誕生したかを説き明かし、それらが目前の課題に集中した結果であることを指摘。また、世の中は自分が目標を達成するまで待ってはくれないとも言う。そして「遊び感覚でいろいろやって、成り行きを見守る」「明日は今日と違う自分になる、だよ」などのアドバイスをおくる。\r\n\r\n   試すこと、日々変化が必要であること、偶然を見落としていること…。本書のこうしたメッセージは特別なものではないが、それを痛切に感じさせる語り口が独特である。「多くの人は他人を凌駕する人材になろうとしているけど、それを他人と同じような人間になることで達成しようとしている」などは、自分を振り返らせるのに十分である。\r\n\r\n   物語仕立てのビジネス啓発書としては「短編」の部類に入る本書。シンプルながら味わいのある1冊である。（棚上 勉）", status: "running"},
  {category_id: 3, publisher_id: 1, name: "まんがで変わる！　仕事は楽しいかね？ (きこ書房)", total_amount: 10000, sell_amount: 0, price: 1404, image_url: "https://images-fe.ssl-images-amazon.com/images/I/51A6Ha2f81L.jpg", description: "デザイナーを夢見ながらカフェでアルバイトを続ける奈津。漠然とした不安と焦りのなかで、気がつけば32歳。不思議な老人マックスとの出会いをきっかけに、今いる場所でできることを試し始めることで、新たな夢へとつながっていく―仕事観を揺さぶる魔法の本、ついにまんが化!", status: "running"},
  {category_id: 3, publisher_id: 8, name: "世界史とつなげて学べ 超日本史　日本人を覚醒させる教科書が教えない歴史", total_amount: 10000, sell_amount: 0, price: 1728, image_url: "https://images-fe.ssl-images-amazon.com/images/I/41Y3BbGJVkL.jpg", description: "日本史と世界史をつなげれば、歴史の謎が手にとるように解ける！\r\nなぜ足利義満は日明貿易を進めたか？　どうしてザビエルは日本に来たのか？\r\n世界史の人気講師が初めて明かす「世界史と日本史のあいだ」。\r\n\r\nなぜ日本では、世界史と日本史を合わせて学ぶのは近現代になってからなのか？\r\n人気世界史講師はいいます。本来日本は鎖国まで、つねに世界とともにあり、そのなかで世界の荒波に負けずに、自主独立を保ってきた、と。\r\n\r\nそこで本書では、弥生時代に時代を遡って一気に現代まで「世界史と日本史のあいだ」を論じていきます。\r\nそもそも日本人はどこから来たのか？　超グローバリストだった足利義満、戦国時代の輸出品は「武器と傭兵だった」……。\r\n日本史も知る世界史のスペシャリストだから書けた、最先端の歴史研究を踏まえた「大人の教養」。", status: "running"},
  {category_id: 4, publisher_id: 6, name: "世界を変えた14の密約", total_amount: 10000, sell_amount: 0, price: 3479, image_url: "https://images-na.ssl-images-amazon.com/images/I/51v69qTd0pL._SX343_BO1,204,203,200_.jpg", description: "私たちの日常生活を根底から変えたのが、政治家や国際事件ではなく役員室やゴルフコースやバーによって秘密裏に交わされた企業による密約(ディール)だったら?\r\n\r\nイギリスを代表するジャーナリストが世界のタブーを徹底追及。英BBCが番組化、大反響!\r\n\r\n【現金の消滅】\r\n1998年、スタンフォード大学。のちのペイパル創業者達が出会い、始まった。\r\n\r\n【熾烈な格差】\r\n2009年、中間層消滅を予言した銀行家。富裕層OR貧困層ビジネスへと舵が切られた。\r\n\r\n【ダイエット基準】\r\nダイエット関連業界の儲けのために、BMIを27から25に引き下げ、肥満人口を増やす。\r\n\r\n【買い替え強制の罠】\r\n1932年、電球の寿命が6カ月に決められる。アップル製品のバッテリー問題も。\r\n\r\n【フェイクニュースの氾濫】\r\n1981年、マードックとサッチャーが取引。有名メディアが買い取られる。\r\n\r\nほかにも、【投機リスク】【租税回避のカラクリ】【薬漬け】【改革されない働き方】【新自由主義の誕生】【企業の政府支配】【AIに酷使される未来】【知性の取引】【21世紀のインフラ】にまつわる密約が明らかに。", status: "setting"},
  {category_id: 4, publisher_id: 7, name: "anan(アンアン) 2018年 10月10日号 No.2121 [男が恋に落ちる瞬間。/King&Prince]", total_amount: 5000, sell_amount: 0, price: 550, image_url: "https://images-na.ssl-images-amazon.com/images/I/51m%2BuB%2Bg%2BGL._SX389_BO1,204,203,200_.jpg", description: "King & Prince\r\n想い合う、“強い絆”。\r\n\r\nアンケートでわかった、男が恋に落ちる瞬間。\r\nいまどき男子の恋のホンネ。\r\n\r\n出会いのホンネ\r\n男もときめく、恋の始まりの真実。\r\n\r\nメイクとファッションのホンネ\r\n男が好きな、女子のおしゃれのさじ加減。\r\n\r\n引き寄せパーツのホンネ\r\n触れた瞬間、恋に落ちるボディとは。\r\n\r\n男目線のホンネ\r\n意外と知らない、男の視点を解き明かす。", status: "running"},
  {category_id: 4, publisher_id: 6, name: "日本アホバカ勘違い列伝 (WAC BUNKO 283)", total_amount: 50000, sell_amount: 0, price: 994, image_url: "https://images-na.ssl-images-amazon.com/images/I/51%2BuDLAjgZL._SX317_BO1,204,203,200_.jpg", description: "\r\n日本をダメにする「勘違い人間」を征伐する! \r\n\r\n本書で論難されている「勘違い人間」とは──こんな面々! \r\n1生まれながらの特権・利権をもった世襲人間(政治家・医者・歌舞伎役者等々)\r\n2能力がないのに有名になり図に乗っている人間(テレビタレント・芸人等々)\r\n3能力がないのに、自分を偉いと錯覚し、価値観を押しつける人間(作家・弁護士・評論家・キャスター等々)\r\n4国民の血税をすすっている人間(天下り官僚・補助金漬けの農民・漁師等々)\r\n5勘違いしている組織やテレビ局の人間(日本相撲協会・日本弁護士連合会・「サンデーモーニング」等々)---のことである", status: "running"},
  {category_id: 4, publisher_id: 7, name: "日本のいちばん長い日", total_amount: 10000, sell_amount: 0, price: 640, image_url: "https://images-fe.ssl-images-amazon.com/images/I/51DgwNGwtJL.jpg", description: "近代日本の“運命の一日”を描いた不朽の名作。太平洋戦争を終結させるべく、天皇の「聖断」に従い和平への努力を続ける首相鈴木貫太郎をはじめとする人々と、徹底抗戦を主張して蹶起せんとした青年将校たち──。玉音放送を敢行しようとする政府関係者に対して、陸軍の一部軍人は近衛連隊を率いて皇居に乱入した。そのあまりにも対照的な動きこそ、この一日の長さを象徴するものであった。玉音放送が流れた昭和二十年八月十五日正午に至る一昼夜に繰り広げられた二十四幕の人間ドラマ。", status: "running"},
  {category_id: 5, publisher_id: 1, name: "東大教授がおしえる やばい日本史", total_amount: 1000000, sell_amount: 0, price: 1080, image_url: "https://images-na.ssl-images-amazon.com/images/I/61VhIOaS%2BjL._SX350_BO1,204,203,200_.jpg", description: "\r\n東大教授が、日本史の\r\n表と裏を教えます! \r\n\r\n歴史を変えた人物の\r\n「すごい」と「やばい」を見てみれば\r\n日本の歴史がざっくり分かる! \r\n\r\n◎卑弥呼、聖徳太子、紫式部、織田信長、徳川家康、坂本龍馬、夏目漱石……\r\n日本のはじまり~現代まで\r\nまるっと全部網羅しました。", status: "running"},
  {category_id: 5, publisher_id: 1, name: "いまさらですがソ連邦", total_amount: 50000, sell_amount: 0, price: 1620, image_url: "https://images-na.ssl-images-amazon.com/images/I/51ZYFD98iFL._SX352_BO1,204,203,200_.jpg", description: "いまはもう無いふしぎな超大国を、手描きイラストコラムと詳細解説でハラショーに紹介！\r\n\r\n“東側諸国”の盟主として、世界を二分する存在だったソビエト連邦。\r\n人民の解放という理念を追いつつ、強烈な一党独裁体制。\r\n世界第二位の強国なのにモノ不足。\r\nそんな鉄のカーテンの向こう側をのぞき見しよう！\r\n\r\nこれを読めば、みんなタワリシチ!!\r\n\r\nソ連・ロシア好き声優・上坂すみれさん絶賛!!\r\n==========\r\n親愛なる同志諸君!!\r\nソ連邦の栄光は永遠である!!︎　ウラーー!!\r\n…ステレオタイプじゃないソ連のあれこれ、是非読んでほしいです！\r\n==========", status: "running"},
  {category_id: 5, publisher_id: 1, name: "もう一つの「幕末史", total_amount: 50000, sell_amount: 0, price: 1512, image_url: "https://images-fe.ssl-images-amazon.com/images/I/41nc4gYVdSL.jpg", description: "「尊皇攘夷」は、\r\n幕府を倒す“口実”だった――。\r\n\r\n日本のすべてが変わった大転換期、\r\n本当は何が起きていたのか？\r\n\r\n“独自の歴史観”を織り交ぜながら、塗り替えられた\r\n「歴史のターニングポイント」を解き明かす。\r\n\r\n　●「短刀一本で“けり”がつくことでごわす」（西郷隆盛）\r\n\r\n　●「桜田門外の変」と「二・二六事件」の共通点とは？\r\n\r\n　●“いかさまの御旗”が鳥羽・伏見に翻る\r\n\r\n　●「みんな敵がいい。そのほうが大事ができる」（勝海舟）\r\n\r\n　●“政略家”桂と“戦略家”高杉\r\n\r\n　●なぜ龍馬はみなに愛され、そして殺されたのか？\r\n\r\n隠されたエピソードから、\r\n幕末の「実像」が明らかになる！", status: "running"},
  {category_id: 5, publisher_id: 8, name: "Casa BRUTUS特別編集　京都", total_amount: 20000, sell_amount: 0, price: 1404, image_url: "https://images-fe.ssl-images-amazon.com/images/I/51qebEj6DKL.jpg", description: "※この商品はタブレットなど大きいディスプレイを備えた端末で読むことに適しています。また、文字だけを拡大することや、文字列のハイライト、検索、辞書の参照、引用などの機能が使用できません。\r\n\r\n※『美術館で京の美を学ぶ。』並河靖之七宝記念館の記事は掲載されておりません。\r\n※本ムックはカラーページを含みます。お使いの端末によっては、一部読みづらい場合がございます。\r\n\r\n【完全保存版】\r\nKYOTO TRAVEL GUIDE\r\n京都\r\n\r\n観光、買い物、グルメ。京都のすべてを案内する完全版ガイドブック！　\r\n伝統と現代のセンスをマッチングさせた新しいものづくりや、祇園の日本建築と現代アートをコラボさせた美術館。\r\n古いものと新しいものが意外な長所を引き出しあう京都ならではの魅力を求め、旅人はこの街に集まります。\r\n通が教える、今訪れるべき京都を一挙に紹介！", status: "running"},
  {category_id: 5, publisher_id: 1, name: "人生を変える南の島々。日本編", total_amount: 10000, sell_amount: 0, price: 2138, image_url: "https://images-fe.ssl-images-amazon.com/images/I/517Ls58fYFL.jpg", description: "『ヨーロッパ編』『アジア編』に続くシリーズ第3弾！\r\nアジア中の人々が目指す、素晴らしき日本の「南の島々」！\r\n********************************************\r\n\r\n本書は、一般的な旅行ガイドとは少し違います。\r\nこの間まで、旅していた友人の話を聞くような感覚で読み進められる“新しい視点の旅ガイド”です。\r\n\r\n・日本の南の島々とは、どこからどこを指すのか？\r\n・奄美大島北部にある「見えない壁」とは？\r\n・機嫌が良いときにしか現れない「幻の砂州」は？\r\n・公的には人口減なのに、実は増え続けている「シャドウ人口」とは？\r\n・不思議な言語 「 リ゜ 」( リ の 右 肩 に 丸 ) など、普通では読めない日本語が島中の案内板に使われているの場所は？\r\n\r\n著者自らたくさんの島々に足を運び、その中から選りすぐった26島だけを取り上げています。\r\n絶景でも世界遺産でもない“初めての日本”をお楽しみください！", status: "running"},
  {category_id: 5, publisher_id: 7, name: "ホモ・デウス 上: テクノロジーとサピエンスの未来", total_amount: 10000, sell_amount: 0, price: 2052, image_url: "https://images-na.ssl-images-amazon.com/images/I/41pGEawjlAL._SX337_BO1,204,203,200_.jpg", description: "\r\n世界800万部突破の『サピエンス全史』著者が戦慄の未来を予言する! 『サピエンス全史』は私たちがどこからやってきたのかを示した。『ホモ・デウス』は私たちがどこへ向かうのかを示す。\r\n\r\n全世界800万部突破の『サピエンス全史』の著者が描く、衝撃の未来! \r\n\r\n我々は不死と幸福、神性を目指し、\r\nホモ・デウス(神のヒト)へと自らをアップグレードする。\r\nそのとき、格差は想像を絶するものとなる。\r\n35カ国以上で刊行され、400万部突破のベストセラー! \r\n\r\nニューヨーク・タイムズ紙、ウォール・ストリート・ジャーナル紙、\r\nワシントン・ポスト紙、ガーディアン紙ほか、各紙大絶賛! ", status: "setting"}
])
