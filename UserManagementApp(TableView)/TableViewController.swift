//
//  TableViewController.swift
//  UserManagementApp(TableView)
//
//  Created by 中村泰輔 on 2019/08/09.
//  Copyright © 2019 icannot.t.n. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    
    //    名前データ
    var names : [String] = ["中村泰輔","永井優","小野勇輔","豊岡正紘","分目祐太","金田祐作","甲斐崎香","志賀大河","津國由莉子","堀田真","田内翔太郎","福沢貴一","平田奈那","吉澤優衣"]
    //    趣味データ
    
    var hobbies : [String] = [
        "サッカー、カラオケ、旅行、食事、飲酒等基本楽しければなんでも好きです。\n ポンコツという自負を持っている",
        "音楽が好き。\n ビジュアル系バンドが好きでバンドを組んでギターを弾いたりした。\n 最近の趣味はバイクに乗ることとキックボクシング",
        "スポーツをすることと釣りが好きです！サッカーと水泳をしていました。",
        "バックカントリースキーをしてみたい！美味しいものをたくさん食べたい！ \n スキューバーダイビングしたい！深夜特急読みながら同じところ旅したい！",
        "卓球とランニングが好きです。\n 世界のいろんな国に行ってみたいです。最近、フィリピンに行って好きになりました。",
        "小学校二年生から高校3年生までサッカーをしていて、今も趣味でフットサルをしています。最近はキックボクシングジムに通い始めましたが、細身になりたいので筋トレはあまりしないようにしています。ライブハウスに音楽を聞きに行くことが好きで、5個上の兄と一緒にライブやフェスに行くことがあります。",
        "あだ名はかおりん。18歳。\n 女好きなことは旅行と遊び友達と遊ぶことが好きです!!カラオケとかめっちゃ行きますwww",
        "バレーボール、サッカー、バスケと運動が全般的に好きです！ \n 海外旅行などに最近ハマり、特にほかのアジア圏の国への旅行をいっぱいしてみたいです！あと料理も好きです！",
        "あだ名はゆりちゃん。22歳女。好きなことはピアノと麻雀とバレエ。基本的にインドアで引きこもって家でゲームをしていることが多い。\n 夜になると街を徘徊することも多く、その時はお酒を大量に浴びている。\n 次の日に、飲み過ぎだと後悔するけど、繰り返してしまうおバカさんです。",
        "エレキベースが趣味。高校1年からロックを中心に音楽活動を始める。\n 初めはASIAN KUNG - FU  GENERATIONや東京事変などを好みとしていた。\n 大学からは一変し、フュージョンを中心に演奏活動をする。Pat Metheny Group や スナーキー・パピーが好き。",
        "普段は、読書か散歩かアニメを見て過ごしてます！あと最近は筋トレにもハマりかけています",
        "サッカー好きの脳筋です。今の趣味はバイトすること週6でみんな大好きcoffee mafiaで働いてますよ!いつでもおいで",
        "あだなは、はち(本名:なな)で、東京にくるたびにハチ公に挨拶しています。\n 弾丸ひとり旅など、突然思い立ったことをやるのが好きです。\n 東京生活わくわくしています〜",
        "ゲームが大好き。特にドラクエをこよなく愛しており、2018年の夏休みは約200時間をドラクエに費やした。\n 他にもピアノや海外旅行や読書など様々な趣味がある。"
        
    ]

// VCに渡すための変数を初期化しておく
    var resultName : String = ""
    var resultInfo : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    // MARK: - Table view data source
// セルの数
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 14
    }
// セルにう向けて代入する値を定義
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath)
        
        
// セルのテキストラベルに名前のデータの配列を順番に入れていく
        cell.textLabel?.text = names[indexPath.row]
        
        return cell
    }
// セルを押した後の処理を実行する
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
// VCに受け渡しを行うための変数にそれぞれのデータを代入していく
        resultName = names[indexPath.row]
        resultInfo = hobbies[indexPath.row]
// segueによる遷移を実行するコード
        performSegue(withIdentifier: "showResult", sender: nil)
    }
// 遷移前に行われる処理
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
// segueのidentifierが合致するかどうかの確認と遷移先のクラス名の確認を行い、相違する場合をはじく
        guard segue.identifier == "showResult", let vc = segue.destination as? ViewController else {
            return
        }
// guard文を通過した場合にVCで初期化して定義しておいた変数に代入する
        vc.listName = resultName
        vc.info = resultInfo
    
    }

}
