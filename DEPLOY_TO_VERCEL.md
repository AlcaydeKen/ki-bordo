# Vercel PHP Deployment Configuration

# 1. PHP Support
Vercel supports PHP via the `vercel-php` runtime. You need to add an `api/` directory and move your PHP files there, or configure `vercel.json` to serve from your current structure.

# 2. Database
Vercel does not host MySQL databases. You need to use a cloud MySQL provider (e.g., PlanetScale, Railway, Neon, or free MySQL hosting). After creating a database, import your `kibordo_db.sql` file.

# 3. Environment Variables
Store DB credentials as environment variables in Vercel, and update your PHP code to use them.

# 4. vercel.json
Add a `vercel.json` file to configure the PHP runtime and rewrites if needed.

# 5. Deployment Steps
- Create a cloud MySQL database and import your `.sql` file.
- Update `connect.php` to use environment variables for DB connection.
- Add `vercel.json` for PHP support.
- Push to GitHub and connect the repo to Vercel.

# 6. Example vercel.json
{
  "rewrites": [{ "source": "/(.*)", "destination": "/$1" }],
  "functions": { "api/**/*.php": { "runtime": "vercel-php@0.5.0" } }
}

# 7. Example connect.php (using env)
$db_name = getenv('DB_DSN');
$user_name = getenv('DB_USER');
$user_password = getenv('DB_PASS');
$conn = new PDO($db_name, $user_name, $user_password);

# 8. Set env vars in Vercel dashboard

# 9. Deploy!

---

Let me know if you want to proceed with a specific cloud MySQL provider, and I can guide you through the setup and code changes.