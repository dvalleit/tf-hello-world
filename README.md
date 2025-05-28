# tf-hello-world
Repo con código par probar terraform en azure
## Pasos
Todos estos estos pasos son basados en la guía https://medium.com/navara/with-terraform-getting-started-on-microsoft-azure-69f6e0b608ec
1. Crear cuenta en azure
2. Crear Service Principal: az ad sp create-for-rbac --role="Contributor" --scopes="/subscriptions/<id>"
3. Exportar variables
4. Comenzar a desplegar con tf-plan/apply
