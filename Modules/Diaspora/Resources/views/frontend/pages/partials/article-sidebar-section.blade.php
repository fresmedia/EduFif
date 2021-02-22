@php
$articles = App\Models\Page::articleByCategory($category->id);
$integrimi_articles = App\Models\Page::articleByTypeAndCategory(1, $category->id);
$komuniteti_articles = App\Models\Page::articleByTypeAndCategory(2, $category->id);
$ku_si_articles = App\Models\Page::articleByTypeAndCategory(3, $category->id);
@endphp

<div class="latest bg-light">
    <div class="accordion" id="accordionExample">
        <div class="accordion-item">
            <h2 class="accordion-header" id="headingOne">
                <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapse1"
                    aria-expanded="true" aria-controls="collapse1">
                    {{ $category->name }}
                </button>
            </h2>
            <div id="collapse1" class="accordion-collapse collapse show" aria-labelledby="headingOne"
                data-bs-parent="#accordionExample">
                <div class="accordion-body">
                    <ol>
                        @foreach ($articles as $article)
                            <li>
                                <a href="{{ route('diaspora.pages.show', [$category->slug, $article->slug]) }}">
                                    {{ $article->title }}
                                </a>
                            </li>
                        @endforeach
                    </ol>
                    @if (count($integrimi_articles) === 0)
                        <div class="text-danger">No Articles Found !!</div>
                    @endif
                </div>
            </div>
        </div>

        <div class="accordion-item">
            <h2 class="accordion-header" id="headingIntegrimi">
                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                    data-bs-target="#collapseIntegrimi" aria-expanded="false" aria-controls="collapseIntegrimi">
                    Integrimi
                </button>
            </h2>
            <div id="collapseIntegrimi" class="accordion-collapse collapse" aria-labelledby="headingIntegrimi"
                data-bs-parent="#accordionExample">
                <div class="accordion-body">
                    <ol>
                        @foreach ($integrimi_articles as $article)
                            <li>
                                <a href="{{ route('diaspora.pages.show', [$category->slug, $article->slug]) }}">
                                    {{ $article->title }}
                                </a>
                            </li>
                        @endforeach
                    </ol>
                    @if (count($integrimi_articles) === 0)
                        <div class="text-danger">No Integrimi Articles Found !!</div>
                    @endif
                </div>
            </div>
        </div>

        <div class="accordion-item">
            <h2 class="accordion-header" id="headingKomuniteti">
                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                    data-bs-target="#collapseKomuniteti" aria-expanded="false" aria-controls="collapseKomuniteti">
                    Komuniteti
                </button>
            </h2>
            <div id="collapseKomuniteti" class="accordion-collapse collapse" aria-labelledby="headingKomuniteti"
                data-bs-parent="#accordionExample">
                <div class="accordion-body">
                    <ol>
                        @foreach ($komuniteti_articles as $article)
                            <li>
                                <a href="{{ route('diaspora.pages.show', [$category->slug, $article->slug]) }}">
                                    {{ $article->title }}
                                </a>
                            </li>
                        @endforeach
                    </ol>
                    @if (count($komuniteti_articles) === 0)
                        <div class="text-danger">No Komuniteti Articles Found !!</div>
                    @endif
                </div>
            </div>
        </div>

        <div class="accordion-item">
            <h2 class="accordion-header" id="headingKUSU">
                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                    data-bs-target="#collapseKUSU" aria-expanded="false" aria-controls="collapseKUSU">
                    KU & SI
                </button>
            </h2>
            <div id="collapseKUSU" class="accordion-collapse collapse" aria-labelledby="headingKUSU"
                data-bs-parent="#accordionExample">
                <div class="accordion-body">
                    <ol>
                        @foreach ($ku_si_articles as $article)
                            <li>
                                <a href="{{ route('diaspora.pages.show', [$category->slug, $article->slug]) }}">
                                    {{ $article->title }}
                                </a>
                            </li>
                        @endforeach
                    </ol>
                    @if (count($ku_si_articles) === 0)
                        <div class="text-danger">No SU & SI Articles Found !!</div>
                    @endif
                </div>
            </div>
        </div>

    </div>
</div>
