# package.json

```json
{
  "dependencies": {
    "@supabase/supabase-js": "^2.45.4",
    "ai-digest": "^1.0.6"
  }
}

```

# Roadmap.odg

This is a binary file of the type: Binary

# .gitignore

```
.local
supabase
```

# .vscode/settings.json

```json
{
  "deno.enablePaths": [
    "supabase/functions"
  ],
  "deno.lint": true,
  "deno.unstable": true,
  "[typescript]": {
    "editor.defaultFormatter": "denoland.vscode-deno"
  }
}

```

# .vscode/extensions.json

```json
{
  "recommendations": ["denoland.vscode-deno"]
}

```

# .local/set_dev_env.sh

```sh
export SUPABASE_URL=https://minhswwatgvkbkgcxysw.supabase.co
export SUPABASE_KEY=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZS1kZW1vIiwicm9sZSI6ImFub24iLCJleHAiOjE5ODM4MTI5OTZ9.CRXP1A7WOeoJeXxjNni43kdQwgnWNReilDMblYTn_I0
```

# frontend/tailwind.config.js

```js
module.exports = {
  content: [
    "./src/**/*.{js,jsx,ts,tsx}",
  ],
  theme: {
    extend: {},
  },
  plugins: [],
}
```

# frontend/postcss.config.js

```js
module.exports = {
  plugins: {
    tailwindcss: {},
    autoprefixer: {},
  },
}

```

# frontend/package.json

```json
{
  "name": "frontend",
  "version": "0.1.0",
  "private": true,
  "dependencies": {
    "@supabase/supabase-js": "^2.45.4",
    "@testing-library/jest-dom": "^5.17.0",
    "@testing-library/react": "^13.4.0",
    "@testing-library/user-event": "^13.5.0",
    "autoprefixer": "^10.4.20",
    "denoify": "^1.6.13",
    "dotenv": "^16.4.5",
    "postcss": "^8.4.45",
    "react": "^18.3.1",
    "react-dom": "^18.3.1",
    "react-router-dom": "^6.26.2",
    "react-scripts": "5.0.1",
    "tailwindcss": "^3.4.11",
    "web-vitals": "^2.1.4"
  },
  "scripts": {
    "start": "react-scripts start",
    "build": "react-scripts build",
    "test": "react-scripts test",
    "eject": "react-scripts eject"
  },
  "eslintConfig": {
    "extends": [
      "react-app",
      "react-app/jest"
    ]
  },
  "browserslist": {
    "production": [
      ">0.2%",
      "not dead",
      "not op_mini all"
    ],
    "development": [
      "last 1 chrome version",
      "last 1 firefox version",
      "last 1 safari version"
    ]
  }
}

```

# frontend/README.old.md

```md
A react web app 
```

# frontend/README.md

```md
# Getting Started with Create React App

This project was bootstrapped with [Create React App](https://github.com/facebook/create-react-app).

## Available Scripts

In the project directory, you can run:

### `npm start`

Runs the app in the development mode.\
Open [http://localhost:3000](http://localhost:3000) to view it in your browser.

The page will reload when you make changes.\
You may also see any lint errors in the console.

### `npm test`

Launches the test runner in the interactive watch mode.\
See the section about [running tests](https://facebook.github.io/create-react-app/docs/running-tests) for more information.

### `npm run build`

Builds the app for production to the `build` folder.\
It correctly bundles React in production mode and optimizes the build for the best performance.

The build is minified and the filenames include the hashes.\
Your app is ready to be deployed!

See the section about [deployment](https://facebook.github.io/create-react-app/docs/deployment) for more information.

### `npm run eject`

**Note: this is a one-way operation. Once you `eject`, you can't go back!**

If you aren't satisfied with the build tool and configuration choices, you can `eject` at any time. This command will remove the single build dependency from your project.

Instead, it will copy all the configuration files and the transitive dependencies (webpack, Babel, ESLint, etc) right into your project so you have full control over them. All of the commands except `eject` will still work, but they will point to the copied scripts so you can tweak them. At this point you're on your own.

You don't have to ever use `eject`. The curated feature set is suitable for small and middle deployments, and you shouldn't feel obligated to use this feature. However we understand that this tool wouldn't be useful if you couldn't customize it when you are ready for it.

## Learn More

You can learn more in the [Create React App documentation](https://facebook.github.io/create-react-app/docs/getting-started).

To learn React, check out the [React documentation](https://reactjs.org/).

### Code Splitting

This section has moved here: [https://facebook.github.io/create-react-app/docs/code-splitting](https://facebook.github.io/create-react-app/docs/code-splitting)

### Analyzing the Bundle Size

This section has moved here: [https://facebook.github.io/create-react-app/docs/analyzing-the-bundle-size](https://facebook.github.io/create-react-app/docs/analyzing-the-bundle-size)

### Making a Progressive Web App

This section has moved here: [https://facebook.github.io/create-react-app/docs/making-a-progressive-web-app](https://facebook.github.io/create-react-app/docs/making-a-progressive-web-app)

### Advanced Configuration

This section has moved here: [https://facebook.github.io/create-react-app/docs/advanced-configuration](https://facebook.github.io/create-react-app/docs/advanced-configuration)

### Deployment

This section has moved here: [https://facebook.github.io/create-react-app/docs/deployment](https://facebook.github.io/create-react-app/docs/deployment)

### `npm run build` fails to minify

This section has moved here: [https://facebook.github.io/create-react-app/docs/troubleshooting#npm-run-build-fails-to-minify](https://facebook.github.io/create-react-app/docs/troubleshooting#npm-run-build-fails-to-minify)

```

