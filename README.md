# Vue Finances (monorepo)

Monorepo para API GraphQL e Aplicação Vue desenvolvidos no curso [Vue JS - Guia Completo (Vue CLI, Vue Router, Vuex e GraphQL)](https://www.udemy.com/course/vue-js-guia-completo/?couponCode=VUE_GITHUB) disponível na Udemy.com.

![Vue JS - Guia Completo (Vue CLI, Vue Router, Vuex e GraphQL)](static/course-official-cover.png)

A aplicação é um Gerenciador de Finanças Pessoais que usa as seguintes tecnologias e recursos:

* Client Side
  * Vue (2.6+)
  * Vue Router
  * Vuex
  * Vuetify
  * Vuelidate
  * Apollo Client
  * Apollo Cache InMemory
  * ChartJS
  * Moment
  * RxJS

* Server Side
  * NodeJS
  * Prisma (Client e Binding)
  * GraphQL Yoga
  * Moment
  * JSON Web Tokens
  * Bcrypt
  * API GraphQL (Queries e Mutations)
  * PM2

* Outras ferramentas
  * Docker (Compose e Machine)
  * Prisma Server
  * PostgreSQL
  * Traefik (Reverse Proxy)
  * Digital Ocean
  * Let's Encrypt (HTTP/TLS)
  * Git Submodules

## Conteúdo do curso

O curso aborda praticamente tudo sobre o Vue, mas também nas seções finais é desenvolvida uma aplicação completa incluido o Backend (o Gerenciador de Finanças), alguns tópicos abordados:

* Dominando os princípios (Diretivas, Instância Vue, Computed Properties, etc)
* Listas e condicionais (v-for, v-if e v-show)
* Vue CLI
* Components (Introdução, Props e Events, Slots, etc)
* Formulários
* Animações
* Rotas com Vue Router (Básico, aninhamento, guardas, etc)
* Chamadas HTTP com Axios
* Gerenciamento de estado com Vuex
* Projeto final (Back + Front, Docker)
* Build de produção + deploy
* e muito mais!

Veja a [grade completa na página do curso](https://www.udemy.com/course/vue-js-guia-completo/?couponCode=VUE_GITHUB).

## Teste localmente

Se quiser testar o projeto localmente basta seguir estes passos:

1. Clone o repositório usando HTTPS
```bash
git clone https://github.com/plinionaves/vue-finances.git
```

2. Acesse o diretório criado para o projeto
```bash
cd vue-finances
```

3. Altere o arquivo `.gitmodules` para usar HTTPS também. Esse passo é necessário para que o Git não solicite nenhuma senha
```bash
[submodule "deps/front"]
	path = deps/front
	url = https://github.com/plinionaves/vue-finances-front.git
[submodule "deps/back"]
	path = deps/back
	url = https://github.com/plinionaves/vue-finances-back.git
```

4. Inicialize o submódulos do Git
```bash
git submodule init
```

5. Rode o comando abaixo para "puxar" o código fonte dos submódulos:
```bash
git submodule update
```

6. Crie um arquivo `.env` na raiz do projeto e configure as seguintes variáveis de ambiente:

```bash
NODE_ENV=development

# monorepo
DOMAIN=vuefinances.localhost # dev domain
POSTGRES_USER=prisma
POSTGRES_PASSWORD=prisma
# o dashboard do traefik será configurado com:
# user: admin
# password: 123456
TRAEFIK_AUTH=admin:$apr1$8E0f5wvJ$HZE3AEO5xPFniztO0bkE50

# back
CLIENT_HOSTS=vuefinances.localhost # cors
JWT_SECRET=your-secret
PRISMA_PORT=4466
PRISMA_ENDPOINT=http://prisma.vuefinances.localhost
PRISMA_SERVICE=vue-finances-back
PRISMA_STAGE=dev
PRISMA_SERVICE_SECRET=service-secret # Prisma CLI
PRISMA_MANAGEMENT_API_SECRET=management-secret
```

6. Execute
```bash
docker-compose up -d
```

7. Faça o deploy do Prisma Service
```bash
npm i -g prisma@1.28

cd deps/back

prisma deploy -e ../../.env
```

8. Acesse as aplicações:
  * Front (Vue): [http://vuefinances.localhost](http://vuefinances.localhost)
  * Back (GraphQL API): [http://api.vuefinances.localhost](http://api.vuefinances.localhost)
  * Prisma: [http://prisma.vuefinances.localhost](http://prisma.vuefinances.localhost)


## Contato

Desenvolvido por: [Plínio Naves](https://www.udemy.com/user/plinio-naves/)

* Email: [pliniopjn@hotmail.com](mailto:pliniopjn@hotmail.com)
* Twitter: [@plinionaves](https://twitter.com/plinionaves)
* Github: [github.com/plinionaves](https://github.com/plinionaves)
* Linkedin: [linkedin.com/in/plinionaves/](https://www.linkedin.com/in/plinionaves/)

Participe do nosso grupo no Facebook: [Cursos Plínio Naves](https://www.facebook.com/groups/200267383740594)