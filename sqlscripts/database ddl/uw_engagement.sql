CREATE TABLE UW_ENGAGEMENT 
(
  EVENT_ID NUMBER GENERATED ALWAYS AS IDENTITY INCREMENT BY 1 MAXVALUE 9999999999999999999999999999 MINVALUE 1 CACHE 20 NOT NULL 
, ORGANIZATION VARCHAR2(50 BYTE) NOT NULL 
, DEPARTMENT VARCHAR2(50 BYTE) NOT NULL 
, EVENT_DESC VARCHAR2(500 BYTE) NOT NULL 
, EVENT_TYPE VARCHAR2(100 BYTE) NOT NULL 
, PRIVATE VARCHAR2(3 BYTE) DEFAULT 'NO' NOT NULL 
, FEE NUMBER DEFAULT 0 NOT NULL 
, EVENT_START_DATE_TIME TIMESTAMP(6) NOT NULL 
, EVENT_END_DATE_TIME TIMESTAMP(6) NOT NULL 
, EVENT_COST NUMBER 
, ANTICIPATED_COST NUMBER 
, ANTICIPATED_NUM_ATTENDEES NUMBER 
, FUNDING_SOURCE1 VARCHAR2(50 BYTE) 
, FUNDING_SOURCE2 VARCHAR2(50 BYTE) 
, FUNDING_OTHER VARCHAR2(200 BYTE) 
, COST_FUNDING1 NUMBER 
, COST_FUNDING2 NUMBER 
, COST_FUNDING_OTHER NUMBER 
, ATTENDEES_COUNT NUMBER 
, CREATED_BY VARCHAR2(100 BYTE) NOT NULL 
, CREATION_DATE DATE DEFAULT SYSDATE NOT NULL 
, LAST_UPDATE_DATE DATE 
, CANCELLED VARCHAR2(3 BYTE) DEFAULT 'NO' NOT NULL 
, CANCELLATION_DATE DATE 
, EVENT_FILE BLOB 
, UPDATED_BY VARCHAR2(100 BYTE) 
, CANCELLED_BY VARCHAR2(100 BYTE) 
, EVENT_NAME VARCHAR2(100 BYTE) NOT NULL 
, FLAG VARCHAR2(1 BYTE) DEFAULT 'N' NOT NULL 
, CONSTRAINT UW_ENGAGEMENT_PK PRIMARY KEY 
  (
    EVENT_ID 
  )
  USING INDEX 
  (
      CREATE UNIQUE INDEX UW_ENGAGEMENT_PK ON UW_ENGAGEMENT (EVENT_ID ASC) 
      LOGGING 
      TABLESPACE SYSTEM 
      PCTFREE 10 
      INITRANS 2 
      STORAGE 
      ( 
        INITIAL 65536 
        NEXT 1048576 
        MINEXTENTS 1 
        MAXEXTENTS UNLIMITED 
        FREELISTS 1 
        FREELIST GROUPS 1 
        BUFFER_POOL DEFAULT 
      ) 
      NOPARALLEL 
  )
  ENABLE 
) 
LOGGING 
TABLESPACE SYSTEM 
PCTFREE 10 
PCTUSED 40 
INITRANS 1 
STORAGE 
( 
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1 
  MAXEXTENTS UNLIMITED 
  FREELISTS 1 
  FREELIST GROUPS 1 
  BUFFER_POOL DEFAULT 
) 
NOCOMPRESS 
NO INMEMORY 
NOPARALLEL 
LOB (EVENT_FILE) STORE AS SYS_LOB0000073363C00025$$ 
( 
  ENABLE STORAGE IN ROW 
  CHUNK 8192 
  RETENTION 
  NOCACHE 
  LOGGING 
  TABLESPACE SYSTEM 
  STORAGE 
  ( 
    INITIAL 65536 
    NEXT 1048576 
    MINEXTENTS 1 
    MAXEXTENTS UNLIMITED 
    FREELISTS 1 
    FREELIST GROUPS 1 
    BUFFER_POOL DEFAULT 
  )  
);

ALTER TABLE UW_ENGAGEMENT
ADD CONSTRAINT UW_ENGAGEMENT_FK1 FOREIGN KEY
(
  CREATED_BY 
)
REFERENCES UW_USERS
(
  UWYO_EMAIL 
)
ENABLE;

ALTER TABLE UW_ENGAGEMENT
ADD CONSTRAINT UW_ENGAGEMENT_FK2 FOREIGN KEY
(
  UPDATED_BY 
)
REFERENCES UW_USERS
(
  UWYO_EMAIL 
)
ENABLE;

