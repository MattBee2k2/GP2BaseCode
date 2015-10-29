


<!DOCTYPE html>
<html lang="en" class=" is-copy-enabled">
  <head prefix="og: http://ogp.me/ns# fb: http://ogp.me/ns/fb# object: http://ogp.me/ns/object# article: http://ogp.me/ns/article# profile: http://ogp.me/ns/profile#">
    <meta charset='utf-8'>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Content-Language" content="en">
    <meta name="viewport" content="width=1020">
    
    
    <title>GP2BaseCode/findFBX.cmake at master · BigBearGCU/GP2BaseCode</title>
    <link rel="search" type="application/opensearchdescription+xml" href="/opensearch.xml" title="GitHub">
    <link rel="fluid-icon" href="https://github.com/fluidicon.png" title="GitHub">
    <link rel="apple-touch-icon" sizes="57x57" href="/apple-touch-icon-114.png">
    <link rel="apple-touch-icon" sizes="114x114" href="/apple-touch-icon-114.png">
    <link rel="apple-touch-icon" sizes="72x72" href="/apple-touch-icon-144.png">
    <link rel="apple-touch-icon" sizes="144x144" href="/apple-touch-icon-144.png">
    <meta property="fb:app_id" content="1401488693436528">

      <meta content="@github" name="twitter:site" /><meta content="summary" name="twitter:card" /><meta content="BigBearGCU/GP2BaseCode" name="twitter:title" /><meta content="Contribute to GP2BaseCode development by creating an account on GitHub." name="twitter:description" /><meta content="https://avatars0.githubusercontent.com/u/1741691?v=3&amp;s=400" name="twitter:image:src" />
      <meta content="GitHub" property="og:site_name" /><meta content="object" property="og:type" /><meta content="https://avatars0.githubusercontent.com/u/1741691?v=3&amp;s=400" property="og:image" /><meta content="BigBearGCU/GP2BaseCode" property="og:title" /><meta content="https://github.com/BigBearGCU/GP2BaseCode" property="og:url" /><meta content="Contribute to GP2BaseCode development by creating an account on GitHub." property="og:description" />
      <meta name="browser-stats-url" content="https://api.github.com/_private/browser/stats">
    <meta name="browser-errors-url" content="https://api.github.com/_private/browser/errors">
    <link rel="assets" href="https://assets-cdn.github.com/">
    <link rel="web-socket" href="wss://live.github.com/_sockets/MTEwOTE4ODI6OGRmNzZiNmE3ZDg0NzE1NmQwYTBiYzJhNjU0YjBjZWQ6Y2ViNjk5MjUyZDc5Y2VlYzc0ZjkxNTgyOTg2ZmM5ZDQ2ZjQ5M2E0NTFhNDVhMDIwOGU4ZmJhZGY5YjE0NzcyYw==--04c15218dd643f9b94d4911f5b2a9229b521dd28">
    <meta name="pjax-timeout" content="1000">
    <link rel="sudo-modal" href="/sessions/sudo_modal">

    <meta name="msapplication-TileImage" content="/windows-tile.png">
    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="selected-link" value="repo_source" data-pjax-transient>

    <meta name="google-site-verification" content="KT5gs8h0wvaagLKAVWq8bbeNwnZZK1r1XQysX3xurLU">
    <meta name="google-analytics" content="UA-3769691-2">

<meta content="collector.githubapp.com" name="octolytics-host" /><meta content="github" name="octolytics-app-id" /><meta content="56B854DD:5099:1241FBF:56325BE7" name="octolytics-dimension-request_id" /><meta content="11091882" name="octolytics-actor-id" /><meta content="MattBee2k2" name="octolytics-actor-login" /><meta content="47953bc90a429ac0eff817c695c88ec55ea7359d7776d1f1fdc2bfa6d9a003ee" name="octolytics-actor-hash" />

<meta content="Rails, view, blob#show" data-pjax-transient="true" name="analytics-event" />


  <meta class="js-ga-set" name="dimension1" content="Logged In">
    <meta class="js-ga-set" name="dimension4" content="Current repo nav">




    <meta name="is-dotcom" content="true">
        <meta name="hostname" content="github.com">
    <meta name="user-login" content="MattBee2k2">

      <link rel="mask-icon" href="https://assets-cdn.github.com/pinned-octocat.svg" color="#4078c0">
      <link rel="icon" type="image/x-icon" href="https://assets-cdn.github.com/favicon.ico">

    <meta content="0753e66d29ed52fe89cfd8895adbe63ee49867b1" name="form-nonce" />

    <link crossorigin="anonymous" href="https://assets-cdn.github.com/assets/github-3054eeda95562332855606169ec9cc44db3ce684e8e1f774a78d69721a74b009.css" integrity="sha256-MFTu2pVWIzKFVgYWnsnMRNs85oTo4fd0p41pchp0sAk=" media="all" rel="stylesheet" />
    <link crossorigin="anonymous" href="https://assets-cdn.github.com/assets/github2-00a8be553371a21678bd88362a07c328eda1b6f1a38d00f799b6bb3b99198706.css" integrity="sha256-AKi+VTNxohZ4vYg2KgfDKO2htvGjjQD3mba7O5kZhwY=" media="all" rel="stylesheet" />
    
    
    


    <meta http-equiv="x-pjax-version" content="d2db6eedd67178b84dd88bd98ce6738f">

      
  <meta name="description" content="Contribute to GP2BaseCode development by creating an account on GitHub.">
  <meta name="go-import" content="github.com/BigBearGCU/GP2BaseCode git https://github.com/BigBearGCU/GP2BaseCode.git">

  <meta content="1741691" name="octolytics-dimension-user_id" /><meta content="BigBearGCU" name="octolytics-dimension-user_login" /><meta content="12894489" name="octolytics-dimension-repository_id" /><meta content="BigBearGCU/GP2BaseCode" name="octolytics-dimension-repository_nwo" /><meta content="true" name="octolytics-dimension-repository_public" /><meta content="false" name="octolytics-dimension-repository_is_fork" /><meta content="12894489" name="octolytics-dimension-repository_network_root_id" /><meta content="BigBearGCU/GP2BaseCode" name="octolytics-dimension-repository_network_root_nwo" />
  <link href="https://github.com/BigBearGCU/GP2BaseCode/commits/master.atom" rel="alternate" title="Recent Commits to GP2BaseCode:master" type="application/atom+xml">

  </head>


  <body class="logged_in   env-production windows vis-public page-blob">
    <a href="#start-of-content" tabindex="1" class="accessibility-aid js-skip-to-content">Skip to content</a>

    
    
    



      <div class="header header-logged-in true" role="banner">
  <div class="container clearfix">

    <a class="header-logo-invertocat" href="https://github.com/" data-hotkey="g d" aria-label="Homepage" data-ga-click="Header, go to dashboard, icon:logo">
  <span class="mega-octicon octicon-mark-github"></span>
</a>


      <div class="site-search repo-scope js-site-search" role="search">
          <!-- </textarea> --><!-- '"` --><form accept-charset="UTF-8" action="/BigBearGCU/GP2BaseCode/search" class="js-site-search-form" data-global-search-url="/search" data-repo-search-url="/BigBearGCU/GP2BaseCode/search" method="get"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /></div>
  <label class="js-chromeless-input-container form-control">
    <div class="scope-badge">This repository</div>
    <input type="text"
      class="js-site-search-focus js-site-search-field is-clearable chromeless-input"
      data-hotkey="s"
      name="q"
      placeholder="Search"
      aria-label="Search this repository"
      data-global-scope-placeholder="Search GitHub"
      data-repo-scope-placeholder="Search"
      tabindex="1"
      autocapitalize="off">
  </label>
</form>
      </div>

      <ul class="header-nav left" role="navigation">
        <li class="header-nav-item">
          <a href="/pulls" class="js-selected-navigation-item header-nav-link" data-ga-click="Header, click, Nav menu - item:pulls context:user" data-hotkey="g p" data-selected-links="/pulls /pulls/assigned /pulls/mentioned /pulls">
            Pull requests
</a>        </li>
        <li class="header-nav-item">
          <a href="/issues" class="js-selected-navigation-item header-nav-link" data-ga-click="Header, click, Nav menu - item:issues context:user" data-hotkey="g i" data-selected-links="/issues /issues/assigned /issues/mentioned /issues">
            Issues