# frontend/.gitignore

```
# See https://help.github.com/articles/ignoring-files/ for more about ignoring files.

# dependencies
/node_modules
/.pnp
.pnp.js

# testing
/coverage

# production
/build

# misc
.DS_Store
.env.local
.env.development.local
.env.test.local
.env.production.local

npm-debug.log*
yarn-debug.log*
yarn-error.log*

```

# supabase/sql-init/Pricing.sql

```sql
-- Create the pricing_tiers table
CREATE TABLE public.pricing_tiers (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    price VARCHAR(50) NOT NULL,
    monthly_price VARCHAR(50) NOT NULL,
    features TEXT[] NOT NULL
);

-- Insert sample data
INSERT INTO public.pricing_tiers (name, price, monthly_price, features) VALUES
('Starter', '$99.99/year', '$9.99/month', ARRAY['100 image generations per month', 'Basic editing tools', 'Standard support', 'Access to common models']),
('Pro', '$249.99/year', '$24.99/month', ARRAY['500 image generations per month', 'Advanced editing tools', 'Priority support', 'Access to premium models', 'Custom style training']),
('Premium', '$499.99/year', '$49.99/month', ARRAY['Unlimited image generations', 'Professional editing suite', '24/7 dedicated support', 'Access to all models including early-access', 'Custom model training', 'API access']);

-- Grant public access to read the table
ALTER TABLE public.pricing_tiers ENABLE ROW LEVEL SECURITY;

CREATE POLICY "Allow public read access"
ON public.pricing_tiers FOR SELECT
USING (true);

```

# frontend/src/supabaseClient.js

```js
import { createClient } from '@supabase/supabase-js'

const supabaseUrl = 'https://minhswwatgvkbkgcxysw.supabase.co'
const supabaseAnonKey = process.env.REACT_APP_SUPABASE_KEY

export const supabase = createClient(supabaseUrl, supabaseAnonKey)

```

# frontend/src/setupTests.js

```js
// jest-dom adds custom jest matchers for asserting on DOM nodes.
// allows you to do things like:
// expect(element).toHaveTextContent(/react/i)
// learn more: https://github.com/testing-library/jest-dom
import '@testing-library/jest-dom';

```

# frontend/src/reportWebVitals.js

```js
const reportWebVitals = onPerfEntry => {
  if (onPerfEntry && onPerfEntry instanceof Function) {
    import('web-vitals').then(({ getCLS, getFID, getFCP, getLCP, getTTFB }) => {
      getCLS(onPerfEntry);
      getFID(onPerfEntry);
      getFCP(onPerfEntry);
      getLCP(onPerfEntry);
      getTTFB(onPerfEntry);
    });
  }
};

export default reportWebVitals;

```

# frontend/src/index.js

