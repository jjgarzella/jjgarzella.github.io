function hfun_bar(vname)
  val = Meta.parse(vname[1])
  return round(sqrt(val), digits=2)
end

function hfun_m1fill(vname)
  var = vname[1]
  return pagevar("index", var)
end

function lx_baz(com, _)
  # keep this first line
  brace_content = Franklin.content(com.braces[1]) # input string
  # do whatever you want here
  return uppercase(brace_content)
end

function hfun_posts()
    dir = joinpath(Franklin.path(:folder), "blog")
    files = filter(f -> endswith(f, ".md"), readdir(dir))

    posts = []

    for file in files
        name = splitext(file)[1]
        page = "blog/$name"

        rss = pagevar(page, "rss")
        rss_descr = pagevar(page, "rss_description")

        isempty(something(rss, "")) &&
            isempty(something(rss_descr, "")) &&
            continue

        date = pagevar(page, "rss_pubdate")
        date === nothing && continue

        title = something(
            pagevar(page, "rss_title"),
            pagevar(page, "title"),
            name
        )

        push!(posts, (
            date = date,
            title = title,
            url = "/blog/$name/"
        ))
    end

    sort!(posts, by = x -> x.date, rev=true)

    return join(
        ["""
        <div class="post-entry">
          <a href="$(p.url)">$(p.title)</a>
        </div>
        <br />
        """ for p in posts],
        "\n"
    )
end
