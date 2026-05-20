.class public Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenControllerOS2;
.super Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;
.source "SoscSplitScreenControllerOS2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenControllerOS2$SingletonHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SoscSplitStateController2"


# instance fields
.field private final mMultiTaskingStateChangeListener:Lcom/android/wm/shell/multitasking/common/IMultiTaskingStateChangeListener$Stub;

.field protected mMultiTaskingStateManager:Lcom/android/wm/shell/multitasking/common/IMultiTaskingStateManager;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;-><init>()V

    .line 65
    new-instance v0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenControllerOS2$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenControllerOS2$1;-><init>(Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenControllerOS2;)V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenControllerOS2;->mMultiTaskingStateChangeListener:Lcom/android/wm/shell/multitasking/common/IMultiTaskingStateChangeListener$Stub;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenControllerOS2$1;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenControllerOS2;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;
    .locals 1

    .line 27
    invoke-static {}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenControllerOS2$SingletonHolder;->access$100()Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public initSoscSplitScreen(Lcom/android/wm/shell/sosc/ISoScSplitScreen;Landroid/content/Context;ZZZLcom/android/wm/shell/multitasking/common/IMultiTaskingStateManager;)V
    .locals 0

    .line 32
    invoke-super/range {p0 .. p6}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->initSoscSplitScreen(Lcom/android/wm/shell/sosc/ISoScSplitScreen;Landroid/content/Context;ZZZLcom/android/wm/shell/multitasking/common/IMultiTaskingStateManager;)V

    .line 33
    iput-object p6, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenControllerOS2;->mMultiTaskingStateManager:Lcom/android/wm/shell/multitasking/common/IMultiTaskingStateManager;

    .line 34
    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenControllerOS2;->registerSoScSplitScreenListener()V

    return-void
.end method

.method protected registerSoScSplitScreenListener()V
    .locals 3

    const-string v0, "SoscSplitStateController2"

    .line 53
    invoke-super {p0}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->registerSoScSplitScreenListener()V

    .line 54
    iget-object v1, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenControllerOS2;->mMultiTaskingStateManager:Lcom/android/wm/shell/multitasking/common/IMultiTaskingStateManager;

    if-nez v1, :cond_0

    return-void

    .line 58
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerSoScSplitScreenListener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenControllerOS2;->mMultiTaskingStateChangeListener:Lcom/android/wm/shell/multitasking/common/IMultiTaskingStateChangeListener$Stub;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-object v1, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenControllerOS2;->mMultiTaskingStateManager:Lcom/android/wm/shell/multitasking/common/IMultiTaskingStateManager;

    iget-object p0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenControllerOS2;->mMultiTaskingStateChangeListener:Lcom/android/wm/shell/multitasking/common/IMultiTaskingStateChangeListener$Stub;

    invoke-interface {v1, p0}, Lcom/android/wm/shell/multitasking/common/IMultiTaskingStateManager;->registerMultiTaskingStateListener(Lcom/android/wm/shell/multitasking/common/IMultiTaskingStateChangeListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "Failed call registerSoScSplitScreenListener"

    .line 61
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public startSmallFreeformFromRecent(Landroid/app/ActivityManager$RunningTaskInfo;I)Landroid/os/Bundle;
    .locals 4

    .line 38
    iget-object v0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenControllerOS2;->mMultiTaskingStateManager:Lcom/android/wm/shell/multitasking/common/IMultiTaskingStateManager;

    const/4 v1, 0x0

    const-string v2, "SoscSplitStateController2"

    if-nez v0, :cond_0

    const-string p0, "old: startSmallFreeformFromRecent: "

    .line 39
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 43
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startSmallFreeformFromRecent: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenControllerOS2;->mMultiTaskingStateChangeListener:Lcom/android/wm/shell/multitasking/common/IMultiTaskingStateChangeListener$Stub;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iget-object p0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenControllerOS2;->mMultiTaskingStateManager:Lcom/android/wm/shell/multitasking/common/IMultiTaskingStateManager;

    invoke-interface {p0, p1, p2}, Lcom/android/wm/shell/multitasking/common/IMultiTaskingStateManager;->startSmallFreeformFromRecent(Landroid/app/ActivityManager$RunningTaskInfo;I)Landroid/os/Bundle;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, "Failed call registerSoScSplitScreenListener"

    .line 46
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method
