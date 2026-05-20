.class Lmiuix/internal/widget/ListPopup$3;
.super Ljava/lang/Object;
.source "ListPopup.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/internal/widget/ListPopup;->prepareShow(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Rect;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private lastContentHeight:I

.field final synthetic this$0:Lmiuix/internal/widget/ListPopup;


# direct methods
.method constructor <init>(Lmiuix/internal/widget/ListPopup;)V
    .locals 0

    .line 387
    iput-object p1, p0, Lmiuix/internal/widget/ListPopup$3;->this$0:Lmiuix/internal/widget/ListPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 389
    iput p1, p0, Lmiuix/internal/widget/ListPopup$3;->lastContentHeight:I

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 393
    iget-object p1, p0, Lmiuix/internal/widget/ListPopup$3;->this$0:Lmiuix/internal/widget/ListPopup;

    iget-object p1, p1, Lmiuix/internal/widget/ListPopup;->mContentView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    .line 394
    iget p2, p0, Lmiuix/internal/widget/ListPopup$3;->lastContentHeight:I

    const/4 p4, -0x1

    if-eq p2, p4, :cond_0

    if-eq p2, p1, :cond_3

    :cond_0
    const/4 p2, 0x1

    .line 396
    iget-object p4, p0, Lmiuix/internal/widget/ListPopup$3;->this$0:Lmiuix/internal/widget/ListPopup;

    invoke-static {p4}, Lmiuix/internal/widget/ListPopup;->access$600(Lmiuix/internal/widget/ListPopup;)Landroid/widget/ListView;

    move-result-object p4

    invoke-virtual {p4}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p4

    if-eqz p4, :cond_2

    .line 397
    iget-object p2, p0, Lmiuix/internal/widget/ListPopup$3;->this$0:Lmiuix/internal/widget/ListPopup;

    invoke-static {p2}, Lmiuix/internal/widget/ListPopup;->access$100(Lmiuix/internal/widget/ListPopup;)Landroid/view/View;

    move-result-object p2

    .line 398
    new-instance p4, Landroid/graphics/Rect;

    invoke-direct {p4}, Landroid/graphics/Rect;-><init>()V

    if-eqz p2, :cond_1

    .line 400
    iget-object p6, p0, Lmiuix/internal/widget/ListPopup$3;->this$0:Lmiuix/internal/widget/ListPopup;

    invoke-static {p6, p2}, Lmiuix/internal/widget/ListPopup;->access$700(Lmiuix/internal/widget/ListPopup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    .line 401
    invoke-static {p2, p4}, Lmiuix/internal/util/ViewUtils;->getBoundsInWindow(Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_0

    .line 403
    :cond_1
    iget-object p2, p0, Lmiuix/internal/widget/ListPopup$3;->this$0:Lmiuix/internal/widget/ListPopup;

    invoke-static {p2}, Lmiuix/internal/widget/ListPopup;->access$800(Lmiuix/internal/widget/ListPopup;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lmiuix/core/util/EnvStateManager;->getWindowInfo(Landroid/content/Context;)Lmiuix/core/util/WindowBaseInfo;

    move-result-object p2

    .line 404
    iget-object p2, p2, Lmiuix/core/util/WindowBaseInfo;->windowSize:Landroid/graphics/Point;

    iget p6, p2, Landroid/graphics/Point;->x:I

    iget p2, p2, Landroid/graphics/Point;->y:I

    const/4 p7, 0x0

    invoke-virtual {p4, p7, p7, p6, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 406
    :goto_0
    iget-object p2, p0, Lmiuix/internal/widget/ListPopup$3;->this$0:Lmiuix/internal/widget/ListPopup;

    sub-int/2addr p5, p3

    invoke-virtual {p2, p5, p4}, Lmiuix/internal/widget/ListPopup;->isNeedScroll(ILandroid/graphics/Rect;)Z

    move-result p2

    .line 408
    :cond_2
    iget-object p3, p0, Lmiuix/internal/widget/ListPopup$3;->this$0:Lmiuix/internal/widget/ListPopup;

    iget-object p3, p3, Lmiuix/internal/widget/ListPopup;->mContentView:Landroid/view/View;

    invoke-virtual {p3, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 409
    iget-object p3, p0, Lmiuix/internal/widget/ListPopup$3;->this$0:Lmiuix/internal/widget/ListPopup;

    invoke-static {p3}, Lmiuix/internal/widget/ListPopup;->access$600(Lmiuix/internal/widget/ListPopup;)Landroid/widget/ListView;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 410
    iput p1, p0, Lmiuix/internal/widget/ListPopup$3;->lastContentHeight:I

    :cond_3
    return-void
.end method
