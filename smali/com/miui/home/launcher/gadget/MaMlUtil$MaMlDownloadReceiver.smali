.class Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MaMlUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/gadget/MaMlUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MaMlDownloadReceiver"
.end annotation


# static fields
.field private static sReceiver:Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;


# instance fields
.field private volatile mDownloadStatus:I

.field private final maMlDownloadParams:Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;


# direct methods
.method public static synthetic $r8$lambda$1s0IiXtpkhhtEfXnA7ypYjFn3B0(Ljava/lang/String;IILjava/util/ArrayList;Lcom/miui/miuiwidget/servicedelivery/appwidget/IServiceDeliveryWidgetView;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->lambda$updateServiceDeliveryPendingProgress$6(Ljava/lang/String;IILjava/util/ArrayList;Lcom/miui/miuiwidget/servicedelivery/appwidget/IServiceDeliveryWidgetView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7HrOyzjFOsUrGhWbn-SC69KOrMU(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->lambda$onDownloadStatusChange$5(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$G1AiHza3uPrnEieYYd2-sj4HPNM(Ljava/lang/String;Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->lambda$onDownloadStatusChange$4(Ljava/lang/String;Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$NgWzUtrXLY_rd8v3gIelgGYCIdU(Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;Landroid/content/Context;Lcom/miui/maml/widget/edit/MamlDownloadStatus;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->lambda$onReceive$1(Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;Landroid/content/Context;Lcom/miui/maml/widget/edit/MamlDownloadStatus;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_Y4tTpLqQeZwVDmZP7S30jDB4P8(ILcom/miui/home/launcher/maml/MaMlWidgetInfo;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->lambda$onDownloadProgress$3(ILcom/miui/home/launcher/maml/MaMlWidgetInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dNSjFYEvQ8kGfTTSL8ZR3xWwlms(Ljava/lang/String;Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->lambda$onDownloadProgress$2(Ljava/lang/String;Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$tFGXMRSx7vpymLlULXsmZUjwnpA(Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->lambda$download$0(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;)V
    .locals 2

    .line 176
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 177
    iput-object p1, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->maMlDownloadParams:Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;

    .line 178
    invoke-static {p1}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;->access$000(Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;)Ljava/lang/String;

    move-result-object v0

    .line 179
    invoke-static {p1}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;->access$100(Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;)I

    move-result p1

    const/4 v1, 0x1

    .line 178
    invoke-direct {p0, v0, p1, v1}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->onDownloadStatusChange(Ljava/lang/String;II)V

    return-void
.end method

.method private fromError(Ljava/lang/Exception;)Lcom/miui/maml/widget/edit/MamlDownloadStatus;
    .locals 7

    .line 236
    new-instance v6, Lcom/miui/maml/widget/edit/MamlDownloadStatus;

    iget-object v0, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->maMlDownloadParams:Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;

    invoke-static {v0}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;->access$000(Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;)Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->maMlDownloadParams:Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;

    .line 237
    invoke-static {p0}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;->access$100(Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;)I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x3

    const/4 v4, -0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/miui/maml/widget/edit/MamlDownloadStatus;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    return-object v6
.end method

.method private handle(Landroid/content/Context;Lcom/miui/maml/widget/edit/MamlDownloadStatus;)V
    .locals 3

    .line 289
    invoke-virtual {p2}, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->getState()I

    move-result p1

    const/4 v0, 0x2

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-eq p1, v1, :cond_2

    const-string v1, "MaMlUtil"

    if-eq p1, v0, :cond_1

    if-eq p1, v2, :cond_0

    goto/16 :goto_0

    .line 314
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MaMlDownload "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->maMlDownloadParams:Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;

    invoke-static {v0}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;->access$300(Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " err:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    iget p1, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->mDownloadStatus:I

    const/4 v0, 0x5

    if-eq p1, v0, :cond_5

    .line 316
    iput v0, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->mDownloadStatus:I

    .line 317
    invoke-virtual {p2}, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->getId()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->maMlDownloadParams:Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;

    .line 318
    invoke-static {p2}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;->access$100(Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;)I

    move-result p2

    iget v0, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->mDownloadStatus:I

    .line 317
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->onDownloadStatusChange(Ljava/lang/String;II)V

    goto :goto_0

    .line 306
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MaMlDownload done"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->maMlDownloadParams:Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;

    invoke-static {v0}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;->access$300(Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iget p1, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->mDownloadStatus:I

    const/4 v0, 0x4

    if-eq p1, v0, :cond_5

    .line 308
    iput v0, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->mDownloadStatus:I

    .line 309
    invoke-virtual {p2}, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->getId()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->maMlDownloadParams:Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;

    .line 310
    invoke-static {p2}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;->access$100(Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;)I

    move-result p2

    iget v0, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->mDownloadStatus:I

    .line 309
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->onDownloadStatusChange(Ljava/lang/String;II)V

    goto :goto_0

    .line 299
    :cond_2
    iget p1, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->mDownloadStatus:I

    if-eq p1, v2, :cond_5

    .line 300
    iput v2, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->mDownloadStatus:I

    .line 301
    invoke-virtual {p2}, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->getId()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->maMlDownloadParams:Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;

    .line 302
    invoke-static {p2}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;->access$100(Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;)I

    move-result p2

    iget v0, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->mDownloadStatus:I

    .line 301
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->onDownloadStatusChange(Ljava/lang/String;II)V

    goto :goto_0

    .line 291
    :cond_3
    iget p1, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->mDownloadStatus:I

    if-eq p1, v0, :cond_4

    .line 292
    iput v0, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->mDownloadStatus:I

    .line 293
    invoke-virtual {p2}, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->getId()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->maMlDownloadParams:Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;

    .line 294
    invoke-static {v0}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;->access$100(Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;)I

    move-result v0

    iget v1, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->mDownloadStatus:I

    .line 293
    invoke-direct {p0, p1, v0, v1}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->onDownloadStatusChange(Ljava/lang/String;II)V

    .line 296
    :cond_4
    invoke-virtual {p2}, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->getProgressPercent()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->onDownloadProgress(Ljava/lang/String;I)V

    :cond_5
    :goto_0
    return-void
.end method

.method private synthetic lambda$download$0(Landroid/content/Context;)V
    .locals 0

    .line 226
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->timeOut(Landroid/content/Context;)V

    return-void
.end method

.method private static synthetic lambda$onDownloadProgress$2(Ljava/lang/String;Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)Z
    .locals 1

    .line 333
    iget-object v0, p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->productId:Ljava/lang/String;

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object p0, p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->hostView:Lcom/miui/home/launcher/maml/MaMlWidgetView;

    if-eqz p0, :cond_0

    .line 335
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->getHostView()Lcom/miui/home/launcher/maml/MaMlHostView;

    move-result-object p0

    instance-of p0, p0, Lcom/miui/home/launcher/gadget/MaMlPendingHostView;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$onDownloadProgress$3(ILcom/miui/home/launcher/maml/MaMlWidgetInfo;)V
    .locals 0

    .line 336
    iget-object p1, p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->hostView:Lcom/miui/home/launcher/maml/MaMlWidgetView;

    invoke-virtual {p1}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->getHostView()Lcom/miui/home/launcher/maml/MaMlHostView;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/gadget/MaMlPendingHostView;

    invoke-virtual {p1, p0, p0}, Lcom/miui/home/launcher/gadget/MaMlPendingHostView;->updateProgress(II)V

    return-void
.end method

.method private static synthetic lambda$onDownloadStatusChange$4(Ljava/lang/String;Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)Z
    .locals 1

    .line 351
    iget-object v0, p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->productId:Ljava/lang/String;

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object p0, p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->hostView:Lcom/miui/home/launcher/maml/MaMlWidgetView;

    if-eqz p0, :cond_0

    .line 353
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->getHostView()Lcom/miui/home/launcher/maml/MaMlHostView;

    move-result-object p0

    instance-of p0, p0, Lcom/miui/home/launcher/gadget/MaMlPendingHostView;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$onDownloadStatusChange$5(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)V
    .locals 2

    .line 354
    iget-object p0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->hostView:Lcom/miui/home/launcher/maml/MaMlWidgetView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->getHostView()Lcom/miui/home/launcher/maml/MaMlHostView;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/gadget/MaMlPendingHostView;

    const/16 v0, -0x64

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/gadget/MaMlPendingHostView;->updateProgress(II)V

    return-void
.end method

.method private static synthetic lambda$onReceive$1(Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;Landroid/content/Context;Lcom/miui/maml/widget/edit/MamlDownloadStatus;)V
    .locals 0

    .line 269
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->handle(Landroid/content/Context;Lcom/miui/maml/widget/edit/MamlDownloadStatus;)V

    return-void
.end method

.method private static synthetic lambda$updateServiceDeliveryPendingProgress$6(Ljava/lang/String;IILjava/util/ArrayList;Lcom/miui/miuiwidget/servicedelivery/appwidget/IServiceDeliveryWidgetView;)V
    .locals 2

    .line 372
    instance-of v0, p4, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryPendingHostView;

    if-eqz v0, :cond_0

    .line 373
    move-object v0, p4

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 374
    instance-of v1, v0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    if-eqz v1, :cond_0

    .line 375
    check-cast v0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    iget-object v0, v0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->productId:Ljava/lang/String;

    invoke-static {v0, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 376
    move-object p0, p4

    check-cast p0, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryPendingHostView;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryPendingHostView;->updateProgress(II)V

    const/4 p0, -0x5

    if-ne p1, p0, :cond_0

    .line 379
    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private onDownloadProgress(Ljava/lang/String;I)V
    .locals 1

    .line 327
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 331
    :cond_0
    invoke-direct {p0, v0, p1, p2, p2}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->updateServiceDeliveryPendingProgress(Lcom/miui/home/launcher/Launcher;Ljava/lang/String;II)V

    .line 332
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getMaMlItems()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver$$ExternalSyntheticLambda6;

    invoke-direct {v0, p1}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver$$ExternalSyntheticLambda6;-><init>(Ljava/lang/String;)V

    .line 333
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver$$ExternalSyntheticLambda2;

    invoke-direct {p1, p2}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver$$ExternalSyntheticLambda2;-><init>(I)V

    .line 335
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private onDownloadStatusChange(Ljava/lang/String;II)V
    .locals 2

    .line 340
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x4

    if-ne p3, v1, :cond_1

    .line 345
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p3

    invoke-virtual {p3}, Lcom/miui/home/launcher/Application;->getModel()Lcom/miui/home/launcher/LauncherModel;

    move-result-object p3

    new-instance v1, Lcom/miui/home/launcher/model/MamlUpdateTask;

    invoke-direct {v1, p1, p2}, Lcom/miui/home/launcher/model/MamlUpdateTask;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p3, v1}, Lcom/miui/home/launcher/LauncherModel;->enqueueModelUpdateTask(Lcom/miui/home/launcher/LauncherModel$ModelUpdateTask;)V

    const/4 p2, -0x5

    const/16 p3, 0x64

    .line 347
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->updateServiceDeliveryPendingProgress(Lcom/miui/home/launcher/Launcher;Ljava/lang/String;II)V

    goto :goto_0

    :cond_1
    const/4 p2, 0x5

    if-ne p3, p2, :cond_2

    .line 350
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getMaMlItems()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance p3, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver$$ExternalSyntheticLambda5;

    invoke-direct {p3, p1}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver$$ExternalSyntheticLambda5;-><init>(Ljava/lang/String;)V

    .line 351
    invoke-interface {p2, p3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p2

    sget-object p3, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver$$ExternalSyntheticLambda4;->INSTANCE:Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver$$ExternalSyntheticLambda4;

    .line 353
    invoke-interface {p2, p3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    const/16 p2, -0x64

    const/4 p3, 0x0

    .line 356
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->updateServiceDeliveryPendingProgress(Lcom/miui/home/launcher/Launcher;Ljava/lang/String;II)V

    :cond_2
    :goto_0
    return-void
.end method

.method private onReceive(Landroid/content/Context;Lcom/miui/maml/widget/edit/MamlDownloadStatus;)V
    .locals 4

    const-string v0, "MaMlUtil"

    .line 249
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive product = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 251
    invoke-static {}, Lcom/miui/home/launcher/gadget/MaMlUtil;->access$200()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    monitor-enter v1

    .line 252
    :try_start_0
    invoke-static {}, Lcom/miui/home/launcher/gadget/MaMlUtil;->access$200()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {p2}, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_0

    .line 254
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 256
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 258
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 259
    invoke-virtual {p2}, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->getState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 260
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->maMlDownloadParams:Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;

    invoke-static {v1}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;->access$400(Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "file://"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 261
    invoke-virtual {p2}, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->getMamlVersion()I

    move-result v1

    invoke-static {p1, p0, v1}, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->installMaMlFromThemeApp(Landroid/content/Context;Ljava/lang/String;I)Z

    goto :goto_0

    .line 263
    :cond_1
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->maMlDownloadParams:Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;

    invoke-static {v1}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;->access$400(Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v3, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->maMlDownloadParams:Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;

    .line 264
    invoke-static {v3}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;->access$000(Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;)Ljava/lang/String;

    move-result-object v3

    iget-object p0, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->maMlDownloadParams:Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;

    invoke-static {p0}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;->access$100(Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;)I

    move-result p0

    .line 263
    invoke-static {p1, v1, v3, p0}, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->installMaMlFromExternal(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;I)Z

    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 268
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;

    .line 269
    invoke-static {}, Lcom/miui/home/launcher/gadget/MaMlUtil;->access$600()Lcom/miui/home/launcher/MainThreadExecutor;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;Landroid/content/Context;Lcom/miui/maml/widget/edit/MamlDownloadStatus;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 271
    invoke-virtual {p2}, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->getState()I

    move-result p0

    if-eq p0, v2, :cond_3

    .line 272
    invoke-virtual {p2}, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->getState()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_4

    .line 273
    :cond_3
    invoke-static {}, Lcom/miui/home/launcher/gadget/MaMlUtil;->access$200()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-virtual {p2}, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    :cond_4
    invoke-static {}, Lcom/miui/home/launcher/gadget/MaMlUtil;->access$200()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    monitor-enter p0

    .line 277
    :try_start_1
    invoke-static {}, Lcom/miui/home/launcher/gadget/MaMlUtil;->access$200()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_5

    sget-object p2, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->sReceiver:Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p2, :cond_5

    .line 279
    :try_start_2
    invoke-virtual {p1, p2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    const/4 p1, 0x0

    .line 282
    :try_start_3
    sput-object p1, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->sReceiver:Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;

    .line 284
    :cond_5
    monitor-exit p0

    goto :goto_1

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :cond_6
    :goto_1
    return-void

    :catchall_2
    move-exception p0

    .line 256
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0
.end method

.method private timeOut(Landroid/content/Context;)V
    .locals 2

    .line 230
    iget v0, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->mDownloadStatus:I

    if-nez v0, :cond_0

    .line 231
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    const-string v1, "Maml Download timeout"

    invoke-direct {v0, v1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->fromError(Ljava/lang/Exception;)Lcom/miui/maml/widget/edit/MamlDownloadStatus;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->onReceive(Landroid/content/Context;Lcom/miui/maml/widget/edit/MamlDownloadStatus;)V

    :cond_0
    return-void
.end method

.method private updateServiceDeliveryPendingProgress(Lcom/miui/home/launcher/Launcher;Ljava/lang/String;II)V
    .locals 3

    .line 363
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getServiceDeliveryItems()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryInfo;

    .line 364
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    .line 365
    iget-object v1, p1, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryInfo;->hostView:Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryWidgetView;

    if-eqz v1, :cond_0

    .line 366
    invoke-virtual {p1}, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryInfo;->getDeliveryLayout()Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 369
    :cond_1
    invoke-virtual {p1}, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryInfo;->getDeliveryLayout()Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;

    move-result-object p1

    .line 370
    invoke-virtual {p1}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->getPendingSet()Ljava/util/Set;

    move-result-object v1

    .line 371
    new-instance v2, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver$$ExternalSyntheticLambda3;

    invoke-direct {v2, p2, p3, p4, v0}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;IILjava/util/ArrayList;)V

    invoke-interface {v1, v2}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 385
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 386
    invoke-virtual {p1, v0}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->downloadSucceed(Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method download(Landroid/content/Context;)V
    .locals 13

    .line 215
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->maMlDownloadParams:Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;

    invoke-static {v0}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;->access$400(Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->maMlDownloadParams:Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;

    .line 217
    invoke-static {v0}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;->access$000(Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->maMlDownloadParams:Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;

    .line 218
    invoke-static {v0}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;->access$300(Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->maMlDownloadParams:Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;

    .line 219
    invoke-static {v0}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;->access$400(Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->maMlDownloadParams:Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;

    .line 220
    invoke-static {v0}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;->access$100(Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;)I

    move-result v5

    iget-object v0, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->maMlDownloadParams:Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;

    .line 221
    invoke-static {v0}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;->access$500(Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;)I

    move-result v6

    move-object v1, p1

    .line 216
    invoke-static/range {v1 .. v6}, Lcom/miui/maml/widget/edit/MamlutilKt;->startDownloadMamlAndRight(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I

    goto :goto_0

    .line 223
    :cond_0
    new-instance v0, Lcom/miui/maml/widget/edit/MamlDownloadStatus;

    iget-object v1, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->maMlDownloadParams:Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;

    invoke-static {v1}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;->access$000(Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;)Ljava/lang/String;

    move-result-object v8

    iget-object v1, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->maMlDownloadParams:Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;

    .line 224
    invoke-static {v1}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;->access$100(Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;)I

    move-result v9

    const/4 v10, 0x2

    const/16 v11, 0x64

    const-string v12, ""

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/miui/maml/widget/edit/MamlDownloadStatus;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    .line 223
    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->onReceive(Landroid/content/Context;Lcom/miui/maml/widget/edit/MamlDownloadStatus;)V

    .line 226
    :goto_0
    new-instance v0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;Landroid/content/Context;)V

    const-wide/16 p0, 0x7530

    invoke-static {v0, p0, p1}, Lcom/miui/home/launcher/common/BackgroundThread;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MaMlUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    invoke-static {p2}, Lcom/miui/maml/widget/edit/MamlDownloadStatusKt;->createDownloadStatus(Landroid/content/Intent;)Lcom/miui/maml/widget/edit/MamlDownloadStatus;

    move-result-object p2

    .line 245
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->onReceive(Landroid/content/Context;Lcom/miui/maml/widget/edit/MamlDownloadStatus;)V

    return-void
.end method

.method startMaMlDownload(Landroid/content/Context;)V
    .locals 4

    .line 183
    invoke-static {}, Lcom/miui/home/launcher/gadget/MaMlUtil;->access$200()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    monitor-enter v0

    .line 184
    :try_start_0
    sget-object v1, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->sReceiver:Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;

    if-nez v1, :cond_0

    .line 185
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.android.thememanager.ACTION.maml.download"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x2

    .line 186
    invoke-virtual {p1, p0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 187
    sput-object p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->sReceiver:Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;

    :cond_0
    const-string v1, "MaMlUtil"

    .line 190
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startMaMlDownload "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->maMlDownloadParams:Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;

    invoke-static {v3}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;->access$300(Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " url = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->maMlDownloadParams:Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;

    invoke-static {v3}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;->access$400(Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-static {}, Lcom/miui/home/launcher/gadget/MaMlUtil;->access$200()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->maMlDownloadParams:Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;

    invoke-static {v2}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;->access$000(Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_1

    .line 196
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 197
    invoke-static {}, Lcom/miui/home/launcher/gadget/MaMlUtil;->access$200()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->maMlDownloadParams:Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;

    invoke-static {v3}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;->access$000(Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    :cond_1
    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string p1, "MaMlUtil"

    .line 200
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "download "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->maMlDownloadParams:Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;

    invoke-static {p0}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;->access$300(Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "already started"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    monitor-exit v0

    return-void

    .line 203
    :cond_2
    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->download(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MaMlUtil"

    .line 209
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "download err :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->fromError(Ljava/lang/Exception;)Lcom/miui/maml/widget/edit/MamlDownloadStatus;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->onReceive(Landroid/content/Context;Lcom/miui/maml/widget/edit/MamlDownloadStatus;)V

    :goto_0
    return-void

    :catchall_0
    move-exception p0

    .line 204
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
