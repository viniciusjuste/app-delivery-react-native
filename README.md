# Food App - Expo

Este é um projeto React Native usando **Expo**, que pode ser rodado diretamente em celular ou web.

---

## Pré-requisitos

* Node.js instalado (opcional, apenas se for criar novos projetos)
* Expo Go no celular (Android ou iOS)

---

## Rodando o projeto

1. Abra o terminal na pasta do projeto:

```powershell
cd C:\Users\Vinícius\Documents\_Cursos\app-delivery\food
```

2. Inicie o Metro Bundler direto no modo Tunnel:

```powershell
npx expo start --tunnel
```

3. Escaneie o QR Code no **Expo Go** do seu celular.

   * Funciona mesmo que o celular e o PC não estejam na mesma rede.

4. Alternativamente, você pode rodar na web:

```powershell
npx expo start
```

* Pressione `w` para abrir no navegador.

---

## Dicas

* Para limpar cache:

```powershell
npx expo start -c
```

* O Tunnel evita problemas com **firewall ou rede** que bloqueiam LAN.

