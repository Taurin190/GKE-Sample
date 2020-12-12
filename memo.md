## Helmのバージョンについて
`brew install helm`でインストールできるが、
低いバージョン(3.0以下)のCLIがインストールされてしまう。

低いバージョンのCLIでは以下のサイトで質問されているように、
repositoryを追加して、`helm search repo bitnami`のようなコマンドをうっても何も見つからなかったと返ってくる。

https://stackoverflow.com/questions/62040441/helm-search-functionality-not-fetching-results-from-repo


Githubから最新のバージョンを取得する必要がある。

https://github.com/helm/helm/releases

## Helm使用時の書籍やサイトの情報との差分
Helm Hub(https://hub.helm.sh)にアクセスするとartifact hub(https://artifacthub.io/)にリダイレクトするようになっている。


Kubernetesのstableのリポジトリも更新されていて、
`helm repo add stable https://kubernetes-charts.storage.googleapis.com/`のコマンドでリポジトリを追加しようとすると以下のエラーが出力される。
```
Error: repo "https://kubernetes-charts.storage.googleapis.com/" is no longer available;
```

以下のリポジトリが今使われている。

https://charts.helm.sh/stable

`helm repo add stable https://charts.helm.sh/stable`というコマンドでリポジトリを追加できる。

公式のドキュメントを見ると更新されているので、
ブログを読むよりメンテナンスされているドキュメントを読むのが良いかなと思う。

https://helm.sh/docs/intro/quickstart/

### kubectlでの接続エラーについて
kubectlで接続しようとしたらエラーが出てきた。
```
Unable to connect to the server: x509: certificate signed by unknown authority
```

環境変数`GOOGLE_APPLICATION_CREDENTIALS`の設定が上手くできていないため、
設定し直す必要がある。

shell起動時に読み込む`.bash_profile`のようなファイルに上書きしておくと作業再開時にjsonを探さなくて済むので良いかと思う。

以下のコマンドで環境変数に設定した。
```
export GOOGLE_APPLICATION_CREDENTIALS="[PATH]"
```

そもそも権限情報を記載したjsonファイルがローカルにない場合は以下を参照して作成する必要がある。
https://cloud.google.com/docs/authentication/production