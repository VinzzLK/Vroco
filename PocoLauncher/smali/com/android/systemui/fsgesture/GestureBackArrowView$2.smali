.class Lcom/android/systemui/fsgesture/GestureBackArrowView$2;
.super Ljava/lang/Object;
.source "GestureBackArrowView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/fsgesture/GestureBackArrowView;->changeScale(FFIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/fsgesture/GestureBackArrowView;

.field final synthetic val$isAdjustWithScale:Z

.field final synthetic val$start:F


# direct methods
.method constructor <init>(Lcom/android/systemui/fsgesture/GestureBackArrowView;ZF)V
    .locals 0

    .line 288
    iput-object p1, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView$2;->this$0:Lcom/android/systemui/fsgesture/GestureBackArrowView;

    iput-boolean p2, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView$2;->val$isAdjustWithScale:Z

    iput p3, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView$2;->val$start:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 291
    iget-boolean v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView$2;->val$isAdjustWithScale:Z

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView$2;->this$0:Lcom/android/systemui/fsgesture/GestureBackArrowView;

    iget v1, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView$2;->val$start:F

    sget-object v2, Lcom/android/systemui/fsgesture/BackGestureUtils;->INSTANCE:Lcom/android/systemui/fsgesture/BackGestureUtils;

    invoke-static {v0}, Lcom/android/systemui/fsgesture/GestureBackArrowView;->access$400(Lcom/android/systemui/fsgesture/GestureBackArrowView;)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/fsgesture/BackGestureUtils;->convertOffset(F)F

    move-result v2

    const/high16 v3, 0x41a00000    # 20.0f

    div-float/2addr v2, v3

    iget v3, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView$2;->val$start:F

    sub-float/2addr v2, v3

    .line 293
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    .line 292
    invoke-static {v0, v1}, Lcom/android/systemui/fsgesture/GestureBackArrowView;->access$302(Lcom/android/systemui/fsgesture/GestureBackArrowView;F)F

    goto :goto_0

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView$2;->this$0:Lcom/android/systemui/fsgesture/GestureBackArrowView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/android/systemui/fsgesture/GestureBackArrowView;->access$302(Lcom/android/systemui/fsgesture/GestureBackArrowView;F)F

    .line 297
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView$2;->this$0:Lcom/android/systemui/fsgesture/GestureBackArrowView;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
