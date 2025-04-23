@echo off
echo DevOps Midterm Screenshot Capture Script
echo ======================================

if not exist screenshots mkdir screenshots

echo.
echo Please capture the following screenshots:
echo.
echo 1. CI Pipeline Success
echo    - Open GitHub Actions and show successful workflow run
echo    - Save as: screenshots\1-ci-pipeline.png
echo.
echo 2. Test Results
echo    - Run 'npm test' and show the results
echo    - Save as: screenshots\2-test-results.png
echo.
echo 3. Deployment Process
echo    - Show the deployment script running
echo    - Save as: screenshots\3-deployment.png
echo.
echo 4. Health Check Logs
echo    - Show the contents of /var/log/app-health.log
echo    - Save as: screenshots\4-health-logs.png
echo.
echo 5. Application Running
echo    - Show the application in browser (both routes)
echo    - Save as: screenshots\5-app-running.png
echo.
echo 6. Infrastructure Setup
echo    - Show Ansible playbook running
echo    - Save as: screenshots\6-infrastructure.png
echo.
echo 7. Git Workflow
echo    - Show git log with commit history
echo    - Save as: screenshots\7-git-workflow.png
echo.
echo Press any key to open the screenshots folder...
pause > nul
start screenshots 