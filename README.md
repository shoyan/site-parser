# site-parser
Fetch web site meta data.

## Usage

### CLI mode

When you run a `ruby site-parser.rb` the URL that is defined in site.csv the target will be executed.

1. git clone git@github.com:shoyan/site-parser.git
2. cd site-parser
3. bundle install
4. edit site.csv your text editor.
5. ruby site-parser.rb


```ruby
⇒  cat site.csv
http://www.yahoo.co.jp/

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

### Server mode

1. git clone git@github.com:shoyan/site-parser.git
2. cd site-parser
3. bundle install
4. ruby server.rb

When you run a `ruby server.rb` server starts.  
Execute the following command.  
Meta tags will be returned in json format.

```
$ curl http://localhost:4567 -X POST -d "url=http://www.yahoo.co.jp/"
=> {"url":"http://www.yahoo.co.jp/","title":"Yahoo! JAPAN","description":"日本最大級のポータルサイト。検索、オークション、ニュース、メール、コミュニティ、ショッピング、など80以上のサービスを展開。あなたの生活をより豊かにする「ライフ・エンジン」を目指していきます。","robots":"noodp","google-site-verification":"fsLMOiigp5fIpCDMEVodQnQC7jIY1K3UXW5QkQcBmVs"}

```
