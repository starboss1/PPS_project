<%--
  Created by IntelliJ IDEA.
  User: 1
  Date: 17.11.2020
  Time: 22:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
    <link rel="stylesheet" href="styles/style.css"/>
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    <title>Project</title>
</head>
<body>
    <div class="d-flex flex-column flex-md-row align-items-center p-3 bg-white text-dark border-bottom box-shadow">
        <h4 class="my-0 mr-md-auto font-weight-normal">Project</h4>
        <div class="actions my-2 my-md-0 mr-md-3">
            <a data-toggle="modal" data-target="#addProjectModal">
                <button class="btn btn-primary p-2">+Add Project</button>
            </a>
            <a data-toggle="modal" data-target="#editProjectModal">
                <button class="btn btn-primary p-2 " >Edit</button>
            </a>
        </div>
    </div>
    <hr style="border: none; color: black; background-color: black; height: 4px; margin: 0px;"/>
    <div class="container-fluid mt-2">

        <jsp:include page="components/project_header.jsp"/>

        <jsp:include page="components/project_details.jsp"/>

        <div class=" d-flex justify-content-end mt-3">
            <a data-toggle="modal" data-target="#addFileModal">
                <button class="btn btn-primary mx-1">+Add File</button>
            </a>
        </div>
        <div class="row mt-3">
            <div class="col-lg-4"><img src="${photo_add}" alt="Project photo" class="img-fluid product-image"></div>
            <div class="col-lg-8">
                <div>
                    <textarea class="form-control" readonly>${files_description}</textarea>
                </div>
                <div class="file-list mt-1">
                    <jsp:include page="components/file_list.jsp"/>
                </div>
            </div>
        </div>
    </div>
    <jsp:include page="components/modal_windows.jsp"/>
</body>
<script>
    $('#deleteFileModal').on('show.bs.modal', function (event) {
        let elem = $(event.relatedTarget);
        let recipient = elem.data('filename');
        let modal = $(this);

        modal.find('.modal-body').text('Are you sure you want to delete file '+recipient);
    });
</script>
</html>
