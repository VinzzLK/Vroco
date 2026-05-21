.class public final Lcom/miui/home/recents/anim/WindowAnimParamsProvider$getRecentLaunchAnimParams$listener$1;
.super Ljava/lang/Object;
.source "WindowAnimParamsProvider.kt"

# interfaces
.implements Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringUserCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/anim/WindowAnimParamsProvider;->getRecentLaunchAnimParams(Lcom/miui/home/launcher/Launcher;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Landroid/view/View;Lcom/miui/home/recents/util/RemoteAnimationTargetSet;ILcom/miui/home/recents/util/RectFSpringAnim$RectFSpringUserCallBack;)Lcom/miui/home/recents/anim/AllElementParams;
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

    iput-object p1, p0, Lcom/miui/home/recents/anim/WindowAnimParamsProvider$getRecentLaunchAnimParams$listener$1;->$launcher:Lcom/miui/home/launcher/Launcher;

    .line 576
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lcom/miui/home/recents/util/RectFSpringAnim;)V
    .locals 0

    const/4 p1, 0x1

    .line 603
    iput-boolean p1, p0, Lcom/miui/home/recents/anim/WindowAnimParamsProvider$getRecentLaunchAnimParams$listener$1;->isCanceled:Z

    .line 604
    sget-object p0, Lcom/miui/home/recents/anim/TaskViewsElement;->Companion:Lcom/miui/home/recents/anim/TaskViewsElement$Companion;

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/TaskViewsElement$Companion;->getInstance()Lcom/miui/home/recents/anim/TaskViewsElement;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/TaskViewsElement;->resetRecentsContentView()V

    return-void
.end method

.method public onAnimationStart(Lcom/miui/home/recents/util/RectFSpringAnim;)V
    .locals 2

    .line 580
    sget-object p0, Lcom/miui/home/launcher/util/ScenarioRecognitionUtil;->INSTANCE:Lcom/miui/home/launcher/util/ScenarioRecognitionUtil;

    const-wide/16 v0, 0x109

    const/4 p1, 0x1

    invoke-virtual {p0, v0, v1, p1}, Lcom/miui/home/launcher/util/ScenarioRecognitionUtil;->setScenarioState(JZ)V

    return-void
.end method

.method public onSurfaceEnd(Lcom/miui/home/recents/util/RectFSpringAnim;)V
    .locals 3

    .line 587
    iget-boolean p1, p0, Lcom/miui/home/recents/anim/WindowAnimParamsProvider$getRecentLaunchAnimParams$listener$1;->isCanceled:Z

    if-eqz p1, :cond_0

    return-void

    .line 590
    :cond_0
    sget-object p1, Lcom/miui/home/launcher/util/ScenarioRecognitionUtil;->INSTANCE:Lcom/miui/home/launcher/util/ScenarioRecognitionUtil;

    const-wide/16 v0, 0x109

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/miui/home/launcher/util/ScenarioRecognitionUtil;->setScenarioState(JZ)V

    .line 594
    sget-object p1, Lcom/miui/home/recents/anim/TaskViewsElement;->Companion:Lcom/miui/home/recents/anim/TaskViewsElement$Companion;

    invoke-virtual {p1}, Lcom/miui/home/recents/anim/TaskViewsElement$Companion;->getInstance()Lcom/miui/home/recents/anim/TaskViewsElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/anim/TaskViewsElement;->resetRecentsContentView()V

    .line 595
    sget-object p1, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/miui/home/recents/OverviewState;->mIsFromRecentLaunchAnimEnd:Z

    .line 596
    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowAnimParamsProvider$getRecentLaunchAnimParams$listener$1;->$launcher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2, v2}, Lcom/miui/home/launcher/LauncherStateManager;->exitOverviewStateIfNeed(ZZ)V

    .line 597
    :cond_1
    iput-boolean v2, p1, Lcom/miui/home/recents/OverviewState;->mIsFromRecentLaunchAnimEnd:Z

    .line 598
    sget-object p1, Lcom/miui/home/recents/anim/WallpaperElement;->Companion:Lcom/miui/home/recents/anim/WallpaperElement$Companion;

    invoke-virtual {p1}, Lcom/miui/home/recents/anim/WallpaperElement$Companion;->getInstance()Lcom/miui/home/recents/anim/WallpaperElement;

    move-result-object p1

    sget-object v0, Lcom/miui/home/recents/anim/WallpaperParam;->Companion:Lcom/miui/home/recents/anim/WallpaperParam$Companion;

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/WallpaperParam$Companion;->getHomeStateParams()Lcom/miui/home/recents/anim/WallpaperParam;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/anim/WallpaperElement;->setTo(Ljava/lang/Object;)V

    .line 599
    iget-object p0, p0, Lcom/miui/home/recents/anim/WindowAnimParamsProvider$getRecentLaunchAnimParams$listener$1;->$launcher:Lcom/miui/home/launcher/Launcher;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->onLaunchActivityProcessEnd()V

    :cond_2
    return-void
.end method
