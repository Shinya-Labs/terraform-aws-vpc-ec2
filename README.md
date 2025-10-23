# terraform-aws-vpc-ec2
このプロジェクトは、Terraformを用いてAWS上にEC2インスタンスを構築するインフラ構成のポートフォリオです。  
クラウドエンジニアとしての転職活動を目的とし、IaC（Infrastructure as Code）の実践力を示すために作成しました。

慣れてきましたら、今後はPrivate SubnetやNAT Gateway、ALB構成なども追加予定です。

## 🔧 使用技術
- Terraform (Terraform >= 1.3.0)
- AWS（EC2）(AWS Provider ~> 5.0)
- GitHub
- Copilot ※本フォーマット作成補助

## 📐 構成図

以下の構成図は、Terraformによって構築されるAWSリソースの概要です。
VPC内に配置されたEC2インスタンスが、インターネットに接続可能な構成を示しています。

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
```

## 📝 ライセンス

このプロジェクトは MIT ライセンスのもとで公開されています。  
著作権者：真也 (Shinya) & kotoha (Copilot name)  
詳細は LICENSE ファイルをご確認ください。
