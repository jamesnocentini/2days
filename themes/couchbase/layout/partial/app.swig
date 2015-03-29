<li class="plugin on">
    <div class="plugin-screenshot">
        <img src="{{ url_for('community/images/' + app.name + '.png') }}" class="plugin-screenshot-img">
        {% if app.link %}
            <a href="{{ app.link }}" class="plugin-preview-link" target="_blank"><i class="fa fa-eye"></i></a>
        {% endif %}
    </div>
    <a href="{{ app.link }}" class="plugin-name" target="_blank">{{ app.name }}</a>
    <p class="plugin-desc">{{ app.description }}</p>

    {% if app.ios %}
        <a href="{{ app.ios }}" target="_blank">
            <img src="{{ url_for('community/images/ios-store.png') }}" alt=""/>
        </a>
    {% endif %}

    {% if app.android %}
        <a href="{{ app.android }}" target="_blank">
            <img src="{{ url_for('community/images/google-play.png') }}" alt=""/>
        </a>
    {% endif %}

</li>