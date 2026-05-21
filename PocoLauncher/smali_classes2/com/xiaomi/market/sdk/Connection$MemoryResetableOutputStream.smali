.class public Lcom/xiaomi/market/sdk/Connection$MemoryResetableOutputStream;
.super Lcom/xiaomi/market/sdk/Connection$ResetableOutputStream;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/market/sdk/Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MemoryResetableOutputStream"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/market/sdk/Connection;


# direct methods
.method public constructor <init>(Lcom/xiaomi/market/sdk/Connection;Ljava/io/ByteArrayOutputStream;)V
    .locals 0

    .line 526
    iput-object p1, p0, Lcom/xiaomi/market/sdk/Connection$MemoryResetableOutputStream;->this$0:Lcom/xiaomi/market/sdk/Connection;

    .line 527
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/market/sdk/Connection$ResetableOutputStream;-><init>(Lcom/xiaomi/market/sdk/Connection;Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 0

    .line 532
    iget-object p0, p0, Lcom/xiaomi/market/sdk/Connection$ResetableOutputStream;->mOutputStream:Ljava/io/OutputStream;

    check-cast p0, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->reset()V

    return-void
.end method
