---
title: "Jekyll publishing tutorial"
permalink: /pubapis_jekyll.html
course: "Documenting REST APIs"
sidebar: docapis
weight: 7.91
section: publishingapis
path1: /publishingapis.html
---

Static site generators are a breed of website compilers that package up a group of files (usually written in Markdown) and make them into a fully deployable website. There are more than 350 different static site generators. You can browse them at [staticgen.com](http://www.staticgen.com/). The most popular static site generator (based on number of downloads, usage, and community) is [Jekyll](https://jekyllrb.com/), and it's the one I have the most experience with, so I'll be focusing on Jekyll here.

* TOC
{:toc}

## Jekyll

Jekyll is a Ruby-based static site generator, meaning it uses Ruby as the underlying programming language to compile the website. This site, my [blog](http://idratherbewriting.com), and the documentation for my past two jobs were created using Jekyll. With Jekyll, you can publish a fully functional tech comm website that includes content re-use, conditional filtering, variables, PDF output, and everything else you might need as a technical writer.

{% include random_ad.html %}

Here's a documentation theme that I developed for Jekyll:

<a href="http://idratherbewriting.com/documentation-theme-jekyll/" class="noExtIcon"><img src="images/jekylldocumentationtheme.png" alt="My Jekyll Documentation theme" /></a>

There isn't any kind of special API reference endpoint formatting here, but the platform is so flexible, you can do anything with it as long as you know HTML, CSS, and JavaScript (the fundamental language of the web). With a static site generator, you have a tool for building a full-fledged website using pretty much any style or JavaScript framework you want. With the Jekyll website, you can include complex navigation, content re-use, translation, PDF generation, and more.

## Static site generators give you a flexible web platform

Static site generators give you a lot of flexibility. They're a good choice if you need a lot of flexibility and control over your site. You're not just plugging into an existing API documentation framework or architecture. You define your own templates and structure things however you want.

With static site generators, you can do the following:

* Write in a text editor
* Create custom templates for documentation
* Use a revision control repository workflow
* Customize the look and feel of the output
* Insert JavaScript and other code directly on the page

## Developing content in Jekyll

One of the questions people ask about authoring content with static site generators is how you see the output and formatting given that you're working strictly in text. For example, how do you see images, links, lists, or other formatting if you're authoring in text?

When you're authoring a Jekyll site, you open up a preview server that continuously builds your site with each change you save. I open up my text editor on the left, and the auto-generating site on the right. On a third monitor, I usually put the Terminal window so I can see when a new build is done (it takes about 10 seconds for my doc sites).

<img src="images/writinginjekyll.png" alt="Writing in Jekyll" />

This setup works fairly well. Granted, I do have a Mac Thunderbolt 21-inch monitor, so it gives me more real estate. On a small screen, you might have to switch back and forth between screens to see the output.

Admittedly, the Markdown format is easy to use but also susceptible to error, especially if you have complicated list formatting. But for the majority of the time, writing in Markdown is a joy. You can focus on the content without getting wrapped up in tags. If you do need complex tags, anything you can write in HTML or JavaScript you can include on your page.

## Automating builds from Github

Let's do an example in publishing in [CloudCannon](https://cloudcannon.com/), "The Cloud CMS for Jekyll," using the Documentation Theme for Jekyll (the theme I built). You don't need to have a Windows machine to facilitate the building and publishing &mdash; you'll do that via CloudCannon and Github. This tutorial will show you how to plug into a robust hosting platform that reads content stored and managed on GitHub.

## Set up your doc theme on Github

1.  Go to the [Github page for the Documentation theme for Jekyll](https://github.com/tomjoht/documentation-theme-jekyll) and click **Fork** in the upper-right.

	When you fork a project, a copy of the project (using the same name) gets added to your own Github repository. You'll see the project at <code>https://github.com/{your github username}/documentation-theme-jekyll</code>.

	Sometimes people fork repositories to make changes and then propose pull requests of the fork to the original repo. Other times people fork repositories to create a starting point for a splinter project from the original. Github is all about social coding &mdash; one person's ending point is another person's starting point, and multiple projects can be merged into each other. You can [learn more about forking here](https://help.github.com/articles/fork-a-repo/).

2.  Sign up for a free account at [CloudCannon](https://cloudcannon.com).
3.  Once you sign in, click **Create Site** and then give the new site a name.
4.  While viewing your site, in the left sidebar, click **Settings**.  
6.  While still under Settings, click **File Syncing**, and then next to **Github**, click **Connect**. You may be taken to Github to authorize CloudCannon's access to your Github repository.
7.  When asked which repository to authorize, select the **Documentation theme for Jekyll** repository (the gh-pages branch), and then click **Connect**.
8.  In the left sidebar, click **Files**. You should see the files from the repo you synced from GitHub.
5.  Click **Settings**, select **Build**, and do the following:

    * Clear the **Minify and serve assets from CDN** check box.
    * Select **Use Experimental Build Server**.

    Then click **Update Build Details** at the bottom.

    In the upper-right corner, you'll see a small icon showing the build process. Click the rotating circle to see the build status.

    <img src="images/cloudcannonsitebuildstatus.png"/>

10. View your CloudCannon site at the preview URL in the upper-left corner.

	 <a href="http://doted-lily.cloudvent.net/" class="noExtIcon"><img src="images/cloudcannonpreviewurl.png" alt="Preview URL" /></a>

	It should look just like the [Documentation theme for Jekyll here](http://idratherbewriting.com/documentation-theme-jekyll).

  I have to say, the integration between CloudCannon and GitHub is pretty mind-blowing. Through CloudCannon, you can offload all the hassle of hosting and maintaining your website, but you aren't locked into the system in a proprietary way. Your content lives in a custom Jekyll theme on GitHub.

  CloudCannon automatically builds the site when you commit new updates to your GitHub repo, entirely removing the publishing and deployment step with a website. CloudCannon also provides additional features for authentication, metrics, suggested improvements, and more.

  The only drawback with CloudCannon is that your company must allow you to host documentation content on GitHub. Then of course CloudCannon charges a monthly fee (see their [pricing](https://cloudcannon.com/pricing/)). If you need to make a case for third-party hosting, I recommend doing so by analyzing the costs of internal hosting and maintenance.

## Make an update to your Github repo

Remember your Github files are syncing from Github to CloudCannon. Let's see that workflow in action.

1.  In your browser, go to your Github repository that you forked and make a change.

	  For example, browse to the index.md file, click the **Edit this file** button (pencil icon), make an update, and then commit the update.

2.  Return to CloudCannon and observe that your site automatically starts rebuilding. Wait until the build finishes, and then look for the change at the preview URL. The change should be reflected.

	You've now got a workflow that involves Github as the storage provider syncing to a Jekyll theme hosted on CloudCannon. You're publishing on the fly, based on commits to a repo. This is the essential characteristic of a [docs-as-code publishing workflow](http://127.0.0.1:4000/learnapidoc/pubapis_docs_as_code.html).

## Publish the endpoint in the Jekyll Aviator theme

Let's say you want to use a theme that provides ready-made templates for REST API documentation. Although my Jekyll documentation theme could work, it doesn't have templates coded for API endpoint reference documentation. In this activity, you'll publish the weatherdata endpoints that we worked on earlier; we'll use the [Aviator API documentation theme](https://github.com/CloudCannon/Aviator-Jekyll-Theme) by CloudCannon, which is designed for REST APIs.

<a href="https://github.com/CloudCannon/Aviator-Jekyll-Theme" class="noExtIcon" class="noExtIcon"><img src="images/aviatortheme.png" alt="CloudCannon Aviator theme" /></a>

### a. Fork the Jekyll Aviator theme, clone it, and open it in Atom

1.  Go to [Aviator API documentation theme](https://github.com/CloudCannon/Aviator-Jekyll-Theme) and click the **Fork** button in the upper-right. Confirm the GitHub account where you want to fork the project.

    <img src="images/github-fork-project.png" alt="Forking a GitHub project" />

    Instead of cloning the project, this time we're forking it. You clone a project when you want to regularly pull from and push to the same repo. But we don't own the Aviator repo, and we want to customize it with our own content. You fork a project when you want to make a copy of the project in another GitHub repo.

3.  After forking the project, go to the project in your repo and copy the Clone URI. Then clone the repo on your machine. The `git clone` command and URI will look something like this:

    ```bash
    git clone https://github.com/tomjoht/aviator-jekyll-template.git
    ```

    Only instead of `tomjoht`, you will see your own GitHub username.

2.  Download [Atom](https://atom.io/), install it, and open it.  
3.  Open the **aviator-jekyll-template** folder in Atom so you can see all the files in the sidebar.
4.  Go to [CloudCannon](https://cloudcannon.com/) and click **Create Site** to create a new site. Give it a name, such as "Aviator demo."
5.  Go to **Settings**, and then click **File Syncing**.
6.  Next to **GitHub**, click **Connect**, then next to **aviator-jekyll-template** repo, click **Connect Repo**. The files from the GitHub repo sync over to CloudCannon.
    In CloudCannon, in the upper-right corner, a green check icon indicates a successful build.
7.  Click the preview link in the upper-left and preview the built site.

### b. Add the weatherdata endpoint doc to the theme

1.  In Atom, browse to the **\_api** folder, duplicate the **books_add.md** file, and name the duplicated file **weatherdata.md**. Then open up weatherdata.md.

	  In every Jekyll page, there's some "frontmatter" at the top. The frontmatter section has three dashes before and after it.

	  The frontmatter is formatted in a syntax called YML. YML is similar to JSON but uses spaces and hyphens instead of curly braces. This makes it more human readable. (See [More About YAML](pubapis_yaml.html) for details.)

    The key-value pairs in the YAML frontmatter are entirely arbitrary and are designed here to suit the API doc theme the author created. If we were to look at the code in the theme, we'd see Liquid `for` loops that iterate over the YAML values and populate the content into a template. Jekyll will access these values and push this content into the template (which you can see by going to \_layouts/default.md). The author has separated the content from the format so that we don't have to manually wrap all the values in style tags.

2.  Replace the contents of weatherdata.md with the following content: [aviator-weather.txt](http://idratherbewriting.com/learnapidoc/assets/files/aviator-weather.txt).

    {: .note}
    Normally, you would build the Jekyll project locally to make sure it looks right. But since that's beyond the scope of this tutorial, we'll just commit it to GitHub and have CloudCannon build it.

3.  Then add the files to Git tracking, commit, and push to origin:

    ```bash
    # add all files to Git tracking
    git add .

    # commit the added files to Git's staging
    git commit -m "added weatherdata file"

    # push the files to origin
    git push
    ```

    CloudCannon is listening to changes in the repo and will immediately sync and build the project.

4.  In CloudCannon, click the preview URL in the upper-left corner and view the built site. The  built site should include the weatherdata endpoint and look as follows:

    <a href="http://tropical-jackal.cloudvent.net" class="noExtIcon"><img src="images/aviator-weatherdata-endpoint.png" /></a>

    You can view my site here: [http://tropical-jackal.cloudvent.net](http://tropical-jackal.cloudvent.net).

    Each time you commit changes to your repo, CloudCannon rebuilds the Jekyll files into the site that you see.

    {: .tip}
    If you don't want to use CloudCannon to build your site, you can also use [GitHub Pages](https://pages.github.com/) to achieve a similar result. GitHub Pages is also free.

## Doc Websites Using Jekyll

Here are some websites using Jekyll:

*  [Bootstrap](http://getbootstrap.com/)
*  [Beegit](http://help.beegit.com/)
*  [Stack Overflow blog](https://blog.stackoverflow.com/)
*  [RethinkDB](http://rethinkdb.com/docs/)
*  [Github docs](https://help.github.com/)
*  [Basekit](http://docs.basekit.com/)
*  [Jekyllrb docs](http://jekyllrb.com/docs/home/)
*  [SendGrid docs](https://sendgrid.com/docs)
*  [Atlassian Design](https://design.atlassian.com/)
*  [CloudCannon docs](https://docs.cloudcannon.com/)
*  [Wistia help center](http://wistia.com/support)
*  [Liquid (Shopify)](https://help.shopify.com/themes/liquid/basics)
*  [devo.ps documentation](http://docs.devo.ps/)
*  [healthcare.gov](http://www.healthcare.gov)
