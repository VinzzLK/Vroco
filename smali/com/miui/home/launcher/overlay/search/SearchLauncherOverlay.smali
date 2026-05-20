.class public Lcom/miui/home/launcher/overlay/search/SearchLauncherOverlay;
.super Lcom/miui/home/launcher/overlay/LauncherOverlayMIUI;
.source "SearchLauncherOverlay.java"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mIsDoAnimationBySelf:Z

.field private mIsRecovered:Z

.field private mNeedCloseDoAnimationBySelf:Z


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/overlay/LauncherOverlayMIUI;-><init>(Lcom/miui/home/launcher/Launcher;)V

    .line 16
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/overlay/search/SearchLauncherOverlay;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x1

    .line 20
    iput-boolean p1, p0, Lcom/miui/home/launcher/overlay/search/SearchLauncherOverlay;->mIsDoAnimationBySelf:Z

    const/4 p1, 0x0

    .line 21
    iput-boolean p1, p0, Lcom/miui/home/launcher/overlay/search/SearchLauncherOverlay;->mNeedCloseDoAnimationBySelf:Z

    .line 25
    iput-boolean p1, p0, Lcom/miui/home/launcher/overlay/search/SearchLauncherOverlay;->mIsRecovered:Z

    .line 29
    invoke-virtual {p0, p0}, Lcom/miui/home/launcher/overlay/search/SearchLauncherOverlay;->setLauncherOverlay(Lcom/miui/home/launcher/overlay/LauncherOverlay;)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/overlay/search/SearchLauncherOverlay;)Lcom/miui/launcher/overlay/client/LauncherClient;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/LauncherOverlayMIUI;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/overlay/search/SearchLauncherOverlay;)Lcom/miui/launcher/overlay/client/LauncherClient;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/LauncherOverlayMIUI;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    return-object p0
.end method

.method private recoveryHomeAnim()V
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/LauncherOverlayMIUI;->mLauncherTransitionBaseController:Lcom/miui/home/launcher/overlay/LauncherTransitionBaseController;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 78
    iput-boolean v1, p0, Lcom/miui/home/launcher/overlay/search/SearchLauncherOverlay;->mIsDoAnimationBySelf:Z

    .line 79
    invoke-interface {v0}, Lcom/miui/home/launcher/overlay/LauncherTransitionCallbacks;->onServiceDisConnected()V

    .line 80
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/LauncherOverlayMIUI;->mLauncherTransitionBaseController:Lcom/miui/home/launcher/overlay/LauncherTransitionBaseController;

    invoke-virtual {v0}, Lcom/miui/home/launcher/overlay/LauncherTransitionBaseController;->recoveryHomeAnim()V

    const/4 v0, 0x1

    .line 81
    iput-boolean v0, p0, Lcom/miui/home/launcher/overlay/search/SearchLauncherOverlay;->mIsRecovered:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public getLauncherTransitionController(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/overlay/LauncherTransitionBaseController;
    .locals 0

    .line 97
    new-instance p0, Lcom/miui/home/launcher/overlay/search/LauncherTransitionSearchController;

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/overlay/search/LauncherTransitionSearchController;-><init>(Lcom/miui/home/launcher/Launcher;)V

    return-object p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "SearchLauncherOverlay"

    return-object p0
.end method

.method public isDoAnimationBySelf()Z
    .locals 0

    .line 92
    iget-boolean p0, p0, Lcom/miui/home/launcher/overlay/search/SearchLauncherOverlay;->mIsDoAnimationBySelf:Z

    return p0
.end method

.method public onBindingDied()V
    .locals 0

    .line 73
    invoke-direct {p0}, Lcom/miui/home/launcher/overlay/search/SearchLauncherOverlay;->recoveryHomeAnim()V

    return-void
.end method

.method public onOverlayCall(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "method_disconected_only"

    .line 106
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 121
    invoke-super {p0, p1, p2, p3}, Lcom/miui/home/launcher/overlay/LauncherOverlayMIUI;->onOverlayCall(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 108
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/search/SearchLauncherOverlay;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/miui/home/launcher/overlay/search/SearchLauncherOverlay$1;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/overlay/search/SearchLauncherOverlay$1;-><init>(Lcom/miui/home/launcher/overlay/search/SearchLauncherOverlay;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 116
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string p1, "result_msg"

    const-string/jumbo p2, "success"

    .line 117
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public onScrollInteractionBegin()V
    .locals 1

    .line 52
    iget-boolean v0, p0, Lcom/miui/home/launcher/overlay/search/SearchLauncherOverlay;->mIsRecovered:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 54
    iput-boolean v0, p0, Lcom/miui/home/launcher/overlay/search/SearchLauncherOverlay;->mIsDoAnimationBySelf:Z

    :cond_0
    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Lcom/miui/home/launcher/overlay/search/SearchLauncherOverlay;->mIsRecovered:Z

    .line 57
    invoke-super {p0}, Lcom/miui/home/launcher/overlay/LauncherOverlayMIUI;->onScrollInteractionBegin()V

    return-void
.end method

.method public onScrollInteractionEnd(FZ)V
    .locals 0

    .line 62
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/overlay/LauncherOverlayMIUI;->onScrollInteractionEnd(FZ)V

    .line 63
    iget-boolean p1, p0, Lcom/miui/home/launcher/overlay/search/SearchLauncherOverlay;->mNeedCloseDoAnimationBySelf:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 65
    iput-boolean p1, p0, Lcom/miui/home/launcher/overlay/search/SearchLauncherOverlay;->mIsDoAnimationBySelf:Z

    .line 66
    iput-boolean p1, p0, Lcom/miui/home/launcher/overlay/search/SearchLauncherOverlay;->mNeedCloseDoAnimationBySelf:Z

    :cond_0
    return-void
.end method

.method public onServiceConnected()V
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/LauncherOverlayMIUI;->mLauncherTransitionBaseController:Lcom/miui/home/launcher/overlay/LauncherTransitionBaseController;

    if-eqz p0, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/miui/home/launcher/overlay/LauncherTransitionBaseController;->onServiceConnected()V

    :cond_0
    return-void
.end method

.method public onServiceStateChanged(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 36
    iput-boolean p1, p0, Lcom/miui/home/launcher/overlay/search/SearchLauncherOverlay;->mNeedCloseDoAnimationBySelf:Z

    goto :goto_0

    .line 39
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/overlay/search/SearchLauncherOverlay;->recoveryHomeAnim()V

    :goto_0
    return-void
.end method

.method public setLauncherOverlay(Lcom/miui/home/launcher/overlay/LauncherOverlay;)V
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/LauncherOverlayMIUI;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->setSearchOverlay(Lcom/miui/home/launcher/overlay/LauncherOverlay;)V

    return-void
.end method
