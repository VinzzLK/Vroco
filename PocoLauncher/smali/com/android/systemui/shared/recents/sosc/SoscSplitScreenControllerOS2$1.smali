.class Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenControllerOS2$1;
.super Lcom/android/wm/shell/multitasking/common/IMultiTaskingStateChangeListener$Stub;
.source "SoscSplitScreenControllerOS2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenControllerOS2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenControllerOS2;


# direct methods
.method constructor <init>(Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenControllerOS2;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenControllerOS2$1;->this$0:Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenControllerOS2;

    invoke-direct {p0}, Lcom/android/wm/shell/multitasking/common/IMultiTaskingStateChangeListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptionClicked(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onCaptionTouchDown()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onInfinityModeStateChanged(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onMultiTaskDragEnd(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onMultiTaskDragStart(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onPreSoScStateChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IZZII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onRecentEnterMiniStart(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "SoscSplitStateController2"

    const-string v1, "onRecentEnterMiniStart: "

    .line 113
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenControllerOS2$1;->this$0:Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenControllerOS2;

    iget-object v0, v0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mSoscSplitScreenListener:Ljava/util/Set;

    monitor-enter v0

    .line 115
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenControllerOS2$1;->this$0:Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenControllerOS2;

    iget-object p0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->mSoscSplitScreenListener:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController$SoscSplitScreenListener;

    .line 116
    invoke-interface {v1, p1}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController$SoscSplitScreenListener;->onRecentEnterMiniStart(I)V

    goto :goto_0

    .line 118
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onSoScMinimizedChanging(F)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onSoScStateChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;ZII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onSplitBoundsChange(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onSplitBoundsChanging(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public setSplitScreenResizing(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method
