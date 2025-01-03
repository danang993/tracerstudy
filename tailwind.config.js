/** @type {import('tailwindcss').Config} */
module.exports = {
    mode: 'jit',
    content: [
        "./resources/**/*.blade.php",
        "./resources/**/*.js",
        "./resources/**/*.vue",
    ],
    theme: {
        extend: {
            colors: {
                primary: {
                    DEFAULT: '#90ee90', // Hijau muda
                    btn: '#76c7a8', // Hijau muda lebih gelap untuk tombol
                    50: '#e0f2e9',
                    100: '#c1e6d4',
                    200: '#a3d9bf',
                    300: '#85cda9',
                    400: '#67c493',
                    500: '#49b77e',
                    600: '#3da76c',
                    700: '#319b5a',
                    800: '#24884a',
                    900: '#1a6d3a',
                },
                secondary: '#003366', // Biru tua untuk kontras
                softPrimary: "rgba(0, 96, 251, 0.64)",
            },
            boxShadow: {
                btn: "0 0.125rem 0.25rem 0 rgba(50, 189, 45, 0.4)",
            },
            backgroundImage: {
                'select': `url("data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 16 16'%3e%3cpath fill='none' stroke='rgba%2867, 89, 113, 0.6%29' stroke-linecap='round' stroke-linejoin='round' stroke-width='2' d='M2 5l6 6 6-6'/%3e%3c/svg%3e")`,
            },
            backgroundColor: {
                primary: {
                    DEFAULT: '#90ee90', // Hijau muda
                    50: '#e0f2e9',
                    100: '#c1e6d4',
                    200: '#a3d9bf',
                    300: '#85cda9',
                    400: '#67c493',
                    500: '#49b77e',
                    600: '#3da76c',
                    700: '#319b5a',
                    800: '#24884a',
                    900: '#1a6d3a',
                },
                secondary: '#003366', // Biru tua
            },
            fontFamily: {
                sans: ['Public Sans', 'sans-serif'],
            },
        },
        screens: {
            xs: "480px",
            ss: "620px",
            sm: "768px",
            md: "1060px",
            lg: "1200px",
            xl: "1700px",
        },
    },
    plugins: [
        require('@tailwindcss/forms'),
    ],
}
