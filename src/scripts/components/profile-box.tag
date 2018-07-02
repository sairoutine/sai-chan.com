<profile-box>
  <div class="profile-box page">
    <section class="member" each={ member in opts.profile }>
      <img class="icon" src={ member.icon } alt={ member.name } />
      <h3 class="name">{ member.name }</h3>
      <div class="info">
        <p>{ "Email： " + member.email }</p>
        <p>{ "Job： " + member.job }</p>
      </div>
      <h4 class="sub-title">LINK</h4>
      <div class="links">
        <a each={ link in member.link } href={ link.url } target="_blank">{ link.name }</a>
      </div>
    </section>
  </div>
</profile-box>