</a>        </li>
          <li class="header-nav-item">
            <a class="header-nav-link" href="https://gist.github.com/" data-ga-click="Header, go to gist, text:gist">Gist</a>
          </li>
      </ul>

    
<ul class="header-nav user-nav right" id="user-links">
  <li class="header-nav-item">
      <span class="js-socket-channel js-updatable-content"
        data-channel="notification-changed:MattBee2k2"
        data-url="/notifications/header">
      <a href="/notifications" aria-label="You have no unread notifications" class="header-nav-link notification-indicator tooltipped tooltipped-s" data-ga-click="Header, go to notifications, icon:read" data-hotkey="g n">
          <span class="mail-status all-read"></span>
          <span class="octicon octicon-bell"></span>
</a>  </span>

  </li>

  <li class="header-nav-item dropdown js-menu-container">
    <a class="header-nav-link tooltipped tooltipped-s js-menu-target" href="/new"
       aria-label="Create new…"
       data-ga-click="Header, create new, icon:add">
      <span class="octicon octicon-plus left"></span>
      <span class="dropdown-caret"></span>
    </a>

    <div class="dropdown-menu-content js-menu-content">
      <ul class="dropdown-menu dropdown-menu-sw">
        
<a class="dropdown-item" href="/new" data-ga-click="Header, create new repository">
  New repository
</a>


  <a class="dropdown-item" href="/organizations/new" data-ga-click="Header, create new organization">
    New organization
  </a>



  <div class="dropdown-divider"></div>
  <div class="dropdown-header">
    <span title="BigBearGCU/GP2BaseCode">This repository</span>
  </div>
    <a class="dropdown-item" href="/BigBearGCU/GP2BaseCode/issues/new" data-ga-click="Header, create new issue">
      New issue
    </a>

      </ul>
    </div>
  </li>

  <li class="header-nav-item dropdown js-menu-container">
    <a class="header-nav-link name tooltipped tooltipped-s js-menu-target" href="/MattBee2k2"
       aria-label="View profile and more"
       data-ga-click="Header, show menu, icon:avatar">
      <img alt="@MattBee2k2" class="avatar" height="20" src="https://avatars3.githubusercontent.com/u/11091882?v=3&amp;s=40" width="20" />
      <span class="dropdown-caret"></span>
    </a>

    <div class="dropdown-menu-content js-menu-content">
      <div class="dropdown-menu  dropdown-menu-sw">
        <div class=" dropdown-header header-nav-current-user css-truncate">
            Signed in as <strong class="css-truncate-target">MattBee2k2</strong>

        </div>


        <div class="dropdown-divider"></div>

          <a class="dropdown-item" href="/MattBee2k2" data-ga-click="Header, go to profile, text:your profile">
            Your profile
          </a>
        <a class="dropdown-item" href="/stars" data-ga-click="Header, go to starred repos, text:your stars">
          Your stars
        </a>
        <a class="dropdown-item" href="/explore" data-ga-click="Header, go to explore, text:explore">
          Explore
        </a>
          <a class="dropdown-item" href="/integrations" data-ga-click="Header, go to integrations, text:integrations">
            Integrations
          </a>
        <a class="dropdown-item" href="https://help.github.com" data-ga-click="Header, go to help, text:help">
          Help
        </a>

          <div class="dropdown-divider"></div>

          <a class="dropdown-item" href="/settings/profile" data-ga-click="Header, go to settings, icon:settings">
            Settings
          </a>

          <!-- </textarea> --><!-- '"` --><form accept-charset="UTF-8" action="/logout" class="logout-form" data-form-nonce="0753e66d29ed52fe89cfd8895adbe63ee49867b1" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="Fk9/RKYDujSvFUbEROgBU+RDIgVSnKxFJa9BdnD6xbzgS/kWdeZiUoxtC8TcRX73vqLSPAAL20YieUYoC7XgpQ==" /></div>
            <button class="dropdown-item dropdown-signout" data-ga-click="Header, sign out, icon:logout">
              Sign out
            </button>
</form>
      </div>
    </div>
  </li>
</ul>


    
  </div>
</div>

      

      


    <div id="start-of-content" class="accessibility-aid"></div>

    <div id="js-flash-container">
</div>


    <div role="main" class="main-content">
        <div itemscope itemtype="http://schema.org/WebPage">
    <div class="pagehead repohead instapaper_ignore readability-menu">

      <div class="container">

        <div class="clearfix">
          

<ul class="pagehead-actions">

  <li>
      <!-- </textarea> --><!-- '"` --><form accept-charset="UTF-8" action="/notifications/subscribe" class="js-social-container" data-autosubmit="true" data-form-nonce="0753e66d29ed52fe89cfd8895adbe63ee49867b1" data-remote="true" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="fxCDN27yASqvmTt6igSaRlGzZvTyA+HeCXJX5WvJzmjWAAK7XEVguy9r3IDlfzZbl6rJXf05sIeOC/TCxLW1cQ==" /></div>    <input id="repository_id" name="repository_id" type="hidden" value="12894489" />

      <div class="select-menu js-menu-container js-select-menu">
        <a href="/BigBearGCU/GP2BaseCode/subscription"
          class="btn btn-sm btn-with-count select-menu-button js-menu-target" role="button" tabindex="0" aria-haspopup="true"
          data-ga-click="Repository, click Watch settings, action:blob#show">
          <span class="js-select-button">
            <span class="octicon octicon-eye"></span>
            Watch
          </span>
        </a>
        <a class="social-count js-social-count" href="/BigBearGCU/GP2BaseCode/watchers">
          2
        </a>

        <div class="select-menu-modal-holder">
          <div class="select-menu-modal subscription-menu-modal js-menu-content" aria-hidden="true">
            <div class="select-menu-header">
              <span class="octicon octicon-x js-menu-close" role="button" aria-label="Close"></span>
              <span class="select-menu-title">Notifications</span>
            </div>

            <div class="select-menu-list js-navigation-container" role="menu">

              <div class="select-menu-item js-navigation-item selected" role="menuitem" tabindex="0">
                <span class="select-menu-item-icon octicon octicon-check"></span>
                <div class="select-menu-item-text">
                  <input checked="checked" id="do_included" name="do" type="radio" value="included" />
                  <span class="select-menu-item-heading">Not watching</span>
                  <span class="description">Be notified when participating or @mentioned.</span>
                  <span class="js-select-button-text hidden-select-button-text">
                    <span class="octicon octicon-eye"></span>
                    Watch
                  </span>
                </div>
              </div>

              <div class="select-menu-item js-navigation-item " role="menuitem" tabindex="0">
                <span class="select-menu-item-icon octicon octicon octicon-check"></span>
                <div class="select-menu-item-text">
                  <input id="do_subscribed" name="do" type="radio" value="subscribed" />
                  <span class="select-menu-item-heading">Watching</span>
                  <span class="description">Be notified of all conversations.</span>
                  <span class="js-select-button-text hidden-select-button-text">
                    <span class="octicon octicon-eye"></span>
                    Unwatch
                  </span>
                </div>
              </div>

              <div class="select-menu-item js-navigation-item " role="menuitem" tabindex="0">
                <span class="select-menu-item-icon octicon octicon-check"></span>
                <div class="select-menu-item-text">
                  <input id="do_ignore" name="do" type="radio" value="ignore" />
                  <span class="select-menu-item-heading">Ignoring</span>
                  <span class="description">Never be notified.</span>
                  <span class="js-select-button-text hidden-select-button-text">
                    <span class="octicon octicon-mute"></span>
                    Stop ignoring
                  </span>
                </div>
              </div>

            </div>

          </div>
        </div>
      </div>
</form>
  </li>

  <li>
    
  <div class="js-toggler-container js-social-container starring-container ">

    <!-- </textarea> --><!-- '"` --><form accept-charset="UTF-8" action="/BigBearGCU/GP2BaseCode/unstar" class="js-toggler-form starred js-unstar-button" data-form-nonce="0753e66d29ed52fe89cfd8895adbe63ee49867b1" data-remote="true" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="W61RDCJerb4V4n8JhJTaI+AdxZ+LmxFVSPdmiW8E6pPwxFd0SBz9zDXoVIExIeOXoHvl1/7aF7hZ4PqTW7/Leg==" /></div>
      <button
        class="btn btn-sm btn-with-count js-toggler-target"
        aria-label="Unstar this repository" title="Unstar BigBearGCU/GP2BaseCode"
        data-ga-click="Repository, click unstar button, action:blob#show; text:Unstar">
        <span class="octicon octicon-star"></span>
        Unstar
      </button>
        <a class="social-count js-social-count" href="/BigBearGCU/GP2BaseCode/stargazers">
          0
        </a>
