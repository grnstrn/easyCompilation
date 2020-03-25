<#import "parts/common.ftl" as c>
<@c.page>
<div class="form-row">
    <div class="form-group col-md-6">
    <form method="get" action="/main" class="form-inline">
        <input type="text" name="filter" value="${filter!}" placeholder="Search by tag">
        <button type="submit" class="btn btn-primary ml-2">Search</button>
    </form>
    </div>
</div>
    <a class="btn btn-primary" data-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
        Add new film
    </a>

    <div class="collapse" id="collapseExample">
        <div class="form-group mt-3">
        <form method="post" enctype="multipart/form-data">
            <div class="form-group">
            <input type="text" class="form-control" name="text" placeholder="Add film"/>
            </div>
            <div class="form-group">
            <input type="text" class="form-control" name="tag" placeholder="Tag"/>
            </div>
            <div class="form-group">
            <div class="custom-file">
            <input type="file" name="file" id="customFile">
                <label class="custom-file-label" for="customFile">Browse file</label>
            </div>
            </div>
            <input type="hidden" name="_csrf" value="${_csrf.token}" />
            <button type="submit" class="btn btn-primary">Add</button>
        </form>
        </div>
    </div>

<div class="card-columns">
<#list films as film>

    <div class="card my-3" >

            <#if film.filename??>
                <img src="/img/${film.filename}" class="card-img-top">
            </#if>

        <div class="m-2">
        <span>${film.text}</span>
        <i>${film.tag}</i>
        </div>
        <div class="card-footer text-muted">
        ${film.authorName}
        </div>
    </div>
<#else>
    No messages
</#list>
</div>
</@c.page>