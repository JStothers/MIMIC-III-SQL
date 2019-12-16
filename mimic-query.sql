-- Querying using SQL

-- 1.
-- Count how many patients were diagnosed with icd9 code 4019
SELECT COUNT(*) AS icd9_4019_count
FROM diagnoses_icd dia
WHERE dia.icd9_code = '4019';
-- Result: 1 row
-- icd9_4019_count
-- 20703

-- 2. 
-- See which patients were diagnosed with icd9_code 4019
SELECT *
FROM diagnoses_icd dia
INNER JOIN admissions adm
ON dia.hadm_id = adm.hadm_id
AND dia.icd9_code = '4019'
LIMIT 100;
-- Result: 20703 rows
-- row_id,subject_id,hadm_id,seq_num,icd9_code,row_id,subject_id,hadm_id,admittime,dischtime,deathtime,admission_type,admission_location,discharge_location,insurance,language,religion,marital_status,ethnicity,edregtime,edouttime,diagnosis,hospital_expire_flag,has_chartevents_data
-- 105951,9445,116072,6,4019,11565,9445,116072,2118-07-06 16:23:00,2118-07-12 16:50:00,,EMERGENCY,EMERGENCY ROOM ADMIT,REHAB/DISTINCT PART HOSP,Medicare,ENGL,OTHER,WIDOWED,OTHER,2118-07-06 09:00:00,2118-07-06 13:48:00,SMALL BOWEL OBSTRUCTION,0,1
-- 105955,9446,154895,4,4019,11566,9446,154895,2190-05-16 03:45:00,2190-05-22 13:02:00,,EMERGENCY,TRANSFER FROM HOSP/EXTRAM,HOME,Private,,JEWISH,MARRIED,WHITE,,,RULE OUT MYOCARDIAL INFARCTION,0,1
-- 105980,9449,184367,8,4019,11569,9449,184367,2119-09-03 21:30:00,2119-09-05 12:17:00,,EMERGENCY,EMERGENCY ROOM ADMIT,HOME,Private,ENGL,JEWISH,MARRIED,WHITE,2119-09-03 19:34:00,2119-09-03 21:38:00,C2 FRACTURE,0,1
-- 106001,9452,161801,5,4019,11572,9452,161801,2156-03-17 17:01:00,2156-03-23 16:50:00,,EMERGENCY,EMERGENCY ROOM ADMIT,HOME,Medicare,ENGL,JEWISH,MARRIED,WHITE,2156-03-16 14:53:00,2156-03-17 22:42:00,RULE-OUT MYOCARDIAL INFARCTION;TELEMETRY,0,1
-- 107350,9569,107241,3,4019,11715,9569,107241,2118-03-18 18:35:00,2118-03-22 16:40:00,,EMERGENCY,TRANSFER FROM HOSP/EXTRAM,HOME,Medicare,,NOT SPECIFIED,MARRIED,WHITE,,,ACUTE MYOCARDIAL INFARCTION\CARDIAC CATH,0,1
-- 107358,9571,115057,5,4019,11718,9571,115057,2178-04-21 14:53:00,2178-04-27 19:30:00,,EMERGENCY,EMERGENCY ROOM ADMIT,HOME HEALTH CARE,Private,,CATHOLIC,MARRIED,WHITE,2178-04-21 12:19:00,2178-04-21 16:05:00,RULE OUT LINE SEPSIS,0,1
-- 107395,9575,177153,7,4019,11722,9575,177153,2164-12-12 10:30:00,2164-12-19 11:59:00,,ELECTIVE,PHYS REFERRAL/NORMAL DELI,SNF,Medicare,,JEWISH,DIVORCED,WHITE,,,LEFT ACETABULAR FRACTURE,0,1
-- 114360,10197,187503,5,4019,12470,10197,187503,2166-11-28 16:49:00,2166-12-04 14:28:00,,EMERGENCY,CLINIC REFERRAL/PREMATURE,SNF,Medicare,,PROTESTANT QUAKER,MARRIED,WHITE,,,NON Q WAVE MI\CATH,0,1
-- 114372,10197,191781,9,4019,12471,10197,191781,2168-09-01 03:05:00,2168-09-06 15:25:00,,EMERGENCY,EMERGENCY ROOM ADMIT,HOME,Medicare,,PROTESTANT QUAKER,MARRIED,WHITE,2168-09-01 02:27:00,2168-09-01 03:54:00,"CONGESTIVE HEART FAILURE,REPIRATORY FAILURE",0,1
-- 114374,10198,165547,2,4019,12472,10198,165547,2119-02-15 00:53:00,2119-02-20 17:30:00,,EMERGENCY,EMERGENCY ROOM ADMIT,HOME,Medicare,RUSS,NOT SPECIFIED,SINGLE,WHITE,2119-02-14 20:01:00,2119-02-15 04:00:00,CHOLANGITIS,0,1
-- 114436,10206,163365,19,4019,12481,10206,163365,2154-03-13 12:00:00,2154-04-05 14:37:00,,EMERGENCY,EMERGENCY ROOM ADMIT,HOME HEALTH CARE,Private,ENGL,JEWISH,MARRIED,WHITE,2154-03-22 20:15:00,2154-03-23 03:42:00,DIVERTICULITIS,0,1
-- 114447,10206,165403,10,4019,12480,10206,165403,2150-12-02 22:59:00,2150-12-29 10:45:00,,EMERGENCY,EMERGENCY ROOM ADMIT,HOME HEALTH CARE,Private,ENGL,JEWISH,MARRIED,WHITE,2150-12-02 15:37:00,2150-12-03 00:12:00,RIGHT HEART FAILURE,0,1
-- 114465,10207,116579,6,4019,12482,10207,116579,2139-08-05 20:08:00,2139-08-12 14:11:00,,EMERGENCY,EMERGENCY ROOM ADMIT,SNF,Private,,UNOBTAINABLE,UNKNOWN (DEFAULT),WHITE,2139-08-05 04:21:00,2139-08-05 18:00:00,ABCESS,0,1
-- 114479,10207,118574,12,4019,12485,10207,118574,2144-12-01 18:55:00,2144-12-12 15:10:00,,EMERGENCY,EMERGENCY ROOM ADMIT,SNF,Medicare,ENGL,NOT SPECIFIED,MARRIED,WHITE,2144-12-01 16:57:00,2144-12-01 21:10:00,PNEUMONIA,0,1
-- 114490,10207,145781,8,4019,12484,10207,145781,2142-02-05 15:50:00,2142-02-06 15:07:00,,EMERGENCY,EMERGENCY ROOM ADMIT,SNF,Medicare,ENGL,UNOBTAINABLE,MARRIED,WHITE,2142-02-05 05:47:00,2142-02-05 19:30:00,"FEVER,HEMOPTYSIS",0,1
-- 114553,10214,190549,3,4019,12493,10214,190549,2164-07-19 07:15:00,2164-07-25 19:00:00,,ELECTIVE,PHYS REFERRAL/NORMAL DELI,HOME HEALTH CARE,Medicare,,CATHOLIC,MARRIED,WHITE,,,CORONARY ARTERY DISEASE\CORONARY ARTERY BYPASS GRAFT/SDA,0,1
-- 118925,10624,150114,15,4019,12980,10624,150114,2142-11-28 15:33:00,2142-12-26 12:15:00,,EMERGENCY,CLINIC REFERRAL/PREMATURE,HOME HEALTH CARE,Private,,NOT SPECIFIED,MARRIED,WHITE,,,CHRONIC LYMPHOCYTIC LEUKEMIA;FAILURE TO THRIVE,0,1
-- 118946,10624,199059,10,4019,12981,10624,199059,2143-01-02 16:31:00,2143-01-06 17:25:00,,EMERGENCY,CLINIC REFERRAL/PREMATURE,HOME HEALTH CARE,Private,,NOT SPECIFIED,MARRIED,WHITE,,,PERICARDIAL EFFUSION\CATH,0,1
-- 116187,10374,110947,2,4019,12679,10374,110947,2200-07-07 07:15:00,2200-07-11 15:00:00,,ELECTIVE,PHYS REFERRAL/NORMAL DELI,DISC-TRAN CANCER/CHLDRN H,Medicare,,NOT SPECIFIED,MARRIED,WHITE,,,CORONARY ARTERY DISEASE\CORONARY ARTERY BYPASS GRAFT /SDA,0,1
-- 116192,10375,121339,4,4019,12681,10375,121339,2178-10-26 19:47:00,2178-11-03 13:24:00,,EMERGENCY,EMERGENCY ROOM ADMIT,LONG TERM CARE HOSPITAL,Medicare,,CATHOLIC,MARRIED,WHITE,2178-10-26 13:25:00,2178-10-26 21:45:00,ABDOMINAL AORTIC ANEURYSM,0,1

