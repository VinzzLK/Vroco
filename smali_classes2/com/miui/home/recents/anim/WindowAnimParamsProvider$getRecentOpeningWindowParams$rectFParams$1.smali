.class public final Lcom/miui/home/recents/anim/WindowAnimParamsProvider$getRecentOpeningWindowParams$rectFParams$1;
.super Ljava/lang/Object;
.source "WindowAnimParamsProvider.kt"

# interfaces
.implements Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringUserCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/anim/WindowAnimParamsProvider;->getRecentOpeningWindowParams(ZLandroid/view/View;Landroid/graphics/RectF;)Lcom/miui/home/recents/anim/RectFParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $clickFromHome:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/home/recents/anim/WindowAnimParamsProvider$getRecentOpeningWindowParams$rectFParams$1;->$clickFromHome:Z

    .line 755
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceEnd(Lcom/miui/home/recents/util/RectFSpringAnim;)V
    .locals 1

    .line 757
    sget-object p1, Lcom/miui/home/recents/anim/WallpaperElement;->Companion:Lcom/miui/home/recents/anim/WallpaperElement$Companion;

    invoke-virtual {p1}, Lcom/miui/home/recents/anim/WallpaperElement$Companion;->getInstance()Lcom/miui/home/recents/anim/WallpaperElement;

    move-result-object p1

    sget-object v0, Lcom/miui/home/recents/anim/WallpaperParam;->Companion:Lcom/miui/home/recents/anim/WallpaperParam$Companion;

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/WallpaperParam$Companion;->getHomeStateParams()Lcom/miui/home/recents/anim/WallpaperParam;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/anim/WallpaperElement;->setTo(Ljava/lang/Object;)V

    .line 758
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 759
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->adaptToTopActivityWhenPause()V

    .line 760
    :cond_0
    iget-boolean p0, p0, Lcom/miui/home/recents/anim/WindowAnimParamsProvider$getRecentOpeningWindowParams$rectFParams$1;->$clickFromHome:Z

    if-nez p0, :cond_2

    .line 761
    sget-object p0, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/home/recents/OverviewState;->mIsFromRecentLaunchAnimEnd:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 762
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0, v0}, Lcom/miui/home/launcher/LauncherStateManager;->exitOverviewStateIfNeed(ZZ)V

    .line 763
    :cond_1
    iput-boolean v0, p0, Lcom/miui/home/recents/OverviewState;->mIsFromRecentLaunchAnimEnd:Z

    :cond_2
    return-void
.end method
