const { Pool } = require('pg');

const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

const userInput = process.argv.slice(2)
console.log('userInput :', userInput);

pool.query(`
SELECT DISTINCT teachers.name as name, cohorts.name as cohort
FROM teachers
JOIN assistance_requests ON teacher_id = teachers.id
JOIN students ON students.id = assistance_requests.student_id
JOIN cohorts ON cohorts.id = students.cohort_id
WHERE cohorts.name LIKE '%${userInput[0]}%'
ORDER BY teachers.name;
`)
.then(res => {
  res.rows.forEach(row => {
    console.log(`${row.cohort}: ${row.name}`)
  })
});