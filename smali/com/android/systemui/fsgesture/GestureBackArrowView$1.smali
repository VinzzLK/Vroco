.class Lcom/android/systemui/fsgesture/GestureBackArrowView$1;
.super Ljava/lang/Object;
.source "GestureBackArrowView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/fsgesture/GestureBackArrowView;->startArrowAnimating(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/fsgesture/GestureBackArrowView;

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/fsgesture/GestureBackArrowView;Z)V
    .locals 0

    .line 239
    iput-object p1, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView$1;->this$0:Lcom/android/systemui/fsgesture/GestureBackArrowView;

    iput-boolean p2, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView$1;->val$show:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 242
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 243
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView$1;->this$0:Lcom/android/systemui/fsgesture/GestureBackArrowView;

    invoke-static {v0}, Lcom/android/systemui/fsgesture/GestureBackArrowView;->access$000(Lcom/android/systemui/fsgesture/GestureBackArrowView;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 244
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView$1;->this$0:Lcom/android/systemui/fsgesture/GestureBackArrowView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    if-nez p1, :cond_0

    .line 245
    iget-boolean v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView$1;->val$show:Z

    if-nez v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView$1;->this$0:Lcom/android/systemui/fsgesture/GestureBackArrowView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/fsgesture/GestureBackArrowView;->access$102(Lcom/android/systemui/fsgesture/GestureBackArrowView;Z)Z

    .line 248
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView$1;->this$0:Lcom/android/systemui/fsgesture/GestureBackArrowView;

    invoke-static {p0, p1}, Lcom/android/systemui/fsgesture/GestureBackArrowView;->access$202(Lcom/android/systemui/fsgesture/GestureBackArrowView;I)I

    return-void
.end method
