@php $diaspora_categories = App\Models\Category::getCategories(1, null, 4); @endphp
@php $diaspora_categories_more = []; @endphp

<!-- Navigation -->
<nav class="navbar navbar-expand-lg navbar-dark fixed-top bg-dark">
    <div class="container">
      <a href="{{ route('index') }}" class="logo"><img src="{{ asset('public/img/edufif.png') }}" width="100%" title="FRES Media Oy"></a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
          <li class="nav-item"><a class="nav-link" href="en/integration/index.html">Integration</a></li>
          <li class="nav-item"><a class="nav-link" href="en/community/index.html">Community</a></li>
          <li class="nav-item"><a class="nav-link" href="en/finland/index.html">Finland</a></li>
          <li class="nav-item"><a class="nav-link" href="en/links/index.html">Links</a></li>
          <li class="nav-item"><a class="nav-link" href="en/trainings/index.html">Trainings</a></li>
          <li class="nav-item"><a class="nav-link" href="en/network/index.html">Network</a></li>
          <li class="nav-item"><a class="nav-link" href="en/dictionary/index.html">Dictionary</a></li>
        </ul>
        <div class="btn-group">
         <button type="button" class="btn btn-secondary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">EN</button>
           <div class="dropdown-menu dropdown-menu-left languages">
             <h1><a href="../al/index.html">AL (Shqip)</a></h1>
             <h1><a href="../fi/index.html">FI (Suomi)</a></h1>
           </div>
        </div>
      </div>
    </div>
  </nav>
