.class Lcom/market/sdk/FloatCardManager$5;
.super Ljava/lang/Object;
.source "FloatCardManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market/sdk/FloatCardManager;->cancelByFloat(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market/sdk/FloatCardManager;

.field final synthetic val$appDownloadManager:Lcom/xiaomi/market/IAppDownloadManager;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/market/sdk/FloatCardManager;Lcom/xiaomi/market/IAppDownloadManager;Ljava/lang/String;)V
    .locals 0

    .line 234
    iput-object p1, p0, Lcom/market/sdk/FloatCardManager$5;->this$0:Lcom/market/sdk/FloatCardManager;

    iput-object p2, p0, Lcom/market/sdk/FloatCardManager$5;->val$appDownloadManager:Lcom/xiaomi/market/IAppDownloadManager;

    iput-object p3, p0, Lcom/market/sdk/FloatCardManager$5;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 238
    :try_start_0
    iget-object v0, p0, Lcom/market/sdk/FloatCardManager$5;->val$appDownloadManager:Lcom/xiaomi/market/IAppDownloadManager;

    iget-object p0, p0, Lcom/market/sdk/FloatCardManager$5;->val$packageName:Ljava/lang/String;

    invoke-static {}, Lcom/market/sdk/utils/AppGlobal;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/xiaomi/market/IAppDownloadManager;->cancel(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 240
    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MarketManager"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