ALTER TABLE UW_ENGAGEMENT
ADD CONSTRAINT UW_ENGAGEMENT_FK3 FOREIGN KEY
(
  CANCELLED_BY 
)
REFERENCES UW_USERS
(
  UWYO_EMAIL 
)
ENABLE;

ALTER TABLE UW_ENGAGEMENT
ADD CONSTRAINT UW_ENGAGEMENT_CHK1 CHECK 
(organization IN(
'American Heritage Center and Art Museum',
'Athletics',
'College of Agriculture and Natural Resources',
'College of Arts and Sciences',
'College of Business',
'College of Education',
'College of Engineering and Applied Science',
'College of Health Sciences',
'College of Law',
'Division of Academic Affairs',
'Division of Administration',
'Division of Governmental and Community Affairs',
'Division of Information Technology',
'Division of Public Relations',
'Division of Research and Economic Development',
'Division of Student Affairs',
'Haub School',
'Honors College',
'Office of Engagement',
'Office of the President',
'School of Energy Resources',
'University Libraries',
'University of Wyoming Foundation',
'University Operations'
))
ENABLE;

ALTER TABLE UW_ENGAGEMENT
ADD CONSTRAINT UW_ENGAGEMENT_CHK2 CHECK 
(department IN (
'A&S Computer Fee',
'A&S Dean''s Office',
'A&S Natural Science',
'Academic & Student Programs',
'Accounting and Finance',
'Accounting Office',
'Accounts Receivable',
'ADA/SEO Computer Fee',
'Admissions',
'Advising Career & Expl Studies',
'Advising Services',
'Aerospace Studies',
'Agric Admin Business Office',
'Agric Experiment Station',
'Agricultural & Applied Econ',
'Agriculture Computer Fee',
'Agriculture Dean''s Office',
'AHC/American Heritage Center',
'Allied Health Professions',
'Alumni Relations',
'American Studies & History',
'Animal Science',
'Anthropology',
'Arena Auditorium',
'Asset Management',
'Assoc VP Administration',
'Assoc VP Operations',
'ASUW',
'Athl/Basketball - Men',
'Athl/Basketball - Women',
'Athl/Business Mgr Office',
'Athl/City Recreation',
'Athl/Compliance',
'Athl/Concessions',
'Athl/Drug Education',
'Athl/Equipment',
'Athl/Facilities',
'Athl/Football',
'Athl/Golf-Men',
'Athl/Golf-Women',
'Athl/Media Relations',
'Athl/Pepsters',
'Athl/Promotions & Marketing',
'Athl/Soccer',
'Athl/Swimming - Men',
'Athl/Swimming - Women',
'Athl/Tennis',
'Athl/Ticket Office',
'Athl/Track - Men',
'Athl/Track - Women',
'Athl/Training Room',
'Athl/Volleyball',
'Athl/Weight Room',
'Athl/Wrestling',
'Athletic Training Table',
'Atmospheric Sciences',
'Auxiliary Services',
'Auxiliary Services Dir''s Ofc',
'AVP of Enrollment Management',
'AVP of Global Engagement',
'AVP of Graduate Education',
'AWARE',
'Band',
'Biodiversity Institute',
'Botany',
'Budget Office',
'Building Automation',
'Bulk Mail',
'Business Academic Advising',
'Business Computer Fee',
'Business Dean''s Office',
'Business Services',
'Campus Recreation',
'Carbon Management Institute',
'Career Services',
'Carpentry Shop',
'Cashiers Office',
'Center for Global Studies',
'Center Innov Flow Porous Media',
'Central Energy Plant',
'Central Scheduling',
'Chemical Engineering',
'Chemistry',
'Chief of Police',
'Civil/Arch Engineering',
'College of Ag & Nat Resources',
'College of Arts & Sciences',
'College of Business',
'College of Education',
'College of Engr & Applied Sci',
'College of Health Sciences',
'College of Law',
'Communication & Journalism',
'Communication Disorders',
'Computer Science',
'Controls Shop',
'Copier Services',
'Counselor Education',
'Cowboy Joe Club',
'Criminal Justice & Sociology',
'Custodial Services',
'Dean of Students Office',
'Dental Hygiene',
'Division of Research Support',
'Economics',
'Ecosystem Science & Management',
'Ed/Graduate Studies & Research',
'Ed/Univ Wyoming Lab School',
'Education Abroad',
'Education Computer Fee',
'Education Dean''s Office',
'Electrical & Computer Engr',
'Electrical Shop',
'Ellbogen CTL',
'Engineering Computer Fee',
'Engineering Science',
'Engineering/Microcomputer Ofc',
'English',
'Engr & Applied Sci Dean''s Ofc',
'Enhanced Oil Recovery Inst',
'EPSCoR-IDEA',
'Equal Opp Report & Response',
'Equipment Services',
'Facilities Construction Mgt',
'Facilities Engineering',
'Facilities Management',
'Facilities Services',
'Faculty Senate',
'Family & Consumer Sciences',
'Financial Serv Business Office',
'Financial Services',
'Fine Arts Outreach',
'Fleet Services - Auto Shop',
'Fleet Services - Car Pool',
'Foundation',
'General Counsel',
'Geography',
'Geology & Geophysics',
'Greenhouse',
'Grounds Services',
'Haub School of ENR',
'Health Sciences Computer Fee',
'Health Sciences Dean''s Office',
'Human Resources',
'Human Resources Ofc',
'INBRE Program',
'Inst Innovation & Entrepreneur',
'Institutional Analysis',
'Institutional Communications',
'Institutional Marketing',
'Instructional Technology Ctr',
'Intercoll Athl Director''s Ofc',
'Intercollegiate Athletics',
'Internal Audit',
'Internships & Online Programs',
'IT/Application & Database Svcs',
'IT/Business Svcs',
'IT/Client Support Svcs',
'IT/Computer Fee',
'IT/Research Support',
'IT/Telecom System Support Svcs',
'IT/TSS/Operations',
'IT/TSS/Systems Development',
'Jacoby Golf Course',
'Kinesiology and Health',
'Laramie Clinic',
'Law Computer Fee',
'Law Dean''s Office',
'Law Library',
'LeaRN Synergy & STEP',
'Lib/Access Services',
'Lib/Administrative Office',
'Lib/Brinkerhoff Library',
'Lib/Coe Reference',
'Lib/Collection Development',
'Lib/Digital Collections',
'Lib/Learning Resource Center',
'Lib/Science Library',
'Lib/Special Collections',
'Lib/Systems',
'Lib/Technical Services',
'Life Science Program',
'Literacy Resear Cntr & Clinic',
'Lock Shop',
'Management & Marketing',
'Manufacturing-Works',
'Material Services',
'Mathematics & Statistics',
'MBA Program',
'Mechanical Engineering',
'Mechanical Trades',
'Medical Educ & Public Health',
'Medical Education Admin Div',
'Medical Technology',
'Military Science',
'Modern & Classical Languages',
'Molecular Biology',
'Multicultural Affairs',
'Music',
'Neuroscience',
'Nontraditional/Women''s Ctr',
'Nursing/Off-Campus Programs',
'Ofc Academic Support-Athletics',
'Offc Diversity Equity & Inclus',
'Office of Distance Ed Support',
'Office of Engagement&Outreach',
'Office of Risk Management',
'Office of Sponsored Programs',
'Office of Teacher Education',
'Office of The President',
'Office of the Registrar',
'Paint Shop',
'Payroll',
'Petroleum Engineering',
'Philosophy & Religious Studies',
'Photo Service',
'Physics & Astronomy',
'Plant Sciences',
'Plumbing Shop',
'Postal Services',
'President',
'Preventive Maintenance',
'Procurement & Payment Services',
'Program in Ecology',
'Project Management',
'Psychology',
'R&E Center/Archer',
'R&E Center/Laramie',
'R&E Center/Powell',
'R&E Center/SAREC',
'R&E Center/Sheridan',
'R&E Center/Torrington',
'Real Estate Operations',
'Recycling',
'Regional Centers',
'Research Products Center',
'Residence Life & Dining Svs',
'Rodeo',
'Ruckelshaus Institute of ENR',
'Schl Cnslng Ldrshp Advoc & Des',
'Schl of Cultr Gendr & Soc Just',
'Schl Pol Pub Affrs & Intl Stud',
'Scholarships and Financial Aid',
'School of Energy Resources',
'School of Nursing',
'School of Pharmacy',
'School of Teacher Education',
'Science & Math Teaching Center',
'Science Initiative',
'Seed Certification',
'SEO/Academic Services',
'SEO/CACG',
'SEO/ETS/EOC',
'SEO/Gear-UP',
'SEO/McNair',
'SEO/Student Support Services',
'SEO/UB/MSIP',
'SEO/Univ Disability Supt Svs',
'SEO/Women''s/Adult Student',
'Shipping & Receiving',
'Small Business Development Ctr',
'Social Work',
'Soil Testing Facility',
'Special Education',
'Staff Senate',
'Stock Farm',
'Stores',
'Structural Trades',
'Student Affairs Computer Fee',
'Student EducationalOpportunity',
'Student Financial Operations',
'Student Health Service',
'Student Media',
'Summer High School Institute',
'Systems & Inst Effectiveness',
'Technical Services',
'Theatre & Dance',
'Transfer Relations',
'Transfr Artic & Studnt Success',
'Transit & Parking Services',
'Trustees Education Initiative',
'Undeclared Computer Fee',
'Union Activities Center',
'Union Copy Center',
'Union Facilities',
'Univ Operations Exec Dir Ofc',
'Univ Studies - First Year Prog',
'University Art Museum',
'University Counseling Center',
'University Honors Program',
'University Investments',
'University Libraries',
'University of Wyoming Trustees',
'University Operations',
'University Police',
'University Public Relations',
'University Store',
'Utilities Management',
'UW Child Care Center',
'UW Extension',
'UW Fmly Med Resid Progm Casper',
'UW Fmly Med Resid Progm Chey',
'UW Foundation',
'UW Legal Affairs',
'UW Licensing Office',
'UW National Park Research',
'UW Rifle Team',
'UW-Casper',
'UWE/4-H Youth Programs',
'UWE/Agric Programs',
'UWE/Communication & Tech',
'UWE/Community Development Educ',
'UWE/EFNEP Programs',
'UWE/Nutrition Programs',
'UWE/Range Programs',
'Vending Services',
'Veterans Services Ctr',
'Veterinary Science',
'Visual & Literary Arts',
'VP Academic Affairs',
'VP Academic Affairs'' Office',
'VP Administration',
'VP Administration''s Office',
'VP Gov&Comm Affrs/Legal Affrs',
'VP Government&Community Affrs',
'VP Govt & Community Affrs Ofc',
'VP Info Tech & CIO',
'VP Institutional Advancement',
'VP IT & CIO''s Office',
'VP Research & Economic Dev',
'VP Research & Economic Dev Ofc',
'VP Student Affairs',
'VP Student Affairs'' Office',
'Writing Center',
'WVAC/Wy Volunteer Asst Corp',
'WWAMI',
'Wy School/Univ Partnership',
'WYGISC',
'Wyo INstitute for Disabilities',
'Wyo Natural Diversity Database',
'Wyo Technology Business Ctr',
'Wyoming Cooperative Unit',
'Wyoming Public Media',
'Wyoming Union',
'WyoOne ID Office',
'WYSAC',
'Zoology & Physiology'
))
ENABLE;

