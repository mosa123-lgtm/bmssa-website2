import localFont from "next/font/local";
import "./globals.css";

const pramukhRounded = localFont({
  src: "../public/fonts/PramukhRounded-Semibold.ttf",
  variable: "--font-pramukh",
  display: "swap",
});

export const metadata = {
  title: "BMSSA",
  description: "Pioneering the future of medicine together.",
};

export default function RootLayout({ children }) {
  return (
    <html lang="en" className={pramukhRounded.variable}>
      <body className={pramukhRounded.className}>{children}</body>
    </html>
  );
}

import React from 'react'
import Navbar from './Components/Navbar'
import Home from './Components/Home'

const page = () => {
  return (
    <div>
      <Navbar />
      <Home />
    </div>
  )
}

export default page
:root {
  /* Global Color Variables */
  --color-black: #121212;
  --color-light: #f5f5f5;
  --color-primary: #43b8ef;
  --color-bg-light: #f9ffe7;
  
  /* Spacing Variables */
  --container-padding: 2rem;
  
  /* Tab System Colors */
  --tab-bg: rgba(239, 238, 236, 0.06);
  --tab-border: rgba(239, 238, 236, 0.08);
  --tab-active-border: rgba(239, 238, 236, 0.3);
  --tab-text: #f5f5f5;
  --tab-button-bg: #efeeec;
  
  /* Border and Effects */
  --border-radius: 12px;
  --transition-duration: 0.3s;
}

@media (max-width: 768px) {
  :root {
    --container-padding: 1rem;
  }
}

@tailwind base;
@tailwind components;
@tailwind utilities;

html {
  font-size: 150%;
}

@keyframes move1 {
  0%,
  100% {
    transform: translateY(0);
  }
  50% {
    transform: translateY(-10px);
  }
}

@keyframes move2 {
  0%,
  100% {
    transform: translateX(0);
  }
  50% {
    transform: translateX(10px);
  }
}
@keyframes move3 {
  0%,
  100% {
    transform: translate(0);
  }
  25% {
    transform: translate(10px, -10px);
  }
  50% {
    transform: translate(-10px, 10px);
  }
  75% {
    transform: translate(20px, -20px); /* Adjusted translation values */
  }
}

@keyframes uncover {
  0% {
    height: 0;
    opacity: 0;
  }
  100% {
    height: auto;
    opacity: 1;
  }
}

.move1 {
  animation: move1 3s infinite;
}

.move2 {
  animation: move2 4s infinite;
}

.move3 {
  animation: move3 5s infinite;
}