</form>
    <!-- </textarea> --><!-- '"` --><form accept-charset="UTF-8" action="/BigBearGCU/GP2BaseCode/star" class="js-toggler-form unstarred js-star-button" data-form-nonce="0753e66d29ed52fe89cfd8895adbe63ee49867b1" data-remote="true" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="Sctgw8Tfuxk4ZSX8v0wMRKh+jc75Hx6d6ZY5wh2FPwZzZMkFpFz6rxG9VEGntaUmX+1slSRd3dBmmU+M8kWrqw==" /></div>
      <button
        class="btn btn-sm btn-with-count js-toggler-target"
        aria-label="Star this repository" title="Star BigBearGCU/GP2BaseCode"
        data-ga-click="Repository, click star button, action:blob#show; text:Star">
        <span class="octicon octicon-star"></span>
        Star
      </button>
        <a class="social-count js-social-count" href="/BigBearGCU/GP2BaseCode/stargazers">
          0
        </a>
</form>  </div>

  </li>

  <li>
          <!-- </textarea> --><!-- '"` --><form accept-charset="UTF-8" action="/BigBearGCU/GP2BaseCode/fork" class="btn-with-count" data-form-nonce="0753e66d29ed52fe89cfd8895adbe63ee49867b1" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="v+fvie03nVKD1B9QxcHO8gFnCjClTwxMCjw9WodcVc46tADjftbAFXIzQ9YRahC9x417dNyxq39/mMb9K7ayKg==" /></div>
            <button
                type="submit"
                class="btn btn-sm btn-with-count"
                data-ga-click="Repository, show fork modal, action:blob#show; text:Fork"
                title="Fork your own copy of BigBearGCU/GP2BaseCode to your account"
                aria-label="Fork your own copy of BigBearGCU/GP2BaseCode to your account">
              <span class="octicon octicon-repo-forked"></span>
              Fork
            </button>
</form>
    <a href="/BigBearGCU/GP2BaseCode/network" class="social-count">
      44
    </a>
  </li>
</ul>

          <h1 itemscope itemtype="http://data-vocabulary.org/Breadcrumb" class="entry-title public ">
  <span class="mega-octicon octicon-repo"></span>
  <span class="author"><a href="/BigBearGCU" class="url fn" itemprop="url" rel="author"><span itemprop="title">BigBearGCU</span></a></span><!--
--><span class="path-divider">/</span><!--
--><strong><a href="/BigBearGCU/GP2BaseCode" data-pjax="#js-repo-pjax-container">GP2BaseCode</a></strong>

  <span class="page-context-loader">
    <img alt="" height="16" src="https://assets-cdn.github.com/images/spinners/octocat-spinner-32.gif" width="16" />
  </span>

</h1>

        </div>
      </div>
    </div>

    <div class="container">
      <div class="repository-with-sidebar repo-container new-discussion-timeline ">
        <div class="repository-sidebar clearfix">
          
<nav class="sunken-menu repo-nav js-repo-nav js-sidenav-container-pjax js-octicon-loaders"
     role="navigation"
     data-pjax="#js-repo-pjax-container"
     data-issue-count-url="/BigBearGCU/GP2BaseCode/issues/counts">
  <ul class="sunken-menu-group">
    <li class="tooltipped tooltipped-w" aria-label="Code">
      <a href="/BigBearGCU/GP2BaseCode" aria-label="Code" aria-selected="true" class="js-selected-navigation-item selected sunken-menu-item" data-hotkey="g c" data-selected-links="repo_source repo_downloads repo_commits repo_releases repo_tags repo_branches /BigBearGCU/GP2BaseCode">
        <span class="octicon octicon-code"></span> <span class="full-word">Code</span>
        <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/images/spinners/octocat-spinner-32.gif" width="16" />
</a>    </li>

      <li class="tooltipped tooltipped-w" aria-label="Issues">
        <a href="/BigBearGCU/GP2BaseCode/issues" aria-label="Issues" class="js-selected-navigation-item sunken-menu-item" data-hotkey="g i" data-selected-links="repo_issues repo_labels repo_milestones /BigBearGCU/GP2BaseCode/issues">
          <span class="octicon octicon-issue-opened"></span> <span class="full-word">Issues</span>
          <span class="js-issue-replace-counter"></span>
          <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>

    <li class="tooltipped tooltipped-w" aria-label="Pull requests">
      <a href="/BigBearGCU/GP2BaseCode/pulls" aria-label="Pull requests" class="js-selected-navigation-item sunken-menu-item" data-hotkey="g p" data-selected-links="repo_pulls /BigBearGCU/GP2BaseCode/pulls">
          <span class="octicon octicon-git-pull-request"></span> <span class="full-word">Pull requests</span>
          <span class="js-pull-replace-counter"></span>
          <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/images/spinners/octocat-spinner-32.gif" width="16" />
</a>    </li>

      <li class="tooltipped tooltipped-w" aria-label="Wiki">
        <a href="/BigBearGCU/GP2BaseCode/wiki" aria-label="Wiki" class="js-selected-navigation-item sunken-menu-item" data-hotkey="g w" data-selected-links="repo_wiki /BigBearGCU/GP2BaseCode/wiki">
          <span class="octicon octicon-book"></span> <span class="full-word">Wiki</span>
          <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>
  </ul>
  <div class="sunken-menu-separator"></div>
  <ul class="sunken-menu-group">

    <li class="tooltipped tooltipped-w" aria-label="Pulse">
      <a href="/BigBearGCU/GP2BaseCode/pulse" aria-label="Pulse" class="js-selected-navigation-item sunken-menu-item" data-selected-links="pulse /BigBearGCU/GP2BaseCode/pulse">
        <span class="octicon octicon-pulse"></span> <span class="full-word">Pulse</span>
        <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/images/spinners/octocat-spinner-32.gif" width="16" />
</a>    </li>

    <li class="tooltipped tooltipped-w" aria-label="Graphs">
      <a href="/BigBearGCU/GP2BaseCode/graphs" aria-label="Graphs" class="js-selected-navigation-item sunken-menu-item" data-selected-links="repo_graphs repo_contributors /BigBearGCU/GP2BaseCode/graphs">
        <span class="octicon octicon-graph"></span> <span class="full-word">Graphs</span>
        <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/images/spinners/octocat-spinner-32.gif" width="16" />
</a>    </li>
  </ul>


</nav>

            <div class="only-with-full-nav">
                
<div class="js-clone-url clone-url "
  data-protocol-type="http">
  <h3 class="text-small text-muted"><span class="text-emphasized">HTTPS</span> clone URL</h3>
  <div class="input-group js-zeroclipboard-container">
    <input type="text" class="input-mini text-small text-muted input-monospace js-url-field js-zeroclipboard-target"
           value="https://github.com/BigBearGCU/GP2BaseCode.git" readonly="readonly" aria-label="HTTPS clone URL">
    <span class="input-group-button">
      <button aria-label="Copy to clipboard" class="js-zeroclipboard btn btn-sm zeroclipboard-button tooltipped tooltipped-s" data-copied-hint="Copied!" type="button"><span class="octicon octicon-clippy"></span></button>
    </span>
  </div>
</div>

  
<div class="js-clone-url clone-url "
  data-protocol-type="ssh">
  <h3 class="text-small text-muted"><span class="text-emphasized">SSH</span> clone URL</h3>
  <div class="input-group js-zeroclipboard-container">
    <input type="text" class="input-mini text-small text-muted input-monospace js-url-field js-zeroclipboard-target"
           value="git@github.com:BigBearGCU/GP2BaseCode.git" readonly="readonly" aria-label="SSH clone URL">
    <span class="input-group-button">
      <button aria-label="Copy to clipboard" class="js-zeroclipboard btn btn-sm zeroclipboard-button tooltipped tooltipped-s" data-copied-hint="Copied!" type="button"><span class="octicon octicon-clippy"></span></button>
    </span>
  </div>
