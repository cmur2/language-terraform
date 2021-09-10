## 0.0.0 - First Release
* Experimental language support for Terraform.io configurations

## 0.1.0 - Second Release
* Add support for nested provisioning statements

## 0.2.0 - Third Release
* Better names for capture groups

## 0.3.0 - Fourth Release
* Fix for comments (thanks frntn)

## 0.4.0 - Fifth Release
* Fix for "${a.b}" style strings. (thanks sbward)

## 0.5.0
* Fix for nested interpolated strings not parsing correctly
* Fix for comments not parsing correctly inside blocks

## 0.6.0 - Thanks Ryan Graham (rmg)
* multi-line comments
* booleans
* number literals, including supported suffixes
* syntax highlighting inside string interpolations
* functions
* variables
* literals
* support for heredoc strings
* embedded syntax hightlighting based on token suffix (<<CONFIG_JSON, <<CONFIG_YAML, ...)
* string interpolation highlighting inside the embedded language (this one is kind of magical)

## 0.7.0 - Thanks John Engelman (johnrengelman) and Bo Tranberg (tranberg)
* Fix for nested interpolations.
* New snippets

## 0.7.1 - Thanks Bo Tranberg
* Small fix for correct resource highlighting

## 0.7.2
* Small fix adding `//` as line comment

## 0.7.3
* Adds Indent Rules (thanks itiut)

## 0.7.4 - Thanks Bo Tranberg
* Allow dashes in resource names and handle curly braces in regex

## 0.7.5 - Thanks Jamie Lennox and Roberto Barbosa
* Adding ignore_changes. Ref: https://www.terraform.io/docs/configuration/resources.html#ignore_changes
* Added all types of variable and module, and provider/provider-aws and provisioner

## 0.8.0 - Thanks Ipswitch
* Adds new keyword snippets for better autocompletion

## 0.8.1 - Thanks Seth Chisamore
* Adds quick toggle line comments to bring more in line with Atom's other grammars.

## 0.8.2 - Maintainer change
* [Kyle](https://github.com/GiantToast) contacted [me](github.com/cmur2/) and we agreed to transfer the [Github repository](https://github.com/GiantToast/language-terraform) and [Atom package](https://atom.io/packages/language-terraform) so I can maintain it since Kyle [lacks the time to handle contributions](https://github.com/GiantToast/language-terraform/issues/42#issuecomment-615306342) - thanks for all our great work Kyle!

## 0.8.3
* Add support for multiple digits in regex curly braces [#31](https://github.com/cmur2/language-terraform/pull/31)
* Add additional function names and recognize data and local variable prefix [#32](https://github.com/cmur2/language-terraform/pull/32) and [#40](https://github.com/cmur2/language-terraform/pull/40)
* Add support for comments in multi-line lists [#36](https://github.com/cmur2/language-terraform/pull/36)

## 0.9.0
* Support most common Terraform 0.12 features and functions

## 0.9.1
* Add package keywords

## 0.9.2
* Add `null` as primitive literal like `true` and `false`

## 0.9.3
* Add support for [indented heredoc strings](https://www.terraform.io/docs/configuration/expressions.html#string-literals) - thanks [privatwolke](https://github.com/privatwolke)

## 0.9.4
* Recognize .hcl file extension of [terragrunt](https://terragrunt.gruntwork.io/) as Terraform grammar [#49](https://github.com/cmur2/language-terraform/pull/49) - thanks [MarianoRD](https://github.com/MarianoRD)

## 0.9.5
* Add belated changelog for 0.9.4
* Run `terraform fmt` on examples file

## 0.9.6
* Allow proper tokenizing of TODO-style comments in cooperation with language-todo

## 0.9.7
* Do not recognize `.hcl` file extension as Terraform grammar anymore as described in [#55](https://github.com/cmur2/language-terraform/issues/55): workarounds are installing `language-hcl` or [configure custom file type of `.hcl` as `source.terraform`](https://flight-manual.atom.io/faq/sections/how-do-i-make-atom-recognize-a-file-with-extension-x-as-language-y/)