```js
import React from 'react';
import ReactDOM from 'react-dom/client';
import './index.css';
import App from './App';
import reportWebVitals from './reportWebVitals';

const root = ReactDOM.createRoot(document.getElementById('root'));
root.render(
  <App />
);

// If you want to start measuring performance in your app, pass a function
// to log results (for example: reportWebVitals(console.log))
// or send to an analytics endpoint. Learn more: https://bit.ly/CRA-vitals
reportWebVitals();

```

# frontend/src/index.css

```css
@tailwind base;
@tailwind components;
@tailwind utilities;
```

# frontend/src/App.test.js

```js
import { render, screen } from '@testing-library/react';
import App from './App';

test('renders app without crashing', () => {
  render(<App />);
  const linkElement = screen.getByText(/AI Image Gen/i);
  expect(linkElement).toBeInTheDocument();
});
```

# frontend/src/App.js

```js
import React from 'react';
import { BrowserRouter as Router, Route, Routes } from 'react-router-dom';
import Navbar from './components/Navbar';
import LandingPage from './pages/LandingPage';
import AuthPage from './pages/AuthPage';
import ImageGenerationPage from './pages/ImageGenerationPage';
import MyImagesPage from './pages/MyImagesPage';
import ModelCreationPage from './pages/ModelCreationPage';
import AboutPage from './pages/AboutPage';
import PricingPage from './pages/PricingPage';
import SettingsPage from './pages/SettingsPage';
import ProtectedRoute from './components/ProtectedRoute';

function App() {
  return (
    <Router>
      <div className="min-h-screen bg-gray-100 flex flex-col">
        <Navbar />
        <main className="flex-grow">
          <Routes>
            <Route path="/" element={<LandingPage />} />
            <Route path="/auth" element={<AuthPage />} />
            <Route path="/about" element={<AboutPage />} />
            <Route path="/pricing" element={<PricingPage />} />
            <Route path="/generate-image" element={
              <ProtectedRoute>
                <ImageGenerationPage />
              </ProtectedRoute>
            } />
            <Route path="/my-images" element={
              <ProtectedRoute>
                <MyImagesPage />
              </ProtectedRoute>
            } />
            <Route path="/create-model" element={
              <ProtectedRoute>
                <ModelCreationPage />
              </ProtectedRoute>
            } />
            <Route path="/settings/*" element={
              <ProtectedRoute>
                <SettingsPage />
              </ProtectedRoute>
            } />
          </Routes>
        </main>
      </div>
    </Router>
  );
}

export default App;
```

# frontend/public/robots.txt

```txt
# https://www.robotstxt.org/robotstxt.html
User-agent: *
Disallow:

```

# frontend/public/manifest.json

```json
{
  "short_name": "PortraitGen",
  "name": "Create React App Sample",
  "icons": [
    {
      "src": "favicon.ico",
      "sizes": "64x64 32x32 24x24 16x16",
      "type": "image/x-icon"
    }
  ],
  "start_url": ".",
  "display": "standalone",
  "theme_color": "#000000",
  "background_color": "#ffffff"
}

```

# frontend/public/logo512.png

This is a binary file of the type: Image

# frontend/public/logo192.png

This is a binary file of the type: Image

# frontend/public/index.html

```html
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <link rel="icon" href="%PUBLIC_URL%/favicon.ico" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="theme-color" content="#000000" />
    <meta
      name="description"
      content="AI Image Generation App"
    />
    <link rel="apple-touch-icon" href="%PUBLIC_URL%/logo192.png" />
    <link rel="manifest" href="%PUBLIC_URL%/manifest.json" />
    <title>AI Image Gen</title>
  </head>
  <body>
    <noscript>You need to enable JavaScript to run this app.</noscript>
    <div id="root"></div>
  </body>
</html>
```

# frontend/public/favicon.ico

This is a binary file of the type: Binary

# frontend/src/pages/SettingsPage.js

