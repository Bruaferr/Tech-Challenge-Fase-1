module "prod" {
    source = "../..infra"

    nome_repositorio = "producao"
    cargoIAM = "producao"
    variable = "producao"

  }

output "IP_alb" {
    value = module.prod.ip
}