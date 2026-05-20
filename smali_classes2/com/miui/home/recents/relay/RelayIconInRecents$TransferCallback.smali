.class public Lcom/miui/home/recents/relay/RelayIconInRecents$TransferCallback;
.super Ljava/lang/Object;
.source "RelayIconInRecents.java"

# interfaces
.implements Lcom/xiaomi/dist/handoff/system/callback/TransferSessionToLocalCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/relay/RelayIconInRecents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TransferCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(I)V
    .locals 1

    .line 300
    invoke-static {}, Lcom/miui/home/recents/relay/RelayIconInRecents;->access$200()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/miui/home/recents/relay/RelayIconInRecents;->access$300()I

    move-result v0

    invoke-static {p0, v0, p1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackClickRelay(Ljava/lang/String;II)V

    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 1

    .line 305
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "startTransferSessionToLocal fail,code = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " reason :"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RelayIconInRecents"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
