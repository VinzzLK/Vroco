.class public final Lcom/miui/home/launcher/servicedeliver/ServiceDeliverDataHelper;
.super Ljava/lang/Object;
.source "ServiceDeliverDataHelper.kt"


# static fields
.field public static final INSTANCE:Lcom/miui/home/launcher/servicedeliver/ServiceDeliverDataHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/launcher/servicedeliver/ServiceDeliverDataHelper;

    invoke-direct {v0}, Lcom/miui/home/launcher/servicedeliver/ServiceDeliverDataHelper;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/servicedeliver/ServiceDeliverDataHelper;->INSTANCE:Lcom/miui/home/launcher/servicedeliver/ServiceDeliverDataHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final requestServiceDeliverData(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v0, "requestSign"

    .line 34
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "ServiceDeliverDataHelper"

    const-string v2, "requestServiceDeliverData"

    .line 25
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "content://com.miui.personalassistant.servicedeliver.system.provider"

    .line 26
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 28
    :try_start_0
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 29
    invoke-virtual {v4, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "get_service_card"

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v0, v5, v4}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "service_card"

    .line 35
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 39
    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const-string p0, ""

    return-object p0
.end method
