# Vagrant + Chef(Docker)でGitlabを立てるやつ
## 前書き
事前にVagrantの実行環境が必要です。

## 使い方
### bundleを利用する場合
以下のコマンドを実行しましょう

```sh
bundle install
bundle exec berks vendor cookbooks/
vagrant up
```

### ChefDKを利用する場合
https://downloads.chef.io/chef-dk/

```sh
berks vendor cookbooks/
vagrant up
```


## 仕様
以下のURLにGitlabが立ち上がります。
他のIPにしたい場合等は`Vagrantfile`を適当にいじってあげてください。

http://localhost:10080


## ライセンス
MIT