import { render, screen } from '@testing-library/react';
import App from './App';

test('renders learn react link', () => {
  render(<App />);
  const linkElement = screen.getByText(/learn react/i);
  expect(linkElement).toBeInTheDocument();
});

describe('App', () => {
  // it('should show the WelcomeScreen when app version is up to date', () => {
  //   // Mock window.location.search to simulate query string parameters
  //   jest.spyOn(window.location, 'search', 'get').mockReturnValue('?apphost=AcmeDesktopApp&appversion=1.5.0&os=win');

  //   const { container } = render(<App />);

  //   expect(container.querySelector('.WelcomeScreen')).toBeInTheDocument();
  //   expect(screen.getByText('Getting Started')).toBeInTheDocument();
  //   expect(screen.getByText('Application Name: AcmeDesktopApp')).toBeInTheDocument();
  //   expect(screen.getByText('OS Platform: win')).toBeInTheDocument();
  //   expect(screen.getByText('Version: 1.5.0')).toBeInTheDocument();
  // });

  // it('should show the UpdateRequiredScreen when app version is outdated', () => {
  //   jest.spyOn(window.location, 'search', 'get').mockReturnValue('?apphost=AcmeDesktopApp&appversion=1.4.0&os=win');

  //   const { container } = render(<App />);

  //   expect(container.querySelector('.UpdateRequiredScreen')).toBeInTheDocument();
  //   expect(screen.getByText('Update required')).toBeInTheDocument();
  //   expect(screen.getByText('Application Name: AcmeDesktopApp')).toBeInTheDocument();
  //   expect(screen.getByText('OS Platform: win')).toBeInTheDocument();
  //   expect(screen.getByText('Version: 1.4.0')).toBeInTheDocument();
  // });

  it('should render WelcomeScreen when no update is required', () => {
    const { container } = render(<App />);
    expect(container.querySelector('.WelcomeScreen')).toBeInTheDocument();
  });
  
  it('should render UpdateRequiredScreen when update is required', () => {
    const { container } = render(<App />);
    expect(container.querySelector('.UpdateRequiredScreen')).toBeInTheDocument();
  });
});
