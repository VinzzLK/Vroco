.class public abstract Lcom/android/wm/shell/sosc/ISoScSplitScreen$Stub;
.super Landroid/os/Binder;
.source "ISoScSplitScreen.java"

# interfaces
.implements Lcom/android/wm/shell/sosc/ISoScSplitScreen;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/sosc/ISoScSplitScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/sosc/ISoScSplitScreen$Stub$Proxy;
    }
.end annotation


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Lcom/android/wm/shell/sosc/ISoScSplitScreen;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.android.wm.shell.sosc.ISoScSplitScreen"

    .line 37
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 38
    instance-of v1, v0, Lcom/android/wm/shell/sosc/ISoScSplitScreen;

    if-eqz v1, :cond_1

    .line 39
    check-cast v0, Lcom/android/wm/shell/sosc/ISoScSplitScreen;

    return-object v0

    .line 41
    :cond_1
    new-instance v0, Lcom/android/wm/shell/sosc/ISoScSplitScreen$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/sosc/ISoScSplitScreen$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
