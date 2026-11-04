export interface NavItem {
  label: string;
  href: string;
}

export interface ActionLink {
  label: string;
  href: string;
  external?: boolean;
}

export interface HeroContent {
  title: string;
  intro: string;
}

export type ProjectStatus = "Live" | "In TestFlight" | "Client";

export interface ProjectItem {
  /** URL segment: /work/<slug>/. Images live in src/lib/assets/projects/<slug>/. */
  slug: string;
  name: string;
  years: string;
  role: string;
  status: ProjectStatus;
  tagline: string;
  description: string[];
  stack: string[];
  links?: ActionLink[];
}

export interface LabItem {
  name: string;
  /** Omitted when there's nothing public to link to. */
  href?: string;
  summary: string;
}

export interface ArchiveItem {
  name: string;
  year: number;
  summary: string;
  /** The project's page on the old site, kept as it was under static/archive/. */
  href: string;
}

export interface TimelineItem {
  years: string;
  title: string;
}

export interface AboutContent {
  name: string;
  location: string;
  imageAlt: string;
  lead: string;
  body: string[];
  timeline: TimelineItem[];
}

export interface ContactContent {
  title: string;
  summary: string;
  email: ActionLink;
  github: ActionLink;
  linkedin: ActionLink;
}

export interface SiteContent {
  meta: {
    url: string;
    domain: string;
    defaultTitle: string;
    defaultDescription: string;
    /** 1200×630. */
    ogImage: string;
    ogImageAlt: string;
  };
  brand: {
    name: string;
    markSrc: string;
  };
  nav: NavItem[];
  hero: HeroContent;
  projects: ProjectItem[];
  lab: LabItem[];
  archive: ArchiveItem[];
  about: AboutContent;
  contact: ContactContent;
  plausible: {
    domain: string;
    /** Optional proxy API endpoint (e.g. https://stats.example.com/api/event). Omit to use Plausible’s default. */
    endpoint?: string;
  };
}

