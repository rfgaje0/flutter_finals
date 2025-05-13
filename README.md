Pawfect Supplies - E-commerce UI Project

Student Name:Rafael Ghiene F. Gaje
Student ID:2023-219556 

Dumaguete Campus
Final Project - 2nd Semester A.Y. 2024–2025
College of Computer Studies and Engineering
Graphical User Interface Programming (GUIPRO)
Prepared by: FREDWIL JUCOM

---

Project Description

**Pawfect Supplies** is a Flutter-based mobile application UI for an e-commerce store that caters specifically to pet supplies. The application showcases a clean, intuitive, and aesthetically cohesive shopping experience for pet lovers. Users can browse pet products, view detailed descriptions, manage their cart, and simulate a simplified checkout process.

This project focuses on implementing UI/UX design principles using Flutter and demonstrates the application of navigation, layout structuring, and state handling—all using mock data without backend integration.

---

Splash Screen
- A simple, branded welcome screen featuring the app name.

Home/Product Listing Screen
- Displays a grid of pet products (images, names, and prices).
- Custom AppBar with logo and app name.
- “Shop Now” button for user engagement.
- Navigates to Product Detail screen when a product is tapped.

Product Detail Screen
- Shows a large product image, name, price, and full description.
- Includes quantity selector (increase/decrease buttons).
- “Add to Cart” button.
- Centered layout for better focus.

---

Unique Design Choices & Creativity

Niche
- The store is uniquely tailored to **pet supplies**—offering products for dogs, cats, birds, hamsters, fish, etc.

Color Palette
- Teal is used for the header and primary buttons, symbolizing freshness and trust—perfect for pet brands.

Typography
- Clean **Roboto** font for readability and modern look.

Iconography & Branding
- Custom logo beside app title in AppBar.
- Consistent icon styles for navigation and actions.

Other Unique UI Features
- Grid-based layout for product display.
- Quantity selector on Product Detail and Cart screens.
- Buttons with proper padding and rounded edges for a soft, friendly UI.

---

Challenges Faced & Solutions

Reflecting Real-time Cart Updates
Challenge: Ensuring the cart screen reflects the actual items added, updated, or removed.  
Solution: Used shared list (`cartItems`) from the product model and managed quantity changes through stateful logic and callbacks.

UI Alignment and Responsiveness
Challenge: Keeping the product detail UI centered and balanced across devices.  
Solution: Applied layout constraints, `Center`, and consistent `Padding` to ensure centered and responsive designs.