```js
import React, { useState } from 'react';
import { Link, Route, Routes } from 'react-router-dom';
import AccountSettings from '../components/AccountSettings';
import BillingSettings from '../components/BillingSettings';

const SettingsPage = () => {
  const [activeTab, setActiveTab] = useState('account');

  return (
    <div className="container mx-auto mt-10 px-4 flex">
      {/* Left-side navigation */}
      <nav className="w-1/4 pr-8">
        <ul className="space-y-2">
          <li>
            <Link
              to="/settings/account"
              className={`block p-2 rounded ${
                activeTab === 'account' ? 'bg-blue-500 text-white' : 'hover:bg-gray-200'
              }`}
              onClick={() => setActiveTab('account')}
            >
              Account
            </Link>
          </li>
          <li>
            <Link
              to="/settings/billing"
              className={`block p-2 rounded ${
                activeTab === 'billing' ? 'bg-blue-500 text-white' : 'hover:bg-gray-200'
              }`}
              onClick={() => setActiveTab('billing')}
            >
              Billing
            </Link>
          </li>
        </ul>
      </nav>

      {/* Main content area */}
      <div className="w-3/4">
        <Routes>
          <Route path="account" element={<AccountSettings />} />
          <Route path="billing" element={<BillingSettings />} />
        </Routes>
      </div>
    </div>
  );
};

export default SettingsPage;
```

# frontend/src/pages/PricingPage.js

```js
import React, { useState, useEffect } from 'react';
import { supabase } from '../supabaseClient';

const PricingPage = () => {
  const [tiers, setTiers] = useState([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);
  const [isYearly, setIsYearly] = useState(true);

  useEffect(() => {
    const fetchPricingTiers = async () => {
      try {
        const { data, error } = await supabase
          .from('pricing_tiers')
          .select('*')
          .order('id');

        if (error) {
          throw error;
        }

        setTiers(data);
        setLoading(false);
      } catch (error) {
        console.error('Error fetching pricing tiers:', error);
        setError('Failed to load pricing information. Please try again later.');
        setLoading(false);
      }
    };

    fetchPricingTiers();
  }, []);

  const calculateMonthlyYearlyRate = (yearlyPrice) => {
    const yearlyAmount = parseFloat(yearlyPrice.replace(/[^0-9.-]+/g,""));
    return (yearlyAmount / 12).toFixed(2);
  };

  if (loading) {
    return (
      <div className="container mx-auto mt-10 px-4 text-center">
        <p>Loading pricing information...</p>
      </div>
    );
  }

  if (error) {
    return (
      <div className="container mx-auto mt-10 px-4 text-center">
        <p className="text-red-500">{error}</p>
      </div>
    );
  }

  return (
    <div className="container mx-auto mt-10 px-4">
      <h1 className="text-3xl font-bold mb-8 text-center">Choose Your Plan</h1>
      
      <div className="flex justify-center mb-8">
        <button 
          className={`px-4 py-2 mr-2 rounded ${isYearly ? 'bg-blue-600 text-white' : 'bg-gray-200'}`}
          onClick={() => setIsYearly(true)}
        >
          Yearly
        </button>
        <button 
          className={`px-4 py-2 rounded ${!isYearly ? 'bg-blue-600 text-white' : 'bg-gray-200'}`}
          onClick={() => setIsYearly(false)}
        >
          Monthly
        </button>
      </div>

      <div className="grid md:grid-cols-3 gap-8">
        {tiers.map((tier) => (
          <div key={tier.id} className="border rounded-lg p-6 shadow-lg">
            <h2 className="text-2xl font-bold mb-4">{tier.name}</h2>
            {isYearly ? (
              <div>
                <p className="text-3xl font-bold mb-2">
                  ${calculateMonthlyYearlyRate(tier.price)}/mo
                  <span className="text-lg font-normal text-gray-500 line-through ml-2">
                    ${tier.monthly_price.replace(/[^0-9.-]+/g,"")}
                  </span>
                </p>
                <p className="text-sm text-gray-500 mb-4">billed yearly</p>
              </div>
            ) : (
              <p className="text-3xl font-bold mb-6">{tier.monthly_price}</p>
            )}
            <ul className="mb-6">
              {tier.features.map((feature, index) => (
                <li key={index} className="flex items-center mb-2">
                  <svg className="w-4 h-4 mr-2 text-green-500" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                    <path strokeLinecap="round" strokeLinejoin="round" strokeWidth="2" d="M5 13l4 4L19 7"></path>
                  </svg>
                  {feature}
                </li>
              ))}
            </ul>
            <button className="w-full bg-blue-600 text-white py-2 px-4 rounded hover:bg-blue-700 transition duration-200">
              Choose Plan
            </button>
          </div>
        ))}
      </div>
    </div>
  );
};

export default PricingPage;
```

