---
title: Hello World!
author: Nate-Wilkins
date: 2018-03-29T04:18:32.867336+00:00
---

<!-- excerpt -->
Hello reblog user!

Welcome to a newly generated
[reblog](https://github.com/Nate-Wilkins/reblog)!

In this post we'll set you up with everything you need to get started with your first post!
<!-- excerpt -->

## Getting Started

To create a new post run `reblog post <<title>>` from your blog directory while replacing
`<<title>>` to whatever title you'd like! I personally like `reblog post "Hello World!"`

This will create a new post file under `posts/<<today>>_<<title>>.md`. `<<today>>` is your local date time.

Voilà! You have created your first post!

## Editing

To edit your post just open up a post from `posts/<<post>>.md`.

Content in a post is entirely composed of markdown (by default [GFM](https://github.github.com/gfm/)).
That means that you can use any type of markdown syntax including code blocks, tables, and even [IAL](https://kramdown.gettalong.org/syntax.html#block-ials).

### Examples

__Code Block__

```go
package main

import "fmt"

func main() {
	defer fmt.Println("!")
	defer fmt.Printf("World")
	fmt.Printf("Hello, ")
}
```

__Table__

Language | REPL
:------- | :----:
Elixir   | iex
Haskell  | ghci
NodeJS   | node
{: .table .is-bordered .is-narrow}

__Inline Attribute List__

MyTag
{: .tag .is-dark}

---

Once you have the changes you want save, build, and deploy!

### More!

If you want to learn more about building/deploying see [reblog](https://github.com/Nate-Wilkins/reblog)
for more details.

If you need any help or have any issues with reblog feel free to post
a new issue at
[reblog/issues](https://github.com/Nate-Wilkins/sblog/issues)!
