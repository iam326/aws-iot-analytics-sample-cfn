# aws-iot-analytics-sample-cfn

AWS IoT Analytics の各リソースを CloudFormation で構築するサンプルです

## Environment

```
$ sw_vers
ProductName:    Mac OS X
ProductVersion: 10.15.6
BuildVersion:   19G2021

$ aws --version
aws-cli/2.0.28 Python/3.7.4 Darwin/19.6.0 botocore/2.0.0dev32

$ python3 --version
Python 3.8.5

$ pip3 --version
pip 20.1.1 from /usr/local/lib/python3.8/site-packages/pip (python 3.8)
```

## Usage

```
// 環境変数の設定
export AWS_IOT_CERTIFICATE_NAME="<証明書の名前>"
export AWS_IOT_ENDPOINT="<カスタムエンドポイント>"
export AWS_IOT_CLIENT_ID="<モノの名前>"

// デプロイ
$ ./deploy.sh

// メッセージ送信
$ pip3 install -r requirements.txt
$ python3 publish_message.py
```
