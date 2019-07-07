<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="../css/main.css">
    <link rel="stylesheet" href="../css/detail.css">
    <script src="https://kit.fontawesome.com/79b7c3f541.js"></script>
    <script src="../js/main.js"></script>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <title>Title</title>
<!--</head>-->
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-info">
    <!--    <a class="navbar-brand" href="#">mini bbs</a>-->
    <ul class="navbar-nav mr-auto">
        <li class="nav-item active">
            <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="#">Book <span class="sr-only">(current)</span></a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="#">User <span class="sr-only">(current)</span></a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="#">Rank <span class="sr-only">(current)</span></a>
        </li>
    </ul>
</nav>

<div class="comment-title mt-4">
    <h2 class="text-center text-grey">
        亲测：lsp-python-ms vs pyls 性能
    </h2>
    <div class="archive-bar text-center">
        <button class="btn btn-sm btn-primary">
            Emacs-general
        </button>
        <button class="btn btn-sm btn-info">
            Spacemacs
        </button>
    </div>
</div>

<div class="container comment-block mt-4">

    <div class="comments mt-4">
        <table class="table">
            <tbody>
            <tr>
                <th>
                    <div class="user-avatar">
                        <img src="https://s3.amazonaws.com/uifaces/faces/twitter/BillSKenney/73.jpg">
                    </div>
                </th>
                <td>
                    <div class="contents">
                        <div class="info row text-grey">
                            <div class="col-4">
                                xuuexu
                            </div>
                            <div class="col-6">

                            </div>
                            <div class="col-2">
                                3天前
                            </div>
                        </div>
                        <div class="mt-2">
                            和宿舍垃圾桶不能有垃圾、阳台不能晾衣服、洗漱台不能有洗漱工具、杂物床不能放杂物、书桌上不可以有书等这些规定比起来，上课不能喝水好像显得没那么荒唐了。虽然说国有国法，校有校规，但是有的校规已经到了不可理喻的地步了。比如我以前的初中，规定所有学生除了必须穿校服以外，还必须穿回力鞋。而且规定是临时发布的，执行时间只有一天，第二天谁没有穿回力的，没收鞋子，光脚回家。当天我们整个镇子回力鞋脱销，无数学生在五点半放学后坐公交到隔壁镇买鞋子，数量庞大的住宿生，要在七点晚自修之前买到鞋子并回到学校，买完还要回来写作业，就这样还有三成左右的学生没有买到，第二天没有买到鞋子的同学集体到升旗台前罚站，并且把鞋子脱掉交给班主任。还有一件事，也是发生在我初中，在我初二的时候。学校突然规定过了十点半以后不许洗澡，一经发现取消住宿资格。我们学校晚自修九点十五分下课，而我们学校又非常喜欢留堂，还有部分学生放学后有时或被老师叫去办公室谈话的，回到宿舍就已经十点多了，还得排队洗澡，一过十点半领导开始到宿舍巡查，躲无可躲。所以很多学生回宿舍太晚都会选择不洗澡，而有几个经常被留堂的学生，经常会因为长时间没法洗澡而滋生皮肤病。
                        </div>
                        <div class="mt-2 contents-tool-bar row">
                            <div class="col-8">
                            </div>
                            <div class="col-1">
                                <button class="btn">
<!--                                    空心和实心-->
<!--                                    <i class="far fa-heart"></i>-->
                                    <i class="fas fa-heart"></i>
                                </button>
                            </div>
                            <div class="col-1">
                                <button class="btn">
                                    <i class="fas fa-link"></i>
                                </button>
                            </div>
                            <div class="col-2">
                                <button class="btn" type="button" data-toggle="collapse" data-target="#reply-collapse" aria-expanded="false" aria-controls="reply-collapse">>
                                    <i class="fas fa-reply"> </i> 回复
                                </button>
                            </div>
                        </div>
                        <div class="reply-section collapse mt-2" id="reply-collapse">
                            <div class="card card-body">
                                <h5 class="card-title">xuuexu</h5>
                                <p class="card-text">层主保重！</p>
                            </div>
                            <div class="form-group mt-1">
                                <input class="form-control mt-1">
                                <button type="submit" class="btn btn-primary mt-1 float-right">回复</button>
                            </div>
                        </div>
                    </div>
                </td>
            </tr>

<!--            第二个-->
            <tr>
                <th>
                    <div class="user-avatar">
                        <img src="https://s3.amazonaws.com/uifaces/faces/twitter/BillSKenney/73.jpg">
                    </div>
                </th>
                <td>
                    <div class="contents">
                        <div class="info row text-grey">
                            <div class="col-4">
                                xuuexu
                            </div>
                            <div class="col-6">

                            </div>
                            <div class="col-2">
                                3天前
                            </div>
                        </div>
                        <div class="mt-2">
                            和宿舍垃圾桶不能有垃圾、阳台不能晾衣服、洗漱台不能有洗漱工具、杂物床不能放杂物、书桌上不可以有书等这些规定比起来，上课不能喝水好像显得没那么荒唐了。虽然说国有国法，校有校规，但是有的校规已经到了不可理喻的地步了。比如我以前的初中，规定所有学生除了必须穿校服以外，还必须穿回力鞋。而且规定是临时发布的，执行时间只有一天，第二天谁没有穿回力的，没收鞋子，光脚回家。当天我们整个镇子回力鞋脱销，无数学生在五点半放学后坐公交到隔壁镇买鞋子，数量庞大的住宿生，要在七点晚自修之前买到鞋子并回到学校，买完还要回来写作业，就这样还有三成左右的学生没有买到，第二天没有买到鞋子的同学集体到升旗台前罚站，并且把鞋子脱掉交给班主任。还有一件事，也是发生在我初中，在我初二的时候。学校突然规定过了十点半以后不许洗澡，一经发现取消住宿资格。我们学校晚自修九点十五分下课，而我们学校又非常喜欢留堂，还有部分学生放学后有时或被老师叫去办公室谈话的，回到宿舍就已经十点多了，还得排队洗澡，一过十点半领导开始到宿舍巡查，躲无可躲。所以很多学生回宿舍太晚都会选择不洗澡，而有几个经常被留堂的学生，经常会因为长时间没法洗澡而滋生皮肤病。
                        </div>
                        <div class="mt-2 contents-tool-bar row">
                            <div class="col-8">
                            </div>
                            <div class="col-1">
                                <button class="btn">
                                    <!--                                    空心和实心-->
                                    <!--                                    <i class="far fa-heart"></i>-->
                                    <i class="fas fa-heart"></i>
                                </button>
                            </div>
                            <div class="col-1">
                                <button class="btn">
                                    <i class="fas fa-link"></i>
                                </button>
                            </div>
                            <div class="col-2">
                                <button class="btn">
                                    <i class="fas fa-reply"></i>回复
                                </button>
                            </div>

                        </div>
                    </div>
                </td>
            </tr>
            </tbody>
        </table>
    </div>
    <hr>
    <form>
    <div class="create-new-comment form-group">
        <textarea class="form-control send-comment" rows="4">
        </textarea>
        <div class="row mt-2 ">
            <div class="col-11">
            </div>
            <div class="col-1">
                <button class="btn btn-primary">Send</button>
            </div>
        </div>
    </div>
    </form>

</div>

</body>
</html>