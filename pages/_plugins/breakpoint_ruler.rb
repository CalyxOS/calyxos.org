module Jekyll
  module BreakPointRuler

    def self.style(top_position=50)
<<END
<style>
.break-point-ruler .break-point-row {
  z-index: 100;
  position: absolute;
  font-weight: bold;
  font-size: 8px;
  left: 0;
  display: none;
  height: 10px;
}
.up .sm { background: orange; width: 576px; top: #{top_position+=10}px }
.up .md { background: yellow; width: 768px; top: #{top_position+=10}px }
.up .lg { background: green; width: 992px; top: #{top_position+=10}px }
.up .xl { background: blue; width: 1200px; top: #{top_position+=10}px }

/* @include media-breakpoint-up(sm) {  } */
@media (min-width: 576px) { .up .sm {display: block} }

/* @include media-breakpoint-up(md) {  } */
@media (min-width: 768px) { .up .md {display: block} }

/* @include media-breakpoint-up(lg) {  } */
@media (min-width: 992px) { .up .lg {display: block} }

/* @include media-breakpoint-up(xl) {  } */
@media (min-width: 1200px) { .up .xl {display: block} }

.down .xs { background: red;    width: 575.98px;  top: #{top_position+=10}px }
.down .sm { background: orange; width: 767.98px;  top: #{top_position+=10}px }
.down .md { background: yellow; width: 991.98px;  top: #{top_position+=10}px }
.down .lg { background: green;  width: 1199.98px; top: #{top_position+=10}px }

/* @include media-breakpoint-down(xs) {  } */
@media (max-width: 575.98px) { .down .xs {display: block} }

/* @include media-breakpoint-down(sm) {  } */
@media (max-width: 767.98px) { .down .sm {display: block} }

/* @include media-breakpoint-down(md) {  } */
@media (max-width: 991.98px) { .down .md {display: block} }

/* @include media-breakpoint-down(lg) {  } */
@media (max-width: 1199.98px) { .down .lg {display: block} }
</style>
END
    end

    def self.elements
<<END
<div class="break-point-ruler up">
  <div class="break-point-row sm">up sm</div>
  <div class="break-point-row md">up md</div>
  <div class="break-point-row lg">up lg</div>
  <div class="break-point-row xl">up xl</div>
</div>
<div class="break-point-ruler down">
  <div class="break-point-row xs">down xs</div>
  <div class="break-point-row sm">down sm</div>
  <div class="break-point-row md">down md</div>
  <div class="break-point-row lg">down lg</div>
</div>
END
    end

  end
end

if ENV["RULER"]
  Jekyll::Hooks.register :pages, :post_render do |page, payload|
    page.output = page.output.
      sub('<head>', "<head>\n" + Jekyll::BreakPointRuler.style(ENV["RULER"].to_i)).
      sub('<body>', "<body>\n" + Jekyll::BreakPointRuler.elements)
  end
end
