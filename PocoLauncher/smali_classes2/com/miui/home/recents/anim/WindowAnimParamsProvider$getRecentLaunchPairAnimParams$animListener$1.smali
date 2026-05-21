.class public final Lcom/miui/home/recents/anim/WindowAnimParamsProvider$getRecentLaunchPairAnimParams$animListener$1;
.super Ljava/lang/Object;
.source "WindowAnimParamsProvider.kt"

# interfaces
.implements Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringUserCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/anim/WindowAnimParamsProvider;->getRecentLaunchPairAnimParams([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Lcom/miui/home/recents/anim/AllElementParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $launcher:Lcom/miui/home/launcher/Launcher;

.field private isCanceled:Z


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/recents/anim/WindowAnimParamsProvider$getRecentLaunchPairAnimParams$animListener$1;->$launcher:Lcom/miui/home/launcher/Launcher;

    .line 501
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lcom/miui/home/recents/util/RectFSpringAnim;)V
    .locals 0

    const/4 p1, 0x1

    .line 504
    iput-boolean p1, p0, Lcom/miui/home/recents/anim/WindowAnimParamsProvider$getRecentLaunchPairAnimParams$animListener$1;->isCanceled:Z

    return-void
.end method

.method public onSurfaceEnd(Lcom/miui/home/recents/util/RectFSpringAnim;)V
    .locals 2

    .line 508
    iget-boolean p1, p0, Lcom/miui/home/recents/anim/WindowAnimParamsProvider$getRecentLaunchPairAnimParams$animListener$1;->isCanceled:Z

    if-eqz p1, :cond_0

    return-void

    .line 511
    :cond_0
    sget-object p1, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/miui/home/recents/OverviewState;->mIsFromRecentLaunchAnimEnd:Z

    .line 512
    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowAnimParamsProvider$getRecentLaunchPairAnimParams$animListener$1;->$launcher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/miui/home/launcher/LauncherStateManager;->exitOverviewStateIfNeed(ZZ)V

    .line 513
    iput-boolean v1, p1, Lcom/miui/home/recents/OverviewState;->mIsFromRecentLaunchAnimEnd:Z

    .line 514
    iget-object p0, p0, Lcom/miui/home/recents/anim/WindowAnimParamsProvider$getRecentLaunchPairAnimParams$animListener$1;->$launcher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->resetFromSplitSelectionState()V

    return-void
.end method
