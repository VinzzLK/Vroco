.class public Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;
.super Ljava/lang/Object;
.source "RecentsAnimationControllerCompat.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RecentsAnimationControllerCompat"


# instance fields
.field private mAnimationController:Landroid/view/IRecentsAnimationController;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/view/IRecentsAnimationController;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;->mAnimationController:Landroid/view/IRecentsAnimationController;

    return-void
.end method


# virtual methods
.method public cleanupScreenshot()V
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;->mAnimationController:Landroid/view/IRecentsAnimationController;

    invoke-static {p0}, Lmiui/view/IRecentsAnimationControllerExpose;->box(Ljava/lang/Object;)Lmiui/view/IRecentsAnimationControllerExpose;

    move-result-object p0

    invoke-virtual {p0}, Lmiui/view/IRecentsAnimationControllerExpose;->cleanupScreenshot()V

    return-void
.end method

.method public disableWindowInput()V
    .locals 8

    const-string v0, "RecentsAnimationControllerCompat"

    :try_start_0
    const-string v1, "disableWindowInput:"

    .line 97
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const-class v2, Landroid/view/IRecentsAnimationController;

    iget-object v3, p0, Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;->mAnimationController:Landroid/view/IRecentsAnimationController;

    const-string v4, "disableWindowInput"

    const-class v5, Ljava/lang/Void;

    const/4 p0, 0x0

    new-array v6, p0, [Ljava/lang/Class;

    new-array v7, p0, [Ljava/lang/Object;

    invoke-static/range {v2 .. v7}, Lcom/miui/launcher/utils/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "Failed to set whether animation targets are behind system bars"

    .line 100
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public finish(ZZLcom/android/internal/os/IResultReceiver;)V
    .locals 9

    :try_start_0
    const-string v0, "onRecentsAnimationPlaying"

    const/4 v1, 0x0

    .line 114
    invoke-static {v0, v1}, Landroid/os/Trace;->endAsyncSection(Ljava/lang/String;I)V

    .line 115
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/Utilities;->atLeastAndroidV()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    const-class v2, Landroid/view/IRecentsAnimationController;

    iget-object v3, p0, Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;->mAnimationController:Landroid/view/IRecentsAnimationController;

    const-string v4, "finish"

    sget-object v5, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const/4 p0, 0x3

    new-array v6, p0, [Ljava/lang/Class;

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v0, v6, v1

    const/4 v7, 0x1

    aput-object v0, v6, v7

    const-class v0, Lcom/android/internal/os/IResultReceiver;

    const/4 v8, 0x2

    aput-object v0, v6, v8

    new-array p0, p0, [Ljava/lang/Object;

    .line 118
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, p0, v1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, p0, v7

    aput-object p3, p0, v8

    move-object v7, p0

    .line 116
    invoke-static/range {v2 .. v7}, Lcom/miui/launcher/utils/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 120
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;->mAnimationController:Landroid/view/IRecentsAnimationController;

    invoke-interface {p0, p1, p2}, Landroid/view/IRecentsAnimationController;->finish(ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "RecentsAnimationControllerCompat"

    const-string p2, "Failed to finish recents animation"

    .line 123
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public finishForSosc(IZZZ)V
    .locals 10

    :try_start_0
    const-string v0, "onRecentsAnimationPlaying"

    const/4 v1, 0x0

    .line 129
    invoke-static {v0, v1}, Landroid/os/Trace;->endAsyncSection(Ljava/lang/String;I)V

    .line 130
    const-class v2, Landroid/view/IRecentsAnimationController;

    iget-object v3, p0, Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;->mAnimationController:Landroid/view/IRecentsAnimationController;

    const-string v4, "finishForSoSc"

    sget-object v5, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const/4 p0, 0x4

    new-array v6, p0, [Ljava/lang/Class;

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v0, v6, v1

    const/4 v7, 0x1

    aput-object v0, v6, v7

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x2

    aput-object v8, v6, v9

    const/4 v8, 0x3

    aput-object v0, v6, v8

    new-array p0, p0, [Ljava/lang/Object;

    .line 131
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, p0, v1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, p0, v7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v9

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, p0, v8

    move-object v7, p0

    .line 130
    invoke-static/range {v2 .. v7}, Lcom/miui/launcher/utils/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "RecentsAnimationControllerCompat"

    const-string p2, "Failed to finishForSosc recents animation"

    .line 133
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public getController()Landroid/view/IRecentsAnimationController;
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;->mAnimationController:Landroid/view/IRecentsAnimationController;

    return-object p0
.end method

.method public hideCurrentInputMethod()V
    .locals 2

    .line 87
    :try_start_0
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/Utilities;->atLeastAndroidU()Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;->mAnimationController:Landroid/view/IRecentsAnimationController;

    invoke-interface {p0}, Landroid/view/IRecentsAnimationController;->hideCurrentInputMethod()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "RecentsAnimationControllerCompat"

    const-string v1, "Failed to set hide input method"

    .line 91
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public screenshotTask(I)Lcom/android/systemui/shared/recents/model/ThumbnailData;
    .locals 7

    .line 44
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/Utilities;->atLeastAndroidU()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 45
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object p0

    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->takeTaskSnapshot(IZ)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 47
    :cond_0
    const-class v0, Landroid/view/IRecentsAnimationController;

    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;->mAnimationController:Landroid/view/IRecentsAnimationController;

    const-class v3, Ljava/lang/Object;

    new-array v4, v1, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    new-array v6, v1, [Ljava/lang/Object;

    .line 48
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v5

    const-string v2, "screenshotTask"

    move-object v1, p0

    move-object v5, v6

    .line 47
    invoke-static/range {v0 .. v5}, Lcom/miui/launcher/utils/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 50
    :goto_0
    invoke-static {p0}, Lcom/android/systemui/shared/recents/system/TaskSnapshotManager;->createTaskSnapshotCompatWithTaskSnapshot(Ljava/lang/Object;)Lcom/android/systemui/shared/recents/system/ITaskSnapshot;

    move-result-object p0

    .line 51
    new-instance p1, Lcom/android/systemui/shared/recents/model/ThumbnailData;

    invoke-interface {p0}, Lcom/android/systemui/shared/recents/system/ITaskSnapshot;->getTaskThumbnailInfo()Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;

    move-result-object v0

    invoke-interface {p0}, Lcom/android/systemui/shared/recents/system/ITaskSnapshot;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Lcom/android/systemui/shared/recents/model/ThumbnailData;-><init>(Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;Landroid/graphics/Bitmap;)V

    return-object p1
.end method

.method public setAnimationTargetsBehindSystemBars(Z)V
    .locals 1

    .line 70
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;->mAnimationController:Landroid/view/IRecentsAnimationController;

    invoke-interface {p0, p1}, Landroid/view/IRecentsAnimationController;->setAnimationTargetsBehindSystemBars(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "RecentsAnimationControllerCompat"

    const-string v0, "Failed to set whether animation targets are behind system bars"

    .line 72
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public setCancelWithDeferredScreenshot(Z)V
    .locals 1

    .line 139
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;->mAnimationController:Landroid/view/IRecentsAnimationController;

    invoke-interface {p0, p1}, Landroid/view/IRecentsAnimationController;->setCancelWithDeferredScreenshot(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "RecentsAnimationControllerCompat"

    const-string v0, "Failed to set cancel with deferred screenshot"

    .line 141
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public setInputConsumerEnabled(Z)V
    .locals 3

    const-string v0, "RecentsAnimationControllerCompat"

    .line 61
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setInputConsumerEnabled  enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;->mAnimationController:Landroid/view/IRecentsAnimationController;

    invoke-interface {p0, p1}, Landroid/view/IRecentsAnimationController;->setInputConsumerEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Failed to set input consumer enabled state"

    .line 64
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public setSplitScreenMinimized(Z)V
    .locals 1

    .line 78
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;->mAnimationController:Landroid/view/IRecentsAnimationController;

    invoke-interface {p0, p1}, Landroid/view/IRecentsAnimationController;->setSplitScreenMinimized(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "RecentsAnimationControllerCompat"

    const-string v0, "Failed to set minimize dock"

    .line 80
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public setWillFinishToHome(Z)V
    .locals 6

    .line 55
    const-class v0, Landroid/view/IRecentsAnimationController;

    iget-object v1, p0, Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;->mAnimationController:Landroid/view/IRecentsAnimationController;

    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const/4 p0, 0x1

    new-array v4, p0, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    new-array p0, p0, [Ljava/lang/Object;

    .line 56
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, p0, v5

    const-string/jumbo v2, "setWillFinishToHome"

    move-object v5, p0

    .line 55
    invoke-static/range {v0 .. v5}, Lcom/miui/launcher/utils/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
