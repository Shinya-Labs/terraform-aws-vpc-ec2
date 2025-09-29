# terraform-aws-vpc-ec2
AWS構成をTerraformで構築するコード　※著作権 Copilot
# AWS Infrastructure with Terraform

## 📌 概要
このリポジトリは、Terraformを使用してAWS上に基本的なインフラ構成（VPC、サブネット、EC2インスタンス）を構築するコードをまとめたものです。クラウドエンジニアとしてのスキル証明を目的としたポートフォリオの一部です。

## 🛠 使用技術
- Terraform v1.x
- AWS Provider
- Amazon Linux 2
- GitHub（コード管理）
- VS Code（開発環境）

## 🧱 構成内容
- VPC（CIDR：10.0.0.0/16）
- Public Subnet（CIDR：10.0.1.0/24）
- Internet Gateway（IGW）
- Route Table（IGWへのルート設定）
- EC2インスタンス（Amazon Linux 2、t2.micro）
- セキュリティグループ（SSHポート開放）

## 📂 ディレクトリ構成
terraform-aws-vpc-ec2/
├── main.tf              # リソース定義
├── variables.tf         # 変数定義
├── outputs.tf           # 出力値
├── provider.tf          # AWSプロバイダー設定
└── terraform.tfvars     # 変数の値

## 🚀 実行手順
1. AWS CLIで認証情報を設定（`aws configure`）
2. Terraform初期化  
   ```bash
   terraform init
