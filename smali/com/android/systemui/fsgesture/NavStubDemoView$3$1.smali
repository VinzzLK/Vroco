.class Lcom/android/systemui/fsgesture/NavStubDemoView$3$1;
.super Ljava/lang/Object;
.source "NavStubDemoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/fsgesture/NavStubDemoView$3;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/fsgesture/NavStubDemoView$3;


# direct methods
.method constructor <init>(Lcom/android/systemui/fsgesture/NavStubDemoView$3;)V
    .locals 0

    .line 504
    iput-object p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$3$1;->this$1:Lcom/android/systemui/fsgesture/NavStubDemoView$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 507
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 508
    iget-object v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$3$1;->this$1:Lcom/android/systemui/fsgesture/NavStubDemoView$3;

    iget-object v1, v1, Lcom/android/systemui/fsgesture/NavStubDemoView$3;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/systemui/fsgesture/HomeDemoAct;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "DEMO_TYPE"

    const-string v2, "DEMO_FULLY_SHOW"

    .line 509
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "FULLY_SHOW_STEP"

    const/4 v2, 0x2

    .line 510
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 511
    iget-object v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$3$1;->this$1:Lcom/android/systemui/fsgesture/NavStubDemoView$3;

    iget-object v1, v1, Lcom/android/systemui/fsgesture/NavStubDemoView$3;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    invoke-static {v1}, Lcom/android/systemui/fsgesture/NavStubDemoView;->access$1600(Lcom/android/systemui/fsgesture/NavStubDemoView;)Z

    move-result v1

    const-string v2, "IS_FROM_PROVISION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 512
    iget-object v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$3$1;->this$1:Lcom/android/systemui/fsgesture/NavStubDemoView$3;

    iget-object v1, v1, Lcom/android/systemui/fsgesture/NavStubDemoView$3;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 513
    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$3$1;->this$1:Lcom/android/systemui/fsgesture/NavStubDemoView$3;

    iget-object v0, v0, Lcom/android/systemui/fsgesture/NavStubDemoView$3;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    invoke-static {v0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->access$1700(Lcom/android/systemui/fsgesture/NavStubDemoView;)Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/miui/home/gesturedemo/R$anim;->activity_start_enter:I

    sget v2, Lcom/miui/home/gesturedemo/R$anim;->activity_start_exit:I

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 514
    iget-object p0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$3$1;->this$1:Lcom/android/systemui/fsgesture/NavStubDemoView$3;

    iget-object p0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$3;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    invoke-static {p0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->access$1700(Lcom/android/systemui/fsgesture/NavStubDemoView;)Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
