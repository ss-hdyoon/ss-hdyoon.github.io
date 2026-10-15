# EC2 CloudWatch 모니터링 예제

**교육용 샘플입니다. 실제 운영 프로젝트 이력이 아닙니다.**

기존 EC2 인스턴스 1개의 평균 CPU 사용률이 80%를 초과하는 5분 측정 기간이 2회 연속 발생하면 CloudWatch Alarm이 SNS로 알림을 보냅니다.

## 사전 요구 사항
Terraform CLI, AWS CLI 자격 증명(최소 권한), 이미 존재하는 EC2 인스턴스 ID 및 이메일 주소.

## 실행
```bash
terraform init
terraform fmt -check
terraform validate
terraform plan -var='instance_id=i-0123456789abcdef0' -var='notification_email=you@example.com'
# 내용을 확인한 뒤에만 terraform apply ...
```

이메일의 SNS 구독 확인 링크를 승인해야 알림을 받습니다. 프로덕션에 적용하기 전에 알람 임계값, 지표 수집 주기, 장애 대응 정책을 검토하세요.

**주의:** `terraform apply`는 실제 AWS 리소스를 만듭니다. CloudWatch 및 SNS 사용량에 따라 비용이 발생할 수 있습니다. 사용 후 `terraform destroy`로 정리하세요. 실제 계정 식별자, 이메일, state 파일을 공개 저장소에 커밋하지 마세요.
