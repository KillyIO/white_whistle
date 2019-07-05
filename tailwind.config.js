module.exports = {
  theme: {
    extend: {
      fontSize: {
        '7xl': '5rem',
        '8xl': '6rem',
      },
      borderColor: {
        app: {
          primary: '#475C7A',
          secondary: '#685D79',
          tertiary: '#AB6C82',
          quaternary: '#D8737F',
          quinary: '#FCBB6D',
        },
      },
      colors: {
        app: {
          primary: '#475C7A',
          'secondary-lighter': '#484154',
          'secondary-light': '#302B38',
          secondary: '#685D79',
          'secondary-darker': '#1A171E',
          tertiary: '#AB6C82',
          quaternary: '#D8737F',
          quinary: '#FCBB6D',
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
      height: {
        72: '18rem',
        80: '20rem',
        adaptive: '',
      },
      margin: {
        '72': '18rem',
        '80': '20rem',
        '88': '22rem',
        '96': '24rem',
        '104': '26rem',
        '112': '28rem',
        '120': '30rem',
      },
      textColor: {
        app: {
          primary: '#475C7A',
          secondary: '#685D79',
          tertiary: '#AB6C82',
          quaternary: '#D8737F',
          quinary: '#FCBB6D',
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
