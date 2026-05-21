.class public final Lcom/miui/home/recents/anim/ShortcutMenuLayerElement$mExitOverviewEndListener$1;
.super Ljava/lang/Object;
.source "ShortcutMenuLayerElement.kt"

# interfaces
.implements Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation$OnAnimationEndListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;Z)V
    .locals 2

    const-string p2, "ShortcutMenuLayerElement"

    const-string v0, "mExitOverviewEndListener onAnimationEnd"

    .line 164
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 167
    invoke-virtual {p2}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/miui/home/launcher/LauncherStateManager;->exitOverviewStateIfNeed(ZZ)V

    .line 168
    invoke-virtual {p2}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/miui/home/recents/views/RecentsContainer;->setIsExitRecentsAnimating(Z)V

    :cond_0
    if-eqz p1, :cond_1

    .line 170
    invoke-virtual {p1, p0}, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->removeEndListener(Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation$OnAnimationEndListener;)V

    :cond_1
    return-void
.end method
