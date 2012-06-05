module ApplicationHelper
  def amount_donated_class(_case)
    "span25th"
  end

  def amount_remaining_class(_case)
    "span25th"
  end

  def google_analytics_js
    if ['production', 'staging'].include?(Rails.env)
      "<script type=\"text/javascript\">
        var _gaq = _gaq || [];
        _gaq.push(['_setAccount', 'UA-32396686-1']);
        _gaq.push(['_setDomainName', '7alawa7da.com']);
        _gaq.push(['_trackPageview']);

        (function() {
          var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
          ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
          var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
          })();
      </script>"
    end
  end

  def meta_title
    if params[:controller] == 'organizations' && params[:action] == 'show'
      "#{@organization.name} @7alaWa7da"
    elsif params[:controller] == 'cases' && params[:action] == 'show'
      "#{@case.name} @7alaWa7da"
    else
     '7alaWa7da'
    end
  end

  def meta_description
    if params[:controller] == 'organizations' && params[:action] == 'show'
      "#{@organization.description} @7alaWa7da"
    elsif params[:controller] == 'cases' && params[:action] == 'show'
      "#{@case.description} @7alaWa7da"
    else
     '7alaWa7da'
    end
  end

  def meta_image
    url = nil
    return ''
  end

  def meta_canonical_url
    request.url
  end
end