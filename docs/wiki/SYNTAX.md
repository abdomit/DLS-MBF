# Wiki Syntax and Formatting Guidelines

This document defines the rules to follow when creating or modifying wiki pages in the MBF-DLS documentation.

The main objective is to ensure that the documentation remains compatible with both **GitHub and GitLab wikis**, without requiring platform-specific modifications.

## 1. File Organisation

Follow these rules when creating or organising wiki files:

- **Markdown files:** All `.md` files must be located at the root of the wiki repository.
- **File names:** File names must not contain spaces. Use hyphens (`-`) to separate words when necessary.

Examples:

```text
wiki/
├── _Sidebar.md
├── home.md
├── Installation.md
├── Multi-Bunch-Feedback.md
├── images/
│   ├── system-overview.png
│   ├── architecture.pdf
│   └── example-data.csv
└── ...
```
## 2. Links

Use the standard Markdown link syntax for all links:

```markdown
[Link text](target)
```

### 2.1. Links to wiki pages

When linking to another wiki page, **do not include the `.md` extension** in the link target.

Omitting the extension ensures that the link opens the rendered wiki page rather than displaying the raw Markdown source.

Example:

```markdown
See the [Installation](Installation) page for instructions.
```

**Incorrect:**

```markdown
See the [Installation](Installation.md) page for instructions.
```

### 2.2. Links to external websites

Use the full URL as the link target.

Example:

```markdown
See the [Git documentation](https://git-scm.com/doc) for more information.
```

### 2.3. Links to downloadable attachments

Links to downloadable files must follow a consistent format that includes a download icon and the file name.

Use the following syntax:

```markdown
[`📥 file.pdf`](files/file.pdf)
```

Unlike wiki page links, attachment links must include the file name and its extension.

The link target must point to the file in the `files/` directory.


## 3. Mathematical Formulas

Mathematical formulas can be included either inline or as separate blocks.

### 3.1. Inline formulas

Use single dollar signs (`$`) to delimit an inline formula.

Example:

```markdown
The relativistic energy is given by $E = mc^2$.
```

Result:

The relativistic energy is given by $E = mc^2$.

### 3.2. Block formulas

Use double dollar signs (`$$`) to delimit a formula displayed as a separate block.

Example:

```markdown
$$
E = mc^2
$$
```

Block formulas should be separated from surrounding text by blank lines.

**Compatibility note:** Mathematical rendering may differ between GitHub and GitLab. Verify that formulas display correctly on both platforms.

## 4. Admonition Blocks

Admonition blocks can be used to highlight important information, recommendations, warnings, or potential risks.

The following block types are permitted:

- `[!note]`
- `[!tip]`
- `[!important]`
- `[!warning]`
- `[!caution]`

### Examples

#### Note

```markdown
> [!note]
> This parameter is optional.
```

Result:

> [!note]
> This parameter is optional.

#### Tip

```markdown
> [!tip]
> Use a relative link when referencing another wiki page.
```

Result:

> [!tip]
> Use a relative link when referencing another wiki page.

#### Important

```markdown
> [!important]
> Update the manually maintained table of contents when adding a new page.
```

Result:

> [!important]
> Update the manually maintained table of contents when adding a new page.

#### Warning

```markdown
> [!warning]
> Changing this parameter may affect the system configuration.
```

Result:

> [!warning]
> Changing this parameter may affect the system configuration.

#### Caution

```markdown
> [!caution]
> Verify the configuration before applying changes to a running system.
```

Result:

> [!caution]
> Verify the configuration before applying changes to a running system.

## 5. Compatibility Principle

The primary requirement is that the same wiki content must be usable on both GitHub and GitLab without modification.

When introducing new syntax or formatting, verify its compatibility with both platforms before using it throughout the documentation.

If a feature behaves differently between the two platforms, prefer a simpler alternative that produces an acceptable result on both.
