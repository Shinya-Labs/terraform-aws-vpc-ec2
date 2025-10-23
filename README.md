# terraform-aws-vpc-ec2

## 📝 概要
このプロジェクトは、Terraformを用いてAWS上にEC2インスタンスを構築するインフラ構成のポートフォリオです。  
クラウドエンジニアとしての転職活動を目的とし、IaC（Infrastructure as Code）の実践力を示すために作成しました。

このTerraform構成は、AWS上に以下のリソースを構築します：

- VPC（10.0.0.0/16）
- パブリックサブネット（10.0.1.0/24）
- インターネットゲートウェイ
- ルートテーブルと関連付け
- セキュリティグループ（SSH許可）
- EC2インスタンス（t2.micro）

## ✏ 使用方法


## 🔧 使用技術
- Terraform
```bash
terraform init
terraform apply
- AWS（EC2）
- GitHub
- Copilot ※本フォーマット作成補助

## 📐 構成図

以下の構成図は、Terraformによって構築されるAWSリソースの概要を示しています。

![構成図](images/architecture.png)

## 🚀 デプロイ手順

1. AWS CLIの認証情報を設定
2. Terraformの初期化  
   `terraform init`
3. Terraformのプラン確認  
   `terraform plan`
4. Terraformの適用  
   `terraform apply`

## 📄 ファイル構成
```
terraform-aws-vpc-ec2/
├── main.tf
├── variables.tf
├── outputs.tf
├── README.md
└── images/
    └── architecture.png
```

## 📤 Outputs

Terraformの適用後、以下の情報が出力されます：

- EC2インスタンスのパブリックIP
- EC2インスタンスID

```bash
Outputs:

instance_public_ip = "xx.xx.xx.xx"
instance_id        = "i-xxxxxxxxxxxxxxxxx"