-- 3.
-- See patients' icd9 codes and long titles of diagnoses
SELECT dia.hadm_id, dicd.icd9_code, dicd.long_title
FROM d_icd_diagnoses dicd
INNER JOIN diagnoses_icd dia
ON dia.icd9_code = dicd.icd9_code
ORDER BY dia.hadm_id
LIMIT 100;
-- Result: 634709 rows
-- hadm_id,icd9_code,long_title
-- 100001,25053,"Diabetes with ophthalmic manifestations, type I [juvenile type], uncontrolled"
-- 100001,5780,Hematemesis
-- 100001,5363,Gastroparesis
-- 100001,5853,"Chronic kidney disease, Stage III (moderate)"
-- 100001,7078,Chronic ulcer of other specified sites
-- 100001,V5867,Long-term (current) use of insulin
-- 100001,5849,"Acute kidney failure, unspecified"
-- 100001,25063,"Diabetes with neurological manifestations, type I [juvenile type], uncontrolled"
-- 100001,25043,"Diabetes with renal manifestations, type I [juvenile type], uncontrolled"
-- 100001,40390,"Hypertensive chronic kidney disease, unspecified, with chronic kidney disease stage I through stage IV, or unspecified"
-- 100001,25083,"Diabetes with other specified manifestations, type I [juvenile type], uncontrolled"
-- 100001,36201,Background diabetic retinopathy
-- 100001,V1351,Personal history of pathologic fracture
-- 100001,4580,Orthostatic hypotension
-- 100001,25013,"Diabetes with ketoacidosis, type I [juvenile type], uncontrolled"
-- 100001,3371,Peripheral autonomic neuropathy in disorders classified elsewhere
-- 100003,5715,Cirrhosis of liver without mention of alcohol
-- 100003,53550,"Unspecified gastritis and gastroduodenitis, without mention of hemorrhage"
-- 100003,4019,Unspecified essential hypertension
-- 100003,45621,"Esophageal varices in diseases classified elsewhere, without mention of bleeding"

