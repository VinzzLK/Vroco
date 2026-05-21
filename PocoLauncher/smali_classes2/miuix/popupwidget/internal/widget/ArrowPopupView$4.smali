.class Lmiuix/popupwidget/internal/widget/ArrowPopupView$4;
.super Landroid/view/ViewOutlineProvider;
.source "ArrowPopupView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/popupwidget/internal/widget/ArrowPopupView;->addShadow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;


# direct methods
.method constructor <init>(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)V
    .locals 0

    .line 375
    iput-object p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$4;->this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 7

    .line 378
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 381
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 382
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    .line 383
    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    if-le v0, p1, :cond_1

    sub-int/2addr v0, p1

    .line 385
    div-int/lit8 v0, v0, 0x2

    .line 386
    iget p1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, v0

    iput p1, v1, Landroid/graphics/Rect;->left:I

    .line 387
    iget p1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr p1, v0

    iput p1, v1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_1
    sub-int/2addr p1, v0

    .line 389
    div-int/lit8 p1, p1, 0x2

    .line 390
    iget v0, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p1

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 391
    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, p1

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 393
    :goto_0
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    .line 396
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$4;->this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    invoke-static {v0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->access$600(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)I

    move-result v0

    const/high16 v3, 0x40000000    # 2.0f

    const/16 v4, 0x40

    const/16 v5, 0x20

    const/4 v6, 0x1

    if-eq v0, v5, :cond_6

    if-eq v0, v4, :cond_6

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    .line 425
    :pswitch_0
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$4;->this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    invoke-static {v0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->access$700(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)I

    move-result v0

    if-eq v0, v6, :cond_2

    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$4;->this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    invoke-static {v0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->access$600(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)I

    move-result v0

    const/16 v3, 0x9

    if-eq v0, v3, :cond_3

    :cond_2
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$4;->this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    .line 426
    invoke-static {v0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->access$700(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)I

    move-result v0

    if-ne v0, v6, :cond_4

    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$4;->this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    invoke-static {v0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->access$600(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)I

    move-result v0

    const/16 v3, 0xa

    if-ne v0, v3, :cond_4

    :cond_3
    move v2, v6

    .line 427
    :cond_4
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$4;->this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    invoke-static {v0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->access$800(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0}, Landroid/graphics/Path;->moveTo(FF)V

    const v0, 0x3f333333    # 0.7f

    if-eqz v2, :cond_5

    .line 429
    iget-object v2, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$4;->this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    invoke-static {v2}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->access$800(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    iget v0, v1, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    const v4, 0x3f051eb8    # 0.52f

    mul-float/2addr v0, v4

    iget-object p0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$4;->this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    invoke-static {p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->access$800(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p1, v3, v2, v0, p0}, Landroid/graphics/Path;->quadTo(FFFF)V

    goto :goto_1

    .line 431
    :cond_5
    iget v2, v1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget-object v3, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$4;->this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    invoke-static {v3}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->access$800(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    iget v0, v1, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v0, v4

    iget-object p0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$4;->this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    invoke-static {p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->access$800(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p1, v2, v3, v0, p0}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 433
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    goto/16 :goto_3

    .line 398
    :pswitch_1
    iget p0, v1, Landroid/graphics/Rect;->right:I

    iget v0, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr p0, v0

    int-to-float p0, p0

    div-float/2addr p0, v3

    int-to-float v0, v0

    .line 399
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 400
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    iget v2, v1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    invoke-virtual {p1, p0, v0, v2, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 401
    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    goto :goto_3

    .line 408
    :cond_6
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$4;->this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    invoke-static {v0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->access$700(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)I

    move-result v0

    if-eq v0, v6, :cond_7

    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$4;->this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    invoke-static {v0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->access$600(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)I

    move-result v0

    if-eq v0, v5, :cond_8

    :cond_7
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$4;->this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    .line 409
    invoke-static {v0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->access$700(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)I

    move-result v0

    if-ne v0, v6, :cond_9

    iget-object p0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$4;->this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    invoke-static {p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->access$600(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)I

    move-result p0

    if-ne p0, v4, :cond_9

    :cond_8
    move v2, v6

    .line 410
    :cond_9
    iget p0, v1, Landroid/graphics/Rect;->bottom:I

    iget v0, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr p0, v0

    int-to-float p0, p0

    div-float/2addr p0, v3

    if-eqz v2, :cond_a

    .line 412
    iget v2, v1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    int-to-float v0, v0

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 413
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    iget v2, v1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    invoke-virtual {p1, v0, p0, v2, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    goto :goto_2

    .line 415
    :cond_a
    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    int-to-float v0, v0

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 416
    iget v0, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/2addr v0, v2

    int-to-float v0, v0

    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    invoke-virtual {p1, v0, p0, v2, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 418
    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    .line 436
    :goto_3
    invoke-virtual {p1}, Landroid/graphics/Path;->isConvex()Z

    move-result p0

    if-eqz p0, :cond_b

    .line 437
    invoke-virtual {p2, p1}, Landroid/graphics/Outline;->setConvexPath(Landroid/graphics/Path;)V

    goto :goto_4

    :cond_b
    const-string p0, "ArrowPopupView"

    const-string p1, "outline path is not convex"

    .line 439
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    invoke-virtual {p2, v1}, Landroid/graphics/Outline;->setOval(Landroid/graphics/Rect;)V

    :cond_c
    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
