<%--
  Created by IntelliJ IDEA.
  User: 1
  Date: 18.11.2020
  Time: 16:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="row">
    <div class="col-lg-4"><img src="${photo_main}" alt="Project photo" class="img-fluid product-image"></div>
    <div class="col-lg-5">
        <div class="project-name">${name}</div>
        <div class="project-description">${project_description}</div>
    </div>
    <div class="col-lg-3">
        <select id="inputState" class="form-control">
            <option selected>Choose...</option>
            <option>...</option>
        </select>
    </div>
</div>
