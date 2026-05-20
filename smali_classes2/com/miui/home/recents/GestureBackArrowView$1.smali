.class Lcom/miui/home/recents/GestureBackArrowView$1;
.super Lcom/miui/home/launcher/anim/AnimationSuccessListener;
.source "GestureBackArrowView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/GestureBackArrowView;->startArrowAnimating(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/GestureBackArrowView;

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lcom/miui/home/recents/GestureBackArrowView;Z)V
    .locals 0

    .line 242
    iput-object p1, p0, Lcom/miui/home/recents/GestureBackArrowView$1;->this$0:Lcom/miui/home/recents/GestureBackArrowView;

    iput-boolean p2, p0, Lcom/miui/home/recents/GestureBackArrowView$1;->val$show:Z

    invoke-direct {p0}, Lcom/miui/home/launcher/anim/AnimationSuccessListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationSuccess(Landroid/animation/Animator;)V
    .locals 1

    .line 245
    iget-object p1, p0, Lcom/miui/home/recents/GestureBackArrowView$1;->this$0:Lcom/miui/home/recents/GestureBackArrowView;

    invoke-static {p1}, Lcom/miui/home/recents/GestureBackArrowView;->access$000(Lcom/miui/home/recents/GestureBackArrowView;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/miui/home/recents/GestureBackArrowView$1;->val$show:Z

    if-eqz p1, :cond_0

    .line 246
    iget-object p1, p0, Lcom/miui/home/recents/GestureBackArrowView$1;->this$0:Lcom/miui/home/recents/GestureBackArrowView;

    invoke-static {p1}, Lcom/miui/home/recents/GestureBackArrowView;->access$100(Lcom/miui/home/recents/GestureBackArrowView;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "mArrowAnimator Success performGestureReadyBack"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    invoke-static {}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->getInstance()Lcom/miui/home/launcher/common/HapticFeedbackCompat;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->performGestureReadyBack()V

    .line 248
    iget-object p0, p0, Lcom/miui/home/recents/GestureBackArrowView$1;->this$0:Lcom/miui/home/recents/GestureBackArrowView;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/miui/home/recents/GestureBackArrowView;->access$002(Lcom/miui/home/recents/GestureBackArrowView;Z)Z

    :cond_0
    return-void
.end method
