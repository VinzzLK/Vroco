.class public final Lcom/miui/home/launcher/operationicon/CustomIconParams;
.super Ljava/lang/Object;
.source "CustomIconParams.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/operationicon/CustomIconParams$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/miui/home/launcher/operationicon/CustomIconParams$Companion;


# instance fields
.field private appMinVersion:J

.field private className:Ljava/lang/String;

.field private delayDeepLink:Ljava/lang/String;

.field private dpEndTimestamp:J

.field private dpStartTimestamp:J

.field private ex:Ljava/lang/String;

.field private iconEndTimestamp:J

.field private iconId:Ljava/lang/String;

.field private iconStartTimestamp:J

.field private id:Ljava/lang/String;

.field private isDeeplinkAvailable:Z

.field private isDeeplinkLaunched:Z

.field private lastExposeTimestamp:J

.field private localAppVersion:J

.field private operateId:I

.field private packageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/home/launcher/operationicon/CustomIconParams$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/operationicon/CustomIconParams$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/miui/home/launcher/operationicon/CustomIconParams;->Companion:Lcom/miui/home/launcher/operationicon/CustomIconParams$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 14
    iput-object v0, p0, Lcom/miui/home/launcher/operationicon/CustomIconParams;->id:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/miui/home/launcher/operationicon/CustomIconParams;->packageName:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/miui/home/launcher/operationicon/CustomIconParams;->className:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/miui/home/launcher/operationicon/CustomIconParams;->ex:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final createLaunchIntent()Landroid/content/Intent;
    .locals 2

    .line 52
    iget-object p0, p0, Lcom/miui/home/launcher/operationicon/CustomIconParams;->delayDeepLink:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 54
    :try_start_0
    invoke-static {p0, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    const/high16 v0, 0x10200000

    .line 55
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "generateDeepLinkIntent error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "IconCustomize"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 41
    instance-of v0, p1, Lcom/miui/home/launcher/operationicon/CustomIconParams;

    if-eqz v0, :cond_0

    .line 42
    iget-object p0, p0, Lcom/miui/home/launcher/operationicon/CustomIconParams;->id:Ljava/lang/String;

    check-cast p1, Lcom/miui/home/launcher/operationicon/CustomIconParams;

    iget-object p1, p1, Lcom/miui/home/launcher/operationicon/CustomIconParams;->id:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final getDelayDeepLink()Ljava/lang/String;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/miui/home/launcher/operationicon/CustomIconParams;->delayDeepLink:Ljava/lang/String;

    return-object p0
.end method

.method public final getEx()Ljava/lang/String;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/miui/home/launcher/operationicon/CustomIconParams;->ex:Ljava/lang/String;

    return-object p0
.end method

.method public final getIconId()Ljava/lang/String;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/miui/home/launcher/operationicon/CustomIconParams;->iconId:Ljava/lang/String;

    return-object p0
.end method

.method public final getId()Ljava/lang/String;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/miui/home/launcher/operationicon/CustomIconParams;->id:Ljava/lang/String;

    return-object p0
.end method

.method public final getLastExposeTimestamp()J
    .locals 2

    .line 13
    iget-wide v0, p0, Lcom/miui/home/launcher/operationicon/CustomIconParams;->lastExposeTimestamp:J

    return-wide v0
.end method

.method public final getOperateId()I
    .locals 0

    .line 15
    iget p0, p0, Lcom/miui/home/launcher/operationicon/CustomIconParams;->operateId:I

    return p0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/miui/home/launcher/operationicon/CustomIconParams;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public final isDeeplinkLaunched()Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lcom/miui/home/launcher/operationicon/CustomIconParams;->isDeeplinkLaunched:Z

    return p0
.end method

.method public final isDeeplinkValid()Z
    .locals 6

    .line 32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 33
    iget-wide v2, p0, Lcom/miui/home/launcher/operationicon/CustomIconParams;->localAppVersion:J

    iget-wide v4, p0, Lcom/miui/home/launcher/operationicon/CustomIconParams;->appMinVersion:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 34
    iget-object v2, p0, Lcom/miui/home/launcher/operationicon/CustomIconParams;->delayDeepLink:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 35
    iget-wide v2, p0, Lcom/miui/home/launcher/operationicon/CustomIconParams;->dpStartTimestamp:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 36
    iget-wide v2, p0, Lcom/miui/home/launcher/operationicon/CustomIconParams;->dpEndTimestamp:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 37
    iget-boolean p0, p0, Lcom/miui/home/launcher/operationicon/CustomIconParams;->isDeeplinkAvailable:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final setAppMinVersion(J)V
    .locals 0

    .line 25
    iput-wide p1, p0, Lcom/miui/home/launcher/operationicon/CustomIconParams;->appMinVersion:J

    return-void
.end method

.method public final setDeeplinkAvailable(Z)V
    .locals 0

    .line 29
    iput-boolean p1, p0, Lcom/miui/home/launcher/operationicon/CustomIconParams;->isDeeplinkAvailable:Z

    return-void
.end method

.method public final setDeeplinkLaunched(Z)V
    .locals 0

    .line 28
    iput-boolean p1, p0, Lcom/miui/home/launcher/operationicon/CustomIconParams;->isDeeplinkLaunched:Z

    return-void
.end method

.method public final setDelayDeepLink(Ljava/lang/String;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/miui/home/launcher/operationicon/CustomIconParams;->delayDeepLink:Ljava/lang/String;

    return-void
.end method

.method public final setDpEndTimestamp(J)V
    .locals 0

    .line 23
    iput-wide p1, p0, Lcom/miui/home/launcher/operationicon/CustomIconParams;->dpEndTimestamp:J

    return-void
.end method

.method public final setDpStartTimestamp(J)V
    .locals 0

    .line 22
    iput-wide p1, p0, Lcom/miui/home/launcher/operationicon/CustomIconParams;->dpStartTimestamp:J

    return-void
.end method

.method public final setEx(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iput-object p1, p0, Lcom/miui/home/launcher/operationicon/CustomIconParams;->ex:Ljava/lang/String;

    return-void
.end method

.method public final setIconEndTimestamp(J)V
    .locals 0

    .line 20
    iput-wide p1, p0, Lcom/miui/home/launcher/operationicon/CustomIconParams;->iconEndTimestamp:J

    return-void
.end method

.method public final setIconId(Ljava/lang/String;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/miui/home/launcher/operationicon/CustomIconParams;->iconId:Ljava/lang/String;

    return-void
.end method

.method public final setIconStartTimestamp(J)V
    .locals 0

    .line 19
    iput-wide p1, p0, Lcom/miui/home/launcher/operationicon/CustomIconParams;->iconStartTimestamp:J

    return-void
.end method

.method public final setId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iput-object p1, p0, Lcom/miui/home/launcher/operationicon/CustomIconParams;->id:Ljava/lang/String;

    return-void
.end method

.method public final setLastExposeTimestamp(J)V
    .locals 0

    .line 13
    iput-wide p1, p0, Lcom/miui/home/launcher/operationicon/CustomIconParams;->lastExposeTimestamp:J

    return-void
.end method

.method public final setLocalAppVersion(J)V
    .locals 0

    .line 26
    iput-wide p1, p0, Lcom/miui/home/launcher/operationicon/CustomIconParams;->localAppVersion:J

    return-void
.end method

.method public final setOperateId(I)V
    .locals 0

    .line 15
    iput p1, p0, Lcom/miui/home/launcher/operationicon/CustomIconParams;->operateId:I

    return-void
.end method

.method public final setPackageName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iput-object p1, p0, Lcom/miui/home/launcher/operationicon/CustomIconParams;->packageName:Ljava/lang/String;

    return-void
.end method

.method public final toJSONString()Ljava/lang/String;
    .locals 1

    .line 48
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Gson().toJson(this)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
