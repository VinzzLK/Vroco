.class public abstract Lcom/android/wm/shell/splitscreen/ISplitScreenU$Stub;
.super Landroid/os/Binder;
.source "ISplitScreenU.java"

# interfaces
.implements Lcom/android/wm/shell/splitscreen/ISplitScreenU;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/splitscreen/ISplitScreenU;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/splitscreen/ISplitScreenU$Stub$Proxy;
    }
.end annotation


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Lcom/android/wm/shell/splitscreen/ISplitScreenU;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.android.wm.shell.splitscreen.ISplitScreen"

    .line 38
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 39
    instance-of v1, v0, Lcom/android/wm/shell/splitscreen/ISplitScreenU;

    if-eqz v1, :cond_1

    .line 40
    check-cast v0, Lcom/android/wm/shell/splitscreen/ISplitScreenU;

    return-object v0

    .line 42
    :cond_1
    new-instance v0, Lcom/android/wm/shell/splitscreen/ISplitScreenU$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/splitscreen/ISplitScreenU$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