# frontend/src/pages/MyImagesPage.js

```js
import React, { useState, useEffect } from 'react';
import { supabase } from '../supabaseClient';

const MyImagesPage = () => {
  const [images, setImages] = useState([]);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    fetchImages();
  }, []);

  const fetchImages = async () => {
    setLoading(true);
    try {
      // Replace this with your actual query to fetch user's images from Supabase
      const { data, error } = await supabase
        .from('user_images')
        .select('*')
        .order('created_at', { ascending: false });

      if (error) throw error;
      setImages(data || []);
    } catch (error) {
      console.error('Error fetching images:', error.message);
    } finally {
      setLoading(false);
    }
  };

  if (loading) {
    return <div className="container mx-auto mt-10 px-4">Loading...</div>;
  }

  return (
    <div className="container mx-auto mt-10 px-4">
      <h1 className="text-3xl font-bold mb-6">My Images</h1>
      {images.length === 0 ? (
        <p>You haven't generated any images yet.</p>
      ) : (
        <div className="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 lg:grid-cols-4 gap-4">
          {images.map((image) => (
            <div key={image.id} className="border rounded-lg overflow-hidden shadow-lg">
              <img src={image.url} alt={image.description} className="w-full h-48 object-cover" />
              <div className="p-4">
                <p className="text-sm text-gray-600">{new Date(image.created_at).toLocaleDateString()}</p>
              </div>
            </div>
          ))}
        </div>
      )}
    </div>
  );
};

export default MyImagesPage;
```

# frontend/src/pages/ModelCreationPage.js

```js
import React from 'react';

const ModelCreationPage = () => {
  return (
    <div className="container mx-auto mt-10 px-4">
      <h2 className="text-2xl font-bold mb-4">Create New Model</h2>
      <p className="text-lg">This is where you'll be able to create and train new AI models.</p>
      {/* Add form for model creation */}
    </div>
  );
};

export default ModelCreationPage;
```

# frontend/src/pages/LandingPage.js

```js
import React from 'react';
import { Link } from 'react-router-dom';

const LandingPage = () => {
  return (
    <div className="container mx-auto mt-10 px-4 text-center">
      <h1 className="text-3xl md:text-4xl font-bold mb-4">Welcome to AI Image Gen</h1>
      <p className="text-lg md:text-xl mb-8">Create and generate amazing images with the power of AI</p>
      <div className="flex flex-col sm:flex-row justify-center space-y-4 sm:space-y-0 sm:space-x-4">
        <Link to="/auth" className="bg-blue-600 text-white px-6 py-2 rounded hover:bg-blue-700 w-full sm:w-auto">
          Get Started
        </Link>
        <Link to="/generate-image" className="bg-green-600 text-white px-6 py-2 rounded hover:bg-green-700 w-full sm:w-auto">
          Try Demo
        </Link>
      </div>
    </div>
  );
};

export default LandingPage;
```

# frontend/src/pages/ImageGenerationPage.js

```js
import React from 'react';

const ImageGenerationPage = () => {
  return (
    <div className="container mx-auto mt-10 px-4">
      <h2 className="text-2xl font-bold mb-4">Generate Image</h2>
      <p className="text-lg">Use this page to generate new images using your trained models.</p>
      {/* Add image generation interface */}
    </div>
  );
};

export default ImageGenerationPage;
```

# frontend/src/pages/Dashboard.js

```js
import React from 'react';

const Dashboard = () => {
  return (
    <div className="container mx-auto mt-10 px-4">
      <h2 className="text-2xl font-bold mb-4">Dashboard</h2>
      <p className="text-lg">Welcome to your dashboard. Here you can view your models and generated images.</p>
      {/* Add components for displaying user's models and generated images */}
    </div>
  );
};

export default Dashboard;
```

# frontend/src/pages/AuthPage.js

