# VTStylizer

VTStylizer module is designed to abstract away the need to write out long ANSI Escape Sequences when tryng to add special formatting to text-based Output in PowerShell. The Current Version of VTStylizer adds the '`$VTStyle`' Token Variable to the PowerShell Session. The '`$VTStyle`' Token comes equipped with *many* Modifier Attributes, or Properties, each corresponding with one of the available ANSI Text Formatting Options (Ex. Bold, Italics, Underline, Strikethrough, Flashing, and Hidden), as well as **all 256 ANSI Colors available for either Foreground and/or Background Colorization**! In order to incorporate Ansi Escape Sequences into your Text-Based Output within PowerShell using VTStylizer, simply add the Token associated with the desired effect to the String you wish to Output. For Example:

```powershell
Write-Output "$($VTStyle.Bold)$($VTStyle.F9)This text will be Red and Bold!$($VTStyle.R)"
# NOTE: the $VTStyle Token Modifier 'R' corresponds with the 'Reset' Sequence AKA'`e[0m'
```

## Getting started

Install VTStylizer from the [PowerShell Gallery](https://www.powershellgallery.com/) using `Install-Module`.

```powershell
Install-Module -Name VTStylizer -AllowPrerelease
```

## '$VTStyle' Tokens and Modifiers

The '`$VTStyle`' Token Variable is the main, Base Token and has no noticeable effect. Referencing the Variable returns all available Token Modifiers, however, due to the manner in which the PSObject that makes up the backend is structured, doing so will return *well over 500 Values*, as you will not only see Text Special Formatting Values, but also Modifiers for all 256 ANSI Color Codes, once each, for Foreground and Background Color Variants. Adding a Command to return *just* the desired Token Modifiers and their respective effcts will come with the next Update! In the meantime, here are the available Modifiers as of the Current Prerelease Version:

**$VTStyle.R** - ANSI Reset Sequence. Resets all Effects.

**$VTStyle.Flash** - Flashing Text.

**$VTStyle.FlashOff** - Reset Flashing Text.

**$VTStyle.Bold** - Bold Text.

**$VTStyle.BoldOff** - Reset Bold Text.

**$VTStyle.Italic** - Italicized Text.

**$VTStyle.ItalicOff** - Reset Italicized Text.

**$VTStyle.Underline** - Underlined Text.

**$VTStyle.UnderlineOff** - Reset Underlined Text.

**$VTStyle.Strikethrough** - Strikethrough Text.

**$VTStyle.StrikethroughOff** - Reset Strikethrough Text.

**$VTStyle.Hidden** - Hide Text. (Alternates between Hidden and Visible when paired with Flash Modifier).

**$VTStyle.HiddenOff** - Reset Hide Text.


**$VTStyle.F** - Set Text Foreground Color. 'F' MUST be followed by a number between 0 and 255, with the number corresponding to ANSI Color Codes.

**$VTStyle.B** - Set Text Background Color. 'B' MUST be followed by a number between 0 and 255, with the number corresponding to ANSI Color Codes.

## '$VTStyle' Tokens and Modifiers (PLANNED)

**$VTStyle.Invert** - Invert Text Foreground and Background Colors.

**$VTStyle.InvertOff** - Reset Invert Effect.

## Planned Features

Future releases **will** see several feature updates, namely Cmdlets intended to be used in conjunction with '`$VTStyle`' Tokens, using 'Write-Host' as a foundational template, as well as '`ConvertFrom-VTStyleToken`' will take any '`$VTStyle`' Token as input, and Convert it to the raw Ansi Escape Sequence, which is what the Command will output. I also intend to add Extensibility and Customizability/Configurability Features, enabling the User to Extend VTStylizer By adding new, additional Tokens and Modifier Attributes, or even Customize and Configure existing Tokens (re-assigning Tokens to new values), and the ability to create a set of 'Favorites' Tokens, which will be similar to Aliases, but allowing the User to assign so many VTStyle Tokens as Favorites, which can be referenced with Tokens that will ideally be shorter and easier to type out than the default Tokens are, intended for 'Bookmarking' Favorite Color Combinations and such. This would also mean creating 'Grouped' or 'Aliased' Tokens, or combining multiple Ansi Effects into one Token, so that, say, '`$VTStyle.Combo01`' would apply Bold, Underline, Flashing, and give the text a Foreground Color of White, and a Background Color of Red.

## Legal and Licensing

VTStylizer is licensed under the [Apache License Version 2.0](http://www.apache.org/licenses/LICENSE-2.0.htm).

## Code of Conduct

This project has adopted the [Microsoft Open Source Code of Conduct](https://opensource.microsoft.com/codeofconduct/). For more information see the [Code of Conduct FAQ](https://opensource.microsoft.com/codeofconduct/faq/) or contact [opencode@microsoft.com](mailto:opencode@microsoft.com) with any additional questions or comments.