export const site: SiteContent = {
  meta: {
    url: "https://sftsk.com",
    domain: "sftsk.com",
    defaultTitle: "Lukas Hafner | Designer and developer in Helsinki",
    defaultDescription:
      "Lukas Hafner designs and builds software in Helsinki: SelectAM, sales and product-data tools for manufacturing, and small apps for iPhone, iPad and Mac.",
    ogImage: "https://sftsk.com/assets/share.png",
    ogImageAlt: "Lukas Hafner: designer and developer in Helsinki.",
  },
  brand: {
    name: "Lukas Hafner",
    markSrc: "/icon-192x192.png",
  },
  nav: [
    { label: "Work", href: "#work" },
    { label: "Lab", href: "#lab" },
    { label: "About", href: "#about" },
    { label: "Contact", href: "#contact" },
  ],
  hero: {
    title: "I design software, then actually build it.",
    intro:
      "Designer by training, developer by habit, in Helsinki since 2011. I co-founded SelectAM, advise companies through booncon and make small apps on the side.",
  },
  projects: [
    // Newest first: the homepage index lists them in this order.
    {
      slug: "nami",
      name: "Nami",
      years: "2026",
      role: "Design and development",
      status: "In TestFlight",
      tagline: "Your recipes, as a cookbook.",
      description: [
        "A recipe app for iPhone, iPad and Mac that keeps recipes in cookbooks on a shelf instead of in a feed. Every recipe is a page: a photo, the ingredients beside the steps, serif type, and a two-page spread when the screen is wide enough.",
        "Recipes come in from a link, a photo of a cookbook page or a handwritten card, or a recipe file from another app. Cookbooks sync through iCloud, and you can share a whole one with the people you cook with.",
        "The clever bits run on the device with Apple Intelligence. “What should I cook?” suggests something from your own recipes, and Tidy Up turns a messy recipe into a clean one, showing you the proposal before anything changes. There's no server, so nothing leaves your devices except through your own iCloud.",
      ],
      stack: ["SwiftUI", "SwiftData", "CloudKit", "Foundation Models", "Swift Testing"],
    },
    {
      slug: "shady",
      name: "Shady",
      years: "2026",
      role: "Design and development",
      status: "In TestFlight",
      tagline: "Turn the sculpture until its shadow makes the shape.",
      description: [
        "A puzzle game about shadows. You turn an abstract sculpture in front of a lamp until its shadow matches a silhouette, but while you play you only see a faint trace of that shadow. When it clicks, the camera glides into the lamp's eye and swings out to show sculpture, light and shadow together.",
        "There are 21 levels in three chapters, one per lamp: a studio light, a flashlight and a bare bulb. Each sculpture is carved from its silhouette by a seeded generator, so the pieces only line up when they face the light. Endless mode keeps going with random shapes against the clock.",
        "The music is synthesized in the app, one loop per lamp. Apple frameworks only, no packages.",
      ],
      stack: ["SwiftUI", "SceneKit", "AVFoundation"],
    },
    {
      slug: "ambiance",
      name: "Ambiance",
      years: "2026",
      role: "Design and development",
      status: "In TestFlight",
      tagline: "Generative music that listens to the room.",
      description: [
        "Ambiance plays generative music that changes with where you are. The mic listens to the surroundings, and the music blends between three styles: Drift (calm), Bloom (bright, daytime) and Noir (gritty, neon at night).",
        "It can also sample the room itself, cutting short slices of found sound into the mix. It never cuts while it hears voices or a crowd, and each slice is deleted as soon as it's loaded.",
        "Everything is Apple frameworks: SoundAnalysis to tell what the mic hears, AVFAudio and AudioToolbox to play, Accelerate for the signal work.",
      ],
      stack: ["SwiftUI", "AVFAudio", "AudioToolbox", "SoundAnalysis", "Accelerate"],
    },
    {
      slug: "timmy",
      name: "Timmy!",
      years: "2026",
      role: "Design and development",
      status: "In TestFlight",
      tagline: "A time tracker that lives in the Mac menu bar.",
      description: [
        "Time tracking for client work: a menu-bar app on the Mac and an app for iPhone and iPad, built from one target. Start a timer, take meeting notes, then turn the hours into billing and reports.",
        "Projects can be shared with other people through iCloud. Meeting notes sync live while several people type, and Apple Intelligence summarises them on the device.",
        "No account and no server: the data sits in Core Data with CloudKit, in your private and shared iCloud stores.",
      ],
      stack: ["SwiftUI", "Core Data", "CloudKit", "Automerge", "Foundation Models"],
    },
    {
      slug: "torggler-pim",
      name: "Torggler PIM",
      years: "2026",
      role: "Advisor, design and development",
      status: "Client",
      tagline: "Product information system and AI agent for Torggler.",
      description: [
        "Torggler's product data lived in its WordPress site. This replaces it: one place for products, variants and technical data, with a publish status per market, and translations from Italian that a model drafts and a person reviews.",
        "Each market gets its own technical datasheet, printed to PDF from the same page you see in the browser, and a 3D preview of the packaging that lists what the print brief is still missing. Excel exports and full catalogues run as background workflows.",
        "Agents connect through an MCP server and sign in as their own user, so each one gets exactly that user's role and markets: a translator agent only touches texts in its languages, a customer-facing one only reads published data. The Torggler Sales assistant uses the read-only side.",
        "The same data model is built twice, in Sanity and in Payload, to compare per-market publishing, per-language roles, agent access and cost with the people who'll use it. It's a working proof of concept, not live yet.",
      ],
      stack: ["Payload CMS", "Sanity", "Next.js", "Postgres", "three.js", "Headless Chromium", "MCP", "eve"],
      links: [{ label: "torggler.com", href: "https://www.torggler.com", external: true }],
    },
    {
      slug: "torggler-sales",
      name: "Torggler Sales",
      years: "2025–now",
      role: "Advisor, design and development",
      status: "Client",
      tagline: "The sales workspace for Torggler's reps and back office.",
      description: [
        "An internal sales app for Torggler. Sales reps, area managers and the back office see customers, orders, prices and documents straight from the ERP (Microsoft Dynamics 365 Business Central), each filtered to what their role may see.",
        "Requests such as new customers, discounts or shipping questions go through configurable approval flows, with notifications by email and web push. Sign-in is by passkey or magic link, and the whole interface runs in German, Italian and English.",
        "A built-in assistant answers product questions from the Torggler PIM, takes voice input and can put together a presentation.",
        "I've built it mostly on my own since December 2025, about 1,400 commits so far, as part of my advisory role at Torggler since 2016.",
      ],
      stack: [
        "Next.js",
        "TypeScript",
        "Postgres",
        "Drizzle",
        "Better Auth",
        "Business Central API",
        "Vercel Workflow",
        "AI SDK",
      ],
      links: [{ label: "torggler.com", href: "https://www.torggler.com", external: true }],
    },
    {
      slug: "selectam",
      name: "SelectAM",
      years: "2020–now",
      role: "Co-founder, product and development",
      status: "Live",
      tagline: "Finds the parts in an inventory that are worth 3D printing.",
      description: [
        "Industrial companies sit on thousands of spare parts. Some of them would be cheaper or quicker to make with additive manufacturing, but nobody has time to check them one by one. SelectAM checks them in bulk.",
        "You upload a parts list, drawings or 3D models. The app reads what it can, fills the gaps with AI, screens each part against industrial AM machines and materials, and turns the promising ones into business cases with costs, lead times and a make-or-buy comparison.",
        "I co-founded the company in 2020 and have written most of the web app since: the import, the estimation engine that runs in web workers, and the 3D viewer for STEP and 3MF files.",
      ],
      stack: ["Next.js", "TypeScript", "three.js", "Web Workers", "MongoDB", "Sanity", "AI SDK"],
      links: [
        { label: "selectam.io", href: "https://www.selectam.io", external: true },
        { label: "app.selectam.io", href: "https://app.selectam.io", external: true },
      ],
    },
    {
      slug: "tiny-tin-box",
      name: "Tiny Tin Box",
      years: "2015–now",
      role: "Development",
      status: "In TestFlight",
      tagline: "Narrated picture books for kids, in English, German and Finnish.",
      description: [
        "Tiny Tin Box is the label for my children's book apps. Tiny Rhyme Box has four animated, narrated poems, written by Marion Tappeiner and illustrated by Alenka Kramer. It first shipped in 2018 as a Phaser web app wrapped for iOS.",
        "In 2026 I rewrote it natively in SwiftUI and SpriteKit, with each word highlighted as the narrator reads it, and rebuilt Elliott & Dodo, a 12-page book from 2015/16 that never made it to the App Store.",
        "Text placement is worked out per screen so the words land on open sky or grass instead of on top of a character, and the characters react when you tap them.",
      ],
      stack: ["SwiftUI", "SpriteKit", "Phaser", "Capacitor"],
    },
  ],
  lab: [
    {
      name: "ha-boneco-smart",
      href: "https://github.com/sftsk/ha-boneco-smart",
      summary: "Home Assistant integration for the BONECO H700 humidifier over local Wi-Fi. No cloud, installs through HACS.",
    },
    {
      name: "dashy",
      href: "https://github.com/sftsk/ha-dashy",
      summary: "A light Home Assistant wall panel for weak tablets. It shows the new state before Home Assistant confirms it.",
    },
    {
      name: "Labelator",
      href: "https://labelator.sftsk.com",
      summary: "Beer label generator for print and e-ink. For the home brew.",
    },
    {
      name: "Wardrobe",
      summary: "An offline Android app to catalogue clothes and mix outfits, with mannequin pictures from Gemini.",
    },
    {
      name: "bits & pieces",
      href: "https://bitsandpieces.fm",
      summary: "booncon's podcast from 2015–2016, rebuilt as a static archive with its own RSS feed.",
    },
    {
      name: "booncon.com",
      href: "https://booncon.com",
      summary: "My consultancy's site. Same stack as this one.",
    },
    {
      name: "Birthday quiz shows",
      summary: "Two game-show quizzes I built for birthday parties. The questions load from JSON, so the next one is quick.",
    },
  ],
  // ponytail: years marked "est." are guesses; the old pages carry no dates.
  archive: [
    { name: "Z610i themes", year: 2007, summary: "Phone themes for Sony Ericsson", href: "/archive/z610i-themes.html" }, // est.
    { name: "iGoogle sleek_dark", year: 2009, summary: "iGoogle theme, a million users", href: "/archive/igoogle-sleek-dark.html" }, // est.
    { name: "FillMyScreen", year: 2009, summary: "Flash site with a pin board", href: "/archive/fillmyscreen.html" }, // est.
    { name: "Dali Server UI", year: 2010, summary: "Lighting control for touch panels", href: "/archive/dali-server-ui.html" }, // est.
    { name: "Hypercube", year: 2010, summary: "Animation projected onto a cube", href: "/archive/hypercube.html" }, // est.
    { name: "it.Tastes", year: 2010, summary: "Tongue-shaped spoon that measures salt", href: "/archive/it-tastes.html" }, // est.
    { name: "Lyricalizer", year: 2010, summary: "Interactive lyrics, moved by the mouse", href: "/archive/lyricalizer.html" },
    { name: "maakeeFTR Light", year: 2010, summary: "A typeface, capitals only", href: "/archive/maakeeftr-light.html" },
    { name: "Lokale Kinospots", year: 2010, summary: "Three cinema spots for a local portal", href: "/archive/lokale-kinospots.html" },
    { name: "Skype Plain Modern", year: 2011, summary: "Chat style for a Skype competition", href: "/archive/skype-plain-modern.html" },
    { name: "Facebook freedom", year: 2011, summary: "Safari extension against Facebook habits", href: "/archive/facebook-freedom.html" },
    { name: "ofc", year: 2011, summary: "Quiz game from a 48-hour hackathon", href: "/archive/ofc.html" },
  ],
  about: {
    name: "Lukas Jakob Hafner",
    location: "Helsinki, Finland",
    imageAlt: "Portrait of Lukas Hafner",
    lead: "I'm Lukas, a designer who ended up writing most of the code. Tinkerer at heart.",
    body: [
      "I studied design at the Free University of Bolzano and moved to Helsinki in 2011, where I started booncon with two friends. Since then I've co-founded a digital agency, booncon PIXELS (now Valve), and an industrial tech company, SelectAM, and advised companies through long transformations.",
      "What I like most is the step where a plan turns into something people use every day, and I'm happy to write the code for it. Lately that means a lot of AI and automation, and a few apps of my own.",
      "Away from the screen you'll find me trying new gadgets, throwing a frisbee or brewing the next batch of beer.",
    ],
    timeline: [
      { years: "2007–2011", title: "Design studies, Free University of Bolzano" },
      { years: "2011", title: "Moved to Helsinki, started booncon" },
      { years: "2014", title: "Co-founded booncon PIXELS, now Valve" },
      { years: "2016–now", title: "Advisor to Torggler" },
      { years: "2020–now", title: "Co-founder, SelectAM" },
    ],
  },
  contact: {
    title: "Say hi",
    summary: "About work, a side project or a second opinion on one. Email works best.",
    email: {
      label: "luki@maakee.me",
      href: "mailto:luki@maakee.me",
    },
    github: {
      label: "GitHub",
      href: "https://github.com/sftsk",
      external: true,
    },
    linkedin: {
      label: "LinkedIn",
      // TODO(Lukas): check. Taken from the 2011 contact page (at.linkedin.com/in/saftsaak).
      href: "https://www.linkedin.com/in/saftsaak/",
      external: true,
    },
  },
  plausible: {
    domain: "sftsk.com",
  },
};

export const personJsonLd = {
  "@context": "https://schema.org",
  "@type": "Person",
  name: site.about.name,
  description: site.meta.defaultDescription,
  url: site.meta.url,
  image: `${site.meta.url}/assets/lukas.jpg`,
  jobTitle: "Designer and developer",
  email: site.contact.email.label,
  address: {
    "@type": "PostalAddress",
    addressLocality: "Helsinki",
    addressCountry: "FI",
  },
  alumniOf: {
    "@type": "CollegeOrUniversity",
    name: "Free University of Bolzano",
  },
  worksFor: [
    { "@type": "Organization", name: "SelectAM", url: "https://www.selectam.io" },
    { "@type": "Organization", name: "booncon", url: "https://booncon.com" },
  ],
  sameAs: [site.contact.github.href, site.contact.linkedin.href],
};
