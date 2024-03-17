import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';

class Accomplissement extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //
    return ListView(
      padding: EdgeInsets.only(left: 10, right: 10),
      children: [
        HtmlWidget("""<!doctype html>
<html>
  <head>
      <meta charset="utf-8">
      <meta name="description" content="">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <title>Scribbler - a codding landing page template for codrops</title>
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
      <link href="https://fonts.googleapis.com/css?family=Nunito+Sans:300,400,600,700,800,900" rel="stylesheet">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/highlight.js/9.12.0/styles/railscasts.min.css">
      <link rel="stylesheet" href="scribbler-global.css">
      <link rel="stylesheet" href="scribbler-landing.css">
      <link rel="author" href="humans.txt">
      <style>
      html, body {
  display: flex;
  flex-direction: column;
  min-height: 100vh;
}

/* layout */
.header {
  border-bottom: 1px solid var(--code-bg-color);
  grid-template-columns: 1fr 150px 60% 1fr;
}

.wrapper {
  display: flex;
  flex-grow: 1;
}

/* logo */
.logo {
  font-weight: 900;
  color: var(--primary-color);
  font-size: 1.4em;
  grid-column: 2;
}

.logo__thin {
  font-weight: 300;
}

/* menu */
.menu {
  grid-template-columns: 1fr 180px 60% 1fr;
}

.menu__item {
  padding: 1.5rem 1rem;
}

/* doc */
.doc__bg {
  position: fixed;
  top: 0;
  left: 0;
  bottom: 0;
  width: 28%;
  background-color: var(--bg-color);
  z-index: -1;
}

.doc__nav {
  flex-basis: 20%;
  font-weight: 200;
}

.doc__nav ul {
  list-style: none;
  padding-left: 0;
  line-height: 1.8;
}

.doc__nav ul.fixed {
  position: fixed;
  top: 2rem;
}

.doc__nav li:hover {
  color: var(--primary-color-light);
  cursor: pointer;
  transition: color .3s ease-in-out;
}

.doc__nav .selected {
  color: var(--accent-color);
  position: relative;
}

.doc__nav .selected:after {
  position: absolute;
  content: "";
  width: 1rem;
  height: 1rem;
  background-color: var(--accent-color);
  left: -1.5rem;
  top: 0.3rem;
}

.doc__content {
  flex-basis: 80%;
  padding: 0 0 5rem 1rem;
}

@media (max-width: 750px) {
  .wrapper {
    flex-direction: column;
  }
  .doc__content {
    padding-left: 0;
  }
  .doc__nav ul {
    border-bottom: 1px solid var(--code-bg-color);
    padding-bottom: 0.5rem;
  }
  .doc__nav ul.fixed {
    /* nutralized the fixed menu for mobile*/
    position: relative;
    top: 0;
  }
  .doc__nav li {
    display: inline-block;
    padding-right: 1rem;
  }
  .doc__nav .selected:after {
    display: none;
  }
}
      </style>
  </head>
  <body>
    <nav>
      <div class="logo"></div>
      <ul class="menu">
        <div class="menu__item toggle"><span></span></div>
        <li class="menu__item"><a href="doc.html" class="link link--dark"><i class="fa fa-book"></i> Documentation</a></li>
        <li class="menu__item"><a href="" class="link link--dark"><i class="fa fa-github"></i> Github</a></li>
      </ul>
    </nav>
    <div class="hero">
      <h1 class="hero__title">Scribbler</h1>
      <p class="hero__description">Take your markdown notes in terminal</p>
    </div>
    <div class="hero__terminal">
      <pre>
        <!-- Place your demo code here -->
        <code class="shell-session demo">hyperyolo ~ \$ </code>
      </pre>
    </div>
    <div class="wrapper">
      <div class="installation">
        <h3 class="section__title">Installation</h3>
        <div class="tab__container">
          <ul class="tab__menu">
            <li class="tab active" data-tab="mac">mac</li>
            <li class="tab" data-tab="linux">linux</li>
            <li class="tab" data-tab="win">win</li>
          </ul>
          <pre class="nohighlight code">
            <code class="tab__pane active mac">\$  brew install scribbler</code>
            <code class="tab__pane linux">\$  apt-get install scribbler</code>
            <code class="tab__pane win">\$  gem install scribbler</code>
          </pre>
        </div>
      </div>
      <div class="feature">
        <div class="feature__item">
          <h3 class="section__title">Fast & Light</h3>
          <p>Start writing your notes immediately in any terminal! No more time wasted on navigating and opening your text editor.</p>
        </div>
        <div class="feature__item">
          <h3 class="section__title">File Syncing</h3>
          <p>Save your file in Dropbox then you can access to it from anywhere.</p>
        </div>
        <div class="feature__item">
          <h3 class="section__title">Secure</h3>
          <p>Encrypt your notes optionally. No one can get to your secrets! </p>
        </div>
        <div class="feature__item">
          <h3 class="section__title">Configuration</h3>
          <p>Maintain all your settings in a single <span class="code code--inline">config.json</span> file. Never need to redo the setting every single time jotting down a note.</p>
        </div>
        <div class="feature__item">
          <h3 class="section__title">Highlightings</h3>
          <p>For better readability, scribbler has a clean, beautiful color scheme allow you to scan files fast.</p>
        </div>
        <div class="feature__item">
          <h3 class="section__title">Keybindings</h3>
          <p>You can expect common keybindings for scribbler. Customize <span class="code code--inline">bindings.json</span> for your own liking! </p>
        </div>
      </div>
      <div class="keybinding">
        <ul class="keybinding__detail">
          <h3 class="keybinding__title">Default Keybindings</h3>
          <li>Quit without saving <span class="keybinding__label">Ctrl+C</span></li>
          <li>Save <span class="keybinding__label">Cmd+S</span></li>
          <li>Save and Quit <span class="keybinding__label">Ctrl+D</span></li>
          <li>Undo <span class="keybinding__label">Cmd+Z</span></li>
        </ul>
        <ul class="keybinding__detail">
          <h3 class="keybinding__title">Markdown Keybindings</h3>
          <li><span class="keybinding__label">Ctrl+A</span> Insert Link Markdown</li>
          <li><span class="keybinding__label">Ctrl+I</span> Insert Image Markdown</li>
          <li><span class="keybinding__label">Ctrl+V</span> Insert YouTube Video</li>
          <li><span class="keybinding__label">Ctrl+T</span> Insert Table</li>
        </ul>
      </div>
      <div class="callout">
        <p>Read our documentation for advanced keybindings and customization</p>
        <a href="doc.html" class="button--primary">Documentation</a>
      </div>
    </div>
    <div class="changelog">
      <div class="wrapper">
        <h3 class="section__title">Changelog</h3>
        <div class="changelog__item">
          <div class="changelog__meta">
            <h4 class="changelog__title">v0.7</h4>
            <small class="changelog__date">10/12/2017</small>
          </div>
          <div class="changelog__detail">
            <ul>
              <li>Improving the writing workflow with better key bindings</li>
              <li>Design updates</li>
              <li>SSL Verification for web hooks</li>
              <li>Render Emoji</li>
            </ul>
          </div>
        </div>
        <div class="changelog__item">
          <div class="changelog__meta">
            <h4 class="changelog__title">v0.6</h4>
            <small class="changelog__date">7/30/2017</small>
          </div>
          <div class="changelog__detail">
            <ul>
              <li>Adding Unicode support</li>
              <li>Basic text highlighting</li>
              <li>Fresh Design</li>
            </ul>
          </div>
        </div>
        <div class="changelog__item">
          <div class="changelog__meta">
            <h4 class="changelog__title">v0.5</h4>
            <small class="changelog__date">5/10/2017</small>
          </div>
          <div class="changelog__detail">
            <ul>
              <li>Save default md file in new folders</li>
              <li>Ability to quick search on existing notes</li>
            </ul>
          </div>
        </div>
        <div class="changelog__callout">
          <a href="#" class="button--secondary">Checkout Full Log</a>
        </div>
      </div>
    </div>
    <footer class="footer">Scribbler is a free HTML template created exclusively for <a href="https://tympanus.net/codrops/" target="_blank" class="link link--light">Codrops</a>.</footer>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/highlight.js/9.12.0/highlight.min.js"></script>
    <script>hljs.initHighlightingOnLoad();</script>
    <script src="scribbler.js"></script>
  </body>
</html>""")
      ],
    );
  }
  //
}
