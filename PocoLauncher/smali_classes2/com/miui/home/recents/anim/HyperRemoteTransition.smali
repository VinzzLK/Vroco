.class public abstract Lcom/miui/home/recents/anim/HyperRemoteTransition;
.super Lcom/android/systemui/shared/recents/system/BaseRemoteTransition;
.source "HyperRemoteTransition.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private volatile mCancel:Z

.field private mFastLaunchData:Lcom/miui/home/recents/FastLaunchData;

.field private mViewWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 11
    invoke-direct {p0}, Lcom/android/systemui/shared/recents/system/BaseRemoteTransition;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/miui/home/recents/anim/HyperRemoteTransition;->mCancel:Z

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HyperRemoteTransition"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/anim/HyperRemoteTransition;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getViewWeakReference()Ljava/lang/ref/WeakReference;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 36
    iget-object p0, p0, Lcom/miui/home/recents/anim/HyperRemoteTransition;->mViewWeakReference:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public hasCancel()Z
    .locals 3

    .line 18
    iget-object v0, p0, Lcom/miui/home/recents/anim/HyperRemoteTransition;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasCancel mCancel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/miui/home/recents/anim/HyperRemoteTransition;->mCancel:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    iget-boolean p0, p0, Lcom/miui/home/recents/anim/HyperRemoteTransition;->mCancel:Z

    return p0
.end method

.method public setCancel(Z)V
    .locals 3

    .line 23
    iget-object v0, p0, Lcom/miui/home/recents/anim/HyperRemoteTransition;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCancel mCancel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    iput-boolean p1, p0, Lcom/miui/home/recents/anim/HyperRemoteTransition;->mCancel:Z

    return-void
.end method

.method public setFastLaunchData(Lcom/miui/home/recents/FastLaunchData;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/miui/home/recents/anim/HyperRemoteTransition;->mFastLaunchData:Lcom/miui/home/recents/FastLaunchData;

    return-void
.end method

.method public setViewWeakReference(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 40
    iput-object p1, p0, Lcom/miui/home/recents/anim/HyperRemoteTransition;->mViewWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method
