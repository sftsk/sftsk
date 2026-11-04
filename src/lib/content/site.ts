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
  /** URL segment: /archive/<slug>/. Images live in src/lib/assets/archive/<slug>/, videos in static/archive/<slug>/. */
  slug: string;
  name: string;
  year: number;
  summary: string;
  description: string[];
  /** Paths under static/, with an optional poster.jpg beside them. */
  videos?: string[];
  links?: ActionLink[];
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
      name: "Nami Nami",
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
      slug: "formzeit",
      name: "formzeit",
      years: "2026",
      role: "Design and development",
      status: "In TestFlight",
      tagline: "Turn the hidden sculpture until its shadow makes the shape.",
      description: [
        "A shadow puzzle game. A hidden sculpture of slabs, spikes and decoys stands in front of a lamp. You drag to turn it, or twist with two fingers, until its flat shadow on the wall matches a silhouette. You don't see the sculpture itself until it's solved.",
        "There are 21 levels in three chapters, one per lamp, and each lamp gives away less: the studio light casts a crisp shadow, the flashlight's fades outside its beam and the bare bulb's is soft-edged. Later levels split the sculpture into piles that you turn one at a time.",
        "Stars reward speed and hints cost a star. When the shadow clicks, a 3D reveal fades in from the lamp's point of view and swings out to show lamp, sculpture and shadow together. There's a tutorial and an endless mode against the clock, and the music is synthesized in the app.",
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
      role: "Co-founder and CTO",
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
      slug: "tiny-rhyme-box",
      name: "Tiny Rhyme Box",
      years: "2018–now",
      role: "Development",
      status: "In TestFlight",
      tagline: "Four narrated, animated poems for kids, in English, German and Finnish.",
      description: [
        "A picture-book app for kids with four animated poems, each read aloud: Danny, Olga, Irwin and Suzy. The poems are by Marion Tappeiner and the illustrations by Alenka Kramer.",
        "It first shipped in 2019 under Tiny Tin Box, my label for children's apps: a Phaser web app wrapped for iOS, first with Cordova and later with Capacitor.",
        "In 2026 I rewrote it natively in SwiftUI and SpriteKit, with no third-party code. The narration highlights each line as it's read.",
      ],
      stack: ["SwiftUI", "SpriteKit", "Phaser", "Capacitor"],
    },
    {
      slug: "booncon",
      name: "booncon",
      years: "2011–now",
      role: "Founder",
      status: "Live",
      tagline: "AI and automation consulting in Helsinki.",
      description: [
        "booncon is my consultancy. I help companies find where AI and automation actually save time, then build it with them: strategy, workflows, systems and data, and hands-on follow-through.",
        "I started it in 2011 with two friends. Through booncon I've co-founded a digital agency, booncon PIXELS (now Valve), and an industrial tech company, SelectAM, and advised Torggler since 2016.",
      ],
      stack: [],
      links: [{ label: "booncon.com", href: "https://booncon.com", external: true }],
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
      name: "bits & pieces",
      href: "https://bitsandpieces.fm",
      summary: "booncon's podcast from 2015–2016, rebuilt as a static archive with its own RSS feed.",
    },
  ],
  // Newest first. ponytail: years marked "est." are guesses; the old pages carry no dates.
  archive: [
    {
      slug: "ofc",
      name: "ofc",
      year: 2011,
      summary: "Quiz game from a 48-hour hackathon",
      description: [
        "An interface draft for a quiz game, made in 48 hours at a hackathon run by Bonnier Publications. The look matches Olivia, Bonnier's women's magazine.",
        "In that time we got it running as demo apps on Android and Windows Phone 7.",
      ],
    },
    {
      slug: "facebook-freedom",
      name: "Facebook freedom",
      year: 2011,
      summary: "Safari extension against Facebook habits",
      description: [
        "A Safari extension for people hooked on Facebook. Open Facebook and freedom covers it with a blue screen that tells you how long it's been since your last visit. To get in anyway, you have to click a button.",
      ],
    },
    {
      slug: "skype-plain-modern",
      name: "Skype Plain Modern",
      year: 2011,
      summary: "Chat style for a Skype competition",
      description: [
        "A chat style for Skype, entered in the Skype for Mac design competition. I kept it as plain and clean as possible, with a neat, modern touch.",
      ],
    },
    {
      slug: "lokale-kinospots",
      name: "Lokale Kinospots",
      year: 2010,
      summary: "Three cinema spots for a local portal",
      description: ["As a team we wrote, filmed and edited a series of three spots for a local web portal."],
      videos: ["/archive/lokale-kinospots/1.mp4", "/archive/lokale-kinospots/2.mp4", "/archive/lokale-kinospots/3.mp4"],
    },
    {
      slug: "maakeeftr-light",
      name: "maakeeFTR Light",
      year: 2010,
      summary: "A typeface, capitals only",
      description: [
        "A typeface I drew for a typography course at university. It only has capitals, and the kerning isn't perfect. Use it for whatever you like.",
      ],
      links: [{ label: "Download the font", href: "/archive/maakeeftr-light/maakeeFTR-Light.otf" }],
    },
    {
      slug: "lyricalizer",
      name: "Lyricalizer",
      year: 2010,
      summary: "Interactive lyrics, moved by the mouse",
      description: [
        "Software that shows a song's lyrics in an interactive way: move the mouse while the song plays and the words change how they look.",
        "It ran as a Java applet, which browsers no longer support, so these screenshots are what's left.",
      ],
    },
    {
      slug: "it-tastes",
      name: "it.Tastes",
      year: 2010, // est.
      summary: "Tongue-shaped spoon that measures salt",
      description: [
        "A kitchen tool that measures salt: a spoon shaped like a tongue. Dip it into any dish and it shows how salty it is, so the cook gets the amount right in a simple, playful way.",
      ],
    },
    {
      slug: "hypercube",
      name: "Hypercube",
      year: 2010, // est.
      summary: "Animation projected onto a cube",
      description: ["An animation of a pattern evolving, projected onto a cube so it could play with all three dimensions."],
      videos: ["/archive/hypercube/1.mp4"],
    },
    {
      slug: "dali-server-ui",
      name: "Dali Server UI",
      year: 2010, // est.
      summary: "Lighting control for touch panels",
      description: [
        "Concept and design of an interface for controlling a lighting system, from my time as an interface designer at Lunatone in Vienna. It was made for a proprietary touch panel and later ported to the iPad.",
      ],
    },
    {
      slug: "fillmyscreen",
      name: "FillMyScreen",
      year: 2009, // est.
      summary: "Flash site with a pin board",
      description: [
        "A Flash website for a university project. Its pin board let you click anywhere to pin pictures onto it.",
        "Browsers no longer run Flash, so these screenshots are what's left.",
      ],
    },
    {
      slug: "igoogle-sleek-dark",
      name: "iGoogle sleek_dark",
      year: 2009, // est.
      summary: "iGoogle theme, a million users",
      description: [
        "A free theme for iGoogle, Google's customisable start page, made in my spare time.",
        "To my surprise it took off: at its peak more than a million people used it, until Google shut iGoogle down in 2013.",
      ],
    },
    {
      slug: "z610i-themes",
      name: "Z610i themes",
      year: 2007, // est.
      summary: "Phone themes for Sony Ericsson",
      description: [
        "Four themes for the Sony Ericsson Z610i: one inspired by Mac OS X, one by the first iPhone's interface.",
      ],
    },
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
      { years: "2006–2010", title: "Camera assistant and motion designer, AudioVision" },
      { years: "2007–2011", title: "Design studies, Free University of Bolzano" },
      { years: "2009–2011", title: "Interface designer, Lunatone, Vienna" },
      { years: "2011", title: "Moved to Helsinki, started booncon" },
      { years: "2014", title: "Co-founded booncon PIXELS, now Valve" },
      { years: "2016–now", title: "Advisor to Torggler" },
      { years: "2020–now", title: "Co-founder and CTO, SelectAM" },
    ],
  },
  contact: {
    title: "Say hi",
    summary: "About work, a side project or a second opinion on one. Email works best.",
    email: {
      label: "hi@sftsk.com",
      href: "mailto:hi@sftsk.com",
    },
    github: {
      label: "GitHub",
      href: "https://github.com/sftsk",
      external: true,
    },
    linkedin: {
      label: "LinkedIn",
      href: "https://www.linkedin.com/in/sftsk/",
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
