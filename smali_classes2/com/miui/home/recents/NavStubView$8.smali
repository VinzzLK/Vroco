.class Lcom/miui/home/recents/NavStubView$8;
.super Ljava/lang/Object;
.source "NavStubView.java"

# interfaces
.implements Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringUserCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/NavStubView;->startAppToHomeAnim(Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/NavStubView;

.field final synthetic val$isStatusBarIconTypeAnim:Z

.field final synthetic val$launchAppAndBackHomeAnimTarget:Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/NavStubView;ZLcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;)V
    .locals 0

    .line 4395
    iput-object p1, p0, Lcom/miui/home/recents/NavStubView$8;->this$0:Lcom/miui/home/recents/NavStubView;

    iput-boolean p2, p0, Lcom/miui/home/recents/NavStubView$8;->val$isStatusBarIconTypeAnim:Z

    iput-object p3, p0, Lcom/miui/home/recents/NavStubView$8;->val$launchAppAndBackHomeAnimTarget:Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lcom/miui/home/recents/util/RectFSpringAnim;)V
    .locals 2

    .line 4432
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v1, "startAppToHomeAnim onAnimationCancel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4433
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/NavStubView$8;->onSurfaceEnd(Lcom/miui/home/recents/util/RectFSpringAnim;)V

    .line 4434
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/NavStubView$8;->onIconAnimationEnd(Lcom/miui/home/recents/util/RectFSpringAnim;)V

    return-void
.end method

.method public onAnimationStart(Lcom/miui/home/recents/util/RectFSpringAnim;)V
    .locals 1

    .line 4398
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$8;->this$0:Lcom/miui/home/recents/NavStubView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/miui/home/recents/NavStubView;->access$3800(Lcom/miui/home/recents/NavStubView;Z)V

    .line 4399
    iget-boolean p1, p0, Lcom/miui/home/recents/NavStubView$8;->val$isStatusBarIconTypeAnim:Z

    if-eqz p1, :cond_0

    .line 4400
    sget-object p1, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;->INSTANCE:Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;

    invoke-virtual {p1}, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;->notifyAnimStartedForStatusBar()V

    .line 4402
    :cond_0
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$8;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p1}, Lcom/miui/home/recents/NavStubView;->access$3900(Lcom/miui/home/recents/NavStubView;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4403
    sget-object p1, Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;->INSTANCE:Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;

    invoke-virtual {p1}, Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;->onAnimBackToStatusBarStart()V

    .line 4405
    :cond_1
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$8;->val$launchAppAndBackHomeAnimTarget:Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    if-eqz p1, :cond_2

    const/4 v0, 0x4

    .line 4406
    invoke-interface {p1, v0}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->setAnimTargetVisibility(I)V

    .line 4407
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView$8;->val$launchAppAndBackHomeAnimTarget:Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    invoke-interface {p0}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->onEnterHomeAnimStart()V

    :cond_2
    return-void
.end method

.method public onIconAnimationEnd(Lcom/miui/home/recents/util/RectFSpringAnim;)V
    .locals 0

    .line 4418
    iget-boolean p1, p0, Lcom/miui/home/recents/NavStubView$8;->val$isStatusBarIconTypeAnim:Z

    if-eqz p1, :cond_0

    .line 4419
    sget-object p1, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;->INSTANCE:Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;

    invoke-virtual {p1}, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;->notifyAnimEndForStatusBar()V

    .line 4421
    :cond_0
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$8;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p1}, Lcom/miui/home/recents/NavStubView;->access$3900(Lcom/miui/home/recents/NavStubView;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4422
    sget-object p1, Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;->INSTANCE:Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;

    invoke-virtual {p1}, Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;->onAnimBackToStatusBarEnd()V

    .line 4424
    :cond_1
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView$8;->val$launchAppAndBackHomeAnimTarget:Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    if-eqz p0, :cond_2

    .line 4425
    invoke-interface {p0}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->onEnterHomeAnimFinish()V

    :cond_2
    return-void
.end method

.method public onSurfaceEnd(Lcom/miui/home/recents/util/RectFSpringAnim;)V
    .locals 0

    .line 4413
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView$8;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->finishAppToHomeNew()V

    return-void
.end method
