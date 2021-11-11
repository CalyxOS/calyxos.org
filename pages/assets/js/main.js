/*
 * We use labels to toggle hidden checkboxes to avoid requiring javascript.
 * Unfortunately, there is no way to make labels respond well to accessibility
 * input, such as hitting space when the label has input focus. So, you can
 * have a javascript-free website, or you can have an accessibility-friendly
 * website, but not both. This tiny javascript makes labels with the class
 * 'clickable' respond to space or return as if it was a click.
 */
window.addEventListener('DOMContentLoaded', (event) => {
  var elements = document.getElementsByClassName("clickable");
  for (var i=0, len=elements.length|0; i<len; i=i+1|0) {
    elements[i].addEventListener("keydown", function(event) {
      if (event.code == "Enter" || event.code == "Space") {
        event.preventDefault();
        event.target.click();
      }
    });
  }
});
