---
hide:
  - navigation
  - toc
---

<div style="text-align: center; padding: 3em 1em; background: linear-gradient(135deg, #667eea 0%, #764ba2 100%); border-radius: 20px; margin: -2em -2em 3em -2em; color: white;">
  <h1 style="font-size: 3.5em; font-weight: 900; margin-bottom: 0.3em; text-shadow: 0 2px 10px rgba(0,0,0,0.2);">:wave: Welcome to Metrio</h1>
  <p style="font-size: 1.4em; margin-bottom: 2em; opacity: 0.95;">Your comprehensive knowledge center for sustainability management</p>

  <div style="background: white; border-radius: 50px; padding: 0.8em 1.5em; max-width: 600px; margin: 0 auto; box-shadow: 0 10px 40px rgba(0,0,0,0.2); display: flex; align-items: center; gap: 1em;">
    <svg style="width: 24px; height: 24px; fill: #667eea;" viewBox="0 0 24 24"><path d="M9.5,3A6.5,6.5 0 0,1 16,9.5C16,11.11 15.41,12.59 14.44,13.73L14.71,14H15.5L20.5,19L19,20.5L14,15.5V14.71L13.73,14.44C12.59,15.41 11.11,16 9.5,16A6.5,6.5 0 0,1 3,9.5A6.5,6.5 0 0,1 9.5,3M9.5,5C7,5 5,7 5,9.5C5,12 7,14 9.5,14C12,14 14,12 14,9.5C14,7 12,5 9.5,5Z"/></svg>
    <input type="search" placeholder="Search documentation..." style="flex: 1; border: none; outline: none; font-size: 1.1em; color: #333; background: transparent;" id="search-input" />
    <kbd style="background: #f3f4f6; color: #666; padding: 0.3em 0.6em; border-radius: 5px; font-size: 0.85em; border: 1px solid #d1d5db;">/</kbd>
  </div>

  <p style="margin-top: 1.5em; font-size: 0.95em; opacity: 0.8;">💡 Press <strong>/</strong> to search • Browse categories below</p>
</div>

<script>
  // Focus search on keyboard shortcut
  document.addEventListener('keydown', function(e) {
    if (e.key === '/' && !e.ctrlKey && !e.metaKey) {
      e.preventDefault();
      document.querySelector('.md-search__input').focus();
    }
  });

  // Link custom input to Material search
  document.addEventListener('DOMContentLoaded', function() {
    const customInput = document.getElementById('search-input');
    const materialInput = document.querySelector('.md-search__input');
    if (customInput && materialInput) {
      customInput.addEventListener('focus', () => materialInput.focus());
      customInput.addEventListener('input', (e) => {
        materialInput.value = e.target.value;
        materialInput.dispatchEvent(new Event('input', { bubbles: true }));
      });
    }
  });
</script>

## :books: Browse Documentation

<div class="grid cards" markdown>

-   :rocket: __Getting Started__

    ---

    Learn the basics of Metrio and get your workspace set up

    [:octicons-arrow-right-24: Introduction to Metrio](Getting Started/34416209192475-Introduction-to-Metrio.md)

    [:octicons-arrow-right-24: User Management](Getting Started/36977854040219-User-Management.md)

-   :seedling: __Carbon Accounting__

    ---

    Track and manage your carbon emissions across all scopes

    [:octicons-arrow-right-24: Introduction to CAM](Carbon Accounting & Management/31940281264795-Introduction-to-CAM-Tool.md)

    [:octicons-arrow-right-24: Scope 1, 2 & 3](Carbon Accounting & Management/31940571128731-Scope-1.md)

-   :material-database: __Collect Data__

    ---

    Manage data sources and complete sustainability tasks

    [:octicons-arrow-right-24: Data Sources Guide](Collect Data/37826075519003-Introduction-to-Data-Sources-and-List-Manager.md)

    [:octicons-arrow-right-24: Complete Tasks](Collect Data/34416048301211-Complete-Tasks.md)
    
    [:octicons-arrow-right-24: REST API Export](Collect Data/32985480949531-Exporting-Data-Using-Nasdaq-Metrio-REST-API.md)
    [:octicons-arrow-right-24: Simple Metrics](Measure Your Impact/29498125748507-Simple-Metrics.md)

-   :material-file-document: __Report & Communicate__

    ---

    Create and share professional sustainability reports

    [:octicons-arrow-right-24: Publisher Guide](Report & Communicate/34947326402075-Introduction-to-Publisher.md)

    [:octicons-arrow-right-24: Create Reports](Report & Communicate/29100299556635-Create-a-Report-in-Publisher.md)

-   :material-lightbulb: __Disclose Results__

    ---

    Share your sustainability achievements and compliance

    [:octicons-arrow-right-24: Quick Start](Disclose Your Results/29099128214811-Quick-Start-Guide-for-Administrators.md)

    [:octicons-arrow-right-24: FAQs](Disclose Your Results/29161248731419-FAQs.md)

</div>

---

## :sparkles: Latest Updates

!!! tip "2025 Roadmap Available"
    Check out our [2025 Roadmap](Release Notes/33699448650523-2025-Roadmap.md) to see what's coming next!

!!! info "Recent Release"
    View the [latest release notes](Release Notes/31272098764315--23-11-24-4-7-Release-Notes.md) for new features and improvements.

---

<div style="background: #f3f6fa; border-radius: 12px; padding: 2em 1.5em; margin: 2em 0; text-align: center; color: #434f61;">
  <strong>Need more help?</strong> Visit our <a href="https://support.example.com" style="color: #0092bc; font-weight: 600;">Support Center</a> or <a href="mailto:support@example.com" style="color: #0092bc; font-weight: 600;">contact us</a>.
</div>
