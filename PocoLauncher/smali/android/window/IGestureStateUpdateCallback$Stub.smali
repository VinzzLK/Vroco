.class public abstract Landroid/window/IGestureStateUpdateCallback$Stub;
.super Landroid/os/Binder;
.source "IGestureStateUpdateCallback.java"

# interfaces
.implements Landroid/window/IGestureStateUpdateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/IGestureStateUpdateCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/IGestureStateUpdateCallback$Stub$Proxy;
    }
.end annotation


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Landroid/window/IGestureStateUpdateCallback;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "android.window.IGestureStateUpdateCallback"

    .line 35
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 36
    instance-of v1, v0, Landroid/window/IGestureStateUpdateCallback;

    if-eqz v1, :cond_1

    .line 37
    check-cast v0, Landroid/window/IGestureStateUpdateCallback;

    return-object v0

    .line 39
    :cond_1
    new-instance v0, Landroid/window/IGestureStateUpdateCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/window/IGestureStateUpdateCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
