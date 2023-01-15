<#import "parts/common.ftl" as c>

<@c.page>

    <form method="post">
        <input type="text" name="text" placeholder="Текст задачи" />
        <input type="text" name="tag" placeholder="Ответ">
        <input type="hidden" name="_csrf" value="${_csrf.token}" />
        <button type="submit">Добавить</button>
    </form>

    <#list katas as kata>
        <div class="kata-card">
            <div class="kata-text">${kata.text}</div>
            <div class="kata-answer">${kata.tag}</div>
        </div>
        <#else>
        blank
    </#list>
</@c.page>
<style>
    .kata-card {
        width: 100%;
        height: 300px;
        margin-bottom: 10px;
        background-color: bisque;
        display: flex;
    }

    .kata-text {
        width: 1500px;
        height: 300px;
        background-color: bisque;
    }
    .kata-answer {
        background-color: cornsilk;
        width: 100%;
        height: 300px;
    }
</style>
