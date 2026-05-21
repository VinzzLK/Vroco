.class public interface abstract Lcom/msa/sdk/tool/RemoteMethodInvoker$InvokeFailedCallback;
.super Ljava/lang/Object;
.source "RemoteMethodInvoker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/msa/sdk/tool/RemoteMethodInvoker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "InvokeFailedCallback"
.end annotation


# virtual methods
.method public abstract onBindException(Ljava/lang/Throwable;)V
.end method

.method public abstract onBindFailed()V
.end method

.method public abstract onIPCException(Ljava/lang/Throwable;)V
.end method

.method public abstract onTimeout()V
.end method
