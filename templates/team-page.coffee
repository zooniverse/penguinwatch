module.exports = (context) ->
  template = -> "
    <div class='readymade-team-page'>
      #{(for key, group of @ then "
        <h2 class='readymade-team-group-title'>
          #{group.title}
        </h2>

        <div class='readymade-#{key} readymade-team-group'>
          #{(for member, i in group.members then "
            <div class='readymade-team-member'>
              #{if member.image? then "
                <div class='readymade-team-member-photo'><img src='#{member.image}' /></div>
              " else ''}

              <div class='readymade-team-member-header'>
                #{if member.name? then "
                  <span class='readymade-team-member-name'>#{member.name}</span>
                " else ''}

                #{if member.url? then "
                  <span class='readymade-member-links'>
                    #{(for url in [].concat member.url then "
                      <a href='#{url}' class='readymade-member-url'>
                        #{if url.match 'facebook.com/' then "
                          <i class='fa fa-lg fa-facebook-square'></i>
                        " else if url.match 'github.com/' then "
                          <i class='fa fa-lg fa-github-alt'></i>
                        " else if url.match 'plus.google.com/' then "
                          <i class='fa fa-lg fa-google-plus'></i>
                        " else if url.match 'linkedin.com/' then "
                          <i class='fa fa-lg fa-linkedin-square'></i>
                        " else if url.match 'twitter.com/' then "
                          <i class='fa fa-lg fa-twitter'></i>
                        " else if url.match 'mailto:' then "
                          <i class='fa fa-lg fa-envelope'></i>
                        " else "
                          <i class='fa fa-lg fa-globe'></i>
                        "}
                      </a>
                    ").join '\n'}
                  </span>
                " else ''}

                #{if member.title? then "
                  <div class='readymade-team-member-title'>#{member.title}</div>
                " else ''}

                #{if member.location? then "
                  <div class='readymade-team-member-location'>#{member.location}</div>
                " else ''}

              </div>

              <div class='readymade-team-member-description'>
                #{if member.description? then "
                  #{member.description}
                " else ''}
              </div>
            </div>

            <!--#{(for grouping in [2...5] when (i + 1) % grouping is 0 then "
              <span class='readymade-set-of-#{grouping}'></span>
            ").join '\n'}-->
          ").join '\n'}
        </div>
      ").join '\n'}
    </div>
  "
  template.call context
