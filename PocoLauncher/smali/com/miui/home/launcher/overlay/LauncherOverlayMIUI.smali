.class public abstract Lcom/miui/home/launcher/overlay/LauncherOverlayMIUI;
.super Ljava/lang/Object;
.source "LauncherOverlayMIUI.java"

# interfaces
.implements Lcom/miui/home/launcher/overlay/LauncherOverlay;
.implements Lcom/miui/launcher/overlay/client/LauncherClientCallback;


# instance fields
.field protected mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

.field protected final mLauncher:Lcom/miui/home/launcher/Launcher;

.field protected mLauncherOverlayCallbacks:Lcom/miui/home/launcher/overlay/LauncherOverlayCallbacks;

.field public mLauncherTransitionBaseController:Lcom/miui/home/launcher/overlay/LauncherTransitionBaseController;

.field protected mWasOverlayAttached:Z


# direct methods
.method public static synthetic $r8$lambda$XYQVIVtanyPzs6O34CzXH9dC0XU(Lcom/miui/home/launcher/overlay/LauncherOverlayMIUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/overlay/LauncherOverlayMIUI;->lambda$onOverlayCall$0()V

    return-void
.end method

.method public constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/miui/home/launcher/overlay/LauncherOverlayMIUI;->mWasOverlayAttached:Z

    .line 25
    iput-object p1, p0, Lcom/miui/home/launcher/overlay/LauncherOverlayMIUI;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 26
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/overlay/LauncherOverlayMIUI;->getLauncherTransitionController(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/overlay/LauncherTransitionBaseController;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/overlay/LauncherOverlayMIUI;->mLauncherTransitionBaseController:Lcom/miui/home/launcher/overlay/LauncherTransitionBaseController;

    return-void
.end method

.method private synthetic lambda$onOverlayCall$0()V
    .locals 0

    .line 173
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/LauncherOverlayMIUI;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    if-eqz p0, :cond_0

    .line 174
    invoke-virtual {p0}, Lcom/miui/launcher/overlay/client/LauncherClient;->disconnect()V

    :cond_0
    return-void
.end method


# virtual methods
.method public getLauncherTransitionController(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/overlay/LauncherTransitionBaseController;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "LauncherOverlay.Chinese"

    return-object p0
.end method

.method public hideOverlay(Z)V
    .locals 0

    .line 199
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/LauncherOverlayMIUI;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    if-eqz p0, :cond_0

    .line 200
    invoke-virtual {p0, p1}, Lcom/miui/launcher/overlay/client/LauncherClient;->hideOverlay(I)V

    :cond_0
    return-void
.end method

.method public isDoAnimationBySelf()Z
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/LauncherOverlayMIUI;->mLauncherTransitionBaseController:Lcom/miui/home/launcher/overlay/LauncherTransitionBaseController;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isGoogleOverlay()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onBindingDied()V
    .locals 0

    return-void
.end method

.method public onOverlayCall(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    const-string p3, "method_get_launcher_state"

    .line 165
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_2

    const-string p3, "method_disconected"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return-object p2

    .line 172
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/LauncherOverlayMIUI;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object p1

    new-instance p2, Lcom/miui/home/launcher/overlay/LauncherOverlayMIUI$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/overlay/LauncherOverlayMIUI$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/overlay/LauncherOverlayMIUI;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 177
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string p1, "result_msg"

    const-string/jumbo p2, "success"

    .line 178
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 167
    :cond_2
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/LauncherOverlayMIUI;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherStateManager;->getState()Lcom/miui/home/launcher/LauncherState;

    move-result-object p0

    .line 168
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 169
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const-string p2, "result_launcher_state"

    invoke-virtual {p1, p2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public onOverlayInvoke(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onOverlayScrollChanged(F)V
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/LauncherOverlayMIUI;->mLauncherOverlayCallbacks:Lcom/miui/home/launcher/overlay/LauncherOverlayCallbacks;

    if-eqz p0, :cond_0

    .line 48
    invoke-interface {p0, p1}, Lcom/miui/home/launcher/overlay/LauncherOverlayCallbacks;->onScrollChanged(F)V

    :cond_0
    return-void
.end method

.method public onOverlayScrollEnd(F)V
    .locals 3

    .line 54
    invoke-virtual {p0}, Lcom/miui/home/launcher/overlay/LauncherOverlayMIUI;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOverlayScrollEnd "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/LauncherOverlayMIUI;->mLauncherOverlayCallbacks:Lcom/miui/home/launcher/overlay/LauncherOverlayCallbacks;

    if-eqz p0, :cond_0

    .line 56
    invoke-interface {p0, p1}, Lcom/miui/home/launcher/overlay/LauncherOverlayCallbacks;->onScrollEnd(F)V

    :cond_0
    return-void
.end method

.method public onOverlayScrollStart(F)V
    .locals 3

    .line 39
    invoke-virtual {p0}, Lcom/miui/home/launcher/overlay/LauncherOverlayMIUI;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOverlayScrollStart "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/LauncherOverlayMIUI;->mLauncherOverlayCallbacks:Lcom/miui/home/launcher/overlay/LauncherOverlayCallbacks;

    if-eqz p0, :cond_0

    .line 41
    invoke-interface {p0, p1}, Lcom/miui/home/launcher/overlay/LauncherOverlayCallbacks;->onScrollStart(F)V

    :cond_0
    return-void
.end method

.method public onOverlayUpdate(II)V
    .locals 4

    .line 239
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/LauncherOverlayMIUI;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/launcher/overlay/client/LauncherClient;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 240
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/overlay/LauncherOverlayMIUI;->getLogTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onOverlayUpdate:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    if-ge p1, v1, :cond_1

    if-ge p2, v1, :cond_2

    :cond_1
    if-lt p1, v1, :cond_3

    if-ge p2, v1, :cond_3

    .line 242
    :cond_2
    invoke-virtual {p0}, Lcom/miui/home/launcher/overlay/LauncherOverlayMIUI;->getLogTag()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "killProcess for update:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-static {p0}, Landroid/os/Process;->killProcess(I)V

    :cond_3
    return-void
.end method

.method public onScrollChange(FZ)V
    .locals 2

    .line 128
    invoke-virtual {p0}, Lcom/miui/home/launcher/overlay/LauncherOverlayMIUI;->getLogTag()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onScrollChange  progress:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " isDoAnimationBySelf:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/home/launcher/overlay/LauncherOverlayMIUI;->isDoAnimationBySelf()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object p2, p0, Lcom/miui/home/launcher/overlay/LauncherOverlayMIUI;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    if-eqz p2, :cond_0

    .line 130
    invoke-virtual {p2, p1}, Lcom/miui/launcher/overlay/client/LauncherClient;->updateMove(F)V

    .line 132
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/overlay/LauncherOverlayMIUI;->isDoAnimationBySelf()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 134
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/LauncherOverlayMIUI;->mLauncherTransitionBaseController:Lcom/miui/home/launcher/overlay/LauncherTransitionBaseController;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/overlay/LauncherTransitionBaseController;->onScrollChange(F)V

    :cond_1
    return-void
.end method

.method public onScrollInteractionBegin()V
    .locals 2

    .line 104
    invoke-virtual {p0}, Lcom/miui/home/launcher/overlay/LauncherOverlayMIUI;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onScrollInteractionBegin "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/LauncherOverlayMIUI;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {v0}, Lcom/miui/launcher/overlay/client/LauncherClient;->startMove()V

    .line 108
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/overlay/LauncherOverlayMIUI;->isDoAnimationBySelf()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/LauncherOverlayMIUI;->mLauncherTransitionBaseController:Lcom/miui/home/launcher/overlay/LauncherTransitionBaseController;

    invoke-virtual {p0}, Lcom/miui/home/launcher/overlay/LauncherTransitionBaseController;->onScrollInteractionBegin()V

    :cond_1
    return-void
.end method

.method public onScrollInteractionEnd(FZ)V
    .locals 3

    .line 116
    invoke-virtual {p0}, Lcom/miui/home/launcher/overlay/LauncherOverlayMIUI;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScrollInteractionEnd  velocity:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " fling:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-virtual {p0}, Lcom/miui/home/launcher/overlay/LauncherOverlayMIUI;->isDoAnimationBySelf()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/LauncherOverlayMIUI;->mLauncherTransitionBaseController:Lcom/miui/home/launcher/overlay/LauncherTransitionBaseController;

    invoke-virtual {v0, p1, p2}, Lcom/miui/home/launcher/overlay/LauncherTransitionBaseController;->onScrollInteractionEnd(FZ)V

    .line 121
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/LauncherOverlayMIUI;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    if-eqz p0, :cond_1

    .line 122
    invoke-virtual {p0}, Lcom/miui/launcher/overlay/client/LauncherClient;->endMove()V

    :cond_1
    return-void
.end method

.method public onServiceConnected()V
    .locals 0

    return-void
.end method

.method public onServiceStateChanged(Z)V
    .locals 1

    .line 62
    iget-boolean v0, p0, Lcom/miui/home/launcher/overlay/LauncherOverlayMIUI;->mWasOverlayAttached:Z

    if-eq p1, v0, :cond_1

    .line 63
    iput-boolean p1, p0, Lcom/miui/home/launcher/overlay/LauncherOverlayMIUI;->mWasOverlayAttached:Z

    if-eqz p1, :cond_0

    move-object p1, p0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 64
    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/overlay/LauncherOverlayMIUI;->setLauncherOverlay(Lcom/miui/home/launcher/overlay/LauncherOverlay;)V

    :cond_1
    return-void
.end method

.method public setAlpha(F)V
    .locals 0

    .line 213
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/LauncherOverlayMIUI;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    if-eqz p0, :cond_0

    .line 214
    invoke-virtual {p0, p1}, Lcom/miui/launcher/overlay/client/LauncherClient;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public setAlphaAndScale(FF)V
    .locals 0

    .line 220
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/LauncherOverlayMIUI;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    if-eqz p0, :cond_0

    .line 221
    invoke-virtual {p0, p1, p2}, Lcom/miui/launcher/overlay/client/LauncherClient;->setAlphaAndScale(FF)V

    :cond_0
    return-void
.end method

.method public setClient(Lcom/miui/launcher/overlay/client/LauncherClient;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/miui/home/launcher/overlay/LauncherOverlayMIUI;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    return-void
.end method

.method public abstract setLauncherOverlay(Lcom/miui/home/launcher/overlay/LauncherOverlay;)V
.end method

.method public setOverlayCallbacks(Lcom/miui/home/launcher/overlay/LauncherOverlayCallbacks;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/miui/home/launcher/overlay/LauncherOverlayMIUI;->mLauncherOverlayCallbacks:Lcom/miui/home/launcher/overlay/LauncherOverlayCallbacks;

    .line 141
    invoke-virtual {p0}, Lcom/miui/home/launcher/overlay/LauncherOverlayMIUI;->isDoAnimationBySelf()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 143
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/LauncherOverlayMIUI;->mLauncherTransitionBaseController:Lcom/miui/home/launcher/overlay/LauncherTransitionBaseController;

    iget-object p0, p0, Lcom/miui/home/launcher/overlay/LauncherOverlayMIUI;->mLauncherOverlayCallbacks:Lcom/miui/home/launcher/overlay/LauncherOverlayCallbacks;

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/overlay/LauncherTransitionBaseController;->setOverlayCallbacks(Lcom/miui/home/launcher/overlay/LauncherOverlayCallbacks;)V

    :cond_0
    return-void
.end method

.method public setSwipeDirection(I)V
    .locals 1

    .line 148
    invoke-virtual {p0}, Lcom/miui/home/launcher/overlay/LauncherOverlayMIUI;->isDoAnimationBySelf()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/LauncherOverlayMIUI;->mLauncherTransitionBaseController:Lcom/miui/home/launcher/overlay/LauncherTransitionBaseController;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/overlay/LauncherTransitionBaseController;->setSwipeDirection(I)V

    :cond_0
    return-void
.end method

.method public showOverlay(Z)V
    .locals 0

    .line 192
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/LauncherOverlayMIUI;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    if-eqz p0, :cond_0

    .line 193
    invoke-virtual {p0, p1}, Lcom/miui/launcher/overlay/client/LauncherClient;->showOverlay(I)V

    :cond_0
    return-void
.end method
