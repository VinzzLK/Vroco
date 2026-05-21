.class public abstract Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;
.super Ljava/lang/Object;
.source "UserPresentAnimationCompat.java"


# instance fields
.field protected mLauncher:Lcom/miui/home/launcher/Launcher;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-void
.end method

.method public static createLoadingAnimation(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;
    .locals 1

    .line 23
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    new-instance v0, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimationFold;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimationFold;-><init>(Lcom/miui/home/launcher/Launcher;)V

    return-object v0

    .line 26
    :cond_0
    new-instance v0, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;-><init>(Lcom/miui/home/launcher/Launcher;)V

    return-object v0
.end method

.method public static createUserPresentAnimation(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;
    .locals 1

    .line 15
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    new-instance v0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatFold;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatFold;-><init>(Lcom/miui/home/launcher/Launcher;)V

    return-object v0

    .line 18
    :cond_0
    new-instance v0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatPhone;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatPhone;-><init>(Lcom/miui/home/launcher/Launcher;)V

    return-object v0
.end method


# virtual methods
.method public abstract checkMissingIcon()V
.end method

.method public abstract isPreparedAnimation()Z
.end method

.method public abstract isShowingAnimation()Z
.end method

.method public abstract prepareAnimation()V
.end method

.method public abstract resetAnimation()V
.end method

.method public abstract resetAnimationViewLayerType()V
.end method

.method public abstract showAnimation()V
.end method

.method public abstract stopAnimation()V
.end method
