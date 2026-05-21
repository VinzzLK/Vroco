.class Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$4;
.super Ljava/lang/Object;
.source "FsGestureBackDemoActivity.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->finishGesture(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$4;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    .line 214
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 216
    iget-object v1, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$4;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-static {v1}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->access$1000(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x4

    aget v2, v0, v2

    const/4 v3, 0x2

    aget v3, v0, v3

    const/4 v4, 0x5

    aget v0, v0, v4

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v5, v4, v1

    mul-float/2addr v5, p1

    add-float/2addr v5, v1

    sub-float v1, v4, v2

    mul-float/2addr v1, p1

    add-float/2addr v1, v2

    sub-float/2addr v4, p1

    mul-float/2addr v3, v4

    mul-float/2addr v0, v4

    .line 227
    iget-object p1, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$4;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-static {p1}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->access$1000(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    .line 228
    iget-object p1, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$4;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-static {p1}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->access$1000(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p1, v5, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 229
    iget-object p1, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$4;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-static {p1}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->access$1000(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p1, v3, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 230
    iget-object p1, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$4;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-static {p1}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->access$1100(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)Landroid/view/View;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$4;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-static {p0}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->access$1000(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)Landroid/graphics/Matrix;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setAnimationMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method
