# DevOps Midterm Project

A simple web application demonstrating DevOps principles including version control, automated testing, CI/CD, Infrastructure as Code, blue-green deployment, and monitoring.

## Tech Stack

- Node.js with Express
- EJS templating
- Jest for testing
- GitHub Actions for CI
- Ansible for Infrastructure as Code
- Blue-Green Deployment
- Health Monitoring

## Prerequisites

- Node.js 16.x
- npm
- Ansible
- Git
- Bash shell

## Project Structure

```
devops-midterm/
├── .github/workflows/ci.yml
├── ansible/
│   ├── ansible.cfg
│   ├── inventory.ini
│   └── site.yml
├── scripts/
│   ├── deploy.sh
│   └── health.sh
├── src/
│   ├── app.js
│   ├── routes/
│   │   └── greet.js
│   └── views/
│       └── greet.ejs
├── tests/
│   └── app.test.js
├── screenshots/
├── submission-checklist.md
├── take-screenshots.bat
├── README.md
├── report.md
└── package.json
```

## Setup & Installation

1. Clone the repository:
   ```bash
   git clone <repository-url>
   cd devops-midterm
   ```

2. Install dependencies:
   ```bash
   npm install
   ```

3. Run the application:
   ```bash
   npm start
   ```

4. Run tests:
   ```bash
   npm test
   ```

## Infrastructure Setup (Ansible)

1. Navigate to the ansible directory:
   ```bash
   cd ansible
   ```

2. Run the Ansible playbook:
   ```bash
   ansible-playbook site.yml
   ```

## Deployment

The project uses blue-green deployment strategy. To deploy:

1. Make the deploy script executable:
   ```bash
   chmod +x scripts/deploy.sh
   ```

2. Run the deployment:
   ```bash
   ./scripts/deploy.sh
   ```

## Monitoring

The health check script monitors the application every 5 minutes. To set up monitoring:

1. Make the health check script executable:
   ```bash
   chmod +x scripts/health.sh
   ```

2. Add to crontab:
   ```bash
   */5 * * * * /path/to/scripts/health.sh
   ```

## CI/CD Flow

1. Developers work on the `dev` branch
2. Pull requests trigger GitHub Actions workflow
3. Tests run automatically on push/PR
4. Successful builds can be deployed using the deploy script

## Infrastructure as Code

The project uses Ansible for Infrastructure as Code:
- `inventory.ini`: Defines localhost as the target
- `ansible.cfg`: Basic Ansible configuration
- `site.yml`: Playbook for setting up the environment

## Screenshots

See the `screenshots/` directory for required screenshots of:
- CI pipeline success
- Test results
- Deployment process
- Health check logs
- Application running
- Infrastructure setup
- Git workflow

## License

ISC 