class Fonts {
  Gotham gotham;

  Fonts () {
    gotham = new Gotham ();
  }
}

class Gotham {
  PFont book, medium, bold;

  Gotham () {
    book = createFont ("C:/Users/Lenovo/Documents/Processing/libraries/fonts/gotham-cufonfonts/GothamBook.ttf", 17);
    medium = createFont ("C:/Users/Lenovo/Documents/Processing/libraries/fonts/gotham-cufonfonts/GothamMedium.ttf", 17);
    bold = createFont ("C:/Users/Lenovo/Documents/Processing/libraries/fonts/gotham-cufonfonts/GothamBold.ttf", 16);
  }
}
