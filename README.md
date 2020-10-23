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

Connecting to hogehoge.iot.ap-northeast-1.amazonaws.com with client ID aws_iot_analytics_sample_iot_thing...
Connected!
Published: {"device": {"id": "device-1", "name": "hoge"}, "datetime": "2020-10-24 01:19:54", "temperature": 21} to the topic: iot/topic
Published: {"device": {"id": "device-1", "name": "hoge"}, "datetime": "2020-10-24 01:20:04", "temperature": 39} to the topic: iot/topic

...

Disconnected!
```
