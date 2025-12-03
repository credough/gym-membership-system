-- Sample Queries for Gym Membership System
-- Aaron Creed P. Celindro

-- 1. List all members
SELECT * FROM Members;

-- 2. List all membership plans
SELECT * FROM MembershipPlans;

-- 3. List all trainers
SELECT * FROM Trainers;

-- 4. Show attendance records with member names
SELECT a.attendance_id, m.name, a.date, a.time_in, a.time_out
FROM Attendance a
JOIN Members m ON a.member_id = m.member_id;

-- 5. Count how many times each member attended
SELECT m.name, COUNT(a.attendance_id) AS total_attendance
FROM Attendance a
JOIN Members m ON a.member_id = m.member_id
GROUP BY m.name;

-- 6. Find members attending on a specific date
SELECT m.name, a.time_in, a.time_out
FROM Attendance a
JOIN Members m ON a.member_id = m.member_id
WHERE a.date = '2025-12-03';