</div>

  
<div class="js-clone-url clone-url open"
  data-protocol-type="subversion">
  <h3 class="text-small text-muted"><span class="text-emphasized">Subversion</span> checkout URL</h3>
  <div class="input-group js-zeroclipboard-container">
    <input type="text" class="input-mini text-small text-muted input-monospace js-url-field js-zeroclipboard-target"
           value="https://github.com/BigBearGCU/GP2BaseCode" readonly="readonly" aria-label="Subversion checkout URL">
    <span class="input-group-button">
      <button aria-label="Copy to clipboard" class="js-zeroclipboard btn btn-sm zeroclipboard-button tooltipped tooltipped-s" data-copied-hint="Copied!" type="button"><span class="octicon octicon-clippy"></span></button>
    </span>
  </div>
</div>



<div class="clone-options text-small text-muted">You can clone with
  <!-- </textarea> --><!-- '"` --><form accept-charset="UTF-8" action="/users/set_protocol?protocol_selector=http&amp;protocol_type=clone" class="inline-form js-clone-selector-form is-enabled" data-form-nonce="0753e66d29ed52fe89cfd8895adbe63ee49867b1" data-remote="true" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="iRsFSgoEeY3oqu5WvHQFVyyMfQocLl6rVwLe+sH5uOKOOigiO2bqrXEV2VRNwA0mPV5Qstj7D6WdZ6ZHWZEokw==" /></div><button class="btn-link js-clone-selector" data-protocol="http" type="submit">HTTPS</button></form>, <!-- </textarea> --><!-- '"` --><form accept-charset="UTF-8" action="/users/set_protocol?protocol_selector=ssh&amp;protocol_type=clone" class="inline-form js-clone-selector-form is-enabled" data-form-nonce="0753e66d29ed52fe89cfd8895adbe63ee49867b1" data-remote="true" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="bC3G9tNydaIVm856KSH9eBmZ5c1A5deDurk8bbIC42G+wKQ4yh2TVQE7B0F9GU113mc2Cne2H/Pd6tn520xdww==" /></div><button class="btn-link js-clone-selector" data-protocol="ssh" type="submit">SSH</button></form>, or <!-- </textarea> --><!-- '"` --><form accept-charset="UTF-8" action="/users/set_protocol?protocol_selector=subversion&amp;protocol_type=clone" class="inline-form js-clone-selector-form is-enabled" data-form-nonce="0753e66d29ed52fe89cfd8895adbe63ee49867b1" data-remote="true" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="i80//H4QDfjd/t8QN7ZiKH+xmlXYRh6PoRAiKhvSQ+/WlSRHoU5yI+SpdwEEhpmhLpxRAtzAwRgLDR/IpYWyIg==" /></div><button class="btn-link js-clone-selector" data-protocol="subversion" type="submit">Subversion</button></form>.
  <a href="https://help.github.com/articles/which-remote-url-should-i-use" class="help tooltipped tooltipped-n" aria-label="Get help on which URL is right for you.">
    <span class="octicon octicon-question"></span>
  </a>
</div>
  <a href="github-windows://openRepo/https://github.com/BigBearGCU/GP2BaseCode" class="btn btn-sm sidebar-button" title="Save BigBearGCU/GP2BaseCode to your computer and use it in GitHub Desktop." aria-label="Save BigBearGCU/GP2BaseCode to your computer and use it in GitHub Desktop.">
    <span class="octicon octicon-desktop-download"></span>
    Clone in Desktop
  </a>

              <a href="/BigBearGCU/GP2BaseCode/archive/master.zip"
                 class="btn btn-sm sidebar-button"
                 aria-label="Download the contents of BigBearGCU/GP2BaseCode as a zip file"
                 title="Download the contents of BigBearGCU/GP2BaseCode as a zip file"
                 rel="nofollow">
                <span class="octicon octicon-cloud-download"></span>
                Download ZIP
              </a>
            </div>
        </div>
        <div id="js-repo-pjax-container" class="repository-content context-loader-container" data-pjax-container>

          

<a href="/BigBearGCU/GP2BaseCode/blob/bedb4d8b153039cfeb3d644fae25209059c14b77/cmake/findFBX.cmake" class="hidden js-permalink-shortcut" data-hotkey="y">Permalink</a>

<!-- blob contrib key: blob_contributors:v21:9fb0fc0ef84872afa6ddc5a12159a9d2 -->

  <div class="file-navigation js-zeroclipboard-container">
    
<div class="select-menu js-menu-container js-select-menu left">
  <button class="btn btn-sm select-menu-button js-menu-target css-truncate" data-hotkey="w"
    title="master"
    type="button" aria-label="Switch branches or tags" tabindex="0" aria-haspopup="true">
    <i>Branch:</i>
    <span class="js-select-button css-truncate-target">master</span>
  </button>

  <div class="select-menu-modal-holder js-menu-content js-navigation-container" data-pjax aria-hidden="true">

    <div class="select-menu-modal">
      <div class="select-menu-header">
        <span class="octicon octicon-x js-menu-close" role="button" aria-label="Close"></span>
        <span class="select-menu-title">Switch branches/tags</span>
      </div>

      <div class="select-menu-filters">
        <div class="select-menu-text-filter">
          <input type="text" aria-label="Filter branches/tags" id="context-commitish-filter-field" class="js-filterable-field js-navigation-enable" placeholder="Filter branches/tags">
        </div>
        <div class="select-menu-tabs">
          <ul>
            <li class="select-menu-tab">
              <a href="#" data-tab-filter="branches" data-filter-placeholder="Filter branches/tags" class="js-select-menu-tab" role="tab">Branches</a>
            </li>
            <li class="select-menu-tab">
              <a href="#" data-tab-filter="tags" data-filter-placeholder="Find a tag…" class="js-select-menu-tab" role="tab">Tags</a>
            </li>
          </ul>
        </div>
      </div>

      <div class="select-menu-list select-menu-tab-bucket js-select-menu-tab-bucket" data-tab-filter="branches" role="menu">

        <div data-filterable-for="context-commitish-filter-field" data-filterable-type="substring">


            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/BigBearGCU/GP2BaseCode/blob/Ex1-Create-Window/cmake/findFBX.cmake"
               data-name="Ex1-Create-Window"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="Ex1-Create-Window">
                Ex1-Create-Window
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/BigBearGCU/GP2BaseCode/blob/Ex1-Display-Triangle/cmake/findFBX.cmake"
               data-name="Ex1-Display-Triangle"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="Ex1-Display-Triangle">
                Ex1-Display-Triangle
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/BigBearGCU/GP2BaseCode/blob/Ex1-Init-OpenGL/cmake/findFBX.cmake"
               data-name="Ex1-Init-OpenGL"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="Ex1-Init-OpenGL">
                Ex1-Init-OpenGL
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/BigBearGCU/GP2BaseCode/blob/Ex1-Solution-Move/cmake/findFBX.cmake"
               data-name="Ex1-Solution-Move"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="Ex1-Solution-Move">
                Ex1-Solution-Move
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/BigBearGCU/GP2BaseCode/blob/Ex1-Solution-Sprite/cmake/findFBX.cmake"
               data-name="Ex1-Solution-Sprite"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="Ex1-Solution-Sprite">
                Ex1-Solution-Sprite
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/BigBearGCU/GP2BaseCode/blob/Ex1-Starter/cmake/findFBX.cmake"
               data-name="Ex1-Starter"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="Ex1-Starter">
                Ex1-Starter
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/BigBearGCU/GP2BaseCode/blob/Ex2-Cube-Complete/cmake/findFBX.cmake"
               data-name="Ex2-Cube-Complete"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="Ex2-Cube-Complete">
                Ex2-Cube-Complete
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/BigBearGCU/GP2BaseCode/blob/Ex2-Cube-Element-Buffer/cmake/findFBX.cmake"
               data-name="Ex2-Cube-Element-Buffer"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="Ex2-Cube-Element-Buffer">
                Ex2-Cube-Element-Buffer
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/BigBearGCU/GP2BaseCode/blob/Ex2-Cube-Interleaved-Complete/cmake/findFBX.cmake"
               data-name="Ex2-Cube-Interleaved-Complete"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="Ex2-Cube-Interleaved-Complete">
                Ex2-Cube-Interleaved-Complete
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/BigBearGCU/GP2BaseCode/blob/Ex2-Draw-From-VBO/cmake/findFBX.cmake"
               data-name="Ex2-Draw-From-VBO"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="Ex2-Draw-From-VBO">
                Ex2-Draw-From-VBO
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/BigBearGCU/GP2BaseCode/blob/Ex2-Starter/cmake/findFBX.cmake"
               data-name="Ex2-Starter"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="Ex2-Starter">
                Ex2-Starter
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/BigBearGCU/GP2BaseCode/blob/Ex2-VBO-Interleaved-Verts/cmake/findFBX.cmake"
               data-name="Ex2-VBO-Interleaved-Verts"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="Ex2-VBO-Interleaved-Verts">
                Ex2-VBO-Interleaved-Verts
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/BigBearGCU/GP2BaseCode/blob/Ex3-Shaders-Complete/cmake/findFBX.cmake"
               data-name="Ex3-Shaders-Complete"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="Ex3-Shaders-Complete">
                Ex3-Shaders-Complete
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/BigBearGCU/GP2BaseCode/blob/Ex3-Starter/cmake/findFBX.cmake"
               data-name="Ex3-Starter"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="Ex3-Starter">
                Ex3-Starter
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/BigBearGCU/GP2BaseCode/blob/Ex3-Vertex-Colours/cmake/findFBX.cmake"
               data-name="Ex3-Vertex-Colours"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="Ex3-Vertex-Colours">
                Ex3-Vertex-Colours
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/BigBearGCU/GP2BaseCode/blob/Ex4-Font-Sprite-Finished/cmake/findFBX.cmake"
               data-name="Ex4-Font-Sprite-Finished"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="Ex4-Font-Sprite-Finished">
                Ex4-Font-Sprite-Finished
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/BigBearGCU/GP2BaseCode/blob/Ex4-Starter/cmake/findFBX.cmake"
               data-name="Ex4-Starter"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="Ex4-Starter">
                Ex4-Starter
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/BigBearGCU/GP2BaseCode/blob/Ex4-Texturing-Working/cmake/findFBX.cmake"
               data-name="Ex4-Texturing-Working"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="Ex4-Texturing-Working">
                Ex4-Texturing-Working
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/BigBearGCU/GP2BaseCode/blob/Ex5-ModelLoading-Finished/cmake/findFBX.cmake"
               data-name="Ex5-ModelLoading-Finished"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="Ex5-ModelLoading-Finished">
                Ex5-ModelLoading-Finished
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/BigBearGCU/GP2BaseCode/blob/Ex5-Starter/cmake/findFBX.cmake"
               data-name="Ex5-Starter"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="Ex5-Starter">
                Ex5-Starter
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/BigBearGCU/GP2BaseCode/blob/Ex6-Ambient/cmake/findFBX.cmake"
               data-name="Ex6-Ambient"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="Ex6-Ambient">
                Ex6-Ambient
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/BigBearGCU/GP2BaseCode/blob/Ex6-Diffuse/cmake/findFBX.cmake"
               data-name="Ex6-Diffuse"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="Ex6-Diffuse">
                Ex6-Diffuse
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/BigBearGCU/GP2BaseCode/blob/Ex6-Ligthing-Starter/cmake/findFBX.cmake"
               data-name="Ex6-Ligthing-Starter"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="Ex6-Ligthing-Starter">
                Ex6-Ligthing-Starter
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/BigBearGCU/GP2BaseCode/blob/Ex7-Specular/cmake/findFBX.cmake"
               data-name="Ex7-Specular"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="Ex7-Specular">
                Ex7-Specular
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open selected"
               href="/BigBearGCU/GP2BaseCode/blob/master/cmake/findFBX.cmake"
               data-name="master"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="master">
                master
              </span>
            </a>
        </div>

          <div class="select-menu-no-results">Nothing to show</div>
      </div>

      <div class="select-menu-list select-menu-tab-bucket js-select-menu-tab-bucket" data-tab-filter="tags">
        <div data-filterable-for="context-commitish-filter-field" data-filterable-type="substring">


        </div>

        <div class="select-menu-no-results">Nothing to show</div>
      </div>

    </div>
  </div>
</div>

    <div class="btn-group right">
      <a href="/BigBearGCU/GP2BaseCode/find/master"
            class="js-show-file-finder btn btn-sm empty-icon tooltipped tooltipped-nw"
            data-pjax
            data-hotkey="t"
            aria-label="Quickly jump between files">
        <span class="octicon octicon-list-unordered"></span>
      </a>
      <button aria-label="Copy file path to clipboard" class="js-zeroclipboard btn btn-sm zeroclipboard-button tooltipped tooltipped-s" data-copied-hint="Copied!" type="button"><span class="octicon octicon-clippy"></span></button>
    </div>

    <div class="breadcrumb js-zeroclipboard-target">
      <span class="repo-root js-repo-root"><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/BigBearGCU/GP2BaseCode" class="" data-branch="master" data-pjax="true" itemscope="url"><span itemprop="title">GP2BaseCode</span></a></span></span><span class="separator">/</span><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/BigBearGCU/GP2BaseCode/tree/master/cmake" class="" data-branch="master" data-pjax="true" itemscope="url"><span itemprop="title">cmake</span></a></span><span class="separator">/</span><strong class="final-path">findFBX.cmake</strong>
    </div>
  </div>

<include-fragment class="commit-tease" src="/BigBearGCU/GP2BaseCode/contributors/master/cmake/findFBX.cmake">
  <div>
    Fetching contributors&hellip;
  </div>

  <div class="commit-tease-contributors">
    <img alt="" class="loader-loading left" height="16" src="https://assets-cdn.github.com/images/spinners/octocat-spinner-32-EAF2F5.gif" width="16" />
    <span class="loader-error">Cannot retrieve contributors at this time</span>
  </div>
</include-fragment>
<div class="file">
  <div class="file-header">
  <div class="file-actions">

    <div class="btn-group">
      <a href="/BigBearGCU/GP2BaseCode/raw/master/cmake/findFBX.cmake" class="btn btn-sm " id="raw-url">Raw</a>
        <a href="/BigBearGCU/GP2BaseCode/blame/master/cmake/findFBX.cmake" class="btn btn-sm js-update-url-with-hash">Blame</a>
      <a href="/BigBearGCU/GP2BaseCode/commits/master/cmake/findFBX.cmake" class="btn btn-sm " rel="nofollow">History</a>
    </div>

        <a class="octicon-btn tooltipped tooltipped-nw"
           href="github-windows://openRepo/https://github.com/BigBearGCU/GP2BaseCode?branch=master&amp;filepath=cmake%2FfindFBX.cmake"
           aria-label="Open this file in GitHub Desktop"
           data-ga-click="Repository, open with desktop, type:windows">
            <span class="octicon octicon-device-desktop"></span>
        </a>

        <!-- </textarea> --><!-- '"` --><form accept-charset="UTF-8" action="/BigBearGCU/GP2BaseCode/edit/master/cmake/findFBX.cmake" class="inline-form js-update-url-with-hash" data-form-nonce="0753e66d29ed52fe89cfd8895adbe63ee49867b1" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="gfd9GDl/IQ5gDEZVVbY4oLrldmYq7c/Svie8JZ25KyJpkm06jutrbshaxXlPoPztRdyk3IhiMDpRBCsYXWf9tw==" /></div>
          <button class="octicon-btn tooltipped tooltipped-nw" type="submit"
            aria-label="Edit the file in your fork of this project" data-hotkey="e" data-disable-with>
            <span class="octicon octicon-pencil"></span>
          </button>
