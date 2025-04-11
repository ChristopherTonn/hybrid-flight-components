# ✈️ Hybrid Flight Components

**A Modern Angular UI Component Library – Built for DJs, Crafted by DevOps.**

![CI](https://img.shields.io/github/actions/workflow/status/<your-username>/hybrid-flight-components/ci.yml?label=CI&logo=github&style=flat-square)
![Vercel](https://img.shields.io/vercel/deploy?label=Vercel%20Deploy&style=flat-square&logo=vercel)
![License](https://img.shields.io/github/license/<your-username>/hybrid-flight-components?style=flat-square)

---

## 🎯 What is this?

> This is **not a website**.  
> It’s a **modern, standalone Angular 19 UI component library**.

`Hybrid Flight Components` is a showcase for clean, modular architecture and modern DevOps practices.  
It's being developed for use in a personal **DJ portfolio**, but more importantly, it serves as a professional **demonstration of frontend infrastructure, testing, automation, and CI/CD pipelines**.

---

## 🥪 Stack Overview

| Area          | Tech / Tools                                                       |
| ------------- | ------------------------------------------------------------------ |
| **Framework** | Angular 19 (Standalone API)                                        |
| **Styling**   | Tailwind CSS 3                                                     |
| **Testing**   | Karma + Jasmine (Unit tests)                                       |
| **Linting**   | ESLint + Prettier (strict, auto-fixable)                           |
| **Preview**   | Storybook (interactive docs & visual regression testing ready)     |
| **CI/CD**     | GitHub Actions – Lint, Test, Build, Deploy                         |
| **Hosting**   | Vercel (with automatic preview & production deploys)               |
| **Reviews**   | GitHub Copilot Review or manual dev review (required before merge) |

---

## ⚙️ Automated Setup

This entire project was initialized with a **single shell command**:

```bash
bash setup-angular-tailwind-storybook.sh
```

That `.sh` file:

- 🚀 Creates a new Angular standalone component workspace
- 🎨 Installs & configures Tailwind CSS
- 🥪 Initializes Jasmine/Karma for testing
- 📚 Adds Storybook with example component
- ✅ Handles local scripts, build tools, and formatting rules

---

## 🛆 Getting Started

```bash
git clone https://github.com/<your-username>/hybrid-flight-components.git
cd hybrid-flight-components
npm install
```

---

## 🛠️ Dev Commands

| Command                   | Description                                   |
| ------------------------- | --------------------------------------------- |
| `npm start`               | Launches Angular dev server                   |
| `npm run storybook`       | Run Storybook in dev mode                     |
| `npm run test`            | Run all unit tests via Karma                  |
| `npm run lint`            | Lint and check formatting (ESLint + Prettier) |
| `npm run lint -- --fix`   | Auto-fix code style issues                    |
| `npm run build`           | Build the component library                   |
| `npm run build-storybook` | Build static Storybook site                   |

---

## 🔁 CI/CD Flow

Triggered on:

- ✅ `push` to `main`
- ✅ Pull Request to `main`
- ✅ Manual trigger via GitHub UI

Steps:

1. **Install dependencies**
2. **Lint & format check**
3. **Run unit tests**
4. **Build Angular app**
5. **Build Storybook**
6. **Only after all steps succeed → deploy to Vercel**

> ❗ Deployment is **blocked** until CI passes **and** a code review (human or Copilot) is complete.

---

## 📚 Storybook Docs

🖥️ **Live Preview (Vercel):**  
[https://hybrid-flight-components.vercel.app](https://hybrid-flight-components.vercel.app)

🛠️ **Local Dev:**

```bash
npm run storybook
```

Each component is documented, tested, and visually previewed using Storybook.

---

## 🧱 Component Philosophy

- 🛠️ Tailwind-based styling
- 🛆 Standalone Angular components
- ✅ Test file (spec)
- 📚 Story file (storybook)
- ✍️ Clean, maintainable code

---

## 🗕️ Roadmap

- [x] CI/CD via GitHub Actions
- [x] Vercel Deployment Integration
- [x] Jasmine/Karma Testing
- [x] ESLint + Prettier Auto Format
- [x] Storybook Integration
- [x] Branch Protection & Review Flow
- [ ] More UI components (inputs, modals, etc.)
- [ ] Visual regression via Chromatic or similar
- [ ] npm Package Publishing?

---

## 👨‍🎤 Author & Purpose

Made by **[Christopher Tonn](https://christophertonn.de)**  
🎧 DJ by soul, 👨‍💻 developer by heart

> _“A clean codebase is like a clean mix – balanced, flowing, and on point.”_

This project is part of my professional DevOps portfolio and a demonstration of my frontend & infrastructure skills.

---

## 📄 License

MIT – free to use, contribute, or remix.

---

## 💬 Let’s Connect

If you like what you see:

- ⭐ Star the repo
- 🤝 Fork & contribute
- 🔗 Connect via [LinkedIn](https://www.linkedin.com/in/christopher-tonn-b13b64142/)