ALTER TABLE UW_ENGAGEMENT
ADD CONSTRAINT UW_ENGAGEMENT_CHK3 CHECK 
(event_type IN (
'Athletic Events/Training',
'Community College Collaboration',
'Direct Client/Patient Care',
'Government or Non-profit Assistance/Collaboration/Technology Transfer',
'Industry Assistance/Collaboration/Technology Transfer',
'Other',
'Policy Work and Evaluation Support',
'Pre-K through 12 Education Collaboration',
'Professional Development, Training Programs, and Non-credit Courses',
'Recruiting or Alumni Engagement',
'Research or Extension',
'Seminar/Public talk or Performance/Exhibition'
))
ENABLE;

ALTER TABLE UW_ENGAGEMENT
ADD CONSTRAINT UW_ENGAGEMENT_CHK4 CHECK 
(private IN (
'YES', 'NO'
))
ENABLE;

ALTER TABLE UW_ENGAGEMENT
ADD CONSTRAINT UW_ENGAGEMENT_CHK5 CHECK 
(funding_source1 IN (
'Federal grants',
'Special Appropriations (legislative)',
'State grants and other non-federal grants',
'Student Fees',
'University operating funds including revenue funds',
'UW Foundation and other gifts'
))
ENABLE;

ALTER TABLE UW_ENGAGEMENT
ADD CONSTRAINT UW_ENGAGEMENT_CHK6 CHECK 
(funding_source2 IN (
'Federal grants',
'Special Appropriations (legislative)',
'State grants and other non-federal grants',
'Student Fees',
'University operating funds including revenue funds',
'UW Foundation and other gifts'
))
ENABLE;

ALTER TABLE UW_ENGAGEMENT
ADD CONSTRAINT UW_ENGAGEMENT_CHK7 CHECK 
(cancelled IN (
'YES', 'NO'
))
ENABLE;

ALTER TABLE UW_ENGAGEMENT
ADD CONSTRAINT UW_ENGAGEMENT_CHK8 CHECK 
(event_start_date_time < event_end_date_time)
ENABLE;

ALTER TABLE UW_ENGAGEMENT
ADD CONSTRAINT UW_ENGAGEMENT_CHK9 CHECK 
(flag IN ( 'Y', 'N'))
ENABLE;
