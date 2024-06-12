<h1>LevelUp - Skill Progression Tracker</h1>

<h3>Overview</h3>

Skill Progression Tracker is a web application designed to help users follow the progression of acquiring various skills, starting with physical exercises like push-ups, pull-ups, and handstands. The application tracks the steps required to master each skill and provides daily notifications to encourage consistent practice.

<h3>Features</h3>

- **Skill Management:** Add and manage skills with detailed descriptions and progress status.
- **Step Tracking:** Each skill comprises several steps, each with specific exercises that need to be completed.
- **Progress Calculation:** Automatically updates the progress percentage based on completed steps and marks the skill as completed when all steps are done.
- **Daily Notifications:** Users receive notifications thrice a day to remind them to perform their exercises.

<h3>Technologies Used</h3>

- **Backend:** Ruby on Rails
- **Database:** PostgreSQL (or any preferred database)
- **Background Jobs:** Sidekiq (for notifications)

<h3>Project Status</h3>

This project is currently a work in progress. The following features are under development:

- Progress calculation logic
- Notification system setup

<h3>Installation</h3>

To run this project locally:

1. **Clone the repository:**

```bash
git clone https://github.com/yourusername/LevelUp.git
cd LevelUp
```
2. **Set up the backend:**

- Install dependencies:
```bash
bundle install
```

- Set up the database:
```bash
rails db:create db:migrate db:seed
```

3. **Run the application:**

- Start the Rails server:
```bash
rails server
```

4. **Open the application:**

Visit `http://localhost:3000` in your browser.

<h3>Contributing</h3>

Contributions are welcome! Please fork the repository and submit a pull request with your changes.

<h3>License</h3>

This project is licensed under the MIT License.
