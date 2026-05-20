.class public abstract Lcom/android/wm/shell/transition/IShellTransitions$Stub;
.super Landroid/os/Binder;
.source "IShellTransitions.java"

# interfaces
.implements Lcom/android/wm/shell/transition/IShellTransitions;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/transition/IShellTransitions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/transition/IShellTransitions$Stub$Proxy;
    }
.end annotation


# direct methods
.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 43
    invoke-static {}, Lcom/android/wm/shell/transition/IShellTransitions$Stub;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/wm/shell/transition/IShellTransitions;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 66
    :cond_0
    invoke-static {}, Lcom/android/wm/shell/transition/IShellTransitions$Stub;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 67
    instance-of v1, v0, Lcom/android/wm/shell/transition/IShellTransitions;

    if-eqz v1, :cond_1

    .line 68
    check-cast v0, Lcom/android/wm/shell/transition/IShellTransitions;

    return-object v0

    .line 70
    :cond_1
    new-instance v0, Lcom/android/wm/shell/transition/IShellTransitions$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/transition/IShellTransitions$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/android/wm/shell/transition/IShellTransitions;
    .locals 1

    .line 247
    sget-object v0, Lcom/android/wm/shell/transition/IShellTransitions$Stub$Proxy;->sDefaultImpl:Lcom/android/wm/shell/transition/IShellTransitions;

    return-object v0
.end method

.method private static getDescriptor()Ljava/lang/String;
    .locals 1

    .line 49
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/Utilities;->atLeastAndroidV()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.android.wm.shell.shared.IShellTransitions"

    goto :goto_0

    :cond_0
    const-string v0, "com.android.wm.shell.transition.IShellTransitions"

    :goto_0
    return-object v0
.end method