-- 4.
-- Look at patients' diagnosis, description of diagnosis and whether they died in hospital
SELECT adm.subject_id, adm.diagnosis, dicd.long_title, adm.hospital_expire_flag
FROM diagnoses_icd dia
INNER JOIN admissions adm
ON dia.hadm_id = adm.hadm_id
INNER JOIN d_icd_diagnoses dicd
ON dia.icd9_code = dicd.icd9_code
LIMIT 100;
-- Result: 634709 rows
-- subject_id,diagnosis,long_title,hospital_expire_flag
-- 9445,SMALL BOWEL OBSTRUCTION,Intestinal or peritoneal adhesions with obstruction (postoperative) (postinfection),0
-- 9445,SMALL BOWEL OBSTRUCTION,Atrial fibrillation,0
-- 9445,SMALL BOWEL OBSTRUCTION,"Congestive heart failure, unspecified",0
-- 9445,SMALL BOWEL OBSTRUCTION,Esophageal reflux,0
-- 9445,SMALL BOWEL OBSTRUCTION,Pure hypercholesterolemia,0
-- 9445,SMALL BOWEL OBSTRUCTION,Unspecified essential hypertension,0
-- 9446,RULE OUT MYOCARDIAL INFARCTION,"Acute myocardial infarction of other anterior wall, initial episode of care",0
-- 9446,RULE OUT MYOCARDIAL INFARCTION,Coronary atherosclerosis of native coronary artery,0
-- 9446,RULE OUT MYOCARDIAL INFARCTION,Paroxysmal ventricular tachycardia,0
-- 9446,RULE OUT MYOCARDIAL INFARCTION,Unspecified essential hypertension,0
-- 9446,RULE OUT MYOCARDIAL INFARCTION,"Diabetes mellitus without mention of complication, type II or unspecified type, not stated as uncontrolled",0
-- 9447,ENDOCARDITIS;AORTIC VALVE DISEASE\CATH,Mitral valve insufficiency and aortic valve insufficiency,0
-- 9447,ENDOCARDITIS;AORTIC VALVE DISEASE\CATH,Rheumatic heart failure (congestive),0
-- 9447,ENDOCARDITIS;AORTIC VALVE DISEASE\CATH,Acute and subacute bacterial endocarditis,0
-- 9447,ENDOCARDITIS;AORTIC VALVE DISEASE\CATH,Atrial fibrillation,0
-- 9447,ENDOCARDITIS;AORTIC VALVE DISEASE\CATH,"Other vascular complications of medical care, not elsewhere classified",0
-- 9447,ENDOCARDITIS;AORTIC VALVE DISEASE\CATH,Phlebitis and thrombophlebitis of superficial veins of upper extremities,0
-- 9447,ENDOCARDITIS;AORTIC VALVE DISEASE\CATH,Anemia of other chronic disease,0
-- 9448,NEWBORN,"Other multiple birth (three or more), mates all liveborn, born in hospital, delivered by cesarean section",0
-- 9448,NEWBORN,Other respiratory problems after birth,0

