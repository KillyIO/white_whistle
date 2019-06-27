module.exports = {
  theme: {
    container: {
      padding: '1rem',
    },
    extend: {
      colors: {
        app: {
          primary: '#232931',
          secondary: '#393e46',
          tertiary: '#4ecca3',
          quaternary: '#eeeeee',
        },
        smoke: {
          darkest: 'rgba(0, 0, 0, 0.9)',
          darker: 'rgba(0, 0, 0, 0.75)',
          dark: 'rgba(0, 0, 0, 0.6)',
          default: 'rgba(0, 0, 0, 0.5)',
          light: 'rgba(0, 0, 0, 0.4)',
          lighter: 'rgba(0, 0, 0, 0.25)',
          lightest: 'rgba(0, 0, 0, 0.1)',
        },
      },
      textColor: {
        app: {
          primary: '#fcf5ee',
          secondary: '#fbe8e7',
          tertiary: '#f7ddde',
          quaternary: '#ffc4d0',
        },
      },
    }
  },
  variants: {
    opacity: ['responsive', 'hover'],
    borderRadius: ['responsive', 'hover'],
  },
  plugins: [],
}
