# Terraform VPC 네트워크 예제

**교육용 샘플입니다. 실제 운영 프로젝트 이력이 아닙니다.**

VPC / Public Subnet / Internet Gateway / Public Route Table과 연결 관계를 생성합니다. EC2 인스턴스나 NAT Gateway는 생성하지 않습니다. Subnet의 자동 공인 IPv4 할당은 비활성화했습니다.

## 실행
```bash
terraform init
terraform fmt -check
terraform validate
terraform plan
# 구성을 검토한 다음에만 terraform apply
# 실습 후 terraform destroy
```

AWS 자격 증명이 필요합니다. Public Route Table에 기본 라우트를 만든다고 해서 인스턴스가 자동으로 공개되는 것은 아닙니다. 보안 그룹, NACL, 주소 할당 등을 별도로 관리해야 합니다.

**주의:** AWS 실제 리소스 생성은 비용 및 보안 영향을 가질 수 있습니다. 프로덕션 환경에 그대로 적용하지 마세요. `.tfstate`, `.terraform/`, 자격 증명은 저장소에 업로드하지 마세요.
