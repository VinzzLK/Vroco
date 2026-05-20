.class public Lcom/miui/home/recents/SpecialFDeviceGestureHelper;
.super Ljava/lang/Object;
.source "SpecialFDeviceGestureHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/recents/SpecialFDeviceGestureHelper$FoldedStateCallBack;
    }
.end annotation


# static fields
.field private static final sInstance:Lcom/miui/home/recents/SpecialFDeviceGestureHelper;


# instance fields
.field private mInSFDeviceFoldedMode:Z


# direct methods
.method public static synthetic $r8$lambda$lWAn6IbKr9t_K83wNVYxGjzVKms(Lcom/miui/home/recents/SpecialFDeviceGestureHelper;Lcom/miui/home/recents/SpecialFDeviceGestureHelper$FoldedStateCallBack;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/SpecialFDeviceGestureHelper;->lambda$init$0(Lcom/miui/home/recents/SpecialFDeviceGestureHelper$FoldedStateCallBack;Ljava/lang/Boolean;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Lcom/miui/home/recents/SpecialFDeviceGestureHelper;

    invoke-direct {v0}, Lcom/miui/home/recents/SpecialFDeviceGestureHelper;-><init>()V

    sput-object v0, Lcom/miui/home/recents/SpecialFDeviceGestureHelper;->sInstance:Lcom/miui/home/recents/SpecialFDeviceGestureHelper;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/miui/home/recents/SpecialFDeviceGestureHelper;->mInSFDeviceFoldedMode:Z

    return-void
.end method

.method public static getInstance()Lcom/miui/home/recents/SpecialFDeviceGestureHelper;
    .locals 1

    .line 21
    sget-object v0, Lcom/miui/home/recents/SpecialFDeviceGestureHelper;->sInstance:Lcom/miui/home/recents/SpecialFDeviceGestureHelper;

    return-object v0
.end method

.method private synthetic lambda$init$0(Lcom/miui/home/recents/SpecialFDeviceGestureHelper$FoldedStateCallBack;Ljava/lang/Boolean;)V
    .locals 1

    .line 32
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/home/recents/SpecialFDeviceGestureHelper;->mInSFDeviceFoldedMode:Z

    if-eqz p1, :cond_1

    .line 34
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 35
    invoke-interface {p1}, Lcom/miui/home/recents/SpecialFDeviceGestureHelper$FoldedStateCallBack;->onFold()V

    goto :goto_0

    .line 37
    :cond_0
    invoke-interface {p1}, Lcom/miui/home/recents/SpecialFDeviceGestureHelper$FoldedStateCallBack;->onExpand()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method init(Landroid/content/Context;Lcom/miui/home/recents/SpecialFDeviceGestureHelper$FoldedStateCallBack;)V
    .locals 2

    .line 25
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFlip()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 28
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/util/DeviceStateManager;->getCurrentState()Ljava/lang/Integer;

    move-result-object v0

    .line 29
    sget-object v1, Lcom/miui/home/launcher/util/DeviceStateManager;->STATE_FOLDED:Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/home/recents/SpecialFDeviceGestureHelper;->mInSFDeviceFoldedMode:Z

    .line 31
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->BACKGROUND_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    new-instance v1, Lcom/miui/home/recents/SpecialFDeviceGestureHelper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2}, Lcom/miui/home/recents/SpecialFDeviceGestureHelper$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/recents/SpecialFDeviceGestureHelper;Lcom/miui/home/recents/SpecialFDeviceGestureHelper$FoldedStateCallBack;)V

    invoke-static {v0, p1, v1}, Lcom/miui/home/launcher/util/DeviceStateManager;->registerFoldStateCallback(Ljava/util/concurrent/Executor;Landroid/content/Context;Ljava/util/function/Consumer;)Lcom/miui/home/launcher/util/DeviceStateManager$FoldStateListenerHolder;

    return-void
.end method

.method public isInSFDeviceFoldedMode()Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Lcom/miui/home/recents/SpecialFDeviceGestureHelper;->mInSFDeviceFoldedMode:Z

    return p0
.end method
