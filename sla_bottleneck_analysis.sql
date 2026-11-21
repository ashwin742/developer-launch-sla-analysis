-- Project 1: Developer Launch Pipeline & 24-Hour SLA Bottleneck Analysis

-- 1. Regional SLA Performance Scorecard
SELECT 
    d.region,
    COUNT(*) AS total_launches,
    ROUND(AVG(l.turnaround_hours), 1) AS avg_hours,
    SUM(CASE WHEN l.turnaround_hours > 24 THEN 1 ELSE 0 END) AS sla_breaches
FROM launches l
LEFT JOIN developers d ON l.developer_id = d.developer_id
GROUP BY d.region
ORDER BY sla_breaches DESC;

-- 2. Pipeline Stall Rate by Campaign Type
SELECT 
    campaign_type,
    COUNT(*) AS total_launches,
    SUM(CASE WHEN status = 'Stalled' THEN 1 ELSE 0 END) AS stalled_launches
FROM launches
GROUP BY campaign_type
ORDER BY stalled_launches DESC;
