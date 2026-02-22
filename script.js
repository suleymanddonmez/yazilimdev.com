const prefersReducedMotion = window.matchMedia("(prefers-reduced-motion: reduce)");

if (!prefersReducedMotion.matches) {
  const observer = new IntersectionObserver(
    (entries) => {
      entries.forEach((entry) => {
        if (entry.isIntersecting) {
          entry.target.classList.add("is-visible");
          observer.unobserve(entry.target);
        }
      });
    },
    {
      threshold: 0.12,
      rootMargin: "0px 0px -40px 0px",
    }
  );

  document.querySelectorAll(".reveal").forEach((el, index) => {
    el.style.transitionDelay = `${Math.min(index * 35, 240)}ms`;
    observer.observe(el);
  });
} else {
  document.querySelectorAll(".reveal").forEach((el) => el.classList.add("is-visible"));
}
