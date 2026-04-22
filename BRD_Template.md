# Business Requirements Document (BRD)

## Project Title: Operational KPI Tracking Initiative
## Version: 1.0 | Date: 2025-11-01 | Author: Bhavana Gurajala

---

## 1. Project Overview
This document outlines the business requirements for implementing a 
centralized KPI tracking system across 3 operational business units 
at Cardus Inc.

## 2. Business Objectives
- Consolidate KPI reporting into a single dashboard
- Reduce manual reporting time by 40%
- Enable real-time visibility into operational performance

## 3. Stakeholders
| Stakeholder | Role | Responsibility |
|---|---|---|
| Operations Manager | Primary Owner | Approves requirements |
| Data Analyst | Technical Lead | Builds SQL queries |
| Business Analyst | Author | Documents requirements |
| QA Team | Reviewer | Validates outputs |

## 4. Functional Requirements
| ID | Requirement | Priority |
|---|---|---|
| FR-01 | System must display monthly KPIs by department | High |
| FR-02 | Dashboard must refresh every 24 hours | High |
| FR-03 | Users can filter by date range and team | Medium |
| FR-04 | Alerts triggered when KPI falls below threshold | Medium |
| FR-05 | Export reports to Excel and PDF | Low |

## 5. Assumptions
- Data is available in the existing SQL database
- Stakeholders have access to Power BI

## 6. Acceptance Criteria
- All KPIs display correctly for the past 12 months
- Dashboard loads within 5 seconds
- Reports can be exported successfully
