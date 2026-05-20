.class Lcom/android/systemui/fsgesture/NavStubDemoView$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NavStubDemoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/fsgesture/NavStubDemoView;->startToHomeAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;


# direct methods
.method constructor <init>(Lcom/android/systemui/fsgesture/NavStubDemoView;)V
    .locals 0

    .line 490
    iput-object p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$3;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 502
    iget-object p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$3;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    invoke-static {p1}, Lcom/android/systemui/fsgesture/NavStubDemoView;->access$1400(Lcom/android/systemui/fsgesture/NavStubDemoView;)Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;->notifyFinish()V

    .line 503
    iget-object p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$3;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    invoke-static {p1}, Lcom/android/systemui/fsgesture/NavStubDemoView;->access$1500(Lcom/android/systemui/fsgesture/NavStubDemoView;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "DEMO_FULLY_SHOW"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-wide/16 v0, 0x3e8

    if-eqz p1, :cond_0

    .line 504
    iget-object p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$3;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    invoke-virtual {p1}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v2, Lcom/android/systemui/fsgesture/NavStubDemoView$3$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/fsgesture/NavStubDemoView$3$1;-><init>(Lcom/android/systemui/fsgesture/NavStubDemoView$3;)V

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 517
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$3;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    invoke-static {p1}, Lcom/android/systemui/fsgesture/NavStubDemoView;->access$1500(Lcom/android/systemui/fsgesture/NavStubDemoView;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "DEMO_TO_HOME"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 518
    iget-object p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$3;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    invoke-virtual {p1}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v2, Lcom/android/systemui/fsgesture/NavStubDemoView$3$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/fsgesture/NavStubDemoView$3$2;-><init>(Lcom/android/systemui/fsgesture/NavStubDemoView$3;)V

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 493
    iget-object p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$3;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    invoke-static {p1}, Lcom/android/systemui/fsgesture/NavStubDemoView;->access$1000(Lcom/android/systemui/fsgesture/NavStubDemoView;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 494
    iget-object p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$3;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    invoke-static {p1}, Lcom/android/systemui/fsgesture/NavStubDemoView;->access$700(Lcom/android/systemui/fsgesture/NavStubDemoView;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 495
    iget-object p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$3;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    invoke-static {p1}, Lcom/android/systemui/fsgesture/NavStubDemoView;->access$1100(Lcom/android/systemui/fsgesture/NavStubDemoView;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 496
    iget-object p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$3;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    invoke-static {p1}, Lcom/android/systemui/fsgesture/NavStubDemoView;->access$1200(Lcom/android/systemui/fsgesture/NavStubDemoView;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 497
    iget-object p0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$3;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    invoke-static {p0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->access$1300(Lcom/android/systemui/fsgesture/NavStubDemoView;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
