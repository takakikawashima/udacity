# ベースイメージとしてPython 3.8を使用
FROM python:3.8-slim

# 作業ディレクトリを設定
WORKDIR /app

# 必要なパッケージをインストール
RUN apt-get update && apt-get install -y \
    build-essential \
    sqlite3

# アプリケーションの依存関係をインストール
COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# アプリケーションのソースコードをコピー
COPY . .

# データベースを初期化
RUN python init_db.py

# アプリケーションポートを公開
EXPOSE 3111

# アプリケーションを起動
CMD ["python", "app.py"]