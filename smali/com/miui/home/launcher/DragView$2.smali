.class Lcom/miui/home/launcher/DragView$2;
.super Ljava/lang/Object;
.source "DragView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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

.field final synthetic val$finalAlpha:F

.field final synthetic val$finalScale:F

.field final synthetic val$fromRotation:F

.field final synthetic val$initialAlpha:F

.field final synthetic val$initialScale:F


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/DragView;FFFFF)V
    .locals 0

    .line 1036
    iput-object p1, p0, Lcom/miui/home/launcher/DragView$2;->this$0:Lcom/miui/home/launcher/DragView;

    iput p2, p0, Lcom/miui/home/launcher/DragView$2;->val$initialScale:F

    iput p3, p0, Lcom/miui/home/launcher/DragView$2;->val$finalScale:F

    iput p4, p0, Lcom/miui/home/launcher/DragView$2;->val$finalAlpha:F

    iput p5, p0, Lcom/miui/home/launcher/DragView$2;->val$initialAlpha:F

    iput p6, p0, Lcom/miui/home/launcher/DragView$2;->val$fromRotation:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    .line 1039
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    .line 1040
    iget v2, p0, Lcom/miui/home/launcher/DragView$2;->val$initialScale:F

    iget v3, p0, Lcom/miui/home/launcher/DragView$2;->val$finalScale:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, v1

    add-float/2addr v2, v3

    .line 1041
    iget-object v3, p0, Lcom/miui/home/launcher/DragView$2;->this$0:Lcom/miui/home/launcher/DragView;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->setScaleX(F)V

    .line 1042
    iget-object v3, p0, Lcom/miui/home/launcher/DragView$2;->this$0:Lcom/miui/home/launcher/DragView;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->setScaleY(F)V

    .line 1043
    iget-object v2, p0, Lcom/miui/home/launcher/DragView$2;->this$0:Lcom/miui/home/launcher/DragView;

    invoke-static {v2}, Lcom/miui/home/launcher/DragView;->access$100(Lcom/miui/home/launcher/DragView;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1044
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v3

    long-to-float p1, v3

    invoke-virtual {p0, v2, p1}, Lcom/miui/home/launcher/DragView$2;->refreshFolder2x2Preview(FF)V

    .line 1046
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/DragView$2;->this$0:Lcom/miui/home/launcher/DragView;

    iget v2, p0, Lcom/miui/home/launcher/DragView$2;->val$finalAlpha:F

    mul-float/2addr v2, v0

    iget v3, p0, Lcom/miui/home/launcher/DragView$2;->val$initialAlpha:F

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 1048
    iget-object p1, p0, Lcom/miui/home/launcher/DragView$2;->this$0:Lcom/miui/home/launcher/DragView;

    iget v2, p0, Lcom/miui/home/launcher/DragView$2;->val$fromRotation:F

    const/4 v3, 0x0

    sub-float/2addr v3, v2

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setRotation(F)V

    .line 1049
    iget-object p0, p0, Lcom/miui/home/launcher/DragView$2;->this$0:Lcom/miui/home/launcher/DragView;

    invoke-static {p0, v1}, Lcom/miui/home/launcher/DragView;->access$200(Lcom/miui/home/launcher/DragView;F)V

    return-void
.end method

.method public refreshFolder2x2Preview(FF)V
    .locals 2

    .line 1060
    iget-object p2, p0, Lcom/miui/home/launcher/DragView$2;->this$0:Lcom/miui/home/launcher/DragView;

    invoke-static {p2}, Lcom/miui/home/launcher/DragView;->access$300(Lcom/miui/home/launcher/DragView;)Ljava/lang/Runnable;

    move-result-object p2

    if-eqz p2, :cond_0

    float-to-double p1, p1

    const-wide v0, 0x3fefae147ae147aeL    # 0.99

    cmpl-double p1, p1, v0

    if-lez p1, :cond_0

    .line 1061
    iget-object p0, p0, Lcom/miui/home/launcher/DragView$2;->this$0:Lcom/miui/home/launcher/DragView;

    invoke-static {p0}, Lcom/miui/home/launcher/DragView;->access$300(Lcom/miui/home/launcher/DragView;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
