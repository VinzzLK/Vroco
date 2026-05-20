.class public Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;
.super Ljava/lang/Object;
.source "WindowTransitionCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$WindowTransitionCompatListener;
    }
.end annotation


# static fields
.field private static final HANDLER_TYPE_DEFAULT:I = 0x0

.field private static final HANDLER_TYPE_KEYGUARD:I = 0x2

.field private static final HANDLER_TYPE_MIUI_FREEFORM_MODE:I = 0x6

.field private static final HANDLER_TYPE_SHELL:I = 0x63

.field private static final HANDLER_TYPE_TASK_VIEW:I = 0xc

.field private static TAG:Ljava/lang/String; = "WindowTransitionCompat"


# instance fields
.field private iRemoteTransition:Landroid/window/IRemoteTransition$Stub;

.field private isWallpaperTransition:Z

.field private mFinishTransitionCallback:Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;

.field private mHelper:Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;

.field private mPairRemoteTransition:Landroid/window/RemoteTransition;

.field private mRemoteTransition:Landroid/window/RemoteTransition;

.field private mWindowTransitionCompatListener:Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$WindowTransitionCompatListener;

.field private pairRemoteTransition:Landroid/window/IRemoteTransition$Stub;

.field private shellTransitionCallback:Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$WindowTransitionCompatListener;)V
    .locals 2

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$1;-><init>(Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;)V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->shellTransitionCallback:Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;

    .line 63
    new-instance v0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;

    iget-object v1, p0, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->shellTransitionCallback:Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;

    invoke-direct {v0, v1}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;-><init>(Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;)V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->mHelper:Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;

    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->isWallpaperTransition:Z

    .line 72
    new-instance v0, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$2;-><init>(Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;)V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->iRemoteTransition:Landroid/window/IRemoteTransition$Stub;

    .line 649
    new-instance v0, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$3;-><init>(Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;)V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->pairRemoteTransition:Landroid/window/IRemoteTransition$Stub;

    .line 701
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->iRemoteTransition:Landroid/window/IRemoteTransition$Stub;

    invoke-static {v0}, Lcom/android/hideapi/RemoteTransitionExpose;->newInstance(Landroid/window/IRemoteTransition;)Landroid/window/RemoteTransition;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->mRemoteTransition:Landroid/window/RemoteTransition;

    .line 702
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->pairRemoteTransition:Landroid/window/IRemoteTransition$Stub;

    invoke-static {v0}, Lcom/android/hideapi/RemoteTransitionExpose;->newInstance(Landroid/window/IRemoteTransition;)Landroid/window/RemoteTransition;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->mPairRemoteTransition:Landroid/window/RemoteTransition;

    .line 69
    iput-object p1, p0, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->mWindowTransitionCompatListener:Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$WindowTransitionCompatListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;)Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$WindowTransitionCompatListener;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->mWindowTransitionCompatListener:Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$WindowTransitionCompatListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;)Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->mFinishTransitionCallback:Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;Landroid/view/SurfaceControl$Transaction;ZLjava/lang/String;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->cancelAnimAndFinishMain(Landroid/view/SurfaceControl$Transaction;ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 46
    sget-object v0, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;)Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->mHelper:Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;Landroid/window/IRemoteTransitionFinishedCallback;Landroid/view/SurfaceControl$Transaction;)Z
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->interceptTransitionAndFinishIfNeeded(Landroid/window/IRemoteTransitionFinishedCallback;Landroid/view/SurfaceControl$Transaction;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->isWallpaperTransition:Z

    return p0
.end method

.method static synthetic access$600(Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;Landroid/view/SurfaceControl$Transaction;Ljava/lang/String;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->cancelAnimAndFinishMain(Landroid/view/SurfaceControl$Transaction;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;Lcom/android/hideapi/TransitionInfoExpose;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/SurfaceControl$Transaction;Landroid/window/IRemoteTransitionFinishedCallback;)Z
    .locals 0

    .line 46
    invoke-direct/range {p0 .. p5}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->handleTransitionForHandlerType(Lcom/android/hideapi/TransitionInfoExpose;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/SurfaceControl$Transaction;Landroid/window/IRemoteTransitionFinishedCallback;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;Landroid/view/SurfaceControl$Transaction;Ljava/lang/String;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->notHandleMergeTransitionAndFinish(Landroid/view/SurfaceControl$Transaction;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(ILjava/util/List;Z)Z
    .locals 0

    .line 46
    invoke-static {p0, p1, p2}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->isOtherCase(ILjava/util/List;Z)Z

    move-result p0

    return p0
.end method

.method private cancelAnimAndFinishMain(Landroid/view/SurfaceControl$Transaction;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 637
    invoke-direct {p0, p1, v0, p2}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->cancelAnimAndFinishMain(Landroid/view/SurfaceControl$Transaction;ZLjava/lang/String;)V

    return-void
.end method

.method private cancelAnimAndFinishMain(Landroid/view/SurfaceControl$Transaction;ZLjava/lang/String;)V
    .locals 3

    .line 641
    sget-object v0, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelAnimAndFinishMain,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->close()V

    .line 646
    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->mWindowTransitionCompatListener:Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$WindowTransitionCompatListener;

    invoke-interface {p0, p2}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$WindowTransitionCompatListener;->onAnimCancelByShellFinished(Z)V

    return-void
.end method

.method private handleTransitionForHandlerType(Lcom/android/hideapi/TransitionInfoExpose;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/SurfaceControl$Transaction;Landroid/window/IRemoteTransitionFinishedCallback;)Z
    .locals 4

    const-string v0, "_FW_FINISH"

    const/4 v1, 0x0

    if-eqz p3, :cond_5

    if-eqz p2, :cond_5

    .line 910
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 911
    invoke-static {p1}, Lcom/android/wm/shell/util/TransitionUtil;->hasHorizontalChange(Lcom/android/hideapi/TransitionInfoExpose;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "horizontal AR Merged."

    .line 913
    invoke-direct {p0, p4, p1}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->notHandleMergeTransitionAndFinish(Landroid/view/SurfaceControl$Transaction;Ljava/lang/String;)V

    goto :goto_1

    .line 915
    :cond_0
    invoke-virtual {p4, v3}, Landroid/view/SurfaceControl$Transaction;->apply(Z)V

    const/4 p1, 0x0

    .line 917
    :try_start_0
    invoke-interface {p5, p1, p1}, Landroid/window/IRemoteTransitionFinishedCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V

    .line 918
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->TAG:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "handleTransitionForHandlerType: onTransitionFinished"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 920
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p3, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->TAG:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "finishTransitionFail"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 922
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->mWindowTransitionCompatListener:Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$WindowTransitionCompatListener;

    invoke-interface {p0, v3, v1}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$WindowTransitionCompatListener;->onTransitionMerged(ZZ)V

    .line 923
    sget-object p0, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->TAG:Ljava/lang/String;

    const-string p1, "AR transition merge in,finish it."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return v3

    .line 926
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p3, 0x6

    if-ne p1, p3, :cond_2

    const-string p1, "freeform Merged."

    .line 927
    invoke-direct {p0, p4, p1}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->notHandleMergeTransitionAndFinish(Landroid/view/SurfaceControl$Transaction;Ljava/lang/String;)V

    return v3

    .line 929
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p3, 0x2

    if-ne p1, p3, :cond_3

    const-string p1, "keyguard Merged."

    .line 930
    invoke-direct {p0, p4, p1}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->notHandleMergeTransitionAndFinish(Landroid/view/SurfaceControl$Transaction;Ljava/lang/String;)V

    return v3

    .line 932
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 p3, 0xc

    if-ne p1, p3, :cond_4

    const-string p1, "bubble Merged."

    .line 933
    invoke-direct {p0, p4, p1}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->notHandleMergeTransitionAndFinish(Landroid/view/SurfaceControl$Transaction;Ljava/lang/String;)V

    return v3

    .line 935
    :cond_4
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 p2, 0x63

    if-ne p1, p2, :cond_5

    const-string p1, "origin SHELL Merged."

    .line 936
    invoke-direct {p0, p4, p1}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->notHandleMergeTransitionAndFinish(Landroid/view/SurfaceControl$Transaction;Ljava/lang/String;)V

    return v3

    :cond_5
    return v1
.end method

.method private interceptTransitionAndFinishIfNeeded(Landroid/window/IRemoteTransitionFinishedCallback;Landroid/view/SurfaceControl$Transaction;)Z
    .locals 1

    const-string v0, "_FW_FINISH"

    .line 833
    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->hasMainCallback()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 835
    :try_start_0
    invoke-virtual {p2}, Landroid/view/SurfaceControl$Transaction;->close()V

    const/4 p0, 0x0

    .line 836
    invoke-interface {p1, p0, p0}, Landroid/window/IRemoteTransitionFinishedCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V

    .line 837
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p1, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->TAG:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "interceptTransitionAndFinishIfNeeded: onTransitionFinished"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 839
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->TAG:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "finish error"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isClosingType(Landroid/window/TransitionInfo;)Z
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    .line 815
    :goto_0
    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 816
    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/TransitionInfo$Change;

    .line 817
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 821
    :cond_0
    invoke-static {v3}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getTopActivityTypeFromTaskInfo(Landroid/app/TaskInfo;)I

    move-result v3

    .line 822
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v2

    .line 823
    sget-object v4, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", check isClosingType type = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", mode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    return v4

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private static isOtherCase(ILjava/util/List;Z)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)Z"
        }
    .end annotation

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p0, v0, :cond_2

    move p0, v1

    .line 890
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-ge p0, p2, :cond_4

    .line 891
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-eq p2, v2, :cond_1

    if-ne p2, v0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 893
    :cond_1
    :goto_1
    sget-object p0, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->TAG:Ljava/lang/String;

    const-string p1, "home mode TO_FRONT, isOtherCase true "

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    const/4 v0, 0x4

    if-ne p0, v0, :cond_4

    move p0, v1

    .line 898
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge p0, v3, :cond_4

    .line 899
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v0, :cond_3

    if-eqz p2, :cond_3

    .line 900
    sget-object p0, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->TAG:Ljava/lang/String;

    const-string p1, "home mode TO_BACK, isOtherCase true "

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_3
    add-int/lit8 p0, p0, 0x1

    goto :goto_2

    :cond_4
    return v1
.end method

.method public static noNeedAnimFinishIt(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl$Transaction;Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;)V
    .locals 15

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    .line 851
    sget-object v0, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->TAG:Ljava/lang/String;

    const-string v1, ", same task id, noNeedAnimFinish it"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 852
    invoke-virtual {v8, v0, v0}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->setTransitionInfo(Landroid/os/IBinder;Landroid/window/TransitionInfo;)V

    const/4 v0, -0x1

    .line 853
    invoke-virtual {v8, v0}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->setOpenTaskId(I)V

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x1

    .line 854
    :try_start_0
    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 855
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-virtual {v1, v0, v9}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 856
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-virtual {v1, v0, v10}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    .line 857
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v0

    move-object v2, p0

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->addToFinishTransaction(Landroid/os/IBinder;Landroid/view/SurfaceControl$Transaction;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 858
    :try_start_2
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 854
    :try_start_3
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v1, v0

    :try_start_4
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    .line 859
    sget-object v1, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->TAG:Ljava/lang/String;

    const-string v2, "addToFinishTransaction fail"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 861
    :goto_1
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/ConnectAnimHelper;->getInstance()Lcom/android/systemui/shared/recents/utilities/ConnectAnimHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/utilities/ConnectAnimHelper;->getRecentsAnimationListenerImpl()Lcom/android/systemui/shared/recents/system/RecentsAnimationListener;

    move-result-object v0

    .line 862
    new-instance v11, Landroid/util/ArrayMap;

    invoke-direct {v11}, Landroid/util/ArrayMap;-><init>()V

    .line 863
    new-instance v1, Lcom/android/systemui/shared/recents/system/TransitionInfoCompat;

    move-object/from16 v2, p1

    invoke-direct {v1, v2}, Lcom/android/systemui/shared/recents/system/TransitionInfoCompat;-><init>(Landroid/window/TransitionInfo;)V

    .line 864
    new-instance v12, Landroid/window/WindowContainerTransaction;

    invoke-direct {v12}, Landroid/window/WindowContainerTransaction;-><init>()V

    move-object/from16 v13, p2

    .line 865
    invoke-static {v13, v12}, Lcom/android/wm/shell/util/TransitionUtil;->reorderWindow(Landroid/window/TransitionInfo$Change;Landroid/window/WindowContainerTransaction;)V

    .line 866
    sget-object v2, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "executeFinishCallback, wct = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/system/TransitionInfoCompat;->getWrapped()Landroid/window/TransitionInfo;

    move-result-object v1

    new-instance v4, Lcom/android/wm/shell/util/TransitionUtil$LeafTaskFilter;

    invoke-direct {v4}, Lcom/android/wm/shell/util/TransitionUtil$LeafTaskFilter;-><init>()V

    const/4 v5, 0x1

    move-object/from16 v2, p3

    move-object v3, v11

    move-object/from16 v6, p4

    .line 867
    invoke-static/range {v1 .. v6}, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->wrap(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;Ljava/util/function/Predicate;ZLcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;)[Landroid/view/RemoteAnimationTarget;

    move-result-object v14

    .line 869
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v7, v1, v10}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    .line 870
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v7, v1, v9}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 872
    invoke-virtual {v7, v10}, Landroid/view/SurfaceControl$Transaction;->apply(Z)V

    .line 873
    invoke-virtual {v11}, Landroid/util/ArrayMap;->clear()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p4

    move-object v5, v12

    .line 874
    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->executeFinishCallback(ZZILandroid/window/WindowContainerTransaction;Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;)V

    .line 876
    :try_start_5
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v1

    .line 877
    invoke-virtual {v1, v0}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->initIRecentsAnimationRunnerAtLeastS(Lcom/android/systemui/shared/recents/system/RecentsAnimationListener;)Lcom/android/systemui/shared/recents/IRecentsAnimationRunnerAtLeastS;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 879
    invoke-interface {v0, v14}, Lcom/android/systemui/shared/recents/IRecentsAnimationRunnerAtLeastS;->onTasksAppeared([Landroid/view/RemoteAnimationTarget;)V

    goto :goto_2

    .line 881
    :cond_0
    sget-object v0, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->TAG:Ljava/lang/String;

    const-string v1, "IRecentsAnimationRunnerAtLeastS is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 884
    sget-object v1, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->TAG:Ljava/lang/String;

    const-string v2, "onTasksAppeared fail"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void
.end method

.method private notHandleMergeTransitionAndFinish(Landroid/view/SurfaceControl$Transaction;Ljava/lang/String;)V
    .locals 2

    .line 944
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->mWindowTransitionCompatListener:Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$WindowTransitionCompatListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1, v1}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$WindowTransitionCompatListener;->onTransitionMerged(ZZ)V

    .line 945
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->cancelAnimAndFinishMain(Landroid/view/SurfaceControl$Transaction;Ljava/lang/String;)V

    return-void
.end method

.method public static printLeash(Landroid/window/TransitionInfo;)V
    .locals 7

    .line 795
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n printLeash::TransitionInfo = "

    .line 796
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 797
    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v1

    const-string v2, "\n printLeash::index = "

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    move v4, v3

    .line 799
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 800
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", change = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 801
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v5

    if-eqz v5, :cond_0

    const-string v6, "\n printLeash::taskInfo = "

    .line 803
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 807
    :cond_1
    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getRootCount()I

    move-result v1

    :goto_1
    if-ge v3, v1, :cond_2

    .line 809
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", root = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    move-result-object v4

    invoke-virtual {v4}, Landroid/window/TransitionInfo$Root;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 811
    :cond_2
    sget-object p0, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public canPlayingTransition()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public finishRemoteTransitionForCallback(ZZILcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;)V
    .locals 8

    .line 720
    sget-object v0, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " finishTransition finishRemoteTransitionForCallback toHome = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", callback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    iget-object v2, p0, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->mHelper:Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;

    new-instance v6, Landroid/window/WindowContainerTransaction;

    invoke-direct {v6}, Landroid/window/WindowContainerTransaction;-><init>()V

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->executeFinishCallback(ZZILandroid/window/WindowContainerTransaction;Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;)V

    return-void
.end method

.method public finishTransition(ZZZI)V
    .locals 3

    .line 707
    sget-object v0, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " finishTransition toHome = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->mHelper:Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->executeFinishCallback(ZZZI)V

    return-void
.end method

.method public getCallbackHelper()Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;
    .locals 0

    .line 777
    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->mHelper:Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;

    return-object p0
.end method

.method public getOpenRemoteTransition()Landroid/window/RemoteTransition;
    .locals 1

    .line 781
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->iRemoteTransition:Landroid/window/IRemoteTransition$Stub;

    invoke-static {v0}, Lcom/android/hideapi/RemoteTransitionExpose;->newInstance(Landroid/window/IRemoteTransition;)Landroid/window/RemoteTransition;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->mRemoteTransition:Landroid/window/RemoteTransition;

    return-object v0
.end method

.method public getOpenRemoteTransition(Landroid/window/IHyperRemoteTransition;)Landroid/window/RemoteTransition;
    .locals 1

    .line 786
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->iRemoteTransition:Landroid/window/IRemoteTransition$Stub;

    invoke-static {v0, p1}, Lcom/android/hideapi/RemoteTransitionExpose;->newInstance(Landroid/window/IRemoteTransition;Landroid/window/IHyperRemoteTransition;)Landroid/window/RemoteTransition;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->mRemoteTransition:Landroid/window/RemoteTransition;

    return-object p1
.end method

.method public getPairRemoteTransition()Landroid/window/RemoteTransition;
    .locals 0

    .line 791
    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->mPairRemoteTransition:Landroid/window/RemoteTransition;

    return-object p0
.end method

.method public hasMainCallback()Z
    .locals 0

    .line 716
    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->mHelper:Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->hasMainFinishCallback()Z

    move-result p0

    return p0
.end method

.method public hasMergeCallback()Z
    .locals 0

    .line 712
    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->mHelper:Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->hasMergeFinishCallback()Z

    move-result p0

    return p0
.end method

.method public isFinishCalled()Z
    .locals 0

    .line 773
    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->mHelper:Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->isFinishCalled()Z

    move-result p0

    return p0
.end method

.method public isRecentTransitionRequested()Z
    .locals 0

    .line 765
    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->mHelper:Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->isRecentTransitionRequested()Z

    move-result p0

    return p0
.end method

.method public isWaitFinishMainAnim()Z
    .locals 0

    .line 769
    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->mHelper:Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->isWaitFinishMainAnim()Z

    move-result p0

    return p0
.end method

.method public launchTask(I)V
    .locals 1

    .line 692
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->mHelper:Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;

    if-eqz v0, :cond_0

    .line 693
    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->setOpenTaskId(I)V

    .line 695
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->mHelper:Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->hasMergeFinishCallback()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 696
    iget-object p1, p0, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->mHelper:Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->finishMergeCallback()V

    .line 698
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->mHelper:Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->directExecuteWorkHandlerFinishRunnableIfNeed()V

    return-void
.end method

.method public mainAnimNoFinishClear()Z
    .locals 0

    .line 954
    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->mHelper:Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mainAnimNoFinishClear()Z

    move-result p0

    return p0
.end method

.method public onRecentsTransitionRequest()V
    .locals 0

    .line 761
    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->mHelper:Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->onStartRecentTransition()V

    return-void
.end method

.method public setFinishTransitionCallback(Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;)V
    .locals 0

    .line 958
    iput-object p1, p0, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->mFinishTransitionCallback:Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;

    return-void
.end method

.method public setHyperRemoteTransitionFinishedCallback(Landroid/window/IHyperRemoteTransitionFinishedCallback;I)V
    .locals 0

    .line 757
    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->mHelper:Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->setHyperRemoteTransitionFinishedCallback(Landroid/window/IHyperRemoteTransitionFinishedCallback;I)V

    return-void
.end method

.method public wrapOpenWidgetFromAssistantTransition(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/window/IRemoteTransitionFinishedCallback;ZLandroid/os/IBinder;)V
    .locals 6

    if-eqz p5, :cond_0

    .line 743
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->iRemoteTransition:Landroid/window/IRemoteTransition$Stub;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p6

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/window/IRemoteTransition$Stub;->mergeAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Landroid/window/IRemoteTransitionFinishedCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 745
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 748
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->iRemoteTransition:Landroid/window/IRemoteTransition$Stub;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/window/IRemoteTransition$Stub;->startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/window/IRemoteTransitionFinishedCallback;)V

    :goto_0
    return-void
.end method

.method public wrapRecentTransition(Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;)V
    .locals 0

    .line 753
    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->mHelper:Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->setRecentFinishController(Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;)V

    return-void
.end method

.method public wrapRemoteTransition(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/window/IRemoteTransitionFinishedCallback;ZLandroid/os/IBinder;)V
    .locals 7

    .line 726
    sget-object v0, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->TAG:Ljava/lang/String;

    const-string v1, "TransitionTest wrapRemoteTransition"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 727
    iput-boolean v0, p0, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->isWallpaperTransition:Z

    if-eqz p5, :cond_0

    .line 730
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->iRemoteTransition:Landroid/window/IRemoteTransition$Stub;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p6

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Landroid/window/IRemoteTransition$Stub;->mergeAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Landroid/window/IRemoteTransitionFinishedCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 732
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 735
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->iRemoteTransition:Landroid/window/IRemoteTransition$Stub;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/window/IRemoteTransition$Stub;->startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/window/IRemoteTransitionFinishedCallback;)V

    :goto_0
    return-void
.end method
