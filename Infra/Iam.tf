resource "aws_iam_role" "cargo" {
  name = "${var.cargoIAM}_cargo"
  
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Sid    = ""
        Principal = {
          Service = ["ec2.amazonaws.com",
          Service = "ec2-tasks.amazonaws.com"]
        }
      },
    ]
  })
}

resource "aws_iam_role_policy" "ecs_ecr" {
  name = "ecs_ecr"
  role = aws_iam_role.cargo.id

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          ecr:
          ecr:
          ecr:
          ecr:
          ecr:
          ecr:
          ecr:
          ecr:

        ]
        Effect   = "Allow"
        Resource = "*"
      },
    ]
  })
}

source "aws_iam_instance_profile" "perfil" {
    name = "${var.cargoIAM}_perfil"
    role = aws_iam_role.cargo.name
}