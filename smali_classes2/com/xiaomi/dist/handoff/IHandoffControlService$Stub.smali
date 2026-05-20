.class public abstract Lcom/xiaomi/dist/handoff/IHandoffControlService$Stub;
.super Landroid/os/Binder;
.source "IHandoffControlService.java"

# interfaces
.implements Lcom/xiaomi/dist/handoff/IHandoffControlService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/dist/handoff/IHandoffControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/dist/handoff/IHandoffControlService$Stub$Proxy;
    }
.end annotation


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Lcom/xiaomi/dist/handoff/IHandoffControlService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.xiaomi.dist.handoff.IHandoffControlService"

    .line 62
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 63
    instance-of v1, v0, Lcom/xiaomi/dist/handoff/IHandoffControlService;

    if-eqz v1, :cond_1

    .line 64
    check-cast v0, Lcom/xiaomi/dist/handoff/IHandoffControlService;

    return-object v0

    .line 66
    :cond_1
    new-instance v0, Lcom/xiaomi/dist/handoff/IHandoffControlService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/xiaomi/dist/handoff/IHandoffControlService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/xiaomi/dist/handoff/IHandoffControlService;
    .locals 1

    .line 394
    sget-object v0, Lcom/xiaomi/dist/handoff/IHandoffControlService$Stub$Proxy;->sDefaultImpl:Lcom/xiaomi/dist/handoff/IHandoffControlService;

    return-object v0
.end method
