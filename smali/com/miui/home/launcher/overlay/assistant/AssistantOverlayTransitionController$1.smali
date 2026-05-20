.class Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController$1;
.super Ljava/lang/Object;
.source "AssistantOverlayTransitionController.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;->setAlphaAndScaleWhenNotGestureWithAnim(Lcom/miui/home/launcher/LauncherState;Lcom/miui/home/launcher/anim/AnimatorSetBuilder;Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;)V
    .locals 0

    .line 338
    iput-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController$1;->this$0:Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    const-string v0, "scale"

    .line 341
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const-string v1, "alpha"

    .line 342
    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 343
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController$1;->this$0:Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;

    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->setAlphaAndScaleAsync(FF)V

    return-void
.end method