</form>        <!-- </textarea> --><!-- '"` --><form accept-charset="UTF-8" action="/BigBearGCU/GP2BaseCode/delete/master/cmake/findFBX.cmake" class="inline-form" data-form-nonce="0753e66d29ed52fe89cfd8895adbe63ee49867b1" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="rU8sJscjMkMNmA1zXuBgbJPKaQg/kMTg5OsPvWmnRXjiZYhG4M7IbMxF0V0j2iZvXgRlH2GtxkBJG4N4/R3vhw==" /></div>
          <button class="octicon-btn octicon-btn-danger tooltipped tooltipped-nw" type="submit"
            aria-label="Delete the file in your fork of this project" data-disable-with>
            <span class="octicon octicon-trashcan"></span>
          </button>
</form>  </div>

  <div class="file-info">
      79 lines (68 sloc)
      <span class="file-info-divider"></span>
    2.17 KB
  </div>
</div>

  

  <div class="blob-wrapper data type-cmake">
      <table class="highlight tab-size js-file-line-container" data-tab-size="8">
      <tr>
        <td id="L1" class="blob-num js-line-number" data-line-number="1"></td>
        <td id="LC1" class="blob-code blob-code-inner js-file-line"><span class="pl-c"># Locate FBX</span></td>
      </tr>
      <tr>
        <td id="L2" class="blob-num js-line-number" data-line-number="2"></td>
        <td id="LC2" class="blob-code blob-code-inner js-file-line"><span class="pl-c"># This module defines:</span></td>
      </tr>
      <tr>
        <td id="L3" class="blob-num js-line-number" data-line-number="3"></td>
        <td id="LC3" class="blob-code blob-code-inner js-file-line"><span class="pl-c"># FBX_INCLUDE_DIR, where to find the headers</span></td>
      </tr>
      <tr>
        <td id="L4" class="blob-num js-line-number" data-line-number="4"></td>
        <td id="LC4" class="blob-code blob-code-inner js-file-line"><span class="pl-c">#</span></td>
      </tr>
      <tr>
        <td id="L5" class="blob-num js-line-number" data-line-number="5"></td>
        <td id="LC5" class="blob-code blob-code-inner js-file-line"><span class="pl-c"># FBX_LIBRARY, FBX_LIBRARY_DEBUG</span></td>
      </tr>
      <tr>
        <td id="L6" class="blob-num js-line-number" data-line-number="6"></td>
        <td id="LC6" class="blob-code blob-code-inner js-file-line"><span class="pl-c"># FBX_FOUND</span></td>
      </tr>
      <tr>
        <td id="L7" class="blob-num js-line-number" data-line-number="7"></td>
        <td id="LC7" class="blob-code blob-code-inner js-file-line"><span class="pl-c">#</span></td>
      </tr>
      <tr>
        <td id="L8" class="blob-num js-line-number" data-line-number="8"></td>
        <td id="LC8" class="blob-code blob-code-inner js-file-line"><span class="pl-c"># $FBX_DIR is an environment variable that would</span></td>
      </tr>
      <tr>
        <td id="L9" class="blob-num js-line-number" data-line-number="9"></td>
        <td id="LC9" class="blob-code blob-code-inner js-file-line"><span class="pl-c"># correspond to the ./configure --prefix=$FBX_DIR</span></td>
      </tr>
      <tr>
        <td id="L10" class="blob-num js-line-number" data-line-number="10"></td>
        <td id="LC10" class="blob-code blob-code-inner js-file-line"><span class="pl-c">#</span></td>
      </tr>
      <tr>
        <td id="L11" class="blob-num js-line-number" data-line-number="11"></td>
        <td id="LC11" class="blob-code blob-code-inner js-file-line"><span class="pl-c"># $LIB_VER is a variable defined for type -md or -mt, </span></td>
      </tr>
      <tr>
        <td id="L12" class="blob-num js-line-number" data-line-number="12"></td>
        <td id="LC12" class="blob-code blob-code-inner js-file-line"><span class="pl-c"># if not assumed plain lib</span></td>
      </tr>
      <tr>
        <td id="L13" class="blob-num js-line-number" data-line-number="13"></td>
        <td id="LC13" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L14" class="blob-num js-line-number" data-line-number="14"></td>
        <td id="LC14" class="blob-code blob-code-inner js-file-line"><span class="pl-k">IF</span>(APPLE)</td>
      </tr>
      <tr>
        <td id="L15" class="blob-num js-line-number" data-line-number="15"></td>
        <td id="LC15" class="blob-code blob-code-inner js-file-line">	<span class="pl-c1">SET</span>(FBX_LIBDIR <span class="pl-s">&quot;clang&quot;</span>)</td>
      </tr>
      <tr>
        <td id="L16" class="blob-num js-line-number" data-line-number="16"></td>
        <td id="LC16" class="blob-code blob-code-inner js-file-line">	<span class="pl-c1">SET</span>(FBX_LIBEXT <span class="pl-s">&quot;a&quot;</span>)</td>
      </tr>
      <tr>
        <td id="L17" class="blob-num js-line-number" data-line-number="17"></td>
        <td id="LC17" class="blob-code blob-code-inner js-file-line"><span class="pl-k">ELSEIF</span>(CMAKE_COMPILER_IS_GNUCXX)</td>
      </tr>
      <tr>
        <td id="L18" class="blob-num js-line-number" data-line-number="18"></td>
        <td id="LC18" class="blob-code blob-code-inner js-file-line">  <span class="pl-c1">SET</span>(FBX_LIBDIR <span class="pl-s">&quot;gcc4&quot;</span>)</td>
      </tr>
      <tr>
        <td id="L19" class="blob-num js-line-number" data-line-number="19"></td>
        <td id="LC19" class="blob-code blob-code-inner js-file-line"><span class="pl-k">ELSEIF</span>(MSVC80)</td>
      </tr>
      <tr>
        <td id="L20" class="blob-num js-line-number" data-line-number="20"></td>
        <td id="LC20" class="blob-code blob-code-inner js-file-line">  <span class="pl-c1">SET</span>(FBX_LIBDIR <span class="pl-s">&quot;vs2005&quot;</span>)</td>
      </tr>
      <tr>
        <td id="L21" class="blob-num js-line-number" data-line-number="21"></td>
        <td id="LC21" class="blob-code blob-code-inner js-file-line"><span class="pl-k">ELSEIF</span>(MSVC90)</td>
      </tr>
      <tr>
        <td id="L22" class="blob-num js-line-number" data-line-number="22"></td>
        <td id="LC22" class="blob-code blob-code-inner js-file-line">  <span class="pl-c1">SET</span>(FBX_LIBDIR <span class="pl-s">&quot;vs2008&quot;</span>)</td>
      </tr>
      <tr>
        <td id="L23" class="blob-num js-line-number" data-line-number="23"></td>
        <td id="LC23" class="blob-code blob-code-inner js-file-line"><span class="pl-k">ELSEIF</span>(MSVC10)</td>
      </tr>
      <tr>
        <td id="L24" class="blob-num js-line-number" data-line-number="24"></td>
        <td id="LC24" class="blob-code blob-code-inner js-file-line">  <span class="pl-c1">SET</span>(FBX_LIBDIR <span class="pl-s">&quot;vs2010&quot;</span>)</td>
      </tr>
      <tr>
        <td id="L25" class="blob-num js-line-number" data-line-number="25"></td>
        <td id="LC25" class="blob-code blob-code-inner js-file-line"><span class="pl-k">ELSEIF</span>(MSVC11)</td>
      </tr>
      <tr>
        <td id="L26" class="blob-num js-line-number" data-line-number="26"></td>
        <td id="LC26" class="blob-code blob-code-inner js-file-line">  <span class="pl-c1">SET</span>(FBX_LIBDIR <span class="pl-s">&quot;vs2012&quot;</span>)</td>
      </tr>
      <tr>
        <td id="L27" class="blob-num js-line-number" data-line-number="27"></td>
        <td id="LC27" class="blob-code blob-code-inner js-file-line"><span class="pl-k">ELSEIF</span>(MSVC12 <span class="pl-k">OR</span> MSVC_VERSION&gt;1800)</td>
      </tr>
      <tr>
        <td id="L28" class="blob-num js-line-number" data-line-number="28"></td>
        <td id="LC28" class="blob-code blob-code-inner js-file-line">  <span class="pl-c1">SET</span>(FBX_LIBDIR <span class="pl-s">&quot;vs2013&quot;</span>)</td>
      </tr>
      <tr>
        <td id="L29" class="blob-num js-line-number" data-line-number="29"></td>
        <td id="LC29" class="blob-code blob-code-inner js-file-line">  <span class="pl-c1">SET</span>(FBX_LIBEXT <span class="pl-s">&quot;lib&quot;</span>)</td>
      </tr>
      <tr>
        <td id="L30" class="blob-num js-line-number" data-line-number="30"></td>
        <td id="LC30" class="blob-code blob-code-inner js-file-line"><span class="pl-k">ENDIF</span>()</td>
      </tr>
      <tr>
        <td id="L31" class="blob-num js-line-number" data-line-number="31"></td>
        <td id="LC31" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L32" class="blob-num js-line-number" data-line-number="32"></td>
        <td id="LC32" class="blob-code blob-code-inner js-file-line"><span class="pl-k">IF</span>(APPLE)</td>
      </tr>
      <tr>
        <td id="L33" class="blob-num js-line-number" data-line-number="33"></td>
        <td id="LC33" class="blob-code blob-code-inner js-file-line">  	    <span class="pl-c"># do nothing</span></td>
      </tr>
      <tr>
        <td id="L34" class="blob-num js-line-number" data-line-number="34"></td>
        <td id="LC34" class="blob-code blob-code-inner js-file-line"><span class="pl-k">ELSEIF</span>(CMAKE_CL_64)</td>
      </tr>
      <tr>
        <td id="L35" class="blob-num js-line-number" data-line-number="35"></td>
        <td id="LC35" class="blob-code blob-code-inner js-file-line">  <span class="pl-c1">SET</span>(FBX_LIBDIR <span class="pl-v">${FBX_LIBDIR}</span>/x64)</td>
      </tr>
      <tr>
        <td id="L36" class="blob-num js-line-number" data-line-number="36"></td>
        <td id="LC36" class="blob-code blob-code-inner js-file-line"><span class="pl-k">ELSEIF</span>(CMAKE_COMPILER_IS_GNUCXX <span class="pl-k">AND</span> CMAKE_SIZEOF_VOID_P <span class="pl-k">EQUAL</span> 8)</td>
      </tr>
      <tr>
        <td id="L37" class="blob-num js-line-number" data-line-number="37"></td>
        <td id="LC37" class="blob-code blob-code-inner js-file-line">  <span class="pl-c1">SET</span>(FBX_LIBDIR <span class="pl-v">${FBX_LIBDIR}</span>/x64)</td>
      </tr>
      <tr>
        <td id="L38" class="blob-num js-line-number" data-line-number="38"></td>
        <td id="LC38" class="blob-code blob-code-inner js-file-line"><span class="pl-k">ELSE</span>()</td>
      </tr>
      <tr>
        <td id="L39" class="blob-num js-line-number" data-line-number="39"></td>
        <td id="LC39" class="blob-code blob-code-inner js-file-line">  <span class="pl-c1">SET</span>(FBX_LIBDIR <span class="pl-v">${FBX_LIBDIR}</span>/x86)</td>
      </tr>
      <tr>
        <td id="L40" class="blob-num js-line-number" data-line-number="40"></td>
        <td id="LC40" class="blob-code blob-code-inner js-file-line"><span class="pl-k">ENDIF</span>()</td>
      </tr>
      <tr>
        <td id="L41" class="blob-num js-line-number" data-line-number="41"></td>
        <td id="LC41" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L42" class="blob-num js-line-number" data-line-number="42"></td>
        <td id="LC42" class="blob-code blob-code-inner js-file-line"><span class="pl-c1">SET</span>(FBX_LIBNAME <span class="pl-s">&quot;libfbxsdk&quot;</span>)</td>
      </tr>
      <tr>
        <td id="L43" class="blob-num js-line-number" data-line-number="43"></td>
        <td id="LC43" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L44" class="blob-num js-line-number" data-line-number="44"></td>
        <td id="LC44" class="blob-code blob-code-inner js-file-line"><span class="pl-c1">SET</span>(FBX_LIBNAME_DEBUG <span class="pl-v">${FBX_LIBNAME}</span>)</td>
      </tr>
      <tr>
        <td id="L45" class="blob-num js-line-number" data-line-number="45"></td>
        <td id="LC45" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L46" class="blob-num js-line-number" data-line-number="46"></td>
        <td id="LC46" class="blob-code blob-code-inner js-file-line"><span class="pl-c1">SET</span>( FBX_SEARCH_PATHS</td>
      </tr>
      <tr>
        <td id="L47" class="blob-num js-line-number" data-line-number="47"></td>
        <td id="LC47" class="blob-code blob-code-inner js-file-line">	    <span class="pl-v">$ENV{FBX_DIR}</span></td>
      </tr>
      <tr>
        <td id="L48" class="blob-num js-line-number" data-line-number="48"></td>
        <td id="LC48" class="blob-code blob-code-inner js-file-line">	    <span class="pl-s">&quot;<span class="pl-v">$ENV{ProgramW6432}</span>/Autodesk/FBX/FBX SDK/2015.1&quot;</span></td>
      </tr>
      <tr>
        <td id="L49" class="blob-num js-line-number" data-line-number="49"></td>
        <td id="LC49" class="blob-code blob-code-inner js-file-line">	    <span class="pl-s">&quot;<span class="pl-v">$ENV{PROGRAMFILES}</span>/Autodesk/FBX/FBX SDK/2015.1&quot;</span></td>
      </tr>
      <tr>
        <td id="L50" class="blob-num js-line-number" data-line-number="50"></td>
        <td id="LC50" class="blob-code blob-code-inner js-file-line">	    /Applications/Autodesk/FBXSDK20151</td>
      </tr>
      <tr>
        <td id="L51" class="blob-num js-line-number" data-line-number="51"></td>
        <td id="LC51" class="blob-code blob-code-inner js-file-line">      <span class="pl-s">&quot;<span class="pl-v">$ENV{ProgramW6432}</span>/Autodesk/FBX/FBX SDK/2014.2&quot;</span></td>
      </tr>
      <tr>
        <td id="L52" class="blob-num js-line-number" data-line-number="52"></td>
        <td id="LC52" class="blob-code blob-code-inner js-file-line">      <span class="pl-s">&quot;<span class="pl-v">$ENV{PROGRAMFILES}</span>/Autodesk/FBX/FBX SDK/2014.2&quot;</span></td>
      </tr>
      <tr>
        <td id="L53" class="blob-num js-line-number" data-line-number="53"></td>
        <td id="LC53" class="blob-code blob-code-inner js-file-line">      /Applications/Autodesk/FBXSDK20142</td>
      </tr>
      <tr>
        <td id="L54" class="blob-num js-line-number" data-line-number="54"></td>
        <td id="LC54" class="blob-code blob-code-inner js-file-line">      /Applications/Autodesk/FBXSDK20141</td>
      </tr>
      <tr>
        <td id="L55" class="blob-num js-line-number" data-line-number="55"></td>
        <td id="LC55" class="blob-code blob-code-inner js-file-line">      <span class="pl-s">&quot;/Applications/Autodesk/FBX SDK/2016.0&quot;</span>)</td>
      </tr>
      <tr>
        <td id="L56" class="blob-num js-line-number" data-line-number="56"></td>
        <td id="LC56" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L57" class="blob-num js-line-number" data-line-number="57"></td>
        <td id="LC57" class="blob-code blob-code-inner js-file-line"><span class="pl-c">#I think the last line in the search path is an old typo, but let&#39;s search for 2014.1 anyway - LV</span></td>
      </tr>
      <tr>
        <td id="L58" class="blob-num js-line-number" data-line-number="58"></td>
        <td id="LC58" class="blob-code blob-code-inner js-file-line"><span class="pl-c"># search for headers &amp; debug/release libraries</span></td>
      </tr>
      <tr>
        <td id="L59" class="blob-num js-line-number" data-line-number="59"></td>
        <td id="LC59" class="blob-code blob-code-inner js-file-line"><span class="pl-c1">FIND_PATH</span>(FBX_INCLUDE_DIR <span class="pl-s">&quot;fbxsdk.h&quot;</span></td>
      </tr>
      <tr>
        <td id="L60" class="blob-num js-line-number" data-line-number="60"></td>
        <td id="LC60" class="blob-code blob-code-inner js-file-line">  <span class="pl-k">PATHS</span> <span class="pl-v">${FBX_SEARCH_PATHS}</span></td>
      </tr>
      <tr>
        <td id="L61" class="blob-num js-line-number" data-line-number="61"></td>
        <td id="LC61" class="blob-code blob-code-inner js-file-line">  <span class="pl-k">PATH_SUFFIXES</span> <span class="pl-s">&quot;include&quot;</span>)</td>
      </tr>
      <tr>
        <td id="L62" class="blob-num js-line-number" data-line-number="62"></td>
        <td id="LC62" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L63" class="blob-num js-line-number" data-line-number="63"></td>
        <td id="LC63" class="blob-code blob-code-inner js-file-line">  <span class="pl-c1">FIND_LIBRARY</span>( FBX_LIBRARY <span class="pl-s">&quot;<span class="pl-v">${FBX_LIBNAME}</span>.<span class="pl-v">${FBX_LIBEXT}</span>&quot;</span></td>
      </tr>
      <tr>
        <td id="L64" class="blob-num js-line-number" data-line-number="64"></td>
        <td id="LC64" class="blob-code blob-code-inner js-file-line">    <span class="pl-k">PATHS</span> <span class="pl-v">${FBX_SEARCH_PATHS}</span></td>
      </tr>
      <tr>
        <td id="L65" class="blob-num js-line-number" data-line-number="65"></td>
        <td id="LC65" class="blob-code blob-code-inner js-file-line">  <span class="pl-k">PATH_SUFFIXES</span> <span class="pl-s">&quot;lib/<span class="pl-v">${FBX_LIBDIR}</span>/release&quot;</span>)</td>
      </tr>
      <tr>
        <td id="L66" class="blob-num js-line-number" data-line-number="66"></td>
        <td id="LC66" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L67" class="blob-num js-line-number" data-line-number="67"></td>
        <td id="LC67" class="blob-code blob-code-inner js-file-line"><span class="pl-c">#Once one of the calls succeeds the result variable will be set and stored in the cache so that no call will search again.</span></td>
      </tr>
      <tr>
        <td id="L68" class="blob-num js-line-number" data-line-number="68"></td>
        <td id="LC68" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L69" class="blob-num js-line-number" data-line-number="69"></td>
        <td id="LC69" class="blob-code blob-code-inner js-file-line"><span class="pl-c">#no debug d suffix, search in debug folder only</span></td>
      </tr>
      <tr>
        <td id="L70" class="blob-num js-line-number" data-line-number="70"></td>
        <td id="LC70" class="blob-code blob-code-inner js-file-line"><span class="pl-c1">FIND_LIBRARY</span>( FBX_LIBRARY_DEBUG <span class="pl-s">&quot;<span class="pl-v">${FBX_LIBNAME}</span>.<span class="pl-v">${FBX_LIBEXT}</span>&quot;</span></td>
      </tr>
      <tr>
        <td id="L71" class="blob-num js-line-number" data-line-number="71"></td>
        <td id="LC71" class="blob-code blob-code-inner js-file-line">  <span class="pl-k">PATHS</span> <span class="pl-v">${FBX_SEARCH_PATHS}</span></td>
      </tr>
      <tr>
        <td id="L72" class="blob-num js-line-number" data-line-number="72"></td>
        <td id="LC72" class="blob-code blob-code-inner js-file-line"><span class="pl-k">PATH_SUFFIXES</span> <span class="pl-s">&quot;lib/<span class="pl-v">${FBX_LIBDIR}</span>/debug&quot;</span>)</td>
      </tr>
      <tr>
        <td id="L73" class="blob-num js-line-number" data-line-number="73"></td>
        <td id="LC73" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L74" class="blob-num js-line-number" data-line-number="74"></td>
        <td id="LC74" class="blob-code blob-code-inner js-file-line"><span class="pl-k">IF</span>(FBX_LIBRARY <span class="pl-k">AND</span> FBX_LIBRARY_DEBUG <span class="pl-k">AND</span> FBX_INCLUDE_DIR)</td>
      </tr>
      <tr>
        <td id="L75" class="blob-num js-line-number" data-line-number="75"></td>
        <td id="LC75" class="blob-code blob-code-inner js-file-line">  <span class="pl-c1">SET</span>(FBX_FOUND <span class="pl-s">&quot;YES&quot;</span>)</td>
      </tr>
      <tr>
        <td id="L76" class="blob-num js-line-number" data-line-number="76"></td>
        <td id="LC76" class="blob-code blob-code-inner js-file-line"><span class="pl-k">ELSE</span>()</td>
      </tr>
      <tr>
        <td id="L77" class="blob-num js-line-number" data-line-number="77"></td>
        <td id="LC77" class="blob-code blob-code-inner js-file-line">  <span class="pl-c1">SET</span>(FBX_FOUND <span class="pl-s">&quot;<span class="pl-c1">NO</span>&quot;</span>)</td>
      </tr>
      <tr>
        <td id="L78" class="blob-num js-line-number" data-line-number="78"></td>
        <td id="LC78" class="blob-code blob-code-inner js-file-line"><span class="pl-k">ENDIF</span>()</td>
      </tr>
