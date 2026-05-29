// 診療パート用キャラクターデータ
// desc_list: 信頼度に応じて解放される基本情報
// past_list: 信頼度に応じて解放される「過去」の詳細情報（3段階）

// desc や text の中身はテンプレートリテラル(`)で記述し、改行をそのまま入力できます。
// 保存時に自動的に改行コード（\n）を <br> タグに変換されます。

var MedicCharacterData = [
    {
        id: "setsu",
        name: "初明 世紬",
        jname: "世紬",
        // 基本プロフィール情報
        profile: `【プロフィール】
名前：初明 世紬（はつあかり せつ）
年齢：24
性別：女
趣味：ゲーム、骨董品収集
特技：5系統の術が使えること、器用で何でもすぐに上達する、天才

【性格】
行雲流水な性格、マイペースで達観している。機転が利き、周りから信頼されている。
自信過剰な節があり、天才ゆえに失敗することも無い。
好奇心旺盛で面倒見が良いが、特定の誰かに入れ込むことは無い。`,

        // 信頼度に応じて変化する印象（3段階）
        impression_list: [
            { threshold: 0, text: "光海が言っていた「未来を変えられる人物」らしいが、まだ真意は不明だ。" },
            { threshold: 40, text: "実力は本物だ。協力関係を築けば、大きな戦力になるだろう。" },
            { threshold: 80, text: "運命にあらがう同志として、心から信頼している。" }
        ],

        // 信頼度に応じて解放される基本情報リスト
        desc_list: [
            {
                trust: 0,
                text: `【概要】
帝国軍第03基地第7小隊に所属する24歳の囚人兵。
元宮廷術使だが、罪を犯して今は囚人兵となっている。`
            },
            {
                trust: 20,
                text: `【能力】
類稀なる最強 of 最強の術使。基本術の他に、未来予知、時間操作、火炎術、治癒術、空間転移術が使える。
しかし、あまり術を使おうとはしない。`
            },
            {
                trust: 40,
                text: `【呪い】
仕事柄、呪われることが多く、肌の露出が少ない服装が多い。
炭化、影喰い、術狂い、夢蝕み、死者の囁き、怪異の寵愛、血毒など多数の呪いを受けている。`
            }
        ],
        // 過去情報（3段階で解放）
        past_list: [
            {
                trust: 30,
                title: "過去 I：唐舞橋の大蛇事件",
                text: `7年前、曙諌夫の計略により怪物"唐舞橋の大蛇"に師匠の綴が殺され、藍爛が連れ去らわれる事件が起きる。
世紬は未来予知で知っていたが諦めていた。しかし、友人の光海は未来を変えようと離反する。
一年後、大蛇討伐作戦にて世紬は予知通り死ぬ運命だったが、駆け付けた光海が命と引き換えに彼女を救う。
死の間際の光海の言葉で、世紬は己の無力さと罪を自覚する。`
            },
            {
                trust: 60,
                title: "過去 II：囚人兵として",
                text: `事件後、死刑囚となった世紬は5年前、太平洋転移門封印作戦に参加。
指揮官の晴天と共にポータルを閉じ、生き延びる。
この功績と曙諌夫の罪の発覚により、刑は懲役14年に減刑され、曙家管理下の囚人兵となる。`
            },
            {
                trust: 90,
                title: "過去 III：現在の目的",
                text: `現在はボーンハウンド作戦に参加し、第7小隊に所属しながら軍部の内情を探りつつ、未来を書き換える力を持つ光海の遺骨を収集している。
未来予知では自身の死が確定しており、呪いにより余命も短いため、自身の人生については既に諦観している。`
            }
        ],
        // 尋問で得られる情報
        interrogation_data: {
            past: {
                title: "表層的な過去",
                text: "「帝国軍に入る前？ ……ただの学生だったさ。これといって特徴のない、平凡な人生を送っていた。」（嘘が含まれているようだ）",
                unlocked: false
            },
            secret: {
                title: "隠された秘密",
                text: "「……うぅ、右腕が疼く……。この腕の呪い、いつか私を喰らい尽くす気か……？ 怖い……死にたくない……。」",
                unlocked: false
            },
            traitor: {
                title: "裏切りの真実",
                text: "「……あはは、裏切り？ 違うよ……私はただ、あの方の……光海の予言を……成就させるために……邪魔なものは全て……消す……」",
                unlocked: false
            }
        }
    },
    {
        id: "tota",
        name: "富山 東太",
        jname: "東太",
        profile: `【プロフィール】
年齢：22
性別：男
特技：料理
性格：楽観的`,
        impression_list: [
            { threshold: 0, text: "明るい性格のようだが、軍人としての資質は未知数だ。" },
            { threshold: 40, text: "裏表のない性格で、部隊のムードメーカー的な存在だ。" },
            { threshold: 80, text: "困った時に一番頼りになる、かけがえのない相棒だ。" }
        ],
        desc_list: [{ trust: 0, text: `気さくな同僚。` }],
        past_list: [
            { trust: 30, title: "過去 I", text: `詳細不明（未実装）` },
            { trust: 60, title: "過去 II", text: `詳細不明（未実装）` },
            { trust: 90, title: "過去 III", text: `詳細不明（未実装）` }
        ]
    },
    {
        id: "ito",
        name: "曙 一十",
        jname: "一十",
        profile: `【プロフィール】
年齢：25
性別：男
特技：射撃
性格：冷徹`,
        impression_list: [
            { threshold: 0, text: "感情を表に出さない。裏切りの可能性も考慮し、監視を続ける。" },
            { threshold: 40, text: "任務には忠実だ。一定の信頼は置けるかもしれない。" },
            { threshold: 80, text: "冷徹さの裏に確供たる信念がある。背中を預けるに足る男だ。" }
        ],
        desc_list: [{ trust: 0, text: `裏切りの疑いがある隊員。` }],
        past_list: [
            { trust: 30, title: "過去 I", text: `詳細不明（未実装）` },
            { trust: 60, title: "過去 II", text: `詳細不明（未実装）` },
            { trust: 90, title: "過去 III", text: `詳細不明（未実装）` }
        ]
    },
    {
        id: "ayase",
        name: "綾瀬 護氏",
        jname: "綾瀬",
        profile: `【プロフィール】
年齢：28
性別：男
特技：指揮
性格：合理的`,
        impression_list: [
            { threshold: 0, text: "合理主義の塊だ。感情論は通じない相手だろう。" },
            { threshold: 40, text: "指揮官として優秀だ。組織の要として機能している。" },
            { threshold: 80, text: "互いに言葉はいらない。阿吽の呼吸で動ける最高の部下だ。" }
        ],
        desc_list: [{ trust: 0, text: `探索の要。` }],
        past_list: [
            { trust: 30, title: "過去 I", text: `詳細不明（未実装）` },
            { trust: 60, title: "過去 II", text: `詳細不明（未実装）` },
            { trust: 90, title: "過去 III", text: `詳細不明（未実装）` }
        ]
    },
    {
        id: "akehiru",
        name: "明昼 優知",
        jname: "明昼",
        profile: `【プロフィール】
年齢：23
性別：男
特技：結界術
性格：真面目`,
        impression_list: [
            { threshold: 0, text: "責任感が強すぎて、自滅しないか心配だ。" },
            { threshold: 40, text: "真面目で実直。安定した働きを見せてくれている。" },
            { threshold: 80, text: "その誠実さに救われることが多い。良き相談相手だ。" }
        ],
        desc_list: [{ trust: 0, text: `術使。精神的な負担が大きい。` }],
        past_list: [
            { trust: 30, title: "過去 I", text: `詳細不明（未実装）` },
            { trust: 60, title: "過去 II", text: `詳細不明（未実装）` },
            { trust: 90, title: "過去 III", text: `詳細不明（未実装）` }
        ]
    },
    {
        id: "airan",
        name: "青葉 藍爛",
        jname: "藍爛",
        profile: `【プロフィール】
年齢：18
性別：女
特技：破壊
性格：好戦的`,
        impression_list: [
            { threshold: 0, text: "危険な香りがする。刺激しないよう、慎重に扱う必要がある。" },
            { threshold: 40, text: "手のかかる妹のような存在だ。悪い人間ではない。" },
            { threshold: 80, text: "誰よりも純粋な心を持っている。彼女の居場所を作ってやりたい。" }
        ],
        desc_list: [{ trust: 0, text: `情緒不安定なところがある。` }],
        past_list: [
            { trust: 30, title: "過去 I", text: `詳細不明（未実装）` },
            { trust: 60, title: "過去 II", text: `詳細不明（未実装）` },
            { trust: 90, title: "過去 III", text: `詳細不明（未実装）` }
        ]
    },
    {
        id: "momona",
        name: "百七",
        jname: "百七",
        profile: `【プロフィール】
年齢：19
性別：女
特技：逃走
性格：臆病`,
        impression_list: [
            { threshold: 0, text: "常に怯えている。戦場には不向きに見えるが……。" },
            { threshold: 40, text: "少し落ち着いてきたようだ。守るべき対象として認識している。" },
            { threshold: 80, text: "弱さを知るがゆえの優しさがある。彼女の笑顔を守りたいと思う。" }
        ],
        desc_list: [{ trust: 0, text: `人質になりやすい運命を持つ。` }],
        past_list: [
            { trust: 30, title: "過去 I", text: `詳細不明（未実装）` },
            { trust: 60, title: "過去 II", text: `詳細不明（未実装）` },
            { trust: 90, title: "過去 III", text: `詳細不明（未実装）` }
        ]
    },
    {
        id: "syuuichi",
        name: "山本 秀一",
        jname: "秀一",
        profile: `【プロフィール】
年齢：25
性別：男
特技：剣術
性格：生真面目`,
        impression_list: [
            { threshold: 0, text: "少し堅苦しい軍人だが、部下想いの頼れる男だ。" },
            { threshold: 40, text: "実直で信頼できる同僚だ。" },
            { threshold: 80, text: "命を預けられる最高の戦友だ。" }
        ],
        desc_list: [{ trust: 0, text: `実直な隊長。` }],
        past_list: [
            { trust: 30, title: "過去 I", text: `詳細不明（未実装）` },
            { trust: 60, title: "過去 II", text: `詳細不明（未実装）` },
            { trust: 90, title: "過去 III", text: `詳細不明（未実装）` }
        ]
    }
];

// 改行コード（\n）を <br> タグに変換する関数
function applyBrToMedicData() {
    MedicCharacterData.forEach(function (char) {
        if (char.profile) char.profile = char.profile.replace(/\n/g, "<br>");

        if (char.desc_list) {
            char.desc_list.forEach(function (d) {
                if (d.text) d.text = d.text.replace(/\n/g, "<br>");
            });
        }

        if (char.past_list) {
            char.past_list.forEach(function (p) {
                if (p.text) p.text = p.text.replace(/\n/g, "<br>");
            });
        }
    });
}

// 変換適用
applyBrToMedicData();

// グローバルスコープに公開
window.MedicData = MedicCharacterData;
