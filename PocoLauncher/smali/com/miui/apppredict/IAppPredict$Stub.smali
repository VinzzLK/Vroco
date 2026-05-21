.class public abstract Lcom/miui/apppredict/IAppPredict$Stub;
.super Landroid/os/Binder;
.source "IAppPredict.java"

# interfaces
.implements Lcom/miui/apppredict/IAppPredict;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/apppredict/IAppPredict;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/apppredict/IAppPredict$Stub$Proxy;
    }
.end annotation


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Lcom/miui/apppredict/IAppPredict;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.miui.apppredict.IAppPredict"

    .line 41
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 42
    instance-of v1, v0, Lcom/miui/apppredict/IAppPredict;

    if-eqz v1, :cond_1

    .line 43
    check-cast v0, Lcom/miui/apppredict/IAppPredict;

    return-object v0

    .line 45
    :cond_1
    new-instance v0, Lcom/miui/apppredict/IAppPredict$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/miui/apppredict/IAppPredict$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
