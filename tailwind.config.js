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
    },
    transitionProperty: { // defaults to these values
      'none': 'none',
      'all': 'all',
      'color': 'color',
      'bg': 'background-color',
      'border': 'border-color',
      'colors': ['color', 'background-color', 'border-color'],
      'opacity': 'opacity',
      'transform': 'transform',
    },
    transitionDuration: { // defaults to these values
      'default': '250ms',
      '0': '0ms',
      '100': '100ms',
      '250': '250ms',
      '500': '500ms',
      '750': '750ms',
      '1000': '1000ms',
    },
  },
  variants: {
    opacity: ['responsive', 'hover'],
    borderRadius: ['responsive', 'hover'],
  },
  plugins: [
    require('tailwindcss-transitions')(),
  ],
}
