.class public abstract Lcom/miui/home/recents/anim/WindowTransitionCompatListener;
.super Ljava/lang/Object;
.source "WindowTransitionCompatListener.java"

# interfaces
.implements Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$WindowTransitionCompatListener;


# instance fields
.field private TAG:Ljava/lang/String;

.field private volatile mCancel:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/miui/home/recents/anim/WindowTransitionCompatListener;->mCancel:Z

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WindowTransitionCompatListener"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/anim/WindowTransitionCompatListener;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public hasCancel()Z
    .locals 3

    .line 12
    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowTransitionCompatListener;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasCancel mCancel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/miui/home/recents/anim/WindowTransitionCompatListener;->mCancel:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    iget-boolean p0, p0, Lcom/miui/home/recents/anim/WindowTransitionCompatListener;->mCancel:Z

    return p0
.end method

.method public setCancel(Z)V
    .locals 3

    .line 17
    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowTransitionCompatListener;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCancel mCancel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    iput-boolean p1, p0, Lcom/miui/home/recents/anim/WindowTransitionCompatListener;->mCancel:Z

    return-void
.end method