```js
import React, { useState } from 'react';
import { useNavigate } from 'react-router-dom';
import { supabase } from '../supabaseClient';


const AuthPage = () => {
  const [email, setEmail] = useState('');
  const [password, setPassword] = useState('');
  const [isLogin, setIsLogin] = useState(true);
  const [isLoading, setIsLoading] = useState(false);
  const navigate = useNavigate();

  const handleAuth = async (e) => {
    e.preventDefault();
    setIsLoading(true);
    
    try {
      if (isLogin) {
        const { data, error } = await supabase.auth.signInWithPassword({ email, password });
        if (error) throw error;
        console.log('Sign in successful', data);
        navigate('/dashboard');
      } else {
        const { data, error } = await supabase.auth.signUp({ email, password });
        if (error) throw error;
        console.log('Sign up successful', data);
        // You might want to show a "verify your email" message here instead of redirecting
        alert('Please check your email to verify your account');
      }
    } catch (error) {
      console.error('Authentication error:', error.message);
      alert(error.message);
    } finally {
      setIsLoading(false);
    }
  };

  return (
    <div className="container mx-auto mt-10 max-w-md px-4">
      <h2 className="text-2xl font-bold mb-4">{isLogin ? 'Login' : 'Sign Up'}</h2>
      {isLoading ? (
        <div className="flex justify-center items-center h-32">
          <div className="animate-spin rounded-full h-16 w-16 border-t-2 border-b-2 border-blue-500"></div>
        </div>
      ) : (
        <form onSubmit={handleAuth} className="space-y-4">
          <input
            type="email"
            placeholder="Email"
            value={email}
            onChange={(e) => setEmail(e.target.value)}
            className="w-full p-2 border rounded"
            required
          />
          <input
            type="password"
            placeholder="Password"
            value={password}
            onChange={(e) => setPassword(e.target.value)}
            className="w-full p-2 border rounded"
            required
          />
          <button 
            type="submit" 
            className="w-full p-2 rounded text-white bg-blue-600 hover:bg-blue-700 active:bg-blue-800"
          >
            {isLogin ? 'Login' : 'Sign Up'}
          </button>
        </form>
      )}
      <p className="mt-4 text-center">
        {isLogin ? "Don't have an account? " : "Already have an account? "}
        <button 
          onClick={() => setIsLogin(!isLogin)} 
          className="text-blue-600 hover:underline"
          type="button"
        >
          {isLogin ? 'Sign Up' : 'Login'}
        </button>
      </p>
    </div>
  );
};

export default AuthPage;

```

# frontend/src/pages/AboutPage.js

```js
import React from 'react';

const AboutPage = () => {
  return (
    <div className="container mx-auto mt-10 px-4">
      <h1 className="text-3xl font-bold mb-4">About AI Image Gen</h1>
      <p className="mb-4">
        Portrait AI is a tool designed to allow you to imagine yourself in any way you can describe. 
        Insert yourself into any background, any style and any mood. Just upload a few images of yourself,
        train a model, and generate some amazing portraits.
      </p>
      <p className="mb-4">
        Our mission is to democratize art creation and empower individuals to bring 
        their imaginative visions to life, regardless of their artistic background.
      </p>
      <p>
        With our innovative technology and user-friendly interface, you can generate 
        professional-quality images in seconds, perfect for social media, headshots,
        family photos, and more. Get started today by signing up.
      </p>
    </div>
  );
};

export default AboutPage;
```

# frontend/src/components/ProtectedRoute.js

```js
import React, { useState, useEffect } from 'react';
import { Navigate } from 'react-router-dom';
import { supabase } from '../supabaseClient';

const ProtectedRoute = ({ children }) => {
  const [user, setUser] = useState(null);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    const getUser = async () => {
      const { data } = await supabase.auth.getUser();
      setUser(data.user);
      setLoading(false);
    };
    getUser();
  }, []);

  if (loading) {
    return <div>Loading...</div>;
  }

  if (!user) {
    return <Navigate to="/auth" replace />;
  }

  return children;
};

export default ProtectedRoute;
```

# frontend/src/components/Navbar.js

