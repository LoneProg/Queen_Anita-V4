module.exports = {
  apps: [
    {
      name: 'queen_anita-v4',
      script: 'index.js', // Replace with the name of your main application file
      instances: 1,
      autorestart: true,
      watch: true,
      max_memory_restart: '1G',
      env: {
        NODE_ENV: 'production',
      },
    },
  ],
};