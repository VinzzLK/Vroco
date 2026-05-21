.class Lcom/miui/home/launcher/DragView$4;
.super Ljava/lang/Object;
.source "DragView.java"

# interfaces
.implements Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/DragView;->calcAndStartAnimate(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/DragView;

.field final synthetic val$dragViewHeight:I

.field final synthetic val$dragViewWidth:I

.field final synthetic val$rectF:Landroid/graphics/RectF;

.field final synthetic val$toX:F

.field final synthetic val$toY:F


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/DragView;FFLandroid/graphics/RectF;II)V
    .locals 0

    .line 1087
    iput-object p1, p0, Lcom/miui/home/launcher/DragView$4;->this$0:Lcom/miui/home/launcher/DragView;

    iput p2, p0, Lcom/miui/home/launcher/DragView$4;->val$toX:F

    iput p3, p0, Lcom/miui/home/launcher/DragView$4;->val$toY:F

    iput-object p4, p0, Lcom/miui/home/launcher/DragView$4;->val$rectF:Landroid/graphics/RectF;

    iput p5, p0, Lcom/miui/home/launcher/DragView$4;->val$dragViewWidth:I

    iput p6, p0, Lcom/miui/home/launcher/DragView$4;->val$dragViewHeight:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;)V
    .locals 4

    .line 1089
    invoke-virtual {p1}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;->getValueX()F

    move-result v0

    iget v1, p0, Lcom/miui/home/launcher/DragView$4;->val$toX:F

    add-float/2addr v0, v1

    .line 1090
    invoke-virtual {p1}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;->getValueY()F

    move-result p1

    iget v1, p0, Lcom/miui/home/launcher/DragView$4;->val$toY:F

    add-float/2addr p1, v1

    .line 1091
    iget-object v1, p0, Lcom/miui/home/launcher/DragView$4;->val$rectF:Landroid/graphics/RectF;

    iget v2, p0, Lcom/miui/home/launcher/DragView$4;->val$dragViewWidth:I

    int-to-float v2, v2

    add-float/2addr v2, v0

    iget v3, p0, Lcom/miui/home/launcher/DragView$4;->val$dragViewHeight:I

    int-to-float v3, v3

    add-float/2addr v3, p1

    invoke-virtual {v1, v0, p1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1092
    iget-object p1, p0, Lcom/miui/home/launcher/DragView$4;->this$0:Lcom/miui/home/launcher/DragView;

    invoke-static {p1}, Lcom/miui/home/launcher/DragView;->access$600(Lcom/miui/home/launcher/DragView;)Lcom/miui/home/recents/anim/WindowElementOffsetHelper;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/home/launcher/DragView$4;->this$0:Lcom/miui/home/launcher/DragView;

    invoke-static {p1}, Lcom/miui/home/launcher/DragView;->access$600(Lcom/miui/home/launcher/DragView;)Lcom/miui/home/recents/anim/WindowElementOffsetHelper;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/home/launcher/DragView$4;->val$rectF:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/anim/WindowElementOffsetHelper;->transformPositionRelativeToAncestor(Landroid/graphics/RectF;)V

    .line 1093
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/DragView$4;->this$0:Lcom/miui/home/launcher/DragView;

    iget-object v0, p0, Lcom/miui/home/launcher/DragView$4;->val$rectF:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 1094
    iget-object p1, p0, Lcom/miui/home/launcher/DragView$4;->this$0:Lcom/miui/home/launcher/DragView;

    iget-object p0, p0, Lcom/miui/home/launcher/DragView$4;->val$rectF:Landroid/graphics/RectF;

    iget p0, p0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setTranslationY(F)V

    return-void
.end method
