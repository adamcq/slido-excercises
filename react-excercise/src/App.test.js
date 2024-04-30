import { render, screen } from '@testing-library/react';
import App from './App';

describe('App', () => {
  it('should show the WelcomeScreen when app version is up to date for Windows', () => {
    // simulate the query string
    const url = new URL('http://localhost/:3000/?apphost=AcmeDesktopApp&appversion=1.5.0&os=win');
    window.history.pushState({}, '', url);

    const { container } = render(<App />);

    expect(container.querySelector('.WelcomeScreen')).toBeInTheDocument();
    expect(screen.getByText('Getting Started')).toBeInTheDocument();
    expect(screen.getByText('Application Name: AcmeDesktopApp')).toBeInTheDocument();
    expect(screen.getByText('OS Platform: win')).toBeInTheDocument();
    expect(screen.getByText('Version: 1.5.0')).toBeInTheDocument();
  });

  it('should show the UpdateRequiredScreen when app version is outdated for Windows', () => {
    // simulate the query string
    const url = new URL('http://localhost/:3000/?apphost=AcmeDesktopApp&appversion=1.4.0&os=win');
    window.history.pushState({}, '', url);

    const { container } = render(<App />);

    expect(container.querySelector('.UpdateRequiredScreen')).toBeInTheDocument();
    expect(screen.getByText('Update required')).toBeInTheDocument();
    expect(screen.getByText('Application Name: AcmeDesktopApp')).toBeInTheDocument();
    expect(screen.getByText('OS Platform: win')).toBeInTheDocument();
    expect(screen.getByText('Version: 1.4.0')).toBeInTheDocument();
  });

  it('should show the UpdateRequiredScreen when app version is outdated for Mac', () => {
    // simulate the query string
    const url = new URL('http://localhost/:3000/?apphost=AcmeDesktopApp&appversion=0.27.0&os=mac');
    window.history.pushState({}, '', url);

    const { container } = render(<App />);

    expect(container.querySelector('.UpdateRequiredScreen')).toBeInTheDocument();
    expect(screen.getByText('Update required')).toBeInTheDocument();
    expect(screen.getByText('Application Name: AcmeDesktopApp')).toBeInTheDocument();
    expect(screen.getByText('OS Platform: mac')).toBeInTheDocument();
    expect(screen.getByText('Version: 0.27.0')).toBeInTheDocument();
  });

  it ('should show the WelcomeScreen when app version is up to date for Mac', () => {
    // simulate the query string
    const url = new URL('http://localhost/:3000/?apphost=AcmeDesktopApp&appversion=0.29.4&os=mac');
    window.history.pushState({}, '', url);

    const { container } = render(<App />);

    expect(container.querySelector('.WelcomeScreen')).toBeInTheDocument();
    expect(screen.getByText('Getting Started')).toBeInTheDocument();
    expect(screen.getByText('Application Name: AcmeDesktopApp')).toBeInTheDocument();
    expect(screen.getByText('OS Platform: mac')).toBeInTheDocument();
    expect(screen.getByText('Version: 0.29.4')).toBeInTheDocument();
  });
});
