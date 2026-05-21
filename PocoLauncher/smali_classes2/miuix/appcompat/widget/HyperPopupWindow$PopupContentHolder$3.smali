.class Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;
.super Ljava/lang/Object;
.source "HyperPopupWindow.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->show(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Rect;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

.field final synthetic val$anchor:Landroid/view/View;

.field final synthetic val$anchorBounds:Landroid/graphics/Rect;

.field final synthetic val$clipEndBottom:I

.field final synthetic val$clipEndLeft:I

.field final synthetic val$clipEndRight:I

.field final synthetic val$clipEndTop:I

.field final synthetic val$clipStartBottom:I

.field final synthetic val$clipStartLeft:I

.field final synthetic val$clipStartRight:I

.field final synthetic val$clipStartTop:I

.field final synthetic val$endBottom:I

.field final synthetic val$endLeft:I

.field final synthetic val$endRight:I

.field final synthetic val$endTop:I

.field final synthetic val$startBottom:I

.field final synthetic val$startLeft:I

.field final synthetic val$startRight:I

.field final synthetic val$startTop:I


# direct methods
.method constructor <init>(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;Landroid/graphics/Rect;Landroid/view/View;IIIIIIIIIIIIIIII)V
    .locals 2

    move-object v0, p0

    move-object v1, p1

    .line 608
    iput-object v1, v0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;->this$1:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    move-object v1, p2

    iput-object v1, v0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;->val$anchorBounds:Landroid/graphics/Rect;

    move-object v1, p3

    iput-object v1, v0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;->val$anchor:Landroid/view/View;

    move v1, p4

    iput v1, v0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;->val$clipStartLeft:I

    move v1, p5

    iput v1, v0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;->val$clipEndLeft:I

    move v1, p6

    iput v1, v0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;->val$clipStartTop:I

    move v1, p7

    iput v1, v0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;->val$clipEndTop:I

    move v1, p8

    iput v1, v0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;->val$clipStartRight:I

    move v1, p9

    iput v1, v0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;->val$clipEndRight:I

    move v1, p10

    iput v1, v0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;->val$clipStartBottom:I

    move v1, p11

    iput v1, v0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;->val$clipEndBottom:I

    move v1, p12

    iput v1, v0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;->val$startLeft:I

    move v1, p13

    iput v1, v0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;->val$endLeft:I

    move/from16 v1, p14

    iput v1, v0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;->val$startTop:I

    move/from16 v1, p15

    iput v1, v0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;->val$endTop:I

    move/from16 v1, p16

    iput v1, v0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;->val$startRight:I

    move/from16 v1, p17

    iput v1, v0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;->val$endRight:I

    move/from16 v1, p18

    iput v1, v0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;->val$startBottom:I

    move/from16 v1, p19

    iput v1, v0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;->val$endBottom:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 13

    .line 611
    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;->this$1:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    invoke-static {v0}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->access$1100(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;)Lmiuix/smooth/SmoothFrameLayout2;

    move-result-object v0

    sget v1, Lmiuix/appcompat/R$id;->tag_secondary_popup_menu_item_head:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 615
    :cond_0
    iget-object v2, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;->this$1:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    invoke-static {v2}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->access$1100(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;)Lmiuix/smooth/SmoothFrameLayout2;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const/16 v2, 0x8

    .line 616
    invoke-virtual {v0, v2}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 617
    iget-object v2, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;->this$1:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    iget-object v3, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;->val$anchorBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v2, v3}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->access$1502(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;I)I

    .line 618
    iget-object v2, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;->this$1:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    iget-object v3, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;->val$anchor:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-static {v2, v3}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->access$1702(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;I)I

    .line 619
    iget-object v2, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;->this$1:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    iget-object v3, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;->val$anchor:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    invoke-static {v2, v3}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->access$1902(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;I)I

    .line 620
    iget-object v2, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;->this$1:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->access$1402(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;I)I

    .line 621
    iget-object v2, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;->this$1:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-static {v2, v3}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->access$1602(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;I)I

    .line 622
    iget-object v2, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;->this$1:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    invoke-static {v2, v3}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->access$1802(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;I)I

    .line 623
    iget-object v2, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;->this$1:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    invoke-static {v2}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->access$1500(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;)I

    move-result v9

    .line 624
    iget-object v2, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;->this$1:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    invoke-static {v2}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->access$1400(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;)I

    move-result v10

    .line 625
    iget-object v2, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;->this$1:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    invoke-static {v2}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->access$1700(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;)I

    move-result v5

    .line 626
    iget-object v2, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;->this$1:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    invoke-static {v2}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->access$1600(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;)I

    move-result v6

    .line 627
    iget-object v2, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;->this$1:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    invoke-static {v2}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->access$1900(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;)I

    move-result v7

    .line 628
    iget-object v2, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;->this$1:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    invoke-static {v2}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->access$1800(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;)I

    move-result v8

    .line 629
    iget-object v2, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;->this$1:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    invoke-static {v2, v0}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->access$1302(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;Landroid/view/View;)Landroid/view/View;

    .line 631
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 v2, 0x1

    new-array v11, v2, [Lmiuix/animation/listener/TransitionListener;

    new-instance v12, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3$1;

    move-object v3, v12

    move-object v4, p0

    invoke-direct/range {v3 .. v10}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3$1;-><init>(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;IIIIII)V

    aput-object v12, v11, v1

    .line 632
    invoke-virtual {v0, v11}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    .line 676
    iget-object v4, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;->this$1:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    invoke-static {v4}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->access$1200(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;)Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v3}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v3

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "fraction"

    aput-object v6, v5, v1

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v2

    invoke-interface {v3, v5}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v3

    const/4 v5, 0x3

    new-array v7, v5, [Ljava/lang/Object;

    aput-object v6, v7, v1

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v7, v2

    aput-object v0, v7, v4

    invoke-interface {v3, v7}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 678
    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;->this$1:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    invoke-static {v0}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->access$1200(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;)Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;->getCornerRadius()F

    move-result v0

    .line 679
    iget-object v3, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;->this$1:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    iget-object v3, v3, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    invoke-static {v3}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$3100(Lmiuix/appcompat/widget/HyperPopupWindow;)F

    move-result v3

    .line 680
    iget-object v6, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;->this$1:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    invoke-static {v6}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->access$1100(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;)Lmiuix/smooth/SmoothFrameLayout2;

    move-result-object v6

    invoke-virtual {v6, v0}, Lmiuix/smooth/SmoothFrameLayout2;->setCornerRadius(F)V

    new-array v0, v2, [Ljava/lang/Object;

    .line 681
    iget-object v6, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;->this$1:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    invoke-static {v6}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->access$1200(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;)Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;

    move-result-object v6

    aput-object v6, v0, v1

    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v0

    new-array v6, v5, [Ljava/lang/Object;

    iget-object v7, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;->this$1:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    .line 682
    invoke-static {v7}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->access$1200(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;)Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;

    move-result-object v7

    invoke-static {v7}, Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;->access$2300(Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;)Lmiuix/animation/property/FloatProperty;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v6, v2

    invoke-static {}, Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;->access$3200()Lmiuix/animation/base/AnimConfig;

    move-result-object v3

    aput-object v3, v6, v4

    invoke-interface {v0, v6}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    new-array v0, v2, [Ljava/lang/Object;

    .line 683
    iget-object v3, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;->this$1:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    invoke-static {v3}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->access$1200(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;)Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v0

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v5, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;->this$1:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    invoke-static {v5}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->access$1200(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;)Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;

    move-result-object v5

    invoke-static {v5}, Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;->access$2500(Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;)Lmiuix/animation/property/FloatProperty;

    move-result-object v5

    aput-object v5, v3, v1

    const/high16 v5, -0x3d4c0000    # -90.0f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v2

    iget-object p0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;->this$1:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    invoke-static {p0}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->access$1200(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;)Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;

    move-result-object p0

    invoke-static {p0}, Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;->access$3300(Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;)Lmiuix/animation/base/AnimConfig;

    move-result-object p0

    aput-object p0, v3, v4

    invoke-interface {v0, v3}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    return v1
.end method