-- 5.
-- Find the average note length for each category
SELECT category, AVG(LENGTH(text)) AS avg_note_length
FROM noteevents
GROUP BY category;
-- Result: 15 rows
-- category,avg_note_length
-- Case Management ,1121.7280248190279214
-- Consult,6035.5918367346938776
-- Discharge summary,9618.9162978609267082
-- ECG,211.7102525221118292
-- Echo,2320.7352054854347731
-- General,1559.3742922539453078
-- Nursing,1785.7008132190592066
-- Nursing/other,799.1176052921773575
-- Nutrition,2431.6156296453599490
-- Pharmacy,2579.8543689320388350
-- Physician ,7135.9801869739592160
-- Radiology,1740.2165470945605701
-- Rehab Services,3122.2736144356472105
-- Respiratory ,1358.2522133652604052
-- Social Work,2155.3243445692883895

-- 6.
-- Count how many diagnoses each patient has
SELECT hadm_id, COUNT(DISTINCT(icd9_code)) AS diagnosis_count
FROM diagnoses_icd 
GROUP BY hadm_id
LIMIT 100;
-- Result: 58976 rows
-- hadm_id,diagnosis_count
-- 100001,16
-- 100003,9
-- 100006,9
-- 100007,5
-- 100009,18
-- 100010,5
-- 100011,14
-- 100012,11
-- 100014,8
-- 100016,11
-- 100017,8
-- 100018,29
-- 100019,4
-- 100020,18
-- 100021,29
-- 100023,5
-- 100024,11
-- 100025,8
-- 100028,9
-- 100029,4

-- 7.
-- See patients whose note mentions homelessness
SELECT a.hadm_id, a.diagnosis, n.category, n.description, n.text
FROM noteevents n
INNER JOIN admissions a
ON n.hadm_id = a.hadm_id
WHERE UPPER(n.text) LIKE '%HOMELESS%'
ORDER BY a.hadm_id
LIMIT 100;
-- Result: 2135 rows
-- hadm_id,diagnosis,category,description,text
-- 100063,SUICIDAL IDEATION;PSYCH EVAL,Physician ,Physician Resident Admission Note,"Chief Complaint:  intoxication / seizure
--    HPI:
--     46 y/o M with hx of etoh abuse (per ED signout) and possible
--    depression presented to the emergency room at around 6pm this evening.
--    He was obviously intoxicated.  Was found by EMS in front of a liquor
--    store and brought in for eval.  Initial vitals were t 98.1, p 100, bp
--    112/94, r 20, 95% on RA.  While in the ED, he climbed over his side
--    rails on his bed and fell.  He was transferred to the Red Zone after
--    his fall and was found to be mostly non-responsive despite noxious
--    stimuli.  He had a CT scan of his head and C-spine at that time that
--    were negative.  He had an EJ and femoral line place.  He was almost
--    intubated but then became arousable.
--    .
--    Over the next few hours, he was alert and interactive.  His speech was
--    slurred and he appeared drunk.  On interview and exam, the patient was
--    complaining of abdominal pain, bloody vomit and stool (was guiac
--    negative), and suicidal ideation.  He had a fight with his
--    brother-in-law and was feeling very depressed because of that.  He also
--    claimed that he wanted to hurt his brother-in-law, too.  Psych was
--    consulted for the SI/HI but were waiting to interview him until he was
--    sober.

-- 8.
-- Count how many homeless text entries are in each insurance category
SELECT a.insurance, COUNT(n.text)
FROM noteevents n
INNER JOIN admissions a
ON n.hadm_id = a.hadm_id
WHERE UPPER(n.text) LIKE '%HOMELESS%'
GROUP BY a.insurance;
-- Result: 5 rows
-- insurance,count
-- Government,82
-- Medicaid,1180
-- Medicare,639
-- Private,152
-- Self Pay,82

