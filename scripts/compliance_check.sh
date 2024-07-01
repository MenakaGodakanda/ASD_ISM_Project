#!/bin/bash
# Perform a compliance check using Lynis
echo "Starting compliance check..."
sudo lynis audit system > reports/compliance_report.txt
echo "Compliance check complete. Report saved to reports/compliance_report.txt."
