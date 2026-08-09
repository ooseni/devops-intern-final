#!/usr/bin/env bash
# ==============================================================================
# Linux & Scripting Basics - System Information Script
# DevOps Intern Final Assessment - Step 2
# Candidate: Oseni Sakariyau Oluwadamilare
# ==============================================================================

set -euo pipefail

echo "=========================================="
echo "          SYSTEM INFORMATION              "
echo "=========================================="

echo -e "\n[1] Current User:"
whoami

echo -e "\n[2] Current Date & Time:"
date

echo -e "\n[3] Disk Usage Overview:"
df -h

echo -e "\n=========================================="
echo "          END OF REPORT                   "
echo "=========================================="
