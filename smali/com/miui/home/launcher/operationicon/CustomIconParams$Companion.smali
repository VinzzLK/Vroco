.class public final Lcom/miui/home/launcher/operationicon/CustomIconParams$Companion;
.super Ljava/lang/Object;
.source "CustomIconParams.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/operationicon/CustomIconParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/operationicon/CustomIconParams$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromBundle(Landroid/os/Bundle;)Lcom/miui/home/launcher/operationicon/CustomIconParams;
    .locals 9

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return-object p0

    .line 84
    :cond_0
    new-instance v0, Lcom/miui/home/launcher/operationicon/CustomIconParams;

    invoke-direct {v0}, Lcom/miui/home/launcher/operationicon/CustomIconParams;-><init>()V

    const-string v1, "id"

    const-string v2, ""

    .line 85
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 86
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object p0

    .line 89
    :cond_1
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/miui/home/launcher/operationicon/CustomIconParams;->setId(Ljava/lang/String;)V

    const-string v1, "packageName"

    .line 90
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 91
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    return-object p0

    :cond_2
    const-string p0, "pkgName"

    .line 94
    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/operationicon/CustomIconParams;->setPackageName(Ljava/lang/String;)V

    const-string p0, "iconId"

    .line 95
    invoke-virtual {p1, p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/operationicon/CustomIconParams;->setIconId(Ljava/lang/String;)V

    const/4 p0, 0x0

    const-string v3, "operateId"

    .line 96
    invoke-virtual {p1, v3, p0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/operationicon/CustomIconParams;->setOperateId(I)V

    const-string p0, "delayDeepLink"

    .line 97
    invoke-virtual {p1, p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 98
    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/operationicon/CustomIconParams;->setDelayDeepLink(Ljava/lang/String;)V

    const-string p0, "iconStartTimestamp"

    const-wide/16 v3, 0x0

    .line 99
    invoke-virtual {p1, p0, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    const-string p0, "iconEndTimestamp"

    .line 100
    invoke-virtual {p1, p0, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    .line 101
    invoke-virtual {v0, v5, v6}, Lcom/miui/home/launcher/operationicon/CustomIconParams;->setIconStartTimestamp(J)V

    .line 102
    invoke-virtual {v0, v7, v8}, Lcom/miui/home/launcher/operationicon/CustomIconParams;->setIconEndTimestamp(J)V

    const-string p0, "dpStartTimestamp"

    .line 103
    invoke-virtual {p1, p0, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    const-string p0, "dpEndTimestamp"

    .line 104
    invoke-virtual {p1, p0, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    .line 105
    invoke-virtual {v0, v5, v6}, Lcom/miui/home/launcher/operationicon/CustomIconParams;->setDpStartTimestamp(J)V

    .line 106
    invoke-virtual {v0, v7, v8}, Lcom/miui/home/launcher/operationicon/CustomIconParams;->setDpEndTimestamp(J)V

    const-string p0, "appMinVersion"

    .line 107
    invoke-virtual {p1, p0, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/miui/home/launcher/operationicon/CustomIconParams;->setAppMinVersion(J)V

    const-string p0, "ex"

    .line 108
    invoke-virtual {p1, p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "from.getString(PARAMS_KEY_EX, \"\")"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/operationicon/CustomIconParams;->setEx(Ljava/lang/String;)V

    .line 109
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/miui/home/launcher/common/Utilities;->getAppVersionCodeLong(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Lcom/miui/home/launcher/operationicon/CustomIconParams;->setLocalAppVersion(J)V

    return-object v0
.end method

.method public final createFromJSON(Ljava/lang/String;)Lcom/miui/home/launcher/operationicon/CustomIconParams;
    .locals 11

    const-string p0, "id"

    const-string v0, ""

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return-object v1

    .line 118
    :cond_0
    new-instance v2, Lcom/miui/home/launcher/operationicon/CustomIconParams;

    invoke-direct {v2}, Lcom/miui/home/launcher/operationicon/CustomIconParams;-><init>()V

    .line 120
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v3, p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 122
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v1

    .line 125
    :cond_1
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Lcom/miui/home/launcher/operationicon/CustomIconParams;->setId(Ljava/lang/String;)V

    const-string p0, "packageName"

    .line 126
    invoke-virtual {v3, p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 127
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-object v1

    :cond_2
    const-string p1, "pkgName"

    .line 131
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Lcom/miui/home/launcher/operationicon/CustomIconParams;->setPackageName(Ljava/lang/String;)V

    const-string p1, "iconId"

    .line 132
    invoke-virtual {v3, p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/miui/home/launcher/operationicon/CustomIconParams;->setIconId(Ljava/lang/String;)V

    const-string p1, "operateId"

    const/4 v4, 0x0

    .line 133
    invoke-virtual {v3, p1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v2, p1}, Lcom/miui/home/launcher/operationicon/CustomIconParams;->setOperateId(I)V

    const-string p1, "delayDeepLink"

    .line 134
    invoke-virtual {v3, p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 135
    invoke-virtual {v2, p1}, Lcom/miui/home/launcher/operationicon/CustomIconParams;->setDelayDeepLink(Ljava/lang/String;)V

    const-string p1, "iconStartTimestamp"

    const-wide/16 v5, 0x0

    .line 136
    invoke-virtual {v3, p1, v5, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v7

    const-string p1, "iconEndTimestamp"

    .line 137
    invoke-virtual {v3, p1, v5, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v9

    .line 138
    invoke-virtual {v2, v7, v8}, Lcom/miui/home/launcher/operationicon/CustomIconParams;->setIconStartTimestamp(J)V

    .line 139
    invoke-virtual {v2, v9, v10}, Lcom/miui/home/launcher/operationicon/CustomIconParams;->setIconEndTimestamp(J)V

    const-string p1, "dpStartTimestamp"

    .line 140
    invoke-virtual {v3, p1, v5, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v7

    const-string p1, "dpEndTimestamp"

    .line 141
    invoke-virtual {v3, p1, v5, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v9

    .line 142
    invoke-virtual {v2, v7, v8}, Lcom/miui/home/launcher/operationicon/CustomIconParams;->setDpStartTimestamp(J)V

    .line 143
    invoke-virtual {v2, v9, v10}, Lcom/miui/home/launcher/operationicon/CustomIconParams;->setDpEndTimestamp(J)V

    const-string p1, "isDeeplinkLaunched"

    .line 144
    invoke-virtual {v3, p1, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {v2, p1}, Lcom/miui/home/launcher/operationicon/CustomIconParams;->setDeeplinkLaunched(Z)V

    const-string p1, "appMinVersion"

    .line 145
    invoke-virtual {v3, p1, v5, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/miui/home/launcher/operationicon/CustomIconParams;->setAppMinVersion(J)V

    const-string p1, "ex"

    .line 146
    invoke-virtual {v3, p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "jsonObject.optString(PARAMS_KEY_EX, \"\")"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Lcom/miui/home/launcher/operationicon/CustomIconParams;->setEx(Ljava/lang/String;)V

    .line 147
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/miui/home/launcher/common/Utilities;->getAppVersionCodeLong(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide p0

    invoke-virtual {v2, p0, p1}, Lcom/miui/home/launcher/operationicon/CustomIconParams;->setLocalAppVersion(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    return-object v1
.end method
