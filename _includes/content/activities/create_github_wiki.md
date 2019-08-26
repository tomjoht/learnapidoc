{: .activity_subtitle}
## <i class="fa fa-user-circle"></i> Activity 8a: Create a GitHub wiki and publish content on a sample page
{% if page.permalink == "/workshop.html" %}{:.no_toc}{% endif %}

In this section, you will create a new GitHub repo and publish a sample file there.

1.  Create a GitHub account at [GitHub.com](http://github.com).
2.  Go to [GitHub](https://github.com) and sign in. After you're signed in, click the **+** button in the upper-right corner and select **New repository**.

    {% include course_image.html url="https://github.com/new" size="medium" filename="newrepositorygithub" ext_print="png" ext_web="png" alt="Creating a new GitHub repository" caption="Creating a new GitHub repository" %}

3.  Give the repo a **Repository name**, a short **Description**, select **Public**, select **Initialize the repo with a README**, and then click **Create repository**. (Don't worry about selecting the license or gitignore settings for this activity.)
4.  Click the **Wiki** tab on the top navigation bar of your new repository.
5.  Click **Create the first page**. (Or if your wiki already has pages, click **New Page**.)
6.  In the default page ("Home"), insert your own sample documentation content, preferably using Markdown syntax. Or grab the sample Markdown page of a <a href="https://idratherbewriting.com/learnapidoc/assets/files/surfreportendpointdoc.md">fake endpoint called surfreport here</a> and insert it into the page.
6.  In the **Edit message** box, type a description of what you updated (your commit message).
7.  Click **Save Page**.

Notice how GitHub automatically converts the Markdown syntax into HTML and styles it in a readable way. You could work with this GitHub wiki entirely in the browser as a way for multiple people to collaborate and edit content. However, unlike other wikis, with GitHub you can also take all the content offline and edit locally, and then commit your changes and push the changes back online.

{% if page.workshop_activities == true %}*For more information related to this activity, see [Manage content in a GitHub wiki](pubapis_github_wikis.html).*{% endif %}
