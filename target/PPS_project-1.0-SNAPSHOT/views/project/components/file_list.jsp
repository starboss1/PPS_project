<%--
  Created by IntelliJ IDEA.
  User: 1
  Date: 18.11.2020
  Time: 16:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<table>
    <thead>
    <tr>
        <th>Filename</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="file" items="${files}">
        <tr class="file">
            <td><a class="name" href="${file}">${file}</a> </td>
            <td class="actions">
                <span style="float:left;">
                    <a data-toggle="modal" data-target="#deleteModal" data-filename="${file}">
                        <button class="mb-1 mt-1 mr-1 btn btn-xs btn-default">
                            <i class="far fa-trash-alt"></i>
                        </button>
                    </a>
                </span>
            </td>
        </tr>
    </c:forEach>

    </tbody>
</table>
