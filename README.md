# GKE-Sample
TerraformとHelmの学習用のレポジトリ。
GCPにTerraformでGKEクラスタを作成し、HelmでKubernetes内で動作するマニュフェストを指定する。

## セットアップ
以下のセットアップが必要。
- gcloud
- terraform
- helm

### gcloud
以下のサイトより最新バージョンを取得。

https://cloud.google.com/sdk/docs/quickstart

パスの通っているディレクトリにコマンドとlibを移動させる。

以下のコマンドで確認できる。
```
$gcloud version  
Google Cloud SDK 320.0.0
```

### Terraform
以下サイトが、GCPでのTerraformチュートリアル。
記載されているように、`brew tap hashicorp/tap`でリポジトリを追加して、
`brew install hashicorp/tap/terraform`でインストールが可能。

バイナリを取得してパスの通っている場所に置いても使える。

https://learn.hashicorp.com/tutorials/terraform/install-cli?in=terraform/gcp-get-started


以下のページで紹介されているように以下のステップを実行する必要がある。
1. GCPにログイン
1. 利用するAPIを有効化
1. 権限をもつjsonファイルのパスを`GOOGLE_CLOUD_KEYFILE_JSON`の環境変数にセット

https://www.devsamurai.com/ja/gcp-terraform-101/

### Helm
以下、Githubから最新のバージョンを取得できる。
3.0以上のものを取得する。

https://github.com/helm/helm/releases

## TerraformでGKEクラスタの作成
https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/container_cluster

## Helmについて
`brew install helm`でインストールできるが、
[バージョンによって正しく動作しない場合](https://stackoverflow.com/questions/62040441/helm-search-functionality-not-fetching-results-from-repo)がある。



https://stackoverflow.com/questions/62040441/helm-search-functionality-not-fetching-results-from-repo


Githubから最新のバージョンを取得できる。
https://github.com/helm/helm/releases


今はHelm Hubは以下のartifact hub
https://artifacthub.io/


記事や本に書いてある内容からアップデートされていて、
Error: repo "https://kubernetes-charts.storage.googleapis.com/" is no longer available;

以下のようなリポジトリが今使われている。
https://charts.helm.sh/stable