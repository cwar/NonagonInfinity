module.exports = {
  theme: {
    extend: {
      colors: {
        'primary': '#1D4ED8',
        'secondary': '#D97706',
      },
      spacing: {
        'custom-padding': '2rem',
      },
    },
  },
  plugins: [],
  content: [
    './app/views/**/*.html.erb',
    './app/helpers/**/*.rb',
    './app/assets/stylesheets/**/*.css',
    './app/javascript/**/*.js'
  ]
}