</table>

  </div>

</div>

<a href="#jump-to-line" rel="facebox[.linejump]" data-hotkey="l" style="display:none">Jump to Line</a>
<div id="jump-to-line" style="display:none">
  <!-- </textarea> --><!-- '"` --><form accept-charset="UTF-8" action="" class="js-jump-to-line-form" method="get"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /></div>
    <input class="linejump-input js-jump-to-line-field" type="text" placeholder="Jump to line&hellip;" aria-label="Jump to line" autofocus>
    <button type="submit" class="btn">Go</button>
</form></div>

        </div>
      </div>
      <div class="modal-backdrop"></div>
    </div>
  </div>


    </div>

      <div class="container">
  <div class="site-footer" role="contentinfo">
    <ul class="site-footer-links right">
        <li><a href="https://status.github.com/" data-ga-click="Footer, go to status, text:status">Status</a></li>
      <li><a href="https://developer.github.com" data-ga-click="Footer, go to api, text:api">API</a></li>
      <li><a href="https://training.github.com" data-ga-click="Footer, go to training, text:training">Training</a></li>
      <li><a href="https://shop.github.com" data-ga-click="Footer, go to shop, text:shop">Shop</a></li>
        <li><a href="https://github.com/blog" data-ga-click="Footer, go to blog, text:blog">Blog</a></li>
        <li><a href="https://github.com/about" data-ga-click="Footer, go to about, text:about">About</a></li>
        <li><a href="https://github.com/pricing" data-ga-click="Footer, go to pricing, text:pricing">Pricing</a></li>

    </ul>

    <a href="https://github.com" aria-label="Homepage">
      <span class="mega-octicon octicon-mark-github" title="GitHub"></span>
