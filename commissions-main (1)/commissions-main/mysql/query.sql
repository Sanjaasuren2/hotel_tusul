# Ezemchigchiin medeelel + tuunii mashinuudiin torguuli
SELECT d.ezemshigchRD AS identifier, i.* FROM ezemshigch d
JOIN zorchilburtgel i ON d.ezemshigchRD = i.mashinDugaar
UNION
SELECT c.ezemshigchRD AS identifier, i.* FROM mashin c
JOIN zorchilburtgel i ON c.plateNo = i.mashinDugaar;

SELECT * FROM zorchilburtgel

# dangaaraa 30%+ ezelj baigaa zurchluud
SELECT duremCode, COUNT(*) AS issue_count
FROM zorchilburtgel
GROUP BY duremCode
HAVING COUNT(*) > (SELECT 0.3 * COUNT(*) FROM zorchilburtgel);

# Dugaariin hyazgaarlaltad hamragdah mashinuudiin too, huvi
SELECT
    COUNT(plateNo),
    ROUND(COUNT(plateNo) / SUM(COUNT(plateNo)) OVER () * 100, 2) AS percentage,
    CASE
        WHEN DAYOFWEEK(CURRENT_DATE) = 1 AND CAST(SUBSTRING(plateNo, 4, 1) AS UNSIGNED) IN (1, 6) THEN 'HYAZGAARLAGDSAN'
        WHEN DAYOFWEEK(CURRENT_DATE) = 2 AND CAST(SUBSTRING(plateNo, 4, 1) AS UNSIGNED) IN (2, 7) THEN 'HYAZGAARLAGDSAN'
        WHEN DAYOFWEEK(CURRENT_DATE) = 3 AND CAST(SUBSTRING(plateNo, 4, 1) AS UNSIGNED) IN (3, 8) THEN 'HYAZGAARLAGDSAN'
        WHEN DAYOFWEEK(CURRENT_DATE) = 4 AND CAST(SUBSTRING(plateNo, 4, 1) AS UNSIGNED) IN (4, 9) THEN 'HYAZGAARLAGDSAN'
        WHEN DAYOFWEEK(CURRENT_DATE) = 5 AND CAST(SUBSTRING(plateNo, 4, 1) AS UNSIGNED) IN (5, 0) THEN 'HYAZGAARLAGDSAN'
        WHEN DAYOFWEEK(CURRENT_DATE) = 6 AND CAST(SUBSTRING(plateNo, 4, 1) AS UNSIGNED) % 2 = 0 THEN 'HYAZGAARLAGDSAN'
        WHEN DAYOFWEEK(CURRENT_DATE) = 7 AND CAST(SUBSTRING(plateNo, 4, 1) AS UNSIGNED) % 2 <> 0 THEN 'HYAZGAARLAGDSAN'
        ELSE 'HYAZGAARLAGDAAGUI'
    END AS restriction_status
FROM mashin
GROUP BY restriction_status;

SELECT * FROM zorchilburtgel;

# Suulin 3 udriin zurchliin too
SELECT COUNT(burtgelID)
FROM zorchilburtgel
WHERE ognoo BETWEEN CURDATE() AND DATE_SUB(CURDATE(), INTERVAL 3 DAY);

# Suulin 3 jil ene udur heden zurchil garsan
DROP PROCEDURE GetEventCounts;
CREATE PROCEDURE GetEventCounts(IN start_date_param DATE)
BEGIN
  DECLARE current_year INT;

  SET current_year = YEAR(CURDATE());

  WHILE current_year >= YEAR(start_date_param) DO
    SELECT 
      DATE(ognoo) AS event_date,
      COUNT(*) AS event_count,
      YEAR(ognoo) AS event_year
    FROM zorchilburtgel
    WHERE DATE(ognoo) = start_date_param
      AND ognoo >= DATE_SUB(CURDATE(), INTERVAL 1 YEAR)
    GROUP BY event_date, event_year;

    SET start_date_param = current_year;
    SET current_year = current_year - 1;
  END WHILE;
END;

CALL GetEventCounts(CURDATE());

SELECT * FROM zorchilburtgel

# Orhigdson bol aldaa nuhuh: Ognoo
UPDATE zorchilburtgel
SET ognoo = CURRENT_DATE
WHERE ognoo IS NULL;

# Orhigdson bol aldaa nuhuh: Camera
UPDATE zorchilburtgel
SET cameraCode = 0
WHERE cameraCode IS NULL;

# Orhigdson bol aldaa nuhuh: Durem
UPDATE zorchilburtgel
SET duremCode = 0
WHERE duremCode IS NULL;

# Tsor gants zurchil garsan, ter ni 1.5 jilees tsaana baigaa bol
SELECT e.ezemshigchRD, COUNT(z.burtgelID) AS zorchiluud FROM ezemshigch e, mashin m, zorchilburtgel z
WHERE e.ezemshigchRD = m.ezemshigchRD AND z.mashindugaar = m.plateNo
AND ognoo < DATE_SUB(CURDATE(), INTERVAL 1.5 YEAR)
GROUP BY e.ezemshigchRD
HAVING zorchiluud = 1;

#ершеелийн хууль 7/1-10/1 хоронд мацины торгулийг талыг нь хенгелж харуулах
SELECT z.*, x.*
FROM zorchilburtgel z
JOIN zxtx x ON x.duremID = z.duremCode
WHERE 
    CASE 
        WHEN MONTH(z.ognoo) BETWEEN 7 AND 10 AND DAY(z.ognoo) <= 1 
        THEN x.torguuli / 2 
        ELSE x.torguuli 
    END = x.torguuli;

# рег дугаарын алдаа шалгах
SELECT *
FROM ezemshigch
WHERE LENGTH(ezemshigchRD) != 12;