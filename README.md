# onlyrealty — Local Preview

Quick instructions to preview the static site locally.

Prerequisite: Node.js (includes npm)
- macOS / Linux (recommended via nvm):
  1. Install nvm:
     curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
     source ~/.nvm/nvm.sh
  2. Install Node LTS and use it:
     nvm install --lts
     nvm use --lts

- Windows:
  - Download and run the Node LTS installer from https://nodejs.org/ or use nvm-windows: https://github.com/coreybutler/nvm-windows

Verify installation:

  node -v
  npm -v

Clone the repository (if needed):

  git clone https://github.com/jlag007/onlyrealty.git
  cd onlyrealty

Install dependencies (runs once or when package.json changes):

  npm install

Start the local preview (serves the site as a static SPA on port 3000):

  npm run preview

Open: http://localhost:3000

Alternative quick commands (no npm install required):

- Run serve via npx (temporary, no install):

  npx serve -s . -l 3000

- Use Python simple HTTP server (no SPA fallback):

  python3 -m http.server 3000

  then open http://localhost:3000

Using a different port

- Linux / macOS:

  PORT=8080 npm run preview:port

- Windows PowerShell:

  $env:PORT=8080; npm run preview:port

Troubleshooting

- "npm: command not found": ensure Node.js is installed and your shell was restarted after installation.
- Permission / EACCES errors: avoid using sudo for project installs; use nvm or fix npm global directory permissions.
- If npm install fails, paste the error here and I will help diagnose.

If you want, I can also add a Dockerfile or a short GitHub Actions workflow for preview deploys — tell me which and I'll add it.