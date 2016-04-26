# site-parser
Fetch web site meta data.

### Usage

1. git clone git@github.com:shoyan/site-parser.git
2. cd site-parser
3. bundle install
4. edit site.csv your text editor.
5. ruby site-parser.rb


```ruby
⇒  ruby site-parser.rb 
"http://www.yahoo.co.jp/"
[
    [0] {
                             "url" => "http://www.yahoo.co.jp/",
                           "title" => "Yahoo! JAPAN",
                     "description" => "日本最大級のポータルサイト。検索、オークション、ニュース、メール、コミュニティ、ショッピング、など80以上のサービスを展開。あなたの生活をより豊かにする「ライフ・エンジ ン」を目指していきます。",
                          "robots" => "noodp",
        "google-site-verification" => "fsLMOiigp5fIpCDMEVodQnQC7jIY1K3UXW5QkQcBmVs"
    }
]
```
