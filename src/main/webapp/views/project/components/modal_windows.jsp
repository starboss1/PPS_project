<%--
  Created by IntelliJ IDEA.
  User: 1
  Date: 18.11.2020
  Time: 16:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- Delete file in project window -->
<div class="modal fade" id="deleteFileModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Delete file</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                Are you sure you want to delete file?
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary">Delete</button>
            </div>
        </div>
    </div>
</div>

<!-- Add file in project modal window -->
<div class="modal fade" id="addFileModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Add file</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form method="post" id="addFileForm" action="#" enctype="multipart/form-data">
                    <div class="form-group">
                        <input id="file-upload" type="file" multiple/>
                    </div>

                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <button type="button" form="addFileForm" class="btn btn-primary">Add file</button>
            </div>
        </div>
    </div>
</div>

<!-- Add project modal window -->
<div class="modal fade" id="addProjectModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
    <div class="modal-dialog modal-lg modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Create new project</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
               <form id="addProjectForm" action="/add_project" method="post" enctype="multipart/form-data">
                   <div class="form-group">
                       <label class="col-form-label">Project name</label>
                       <input type="text" name="name" class="form-control"/>
                   </div>
                   <div class="form-group">
                       <label class="col-form-label">Project description</label>
                       <input type="text" name="description" class="form-control"/>
                   </div>
                   <div class="form-group">
                       <label>Project photo</label>
                       <input class="form-control" name="main_photo" type="file" />
                   </div>
                   <div class="form-group">
                       <label >Statement of work description</label>
                       <textarea class="form-control" name="sow_description" rows="3"></textarea>
                   </div>

                   <div class="form-group">
                       <label >Design description</label>
                       <textarea class="form-control" name="design_description" rows="3"></textarea>
                   </div>

                   <div class="form-group">
                       <label >Print description</label>
                       <textarea class="form-control" name="print_description" rows="3"></textarea>
                   </div>

                   <div class="form-group">
                       <label >Form description</label>
                       <textarea class="form-control" name="form_description" rows="3"></textarea>
                   </div>

                   <div class="form-group">
                       <label >Product description</label>
                       <textarea class="form-control" name="product_description" rows="3"></textarea>
                   </div>

                   <div class="form-group">
                       <label >Files description</label>
                       <textarea class="form-control" name="files_description" rows="3"></textarea>
                   </div>

                   <div class="form-group">
                       <label >Additional project photo</label>
                       <input type="file" class="form-control" name="additional_photo"/>
                   </div>

               </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <button type="button" form="addProjectForm" class="btn btn-primary">Create</button>
            </div>
        </div>
    </div>
</div>

<!-- Edit project modal window -->

<div class="modal fade" id="editProjectModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Modal title</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form id="editProjectForm" action="/edit_project" method="post" enctype="multipart/form-data">
                    <div class="form-group">
                        <label class="col-form-label">Project name</label>
                        <input type="text" name="name" class="form-control" value="${name}"/>
                    </div>
                    <div class="form-group">
                        <label class="col-form-label">Project description</label>
                        <input type="text" name="description" class="form-control" value="${project_description}"/>
                    </div>
                    <div class="form-group">
                        <label>Project photo</label>
                        <input class="form-control" name="main_photo" type="file"/>
                    </div>
                    <div class="form-group">
                        <label>Statement of work description</label>
                        <textarea class="form-control" name="sow_description" rows="3">${SOW_description}</textarea>
                    </div>

                    <div class="form-group">
                        <label>Design description</label>
                        <textarea class="form-control" name="design_description" rows="3">${design_description}</textarea>
                    </div>

                    <div class="form-group">
                        <label >Print description</label>
                        <textarea class="form-control" name="print_description" rows="3">${print_description}</textarea>
                    </div>

                    <div class="form-group">
                        <label>Form description</label>
                        <textarea class="form-control" name="form_description" rows="3">${form_description}</textarea>
                    </div>

                    <div class="form-group">
                        <label>Product description</label>
                        <textarea class="form-control" name="product_description" rows="3">${product_description}</textarea>
                    </div>

                    <div class="form-group">
                        <label>Files description</label>
                        <textarea class="form-control" name="files_description" rows="3">${files_description}</textarea>
                    </div>

                    <div class="form-group">
                        <label>Additional project photo</label>
                        <input type="file" class="form-control" name="additional_photo"/>
                    </div>

                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <button type="button" form="editProjectForm" class="btn btn-primary">Save changes</button>
            </div>
        </div>
    </div>
</div>