-- 9.
-- Look at Radiology notes with admission date separated from note
SELECT subject_id, category, SUBSTR(text, 4, 10) AS admission_date, text
FROM noteevents
WHERE category = 'Radiology'
ORDER BY subject_id
LIMIT 100;
-- Result: 522279 rows
-- subject_id,category,admission_date,text
-- 3,Radiology,2102-4-18*,"[**2102-4-18**] 1:22 PM
--  ART DUP EXT LO UNI;F/U                                          Clip # [**Clip Number (Radiology) 69444**]
--  Reason: ARTERIAL LEFT LEG, GRAFT SURVEILLANCE
--  ______________________________________________________________________________
--  [**Hospital 2**] MEDICAL CONDITION:
--   76 year old man with
--  REASON FOR THIS EXAMINATION:
--   graft survelliance
--  ______________________________________________________________________________
--                                  FINAL REPORT
--  [**2102-4-18**], DUPLEX LOWER EXTREMITY

--  REASON:  The patient is status post left lower extremity bypass graft,
--  followup for surveillance.  New heel ulcer.

--  FINDINGS: Duplex evaluation was performed of the left lower extremity femoral
--  to anterior tibial bypass graft.  Peak systolic velocities in cm per second
--  are as follows:  48, 98, 86, 86 in the proximal vessel, proximal anastomosis,
--  distal anastomosis and native distal vessel, respectively.  Throughout the
--  body of the graft, velocities range from 34 through 80.  There are no peak
--  velocity ratios greater than equal to 2.

--  IMPRESSION:   Widely patent left femoral to anterior tibial artery bypass
--  graft without any evidence of stenosis.

-- "

-- 10.
-- See what drugs were prescribed to each patient
SELECT adm.hadm_id, adm.diagnosis, pre.drug
FROM prescriptions pre
INNER JOIN admissions adm
ON pre.hadm_id = adm.hadm_id
LIMIT 100;
-- Result: 4156450 rows
-- hadm_id,diagnosis,drug
-- 142060,CARDIOMYOPATHY;SYNCOPE\IMPLANTABLE CARDIOVERTER DEFIBRILLATOR PLACEMENT,Sodium Chloride 0.9%  Flush
-- 142060,CARDIOMYOPATHY;SYNCOPE\IMPLANTABLE CARDIOVERTER DEFIBRILLATOR PLACEMENT,Simvastatin
-- 142060,CARDIOMYOPATHY;SYNCOPE\IMPLANTABLE CARDIOVERTER DEFIBRILLATOR PLACEMENT,NS
-- 142060,CARDIOMYOPATHY;SYNCOPE\IMPLANTABLE CARDIOVERTER DEFIBRILLATOR PLACEMENT,Sodium Chloride 0.9%  Flush
-- 142060,CARDIOMYOPATHY;SYNCOPE\IMPLANTABLE CARDIOVERTER DEFIBRILLATOR PLACEMENT,FoLIC Acid
-- 142060,CARDIOMYOPATHY;SYNCOPE\IMPLANTABLE CARDIOVERTER DEFIBRILLATOR PLACEMENT,HYDROmorphone (Dilaudid)
-- 165938,FEVER UNKNOWN ORIGIN-SEPSIS,Baclofen
-- 165938,FEVER UNKNOWN ORIGIN-SEPSIS,Charcoal Aqueous (Activated)
-- 165938,FEVER UNKNOWN ORIGIN-SEPSIS,Charcoal-Sorbitol
-- 165938,FEVER UNKNOWN ORIGIN-SEPSIS,Morphine Sulfate
-- 165938,FEVER UNKNOWN ORIGIN-SEPSIS,D5W
-- 165938,FEVER UNKNOWN ORIGIN-SEPSIS,Morphine Sulfate
-- 165938,FEVER UNKNOWN ORIGIN-SEPSIS,D5W
-- 165938,FEVER UNKNOWN ORIGIN-SEPSIS,D5W
-- 165938,FEVER UNKNOWN ORIGIN-SEPSIS,Morphine Sulfate
-- 165938,FEVER UNKNOWN ORIGIN-SEPSIS,Morphine Sulfate
-- 120943,NEWBORN,Desitin
-- 103894,ABDOMINAL AORTIC ANEURYSM,Sodium Chloride 0.9%  Flush
-- 103894,ABDOMINAL AORTIC ANEURYSM,Atorvastatin
-- 103894,ABDOMINAL AORTIC ANEURYSM,Fluticasone-Salmeterol (250/50) 