</a>
    <ul class="site-footer-links">
      <li>&copy; 2015 <span title="0.09089s from github-fe117-cp1-prd.iad.github.net">GitHub</span>, Inc.</li>
        <li><a href="https://github.com/site/terms" data-ga-click="Footer, go to terms, text:terms">Terms</a></li>
        <li><a href="https://github.com/site/privacy" data-ga-click="Footer, go to privacy, text:privacy">Privacy</a></li>
        <li><a href="https://github.com/security" data-ga-click="Footer, go to security, text:security">Security</a></li>
        <li><a href="https://github.com/contact" data-ga-click="Footer, go to contact, text:contact">Contact</a></li>
        <li><a href="https://help.github.com" data-ga-click="Footer, go to help, text:help">Help</a></li>
    </ul>
  </div>
</div>



    
    
    

    <div id="ajax-error-message" class="flash flash-error">
      <span class="octicon octicon-alert"></span>
      <button type="button" class="flash-close js-flash-close js-ajax-error-dismiss" aria-label="Dismiss error">
        <span class="octicon octicon-x"></span>
      </button>
      Something went wrong with that request. Please try again.
    </div>


      <script crossorigin="anonymous" integrity="sha256-Fhzsf0y5oYf2bC7Lj1nJCY4q1kRYr5F+xy+dYda4CJs=" src="https://assets-cdn.github.com/assets/frameworks-161cec7f4cb9a187f66c2ecb8f59c9098e2ad64458af917ec72f9d61d6b8089b.js"></script>
      <script async="async" crossorigin="anonymous" integrity="sha256-AeBuUc0vHfpdPj/Wk3VX+LYqM1stM8vtkO/wfSX6UoU=" src="https://assets-cdn.github.com/assets/github-01e06e51cd2f1dfa5d3e3fd6937557f8b62a335b2d33cbed90eff07d25fa5285.js"></script>
      
      
    <div class="js-stale-session-flash stale-session-flash flash flash-warn flash-banner hidden">
      <span class="octicon octicon-alert"></span>
      <span class="signed-in-tab-flash">You signed in with another tab or window. <a href="">Reload</a> to refresh your session.</span>
      <span class="signed-out-tab-flash">You signed out in another tab or window. <a href="">Reload</a> to refresh your session.</span>
    </div>
  </body>
</html>