```js
import React, { useState, useEffect, useRef } from 'react';
import { Link, useNavigate } from 'react-router-dom';
import { supabase } from '../supabaseClient';

const Navbar = () => {
  const [user, setUser] = useState(null);
  const [dropdownOpen, setDropdownOpen] = useState(false);
  const dropdownRef = useRef(null);
  const navigate = useNavigate();

  useEffect(() => {
    const { data: authListener } = supabase.auth.onAuthStateChange(
      (event, session) => {
        setUser(session?.user ?? null);
      }
    );

    const handleClickOutside = (event) => {
      if (dropdownRef.current && !dropdownRef.current.contains(event.target)) {
        setDropdownOpen(false);
      }
    };

    document.addEventListener('mousedown', handleClickOutside);

    return () => {
      authListener.subscription.unsubscribe();
      document.removeEventListener('mousedown', handleClickOutside);
    };
  }, []);

  const handleSignOut = async () => {
    await supabase.auth.signOut();
    setDropdownOpen(false);
    navigate('/');
  };

  return (
    <nav className="bg-blue-600 p-4">
      <div className="container mx-auto flex justify-between items-center">
        <Link to="/" className="text-white text-2xl font-bold">AI Image Gen</Link>
        <div className="space-x-4 flex items-center">
          {user && (
            <Link to="/generate-image" className="text-white hover:text-blue-200">Generate Images</Link>
          )}
          <Link to="/about" className="text-white hover:text-blue-200">About</Link>
          <Link to="/pricing" className="text-white hover:text-blue-200">Pricing</Link>
          {user ? (
            <div className="relative" ref={dropdownRef}>
              <button
                onClick={() => setDropdownOpen(!dropdownOpen)}
                className="text-white hover:text-blue-200 focus:outline-none"
              >
                <svg xmlns="http://www.w3.org/2000/svg" className="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                  <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M16 7a4 4 0 11-8 0 4 4 0 018 0zM12 14a7 7 0 00-7 7h14a7 7 0 00-7-7z" />
                </svg>
              </button>
              {dropdownOpen && (
                <div className="absolute right-0 mt-2 w-48 bg-white rounded-md shadow-lg py-1 z-10">
                  <Link
                    to="/my-images"
                    className="block px-4 py-2 text-sm text-gray-700 hover:bg-gray-100"
                    onClick={() => setDropdownOpen(false)}
                  >
                    My Images
                  </Link>
                  <Link
                    to="/settings/account"
                    className="block px-4 py-2 text-sm text-gray-700 hover:bg-gray-100"
                    onClick={() => setDropdownOpen(false)}
                  >
                    Settings
                  </Link>
                  <Link
                    to="/settings/billing"
                    className="block px-4 py-2 text-sm text-gray-700 hover:bg-gray-100"
                    onClick={() => setDropdownOpen(false)}
                  >
                    Billing
                  </Link>
                  <button
                    onClick={handleSignOut}
                    className="block w-full text-left px-4 py-2 text-sm text-gray-700 hover:bg-gray-100"
                  >
                    Sign Out
                  </button>
                </div>
              )}
            </div>
          ) : (
            <Link to="/auth" className="text-white hover:text-blue-200">Sign In</Link>
          )}
        </div>
      </div>
    </nav>
  );
};


export default Navbar;
```

# frontend/src/components/BillingSettings.js

```js
import React from 'react';

const BillingSettings = () => {
  const [paymentMethods, setPaymentMethods] = React.useState([]);

  const handleAddPaymentMethod = () => {
    // Implement add payment method logic here
    console.log('Add payment method clicked');
  };

  return (
    <div>
      <h2 className="text-2xl font-bold mb-4">Billing Settings</h2>
      {paymentMethods.length > 0 ? (
        <ul className="mb-4">
          {paymentMethods.map((method, index) => (
            <li key={index} className="mb-2">
              {/* Display payment method details here */}
              Payment Method {index + 1}
            </li>
          ))}
        </ul>
      ) : (
        <p className="mb-4">No payment methods added yet.</p>
      )}
      <button
        onClick={handleAddPaymentMethod}
        className="bg-green-500 hover:bg-green-600 text-white font-bold py-2 px-4 rounded"
      >
        Add Payment Method
      </button>
    </div>
  );
};

export default BillingSettings;
```

# frontend/src/components/AccountSettings.js

```js
import React from 'react';

const AccountSettings = () => {
  const handleChangePassword = () => {
    // Implement password change logic here
    console.log('Change password clicked');
  };

  return (
    <div>
      <h2 className="text-2xl font-bold mb-4">Account Settings</h2>
      <button
        onClick={handleChangePassword}
        className="bg-blue-500 hover:bg-blue-600 text-white font-bold py-2 px-4 rounded"
      >
        Change Password
      </button>
    </div>
  );
};

export default AccountSettings;

```

