# Conduit

ブログプラットフォームを作る RealWorld という OSS のプロジェクトがあります。RealWorld は実世界と同じ機能を持つプラットフォームを作ることで、学習したいフレームワークの技術を習得することを目的としてたプロジェクトです。

Conduit は RealWolrd で作成する Medium.com のクローンサイトです。

今回は Counduit と同じ見た目・機能のサイトを Rails で実装します。

#　起動方法
git clone したものを下記の手順で起動します

```
bundle install

rails db:seed

rails server
```

そして、https://localhost:3000 にアクセスしてください。
