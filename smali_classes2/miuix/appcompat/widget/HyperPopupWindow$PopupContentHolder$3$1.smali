.class Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3$1;
.super Lmiuix/animation/listener/TransitionListener;
.source "HyperPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;

.field final synthetic val$endHeight:I

.field final synthetic val$endPaddingBottom:I

.field final synthetic val$endPaddingTop:I

.field final synthetic val$startHeight:I

.field final synthetic val$startPaddingBottom:I

.field final synthetic val$startPaddingTop:I


# direct methods
.method constructor <init>(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;IIIIII)V
    .locals 0

    .line 632
    iput-object p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3$1;->this$2:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;

    iput p2, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3$1;->val$startPaddingTop:I

    iput p3, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3$1;->val$endPaddingTop:I

    iput p4, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3$1;->val$startPaddingBottom:I

    iput p5, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3$1;->val$endPaddingBottom:I

    iput p6, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3$1;->val$startHeight:I

    iput p7, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3$1;->val$endHeight:I

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Ljava/lang/Object;)V
    .locals 1

    .line 669
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onCancel(Ljava/lang/Object;)V

    .line 670
    iget-object p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3$1;->this$2:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;

    iget-object p1, p1, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;->this$1:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    iget-object p1, p1, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    invoke-static {p1}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$100(Lmiuix/appcompat/widget/HyperPopupWindow;)Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->access$2102(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;Z)Z

    .line 671
    iget-object p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3$1;->this$2:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;

    iget-object p1, p1, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;->this$1:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    iget-object p1, p1, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    invoke-static {p1}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$400(Lmiuix/appcompat/widget/HyperPopupWindow;)Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 672
    iget-object p0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3$1;->this$2:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;

    iget-object p0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;->this$1:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    iget-object p0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    invoke-static {p0}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$400(Lmiuix/appcompat/widget/HyperPopupWindow;)Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    move-result-object p0

    invoke-static {p0, v0}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->access$2102(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;Z)Z

    :cond_0
    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .locals 1

    .line 660
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onComplete(Ljava/lang/Object;)V

    .line 661
    iget-object p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3$1;->this$2:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;

    iget-object p1, p1, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;->this$1:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    iget-object p1, p1, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    invoke-static {p1}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$100(Lmiuix/appcompat/widget/HyperPopupWindow;)Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->access$2102(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;Z)Z

    .line 662
    iget-object p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3$1;->this$2:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;

    iget-object p1, p1, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;->this$1:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    iget-object p1, p1, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    invoke-static {p1}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$400(Lmiuix/appcompat/widget/HyperPopupWindow;)Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 663
    iget-object p0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3$1;->this$2:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;

    iget-object p0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;->this$1:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    iget-object p0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    invoke-static {p0}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$400(Lmiuix/appcompat/widget/HyperPopupWindow;)Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    move-result-object p0

    invoke-static {p0, v0}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->access$2102(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;Z)Z

    :cond_0
    return-void
.end method

.method public onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Collection<",
            "Lmiuix/animation/listener/UpdateInfo;",
            ">;)V"
        }
    .end annotation

    .line 635
    invoke-super {p0, p1, p2}, Lmiuix/animation/listener/TransitionListener;->onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V

    const-string p1, "fraction"

    .line 636
    invoke-static {p2, p1}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 640
    :cond_0
    invoke-virtual {p1}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    move-result p1

    .line 641
    iget-object p2, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3$1;->this$2:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;

    iget v0, p2, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;->val$clipStartLeft:I

    int-to-float v1, v0

    iget v2, p2, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;->val$clipEndLeft:I

    sub-int/2addr v2, v0

    int-to-float v0, v2

    mul-float/2addr v0, p1

    add-float/2addr v1, v0

    float-to-int v0, v1

    .line 642
    iget v1, p2, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;->val$clipStartTop:I

    int-to-float v2, v1

    iget v3, p2, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;->val$clipEndTop:I

    sub-int/2addr v3, v1

    int-to-float v1, v3

    mul-float/2addr v1, p1

    add-float/2addr v2, v1

    float-to-int v1, v2

    .line 643
    iget v2, p2, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;->val$clipStartRight:I

    int-to-float v3, v2

    iget v4, p2, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;->val$clipEndRight:I

    sub-int/2addr v4, v2

    int-to-float v2, v4

    mul-float/2addr v2, p1

    add-float/2addr v3, v2

    float-to-int v2, v3

    .line 644
    iget v3, p2, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;->val$clipStartBottom:I

    int-to-float v4, v3

    iget v5, p2, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;->val$clipEndBottom:I

    sub-int/2addr v5, v3

    int-to-float v3, v5

    mul-float/2addr v3, p1

    add-float/2addr v4, v3

    float-to-int v3, v4

    .line 645
    iget-object p2, p2, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;->this$1:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    iget-object p2, p2, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    invoke-static {p2}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$2200(Lmiuix/appcompat/widget/HyperPopupWindow;)Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;

    move-result-object p2

    invoke-virtual {p2, v0, v1, v2, v3}, Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;->setClipBounds(IIII)V

    .line 646
    iget-object p2, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3$1;->this$2:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;

    iget-object p2, p2, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;->this$1:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    iget-object p2, p2, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    invoke-static {p2}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$2200(Lmiuix/appcompat/widget/HyperPopupWindow;)Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;

    move-result-object p2

    invoke-virtual {p2}, Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;->refreshClipPath()V

    .line 647
    iget-object p2, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3$1;->this$2:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;

    iget v0, p2, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;->val$startLeft:I

    int-to-float v1, v0

    iget v2, p2, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;->val$endLeft:I

    sub-int/2addr v2, v0

    int-to-float v0, v2

    mul-float/2addr v0, p1

    add-float/2addr v1, v0

    float-to-int v3, v1

    .line 648
    iget v0, p2, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;->val$startTop:I

    int-to-float v1, v0

    iget v2, p2, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;->val$endTop:I

    sub-int/2addr v2, v0

    int-to-float v0, v2

    mul-float/2addr v0, p1

    add-float/2addr v1, v0

    float-to-int v4, v1

    .line 649
    iget v0, p2, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;->val$startRight:I

    int-to-float v1, v0

    iget v2, p2, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;->val$endRight:I

    sub-int/2addr v2, v0

    int-to-float v0, v2

    mul-float/2addr v0, p1

    add-float/2addr v1, v0

    float-to-int v5, v1

    .line 650
    iget v0, p2, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;->val$startBottom:I

    int-to-float v1, v0

    iget v2, p2, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;->val$endBottom:I

    sub-int/2addr v2, v0

    int-to-float v0, v2

    mul-float/2addr v0, p1

    add-float/2addr v1, v0

    float-to-int v6, v1

    .line 654
    iget v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3$1;->val$startHeight:I

    int-to-float v1, v0

    iget p0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3$1;->val$endHeight:I

    sub-int/2addr p0, v0

    int-to-float p0, p0

    mul-float/2addr p0, p1

    add-float/2addr v1, p0

    float-to-int v7, v1

    .line 655
    iget-object p0, p2, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;->this$1:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    invoke-static {p0}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->access$1200(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;)Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;

    move-result-object v2

    invoke-virtual/range {v2 .. v7}, Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;->updateLeftTopRightBottom(IIIII)V

    return-void
.end method
